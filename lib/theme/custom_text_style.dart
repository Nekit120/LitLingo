import 'package:flutter/material.dart';

abstract class CustomTextStyle {
  static const _defaultTextColor = Color(0xFF1A1A1A);

  static const header28SemiBold = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w600,
    fontFamily: 'Roboto',
  );
  static const header26SemiBold = TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w600,
    fontFamily: 'Roboto',
  );
  static const header20SemiBold = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: 'Roboto',
  );
  static const header16SemiBold = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: 'Roboto',
  );
  static const header14SemiBold = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: 'Roboto',
  );
  static const header12SemiBold = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    fontFamily: 'Roboto',
  );
  static const header10SemidBold = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w600,
    fontFamily: 'Roboto',
  );

  static const body28Regular = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
  );

  static const body16Regular = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: _defaultTextColor,
    fontFamily: 'Roboto',
  );
  static const body22Regular = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w500,
    fontFamily: 'Roboto',
  );
  static const body14Regular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
  );
  static const body12Regular = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    fontFamily: 'Roboto',
  );

  static const body10Regular = TextStyle(
    fontSize: 10,
    fontWeight: FontWeight.w400,
    color: _defaultTextColor,
  );
}
