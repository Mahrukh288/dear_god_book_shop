import 'package:flutter/material.dart';

import 'app_constants.dart';

class AppTheme {
  ThemeData get _getBaseTheme => ThemeData.light();

  ThemeData get lightTheme {
    return _getBaseTheme.copyWith(
      textTheme: _textThemeData,
      elevatedButtonTheme: _elevatedButtonThemeData,
      // inputDecorationTheme: _inputDecorationTheme
    );
  }

  TextTheme get _textThemeData {
    final baseTextTheme = _getBaseTheme.textTheme;
    return baseTextTheme.copyWith(
      labelSmall: _labelSmall,
      labelMedium: _labelMedium,
      labelLarge: _labelLarge,
      titleSmall: _titleSmall,
      titleMedium: _titleMedium,
      titleLarge: _titleLarge,
      //using
      displaySmall: _displaySmall,
      displayMedium: _displayMedium,
      //using
      displayLarge: _displayLarge,
      //using
      bodySmall: _bodySmall,
      bodyMedium: _bodyMedium,
      bodyLarge: _bodyLarge,
      headlineSmall: _headlineSmall,
      headlineMedium: _headlineMedium,

      //using
      headlineLarge: _headlineLarge,
    );
  }

  TextStyle? get _labelSmall {
    final baseStyle = _getBaseTheme.textTheme.labelSmall;
    return baseStyle?.copyWith();
  }

  TextStyle? get _labelMedium {
    final baseStyle = _getBaseTheme.textTheme.labelMedium;
    return baseStyle?.copyWith(color: Colors.grey);
  }

  TextStyle? get _labelLarge {
    final baseStyle = _getBaseTheme.textTheme.labelLarge;
    return baseStyle?.copyWith();
  }

  TextStyle? get _displaySmall {
    final baseStyle = _getBaseTheme.textTheme.displaySmall;
    return baseStyle?.copyWith(fontFamily: 'Satisfy', fontSize: 20);
  }

  TextStyle? get _displayMedium {
    final baseStyle = _getBaseTheme.textTheme.displayMedium;
    return baseStyle?.copyWith();
  }

  TextStyle? get _displayLarge {
    final baseStyle = _getBaseTheme.textTheme.displayLarge;
    return baseStyle?.copyWith(
        fontFamily: 'Satisfy',
        fontWeight: FontWeight.w400,
        fontSize: 60,
        color: primaryColor);
  }

  TextStyle? get _bodySmall {
    final baseStyle = _getBaseTheme.textTheme.bodySmall;
    return baseStyle?.copyWith(
        color: textColor,
        fontWeight: FontWeight.w400,
        fontSize: 14,
        height: 1.5,
        //letterSpacing: 1.2,
        fontFamily: 'Poppins');
  }

  TextStyle? get _bodyMedium {
    final baseStyle = _getBaseTheme.textTheme.bodyMedium;
    return baseStyle?.copyWith();
  }

  TextStyle? get _bodyLarge {
    final baseStyle = _getBaseTheme.textTheme.bodyLarge;
    return baseStyle?.copyWith(
        color: textColor,
        fontWeight: FontWeight.w600,
        fontSize: 20,
        height: 1.5,
        //letterSpacing: 1.2,
        fontFamily: 'Poppins');
  }

  TextStyle? get _headlineSmall {
    final baseStyle = _getBaseTheme.textTheme.headlineSmall;
    return baseStyle?.copyWith();
  }

  TextStyle? get _headlineMedium {
    final baseStyle = _getBaseTheme.textTheme.headlineMedium;
    return baseStyle?.copyWith();
  }

  TextStyle? get _headlineLarge {
    final baseStyle = _getBaseTheme.textTheme.headlineLarge;
    return baseStyle?.copyWith(
        fontSize: 40,
        fontWeight: FontWeight.w600,
        color: blackColor,
        letterSpacing: 1.1);
  }

  TextStyle? get _titleSmall {
    final baseStyle = _getBaseTheme.textTheme.titleSmall;
    return baseStyle?.copyWith();
  }

  TextStyle? get _titleMedium {
    final baseStyle = _getBaseTheme.textTheme.titleMedium;
    return baseStyle?.copyWith();
  }

  TextStyle? get _titleLarge {
    final baseStyle = _getBaseTheme.textTheme.titleLarge;
    return baseStyle?.copyWith();
  }

  // static InputDecorationTheme get _inputDecorationTheme {
  //   return InputDecorationTheme(
  //     hoverColor: Colors.transparent,
  //     isDense: true,
  //     filled: true,
  //     //fillColor: Colors.teal.shade50,
  //     // labelStyle: const TextStyle(
  //     //   fontFamily: 'SofiaPro',
  //     //   fontWeight: FontWeight.w500,
  //     //   fontSize: 14,
  //     // ),
  //     // suffixStyle: const TextStyle(
  //     //   fontFamily: 'SofiaPro',
  //     //   fontWeight: FontWeight.w500,
  //     //   fontSize: 14,
  //     // ),
  //     hintStyle: const TextStyle(
  //         fontWeight: FontWeight.w400,
  //         fontSize: 14,
  //         color: Colors.black,
  //         letterSpacing: 1.2),
  //     //prefixStyle: const TextStyle(
  //     //   fontFamily: 'SofiaPro',
  //     //   fontWeight: FontWeight.w500,
  //     //   fontSize: 10,
  //     // ),
  //     // disabledBorder: OutlineInputBorder(
  //     //     borderRadius: BorderRadius.circular(10.0),
  //     //     borderSide: const BorderSide(color: primaryColor)),
  //     // enabledBorder: UnderlineInputBorder(
  //     //     borderRadius: BorderRadius.circular(10.0),
  //     //     borderSide: const BorderSide(color: primaryColor)),
  //     // focusedBorder: UnderlineInputBorder(
  //     //     borderRadius: BorderRadius.circular(10.0),
  //     //     borderSide: const BorderSide(width: 1.5, color: Colors.red)),
  //     // border: OutlineInputBorder(
  //     //     borderRadius: BorderRadius.circular(10.0),
  //     //     borderSide: const BorderSide(color: Colors.red)),
  //   );
  // }

  ElevatedButtonThemeData get _elevatedButtonThemeData {
    return ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      elevation: 0,
      minimumSize: const Size(64, 40),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
      backgroundColor: primaryColor,
    ));
  }
}
