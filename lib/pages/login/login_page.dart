import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:food_share/core/translations/locale_keys.g.dart';

import 'package:food_share/pages/login/cubit/login_cubit.dart';
import 'package:food_share/router.gr.dart';
import 'package:food_share/utils/utils.dart';
import 'package:food_share/widgets/responsive.dart';

@RoutePage()
class LoginPage extends StatefulWidget implements AutoRouteWrapper {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: this,
    );
  }
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FocusNode usernameFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();

  @override
  void initState() {
    super.initState();
    if (kDebugMode) {
      usernameController.text = 'a@test.com';
      passwordController.text = 'Test123!';
    }
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    usernameFocus.dispose();
    passwordFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status == LoginStatus.failure) {
          showError(context: context, message: state.error);
        } else if (state.status == LoginStatus.success) {
          context.replaceRoute(const HomeRoute());
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
              child: Responsive(
            mobile: MobileAuthPage(
              usernameController: usernameController,
              passwordController: passwordController,
              usernameFocus: usernameFocus,
              passwordFocus: passwordFocus,
              state: state,
            ),
            desktop: DesktopAuthPage(
              usernameController: usernameController,
              passwordController: passwordController,
              usernameFocus: usernameFocus,
              passwordFocus: passwordFocus,
              state: state,
            ),
          )),
        );
      },
    );
  }
}

class MobileAuthPage extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final FocusNode usernameFocus;
  final FocusNode passwordFocus;
  final LoginState state;

  const MobileAuthPage({
    Key? key,
    required this.usernameController,
    required this.passwordController,
    required this.usernameFocus,
    required this.passwordFocus,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16),
            child: LayoutBuilder(builder: (context, constraints) {
              return SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      AuthenticationForm(
                        passwordController: passwordController,
                        usernameController: usernameController,
                        usernameFocus: usernameFocus,
                        passwordFocus: passwordFocus,
                        state: state,
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}

class DesktopAuthPage extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final FocusNode usernameFocus;
  final FocusNode passwordFocus;
  final LoginState state;

  const DesktopAuthPage({
    Key? key,
    required this.usernameController,
    required this.passwordController,
    required this.usernameFocus,
    required this.passwordFocus,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 72,
            child: Image.asset(
              'assets/icons/logo.png',
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        const VerticalDivider(),
        Expanded(
          child: SizedBox(
            child: Center(
              child: SizedBox(
                width: 380,
                height: double.infinity,
                child: Center(
                  child: AuthenticationForm(
                    usernameController: usernameController,
                    passwordController: passwordController,
                    usernameFocus: usernameFocus,
                    passwordFocus: passwordFocus,
                    state: state,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class AuthenticationForm extends StatelessWidget {
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final FocusNode usernameFocus;
  final FocusNode passwordFocus;
  final LoginState state;

  const AuthenticationForm({
    Key? key,
    required this.usernameController,
    required this.passwordController,
    required this.usernameFocus,
    required this.passwordFocus,
    required this.state,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          LocaleKeys.welcome.tr(),
          style: Theme.of(context).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        Text(
          LocaleKeys.signInToContinue.tr(),
          style: Theme.of(context).textTheme.titleSmall?.copyWith(color: Theme.of(context).dividerColor),
        ),
        const SizedBox(height: 32.0),
        TextFormField(
          controller: usernameController,
          focusNode: usernameFocus,
          onChanged: (value) => context.read<LoginCubit>().emailChanged(value),
          onFieldSubmitted: (_) => passwordFocus.requestFocus(),
          decoration: InputDecoration(
            hintText: LocaleKeys.email.tr(),
          ),
        ),
        const SizedBox(height: 12.0),
        TextFormField(
          controller: passwordController,
          focusNode: passwordFocus,
          obscureText: !state.showPassword,
          onChanged: (value) => context.read<LoginCubit>().passwordChanged(value),
          onFieldSubmitted: (_) => {},
          decoration: InputDecoration(
            hintText: LocaleKeys.password.tr(),
            suffixIcon: IconButton(
              icon: Icon(state.showPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined),
              onPressed: () => context.read<LoginCubit>().showPasswordChanged(),
            ),
          ),
        ),
        const SizedBox(height: 24.0),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  LocaleKeys.forgotPassword.tr(),
                  textAlign: TextAlign.end,
                  style: const TextStyle(color: Colors.blueAccent),
                ),
              ),
            ),
            const SizedBox(width: 24.0),
            Expanded(
              child: FilledButton(
                onPressed: () => context.read<LoginCubit>().login(email: usernameController.text, password: passwordController.text),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(LocaleKeys.signIn.tr()),
                    const SizedBox(width: 4.0),
                    const Icon(Icons.arrow_right_alt_rounded),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 24.0),
        Row(
          children: [
            const Expanded(child: Divider(endIndent: 22)),
            Text(LocaleKeys.or.tr()),
            const Expanded(child: Divider(indent: 22)),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Text(
            LocaleKeys.loginUsingSocials.tr(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _getSocialMediaIcon(
              context,
              icon: FontAwesomeIcons.google,
              iconColor: Colors.red,
              onTap: () {},
            ),
            const SizedBox(width: 12.0),
            _getSocialMediaIcon(
              context,
              icon: FontAwesomeIcons.facebookF,
              iconColor: Colors.blue,
              onTap: () {},
            ),
            const SizedBox(width: 12.0),
            _getSocialMediaIcon(
              context,
              icon: FontAwesomeIcons.xTwitter,
              onTap: () {},
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(LocaleKeys.dontHaveAnAccount.tr(), style: Theme.of(context).textTheme.labelMedium),
              const Text(" "),
              InkWell(
                onTap: () => context.router.replace(const RegisterRoute()),
                child: Text(LocaleKeys.signUp.tr(), style: const TextStyle(color: Colors.blue)),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getSocialMediaIcon(
    BuildContext context, {
    required IconData icon,
    Color? iconColor,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(4),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: iconColor ?? (Theme.of(context).brightness == Brightness.dark ? Colors.white : Colors.black), width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(icon, color: iconColor),
        ),
      ),
    );
  }

  Widget getSocialAccountButton({
    required String logo,
    required Color color,
  }) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 52,
        width: 52,
        margin: const EdgeInsets.only(right: 16.0),
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(logo),
        ),
      ),
    );
  }
}
