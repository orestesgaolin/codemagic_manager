// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import

import 'package:json_annotation/json_annotation.dart';

@JsonEnum()
enum ClientEvent {
  @JsonValue('Onboarding Viewed')
  onboardingViewed('Onboarding Viewed'),
  @JsonValue('Onboarding Started')
  onboardingStarted('Onboarding Started'),
  @JsonValue('Onboarding Finished')
  onboardingFinished('Onboarding Finished'),
  @JsonValue('Onboarding Info Provided')
  onboardingInfoProvided('Onboarding Info Provided'),
  @JsonValue('Onboarding Billing Submitted')
  onboardingBillingSubmitted('Onboarding Billing Submitted'),
  @JsonValue('Onboarding Billing Enabled')
  onboardingBillingEnabled('Onboarding Billing Enabled'),
  @JsonValue('Onboarding Billing Selected')
  onboardingBillingSelected('Onboarding Billing Selected'),
  @JsonValue('Onboarding Redirected')
  onboardingRedirected('Onboarding Redirected'),
  /// Default value for all unparsed values, allows backward compatibility when adding new values on the backend.
  $unknown(null);

  const ClientEvent(this.json);

  factory ClientEvent.fromJson(String json) => values.firstWhere(
        (e) => e.json == json,
        orElse: () => $unknown,
      );

  final String? json;

  String? toJson() => json;

  @override
  String toString() => json ?? super.toString();
  /// Returns all defined enum values excluding the $unknown value.
  static List<ClientEvent> get $valuesDefined => values.where((value) => value != $unknown).toList();
}
