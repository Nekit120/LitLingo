// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Sign in`
  String get signIn {
    return Intl.message(
      'Sign in',
      name: 'signIn',
      desc: '',
      args: [],
    );
  }

  /// `Dss workspace`
  String get dssWorkspace {
    return Intl.message(
      'Dss workspace',
      name: 'dssWorkspace',
      desc: '',
      args: [],
    );
  }

  /// `Document info`
  String get documentInfo {
    return Intl.message(
      'Document info',
      name: 'documentInfo',
      desc: '',
      args: [],
    );
  }

  /// `Documentation page`
  String get documentationPage {
    return Intl.message(
      'Documentation page',
      name: 'documentationPage',
      desc: '',
      args: [],
    );
  }

  /// `Favorites page`
  String get favoritesPage {
    return Intl.message(
      'Favorites page',
      name: 'favoritesPage',
      desc: '',
      args: [],
    );
  }

  /// `Settings page`
  String get settingsPage {
    return Intl.message(
      'Settings page',
      name: 'settingsPage',
      desc: '',
      args: [],
    );
  }

  /// `Main`
  String get main {
    return Intl.message(
      'Main',
      name: 'stateful_navigator',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Document`
  String get documents {
    return Intl.message(
      'Document',
      name: 'documents',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Last used files`
  String get last_used {
    return Intl.message(
      'Last used files',
      name: 'last_used',
      desc: '',
      args: [],
    );
  }

  /// `Inbox`
  String get inbox {
    return Intl.message(
      'Inbox',
      name: 'inbox',
      desc: '',
      args: [],
    );
  }

  /// `By author`
  String get byAuthor {
    return Intl.message(
      'By author',
      name: 'byAuthor',
      desc: '',
      args: [],
    );
  }

  /// `By type`
  String get byType {
    return Intl.message(
      'By type',
      name: 'byType',
      desc: '',
      args: [],
    );
  }

  /// `By date`
  String get byDate {
    return Intl.message(
      'By date',
      name: 'byDate',
      desc: '',
      args: [],
    );
  }

  /// `By tag`
  String get byTag {
    return Intl.message(
      'By tag',
      name: 'byTag',
      desc: '',
      args: [],
    );
  }

  /// `Tag`
  String get tag {
    return Intl.message(
      'Tag',
      name: 'tag',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Size`
  String get size {
    return Intl.message(
      'Size',
      name: 'size',
      desc: '',
      args: [],
    );
  }

  /// `Encryption`
  String get encryption {
    return Intl.message(
      'Encryption',
      name: 'encryption',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get state {
    return Intl.message(
      'State',
      name: 'state',
      desc: '',
      args: [],
    );
  }

  /// `Access`
  String get access {
    return Intl.message(
      'Access',
      name: 'access',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `in the face`
  String get face {
    return Intl.message(
      'in the face',
      name: 'face',
      desc: '',
      args: [],
    );
  }

  /// `By fingerprint`
  String get fingerprint {
    return Intl.message(
      'By fingerprint',
      name: 'fingerprint',
      desc: '',
      args: [],
    );
  }

  /// `by eye`
  String get eye {
    return Intl.message(
      'by eye',
      name: 'eye',
      desc: '',
      args: [],
    );
  }

  /// `any strong`
  String get strong {
    return Intl.message(
      'any strong',
      name: 'strong',
      desc: '',
      args: [],
    );
  }

  /// `any weak`
  String get weak {
    return Intl.message(
      'any weak',
      name: 'weak',
      desc: '',
      args: [],
    );
  }

  /// `Received`
  String get received {
    return Intl.message(
      'Received',
      name: 'received',
      desc: '',
      args: [],
    );
  }

  /// `Sent`
  String get sent {
    return Intl.message(
      'Sent',
      name: 'sent',
      desc: '',
      args: [],
    );
  }

  /// `Downloaded`
  String get downloaded {
    return Intl.message(
      'Downloaded',
      name: 'downloaded',
      desc: '',
      args: [],
    );
  }

  /// `User`
  String get user {
    return Intl.message(
      'User',
      name: 'user',
      desc: '',
      args: [],
    );
  }

  /// `Label`
  String get label {
    return Intl.message(
      'Label',
      name: 'label',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get documentType {
    return Intl.message(
      'Type',
      name: 'documentType',
      desc: '',
      args: [],
    );
  }

  /// `Data`
  String get data {
    return Intl.message(
      'Data',
      name: 'data',
      desc: '',
      args: [],
    );
  }

  /// `provided access to the document`
  String get providedAccessToTheDocument {
    return Intl.message(
      'provided access to the document',
      name: 'providedAccessToTheDocument',
      desc: '',
      args: [],
    );
  }

  /// `downloaded document`
  String get saveTitle {
    return Intl.message(
      'downloaded document',
      name: 'saveTitle',
      desc: '',
      args: [],
    );
  }

  /// `An error`
  String get anError {
    return Intl.message(
      'An error',
      name: 'anError',
      desc: '',
      args: [],
    );
  }

  /// `was occurred while transferring the document`
  String get wasOccurredWhileTransferringTheDocument {
    return Intl.message(
      'was occurred while transferring the document',
      name: 'wasOccurredWhileTransferringTheDocument',
      desc: '',
      args: [],
    );
  }

  /// `Today`
  String get today {
    return Intl.message(
      'Today',
      name: 'today',
      desc: '',
      args: [],
    );
  }

  /// `Yesterday`
  String get yesterday {
    return Intl.message(
      'Yesterday',
      name: 'yesterday',
      desc: '',
      args: [],
    );
  }

  /// `Last week`
  String get lastWeek {
    return Intl.message(
      'Last week',
      name: 'lastWeek',
      desc: '',
      args: [],
    );
  }

  /// `Early`
  String get early {
    return Intl.message(
      'Early',
      name: 'early',
      desc: '',
      args: [],
    );
  }

  /// `Delete account`
  String get deleteAccount {
    return Intl.message(
      'Delete account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Get out`
  String get getOut {
    return Intl.message(
      'Get out',
      name: 'getOut',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Clear`
  String get clear {
    return Intl.message(
      'Clear',
      name: 'clear',
      desc: '',
      args: [],
    );
  }

  /// `Delete notification`
  String get deleteNotification {
    return Intl.message(
      'Delete notification',
      name: 'deleteNotification',
      desc: '',
      args: [],
    );
  }

  /// `Off this type of notifications`
  String get ofThisNotificationType {
    return Intl.message(
      'Off this type of notifications',
      name: 'ofThisNotificationType',
      desc: '',
      args: [],
    );
  }

  /// `For all time`
  String get allTime {
    return Intl.message(
      'For all time',
      name: 'allTime',
      desc: '',
      args: [],
    );
  }

  /// `Last month`
  String get lastMonth {
    return Intl.message(
      'Last month',
      name: 'lastMonth',
      desc: '',
      args: [],
    );
  }

  /// `Information`
  String get information {
    return Intl.message(
      'Information',
      name: 'information',
      desc: '',
      args: [],
    );
  }

  /// `Actions`
  String get actions {
    return Intl.message(
      'Actions',
      name: 'actions',
      desc: '',
      args: [],
    );
  }

  /// `Russian`
  String get ru {
    return Intl.message(
      'Russian',
      name: 'ru',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get en {
    return Intl.message(
      'English',
      name: 'en',
      desc: '',
      args: [],
    );
  }

  /// `The application will use the selected language from this list.`
  String get mobileAppUserCurrentLenguage {
    return Intl.message(
      'The application will use the selected language from this list.',
      name: 'mobileAppUserCurrentLenguage',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to delete your account `
  String get youAreSure {
    return Intl.message(
      'Are you sure you want to delete your account ',
      name: 'youAreSure',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorite {
    return Intl.message(
      'Favorites',
      name: 'favorite',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Local authentication`
  String get localAuth {
    return Intl.message(
      'Local authentication',
      name: 'localAuth',
      desc: '',
      args: [],
    );
  }

  /// `Filters`
  String get filters {
    return Intl.message(
      'Filters',
      name: 'filters',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Add to favorite`
  String get addToFavorite {
    return Intl.message(
      'Add to favorite',
      name: 'addToFavorite',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get download {
    return Intl.message(
      'Download',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `About the file`
  String get aboutTheFile {
    return Intl.message(
      'About the file',
      name: 'aboutTheFile',
      desc: '',
      args: [],
    );
  }

  /// `Authorization`
  String get authorization {
    return Intl.message(
      'Authorization',
      name: 'authorization',
      desc: '',
      args: [],
    );
  }

  /// `Enter your username and password to log in to the system`
  String get enterLoginAndPassword {
    return Intl.message(
      'Enter your username and password to log in to the system',
      name: 'enterLoginAndPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Enter your login`
  String get enterLogin {
    return Intl.message(
      'Enter your login',
      name: 'enterLogin',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get enterPassword {
    return Intl.message(
      'Enter your password',
      name: 'enterPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forgot your password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot your password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get authzlogin {
    return Intl.message(
      'Login',
      name: 'authzlogin',
      desc: '',
      args: [],
    );
  }

  /// `All new letters`
  String get allNewMail {
    return Intl.message(
      'All new letters',
      name: 'allNewMail',
      desc: '',
      args: [],
    );
  }

  /// `Only important`
  String get onlyImportant {
    return Intl.message(
      'Only important',
      name: 'onlyImportant',
      desc: '',
      args: [],
    );
  }

  /// `Only with the tag “Mystery”`
  String get onlyMarkSecret {
    return Intl.message(
      'Only with the tag “Mystery”',
      name: 'onlyMarkSecret',
      desc: '',
      args: [],
    );
  }

  /// `Do not notify`
  String get notNotificate {
    return Intl.message(
      'Do not notify',
      name: 'notNotificate',
      desc: '',
      args: [],
    );
  }

  /// `You will receive notifications of all new emails.`
  String get youTakeAllNotification {
    return Intl.message(
      'You will receive notifications of all new emails.',
      name: 'youTakeAllNotification',
      desc: '',
      args: [],
    );
  }

  /// `You will only receive notifications about new emails that the application considers important.`
  String get youTakeImportentNotification {
    return Intl.message(
      'You will only receive notifications about new emails that the application considers important.',
      name: 'youTakeImportentNotification',
      desc: '',
      args: [],
    );
  }

  /// `You will only receive notifications about new emails that are marked “Secret”.`
  String get youTakeSecretNotification {
    return Intl.message(
      'You will only receive notifications about new emails that are marked “Secret”.',
      name: 'youTakeSecretNotification',
      desc: '',
      args: [],
    );
  }

  /// `You will not receive any notifications about new emails.`
  String get youNotTakeNotification {
    return Intl.message(
      'You will not receive any notifications about new emails.',
      name: 'youNotTakeNotification',
      desc: '',
      args: [],
    );
  }

  /// `h.`
  String get h {
    return Intl.message(
      'h.',
      name: 'h',
      desc: '',
      args: [],
    );
  }

  /// `min.`
  String get min {
    return Intl.message(
      'min.',
      name: 'min',
      desc: '',
      args: [],
    );
  }

  /// `Sound notification`
  String get sounNotification {
    return Intl.message(
      'Sound notification',
      name: 'sounNotification',
      desc: '',
      args: [],
    );
  }

  /// `You do not have any uploaded documents`
  String get nothingDownloadDocument {
    return Intl.message(
      'You do not have any uploaded documents',
      name: 'nothingDownloadDocument',
      desc: '',
      args: [],
    );
  }

  /// `You havent added any documents to your favorites`
  String get notAddDocumentToFavorite {
    return Intl.message(
      'You havent added any documents to your favorites',
      name: 'notAddDocumentToFavorite',
      desc: '',
      args: [],
    );
  }

  /// `You do not have any incoming documents`
  String get notHaveNotification {
    return Intl.message(
      'You do not have any incoming documents',
      name: 'notHaveNotification',
      desc: '',
      args: [],
    );
  }

  /// `Any`
  String get any {
    return Intl.message(
      'Any',
      name: 'any',
      desc: '',
      args: [],
    );
  }

  /// `Banking secrecy`
  String get bankingSecrecy {
    return Intl.message(
      'Banking secrecy',
      name: 'bankingSecrecy',
      desc: '',
      args: [],
    );
  }

  /// `Personal data`
  String get personalData {
    return Intl.message(
      'Personal data',
      name: 'personalData',
      desc: '',
      args: [],
    );
  }

  /// `Open information`
  String get openInformation {
    return Intl.message(
      'Open information',
      name: 'openInformation',
      desc: '',
      args: [],
    );
  }

  /// `Any period`
  String get anyPeriod {
    return Intl.message(
      'Any period',
      name: 'anyPeriod',
      desc: '',
      args: [],
    );
  }

  /// `A week ago`
  String get weekAgo {
    return Intl.message(
      'A week ago',
      name: 'weekAgo',
      desc: '',
      args: [],
    );
  }

  /// `A month ago`
  String get monthAgo {
    return Intl.message(
      'A month ago',
      name: 'monthAgo',
      desc: '',
      args: [],
    );
  }

  /// `Another period`
  String get anotherPeriod {
    return Intl.message(
      'Another period',
      name: 'anotherPeriod',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get from {
    return Intl.message(
      'From',
      name: 'from',
      desc: '',
      args: [],
    );
  }

  /// `To`
  String get to {
    return Intl.message(
      'To',
      name: 'to',
      desc: '',
      args: [],
    );
  }

  /// `Safety`
  String get safety {
    return Intl.message(
      'Safety',
      name: 'safety',
      desc: '',
      args: [],
    );
  }

  /// `Use PIN-code`
  String get usePinCode {
    return Intl.message(
      'Use PIN-code',
      name: 'usePinCode',
      desc: '',
      args: [],
    );
  }

  /// `Change PIN-code`
  String get switchPinCode {
    return Intl.message(
      'Change PIN-code',
      name: 'switchPinCode',
      desc: '',
      args: [],
    );
  }

  /// `Use Face ID to log into the app`
  String get useFaceIdAuth {
    return Intl.message(
      'Use Face ID to log into the app',
      name: 'useFaceIdAuth',
      desc: '',
      args: [],
    );
  }

  /// `Use your fingerprint to log into the application`
  String get useFingerPrintAuth {
    return Intl.message(
      'Use your fingerprint to log into the application',
      name: 'useFingerPrintAuth',
      desc: '',
      args: [],
    );
  }

  /// `Установите PIN-код`
  String get installPinCode {
    return Intl.message(
      'Установите PIN-код',
      name: 'installPinCode',
      desc: '',
      args: [],
    );
  }

  /// `Authenticate to use the app`
  String get authenticateToUseTheApp {
    return Intl.message(
      'Authenticate to use the app',
      name: 'authenticateToUseTheApp',
      desc: '',
      args: [],
    );
  }

  /// `Forgot PIN-code?`
  String get forgotPincode {
    return Intl.message(
      'Forgot PIN-code?',
      name: 'forgotPincode',
      desc: '',
      args: [],
    );
  }

  /// `You can clear the app data or reinstall the app and then create a new PIN.`
  String get youCanClearTheAppDataOrReinstallTheApp {
    return Intl.message(
      'You can clear the app data or reinstall the app and then create a new PIN.',
      name: 'youCanClearTheAppDataOrReinstallTheApp',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Login or password is wrong`
  String get loginOrPasswordIsWrong {
    return Intl.message(
      'Login or password is wrong',
      name: 'loginOrPasswordIsWrong',
      desc: '',
      args: [],
    );
  }

  /// `Show`
  String get show {
    return Intl.message(
      'Show',
      name: 'show',
      desc: '',
      args: [],
    );
  }

  /// `PIN code changed successfully`
  String get pinSuccessChange {
    return Intl.message(
      'PIN code changed successfully',
      name: 'pinSuccessChange',
      desc: '',
      args: [],
    );
  }

  /// `Remove from favorites`
  String get removeFromFavorite {
    return Intl.message(
      'Remove from favorites',
      name: 'removeFromFavorite',
      desc: '',
      args: [],
    );
  }

  /// `Fill in all fields`
  String get emptyFields {
    return Intl.message(
      'Fill in all fields',
      name: 'emptyFields',
      desc: '',
      args: [],
    );
  }

  /// `PIN code changed successfully`
  String get pinSuccesChange {
    return Intl.message(
      'PIN code changed successfully',
      name: 'pinSuccesChange',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `You need to download the document`
  String get needDownload {
    return Intl.message(
      'You need to download the document',
      name: 'needDownload',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ru'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
