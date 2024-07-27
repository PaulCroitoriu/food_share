import 'package:auto_route/auto_route.dart' show AutoRouteWrapper, AutoRouterX, RoutePage;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/core/translations/locale_keys.g.dart';
import 'package:food_share/pages/register/bloc/register_bloc.dart';
import 'package:food_share/repositories/auth_repository/auth_repository.dart';
import 'package:food_share/router.gr.dart';
import 'package:food_share/utils/utils.dart';

@RoutePage()
class RegisterPage extends StatefulWidget implements AutoRouteWrapper {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (context) => RegisterBloc(authRepo: context.read<AuthRepo>()),
      child: this,
    );
  }
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  String dropdownValue = 'Option 1';

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordRepeatController = TextEditingController();
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final TextEditingController _orgNameController = TextEditingController();

  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _passwordRepeatFocus = FocusNode();
  final FocusNode _fullNameFocus = FocusNode();
  final FocusNode _orgNameFocus = FocusNode();
  final FocusNode _addressFocus = FocusNode();

  UserType? _selectedUserType;
  bool _termsAccepted = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _passwordRepeatController.dispose();
    _fullNameController.dispose();
    _orgNameController.dispose();
    _addressController.dispose();

    _emailFocus.dispose();
    _passwordFocus.dispose();
    _passwordRepeatFocus.dispose();
    _fullNameFocus.dispose();
    _orgNameFocus.dispose();
    _addressFocus.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc, RegisterState>(
      listener: (context, state) {
        switch (state.status) {
          case RegisterStatus.success:
            context.replaceRoute(const HomeRoute());
            break;

          case RegisterStatus.error:
            showError(context: context, message: state.error);
            break;

          default:
            break;
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            bottomNavigationBar: BottomAppBar(
              child: FilledButton(
                onPressed: !state.isLoading && _termsAccepted
                    ? () {
                        if (_formKey.currentState?.validate() ?? false) {
                          context.read<RegisterBloc>().add(RegisterEvent.register(
                                email: _emailController.text,
                                fullName: _fullNameController.text,
                                orgName: _orgNameController.text,
                                address: _addressController.text,
                                userType: _selectedUserType!,
                                password: _passwordController.text,
                              ));
                        }
                      }
                    : null,
                child: !state.isLoading
                    ? Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(LocaleKeys.signUp.tr()),
                          const SizedBox(width: 4.0),
                          const Icon(Icons.arrow_right_alt_rounded),
                        ],
                      )
                    : const SizedBox(
                        height: 22,
                        width: 22,
                        child: CircularProgressIndicator(),
                      ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: ListView(
                children: [
                  const SizedBox(height: 32.0),
                  Align(
                    alignment: Alignment.center,
                    child: Image.asset(
                      'assets/icons/logo.png',
                      fit: BoxFit.contain,
                      height: 43,
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  Text(
                    LocaleKeys.signUp.tr(),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    LocaleKeys.signInToContinue.tr(),
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).dividerColor),
                  ),
                  const SizedBox(height: 32.0),
                  Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          focusNode: _emailFocus,
                          onTapOutside: (_) => FocusScope.of(context).unfocus(),
                          enabled: !state.isLoading,
                          decoration: const InputDecoration(hintText: 'Email'),
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          onFieldSubmitted: (value) => _fullNameFocus.requestFocus(),
                          validator: (value) {
                            final emailRegex = RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$");

                            if (value == null || value.isEmpty) {
                              return LocaleKeys.emailIsRequired.tr();
                            } else if (!emailRegex.hasMatch(value)) {
                              return LocaleKeys.enterAValidEmailAddress.tr();
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 12.0),
                        TextFormField(
                          controller: _fullNameController,
                          focusNode: _fullNameFocus,
                          onTapOutside: (_) => FocusScope.of(context).unfocus(),
                          enabled: !state.isLoading,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: const InputDecoration(hintText: 'Full Name'),
                          onFieldSubmitted: (value) => _orgNameFocus.requestFocus(),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return LocaleKeys.organizationNameIsRequired.tr();
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 12.0),
                        TextFormField(
                          controller: _orgNameController,
                          focusNode: _orgNameFocus,
                          onTapOutside: (_) => FocusScope.of(context).unfocus(),
                          enabled: !state.isLoading,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: InputDecoration(hintText: LocaleKeys.organizationName.tr()),
                          onFieldSubmitted: (_) => _addressFocus.requestFocus(),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return LocaleKeys.organizationNameIsRequired.tr();
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 12.0),
                        TextFormField(
                          controller: _addressController,
                          focusNode: _addressFocus,
                          onTapOutside: (_) => FocusScope.of(context).unfocus(),
                          enabled: !state.isLoading,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: const InputDecoration(hintText: 'Full address'),
                          onFieldSubmitted: (_) => {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return LocaleKeys.organizationNameIsRequired.tr();
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 12.0),
                        DropdownButtonFormField<UserType>(
                          value: _selectedUserType,
                          items: UserType.values.map((UserType type) {
                            return DropdownMenuItem<UserType>(
                              value: type,
                              child: Text(type.name.tr()),
                            );
                          }).toList(),
                          decoration: InputDecoration(
                            enabled: !state.isLoading,
                            labelText: LocaleKeys.userType.tr(),
                            hintText: LocaleKeys.selectUserType.tr(),
                            alignLabelWithHint: true,
                          ),
                          onChanged: (UserType? newValue) {
                            setState(() {
                              _selectedUserType = newValue;
                            });
                          },
                          validator: (value) {
                            if (value == null) {
                              return LocaleKeys.pleaseSelectUserType.tr();
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 12.0),
                        TextFormField(
                          controller: _passwordController,
                          focusNode: _passwordFocus,
                          onTapOutside: (_) => FocusScope.of(context).unfocus(),
                          enabled: !state.isLoading,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: true,
                          decoration: InputDecoration(hintText: LocaleKeys.password.tr()),
                          onFieldSubmitted: (_) => _passwordRepeatFocus.requestFocus(),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return LocaleKeys.passwordIsRequired.tr();
                            } else if (value.length < 8) {
                              return LocaleKeys.passwordMustBeAtLeast8CharactersLong.tr();
                            } else if (!RegExp(r'^(?=.*?[A-Z])').hasMatch(value)) {
                              return LocaleKeys.passwordMustHaveAtLeastOneUppercaseLetter.tr();
                            } else if (!RegExp(r'^(?=.*?[a-z])').hasMatch(value)) {
                              return LocaleKeys.passwordMustHaveAtLeastOneLowercaseLetter.tr();
                            } else if (!RegExp(r'^(?=.*?[0-9])').hasMatch(value)) {
                              return LocaleKeys.passwordMustHaveAtLeastOneNumber.tr();
                            } else if (!RegExp(r'^(?=.*?[!@#\$&*~])').hasMatch(value)) {
                              return LocaleKeys.passwordMustHaveAtLeastOneSpecialCharacter.tr();
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 12.0),
                        TextFormField(
                          onTapOutside: (_) => FocusScope.of(context).unfocus(),
                          controller: _passwordRepeatController,
                          focusNode: _passwordRepeatFocus,
                          enabled: !state.isLoading,
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          obscureText: true,
                          decoration: InputDecoration(hintText: LocaleKeys.repeatPassword.tr()),
                          onFieldSubmitted: (_) => {},
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return LocaleKeys.confirmPasswordIsRequired.tr();
                            } else if (value != _passwordController.text) {
                              return LocaleKeys.passwordsDoNotMatch.tr();
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Checkbox.adaptive(
                              value: _termsAccepted,
                              onChanged: (_) => setState(() => _termsAccepted = !_termsAccepted),
                            ),
                            const Flexible(
                              child: Text('Accept terms and conditions'),
                            ),
                            const SizedBox(width: 8.0),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(LocaleKeys.alreadyHaveAnAccount.tr(), style: Theme.of(context).textTheme.labelMedium),
                        const Text(" "),
                        InkWell(
                            onTap: !state.isLoading ? () => context.router.replace(const LoginRoute()) : null,
                            child: Text(LocaleKeys.signIn.tr(), style: const TextStyle(color: Colors.blue))),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32.0),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
