import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:portfolio/models/config.dart';

class AppLocalization {
  AppLocalization._();

  static Localization fromLocaleId(String id) {
    return values.firstWhere(
      (locale) => locale.id == id,
      orElse: () => fallback,
    );
  }

  static const en = _LocalizationEn();

  static const fallback = en;

  static const values = <Localization>[
    en
  ];

  static Localization get instance => GetIt.instance<Config>().localization;
}

@immutable
abstract class Localization {
  const Localization();

  String get id;
  String get name;
  String get fallbackName;
  String get icon;
  String get title => 'Jyotirmoy Bandyopadhayaya | Discord Bot & Web developer';
  String get about => 'About';
  String get firstName => 'Jyotirmoy';
  String get lastName => 'Bandyopadhayaya';
  String get nickName => 'Bravo68Web';
  String get commonName => nickName;
  String get greetingMorning => 'Good morning.';
  String get greetingAfternoon => 'Good afternoon.';
  String get greetingEvening => 'Good evening.';
  String get introductionPrefix => "I'm ";
  String get introductionSuffix => '.';

  String get highlightSoftwareDeveloperTitle => 'Coding Enthusiast';
  String get highlightSoftwareDeveloperDescription =>
      'Android, Web, DevOps and more.';

  String get highlightBlogger => 'Inovator';
  String get highlightBlogDescription =>
      'Love to inovate and add modules';

  String get highlightOpenSourceContributorTitle => 'Open Source Contributor';
  String get highlightOpenSourceContributorDescription =>
      'Loves GitHub';

  String get highlightStudentTitle => 'University Student';
  // ignore: lines_longer_than_80_chars
  String get highlightStudentDescription => 'Currently in B. Tech. 1st Year at LPU';

  String get highlightGameTitle => 'Team Player';
  String get highlightGameDescription => 'Love to play Football and Badminton.';

  String get siteInfo =>
      'Bravo68web @dftechs ・ Kolkata, West Bengal, India';

  @override
  int get hashCode => id.hashCode;

  @override
  bool operator ==(dynamic other) =>
      identical(this, other) || other is Localization && id == other.id;
}

class _LocalizationEn extends Localization {
  const _LocalizationEn();

  @override
  String get id => 'en';
  @override
  String get name => 'English (US)';
  @override
  String get fallbackName => name;
  @override
  String get icon => '🇺🇸';
}