import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:thingsboard_app/config/routes/router.dart';
import 'package:thingsboard_app/config/routes/v2/router_2.dart';
import 'package:thingsboard_app/config/themes/app_colors.dart';
import 'package:thingsboard_app/config/themes/dark_theme.dart';
import 'package:thingsboard_app/config/themes/tb_theme.dart';

import 'package:thingsboard_app/core/auth/login/provider/login_provider.dart';
import 'package:thingsboard_app/generated/l10n.dart';
import 'package:thingsboard_app/locator.dart';
import 'package:thingsboard_app/utils/services/layouts/i_layout_service.dart';
import 'package:thingsboard_app/utils/services/wl_provider.dart';
import 'package:toastification/toastification.dart';

class ThingsboardApp extends HookConsumerWidget {
  const ThingsboardApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);
    final wlState = ref.watch(wlProvider);
    final loginState = ref.watch(loginProvider);

    Locale? locale;
    if (loginState.user != null && loginState.user?.additionalInfo?['lang'] != null) {
      final lang = loginState.user!.additionalInfo!['lang'].toString().replaceAll('-', '_');
      debugPrint('DEBUG: Idioma detectado no perfil: $lang');
      final parts = lang.split('_');
      if (parts.length > 1) {
        locale = Locale(parts[0], parts[1]);
      } else {
        locale = Locale(parts[0]);
      }
    }

    return ToastificationWrapper(
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: locale, 
        localeResolutionCallback: (deviceLocale, supportedLocales) {
          if (locale != null) return locale;
          if (deviceLocale != null) {
            for (var supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == deviceLocale.languageCode) {
                return supportedLocale;
              }
            }
          }
          return const Locale('en');
        },
        title: wlState.wlParams.appTitle,
        themeMode: ThemeMode.light,
        theme: wlState.theme,
        darkTheme: wlState.theme,
        routerConfig: router,
      ),
    );
  }
}
