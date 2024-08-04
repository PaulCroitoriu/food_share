import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_share/core/translations/locale_keys.g.dart';
import 'package:food_share/pages/settings/cubit/settings_cubit.dart';
import 'package:food_share/pages/settings/models/language_model.dart';
import 'package:food_share/router.gr.dart';

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsCubit, SettingsState>(
      listener: (context, state) {
        if (state.status == SettingsStatusEnum.signout) {
          context.replaceRoute(const LoginRoute());
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 1,
            title: Text(LocaleKeys.settings.tr()),
            centerTitle: false,
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SettingsContainer(
                    title: "Personal Details",
                    child: Column(
                      children: [
                        const CustomListTile(
                          leading: Icons.person_outline_sharp,
                          title: "email@email.com",
                        ),
                        const CustomListTile(
                            leading: Icons.lock_outline,
                            title: "Change password",
                            trailing: Icon(
                              Icons.chevron_right_rounded,
                            )),
                        CustomListTile(
                          leading: Icons.notifications,
                          title: "Notifications",
                          trailing: Switch(
                            value: state.hasNotifications,
                            onChanged: (_) => context.read<SettingsCubit>().hasNotificationsChanged(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SettingsContainer(
                    title: LocaleKeys.preferences.tr(),
                    child: Column(
                      children: [
                        CustomListTile(
                          leading: Icons.language_outlined,
                          title: LocaleKeys.language.tr(),
                          trailing: CustomDropdown(
                            options: LanguagesEnum.values.map((e) => e.getLanguage()).toList(),
                            selected: state.selectedLanguage.getLanguage(),
                            onSelected: (language) => context.read<SettingsCubit>().languageChanged(language.toLanguageEnum()),
                          ),
                        ),
                        CustomListTile(
                          leading: Icons.dark_mode_outlined,
                          title: LocaleKeys.darkMode.tr(),
                          trailing: Switch(
                            value: state.darkTheme,
                            onChanged: (_) => context.read<SettingsCubit>().themeChanged(),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SettingsContainer(
                    title: LocaleKeys.system.tr(),
                    child: CustomListTile(
                      leading: Icons.logout_rounded,
                      title: LocaleKeys.logout.tr(),
                      onTap: () => context.read<SettingsCubit>().logout(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class CustomListTile extends StatelessWidget {
  final IconData leading;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;

  const CustomListTile({
    Key? key,
    required this.leading,
    required this.title,
    this.trailing,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(leading, size: 28, color: Theme.of(context).colorScheme.inverseSurface),
            const SizedBox(width: 16),
            Text(title, style: Theme.of(context).textTheme.titleMedium),
            const Spacer(),
            if (trailing != null) trailing!,
          ],
        ),
      ),
    );
  }
}

class SettingsContainer extends StatelessWidget {
  final Widget child;
  final String title;

  const SettingsContainer({
    Key? key,
    required this.child,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
          child: Text(
            title.toUpperCase(),
            style: Theme.of(context).textTheme.labelMedium?.copyWith(letterSpacing: 1.3, fontWeight: FontWeight.w600),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Theme.of(context).cardColor,
          ),
          margin: const EdgeInsets.only(bottom: 16.0),
          child: child,
        ),
      ],
    );
  }
}

class CustomDropdown extends StatefulWidget {
  final List<String> options;
  final String selected;
  final Function(String) onSelected;

  const CustomDropdown({
    Key? key,
    required this.options,
    required this.selected,
    required this.onSelected,
  }) : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: GestureDetector(
        onTap: _toggleDropdown,
        child: SizedBox(
          width: 160,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(widget.selected, style: Theme.of(context).textTheme.labelLarge?.copyWith(fontWeight: FontWeight.w300)),
              const SizedBox(width: 8),
              Icon(Icons.chevron_right_rounded, color: Theme.of(context).colorScheme.inverseSurface),
            ],
          ),
        ),
      ),
    );
  }

  void _toggleDropdown() {
    if (_overlayEntry == null) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    } else {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
  }

  OverlayEntry _createOverlayEntry() {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;

    return OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0, size.height + 5.0),
          child: Material(
            elevation: 10.0,
            borderRadius: BorderRadius.circular(4.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: widget.options.map((String option) {
                return ListTile(
                  selected: widget.selected == option,
                  title: Text(option),
                  onTap: () {
                    widget.onSelected(option);
                    _toggleDropdown();
                  },
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }
}
