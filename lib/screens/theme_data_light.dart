import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:clashmi/screens/theme_config.dart';
import 'package:clashmi/screens/theme_define.dart';

class ThemeDataLight {
  static ThemeData theme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      platform: TargetPlatform.iOS,
      colorScheme: ColorScheme.fromSeed(
        seedColor: Colors.white,
        brightness: Brightness.light,
        dynamic: true, // 启用动态颜色
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.surface,
        systemOverlayStyle: SystemUiOverlayStyle(
          systemNavigationBarIconBrightness: Brightness.dark,
          systemNavigationBarColor: Theme.of(context).colorScheme.surface,
          systemNavigationBarDividerColor: Colors.transparent,
          statusBarColor: Theme.of(context).colorScheme.surface,
          statusBarBrightness: Brightness.light,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      scaffoldBackgroundColor: Theme.of(context).colorScheme.surface,
      cardColor: Theme.of(context).colorScheme.surfaceVariant,
      canvasColor: Theme.of(context).colorScheme.background,
      iconTheme: IconThemeData(
        color: Theme.of(context).colorScheme.onSurface,
      ),
      cardTheme: CardTheme(color: Theme.of(context).colorScheme.surfaceVariant),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Theme.of(context).colorScheme.primary;
          }
          return Theme.of(context).colorScheme.surfaceVariant;
        }),
        checkColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          return Theme.of(context).colorScheme.onPrimary;
        }),
        overlayColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          return Theme.of(context).colorScheme.onSurface.withOpacity(0.12);
        }),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.selected)) {
            return Theme.of(context).colorScheme.primary;
          }
          return null;
        }),
        overlayColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          return Theme.of(context).colorScheme.onSurface.withOpacity(0.12);
        }),
        visualDensity: const VisualDensity(horizontal: -1, vertical: -1),
      ),
      listTileTheme: const ListTileThemeData(
        dense: true,
        contentPadding: EdgeInsets.only(left: 0.0, right: 0.0),
        horizontalTitleGap: 0.0,
        visualDensity: VisualDensity(horizontal: -1, vertical: -1),
      ),
      segmentedButtonTheme: SegmentedButtonThemeData(
        style: SegmentedButton.styleFrom(
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(horizontal: -1, vertical: -1),
          backgroundColor: Theme.of(context).colorScheme.surfaceVariant,
          foregroundColor: Theme.of(context).colorScheme.onSurfaceVariant,
          selectedForegroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
          selectedBackgroundColor: Theme.of(context).colorScheme.primaryContainer,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).colorScheme.primary,
          foregroundColor: Theme.of(context).colorScheme.onPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
        ),
      ),
      dialogTheme: DialogTheme(
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
        backgroundColor: Theme.of(context).colorScheme.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: Theme.of(context).colorScheme.primary,
        circularTrackColor: Theme.of(context).colorScheme.surfaceVariant,
      ),
      dropdownMenuTheme: DropdownMenuThemeData(
        textStyle: TextStyle(
          color: Theme.of(context).colorScheme.onSurface,
          fontSize: ThemeConfig.kFontSizeGroupItem,
        ),
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
          floatingLabelStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
          helperStyle: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
          errorStyle: TextStyle(color: Theme.of(context).colorScheme.error),
          isDense: true,
          contentPadding: EdgeInsets.all(8),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.outline),
            borderRadius: BorderRadius.all(Radius.circular(0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
            borderRadius: BorderRadius.all(Radius.circular(0)),
          ),
          fillColor: Theme.of(context).colorScheme.surfaceVariant,
          filled: true,
        ),
        menuStyle: MenuStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Theme.of(context).colorScheme.surfaceVariant),
          shadowColor: MaterialStatePropertyAll<Color>(Theme.of(context).colorScheme.surfaceVariant),
          surfaceTintColor: MaterialStatePropertyAll<Color>(Theme.of(context).colorScheme.surfaceVariant),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
        floatingLabelStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        helperStyle: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
        hintStyle: TextStyle(color: Theme.of(context).colorScheme.onSurfaceVariant),
        errorStyle: TextStyle(color: Theme.of(context).colorScheme.error),
        isDense: true,
        contentPadding: EdgeInsets.all(8),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.outline),
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Theme.of(context).colorScheme.primary),
          borderRadius: BorderRadius.all(Radius.circular(0)),
        ),
        fillColor: Theme.of(context).colorScheme.surfaceVariant,
        filled: true,
      ),
      primaryTextTheme: TextTheme(
        bodyLarge: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        titleMedium: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(color: Theme.of(context).colorScheme.onSurface),
        titleMedium: TextStyle(color: Theme.of(context).colorScheme.onSurface),
      ),
      textSelectionTheme: TextSelectionThemeData(
        cursorColor: Theme.of(context).colorScheme.primary,
        selectionColor: Theme.of(context).colorScheme.primary.withOpacity(0.4),
        selectionHandleColor: Theme.of(context).colorScheme.primary,
      ),
      menuTheme: MenuThemeData(
        style: MenuStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(Theme.of(context).colorScheme.surfaceVariant),
        ),
      ),
      popupMenuTheme: PopupMenuThemeData(
        color: Theme.of(context).colorScheme.surfaceVariant,
        surfaceTintColor: Theme.of(context).colorScheme.surfaceTint,
      ),
    );
  }
}
