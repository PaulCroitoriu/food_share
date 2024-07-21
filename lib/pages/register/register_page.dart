import 'package:auto_route/auto_route.dart' show AutoRouteWrapper, AutoRouterX, RoutePage;
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/core/translations/locale_keys.g.dart';
import 'package:food_share/pages/register/bloc/register_bloc.dart';
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
      create: (context) => RegisterBloc(),
      child: this,
    );
  }
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();

  String dropdownValue = 'Option 1';

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordRepeatController = TextEditingController();
  final TextEditingController fullNameController = TextEditingController();

  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final FocusNode passwordRepeatFocus = FocusNode();
  final FocusNode fullNameFocus = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    passwordRepeatController.dispose();
    fullNameController.dispose();

    emailFocus.dispose();
    passwordFocus.dispose();
    passwordRepeatFocus.dispose();
    fullNameFocus.dispose();

    super.dispose();
  }

  void _showDropdown(BuildContext context, GlobalKey key) async {
    FocusManager.instance.primaryFocus?.unfocus();

    final RenderBox renderBox = key.currentContext!.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    UserType? selected = await showMenu(
      constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width - 48),
      context: context,
      position: RelativeRect.fromLTRB(
        offset.dx,
        offset.dy + size.height,
        offset.dx + size.width,
        0,
      ),
      items: [
        PopupMenuItem<UserType>(
          value: UserType.charity,
          child: Text(LocaleKeys.charity.tr()),
          onTap: () {
            context.read<RegisterBloc>().add(const RegisterEvent.userTypeChanged(UserType.charity));
            passwordFocus.requestFocus();
          },
        ),
        PopupMenuItem<UserType>(
          value: UserType.donor,
          child: Text(LocaleKeys.donor.tr()),
          onTap: () {
            context.read<RegisterBloc>().add(const RegisterEvent.userTypeChanged(UserType.donor));
            passwordFocus.requestFocus();
          },
        ),
      ],
      elevation: 8.0,
    );

    if (selected != null) {}
  }

  @override
  Widget build(BuildContext context) {
    GlobalKey key = GlobalKey();

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
            body: Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0).copyWith(bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
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
                              controller: emailController,
                              focusNode: emailFocus,
                              onTapOutside: (_) => FocusScope.of(context).unfocus(),
                              enabled: !state.isLoading,
                              onChanged: (email) => context.read<RegisterBloc>().add(RegisterEvent.emailChanged(email)),
                              decoration: const InputDecoration(hintText: 'Email'),
                              autovalidateMode: AutovalidateMode.onUserInteraction,
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
                              controller: fullNameController,
                              focusNode: fullNameFocus,
                              onTapOutside: (_) => FocusScope.of(context).unfocus(),
                              enabled: !state.isLoading,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              onChanged: (name) => context.read<RegisterBloc>().add(RegisterEvent.nameChanged(name)),
                              decoration: InputDecoration(hintText: LocaleKeys.organizationName.tr()),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return LocaleKeys.organizationNameIsRequired.tr();
                                }
                                return null;
                              },
                            ),
                            const SizedBox(height: 12.0),
                            GestureDetector(
                              key: key,
                              onTap: () => _showDropdown(context, key),
                              child: Container(
                                height: 53,
                                width: double.infinity,
                                padding: const EdgeInsets.symmetric(horizontal: 24),
                                decoration: BoxDecoration(
                                  color: Colors.teal.withOpacity(0.5),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(state.userType == null ? LocaleKeys.organizationType.tr() : state.userType!.name),
                                    const Icon(Icons.arrow_drop_down_outlined),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(height: 12.0),
                            TextFormField(
                              controller: passwordController,
                              focusNode: passwordFocus,
                              onTapOutside: (_) => FocusScope.of(context).unfocus(),
                              enabled: !state.isLoading,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              obscureText: true,
                              onChanged: (pass) => context.read<RegisterBloc>().add(RegisterEvent.passwordChanged(pass)),
                              decoration: InputDecoration(
                                hintText: LocaleKeys.password.tr(),
                              ),
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
                              controller: passwordRepeatController,
                              focusNode: passwordRepeatFocus,
                              enabled: !state.isLoading,
                              autovalidateMode: AutovalidateMode.onUserInteraction,
                              obscureText: true,
                              onChanged: (pass) => context.read<RegisterBloc>().add(RegisterEvent.repeatPasswordChanged(pass)),
                              decoration: InputDecoration(hintText: LocaleKeys.repeatPassword.tr()),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return LocaleKeys.confirmPasswordIsRequired.tr();
                                } else if (value != passwordController.text) {
                                  return LocaleKeys.passwordsDoNotMatch.tr();
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 24.0),
                      Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                          width: 140,
                          height: 43,
                          child: FilledButton(
                            onPressed: !state.isLoading
                                ? () {
                                    if (_formKey.currentState?.validate() ?? false) {
                                      context.read<RegisterBloc>().add(const RegisterEvent.register());
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
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
