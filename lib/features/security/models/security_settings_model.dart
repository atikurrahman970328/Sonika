class SecuritySettingsModel {
  final bool isBiometricEnabled;
  final bool isEncryptionActive;
  final int autoLockTimeoutMinutes;

  SecuritySettingsModel({
    required this.isBiometricEnabled,
    required this.isEncryptionActive,
    required this.autoLockTimeoutMinutes,
  });

  SecuritySettingsModel copyWith({
    bool? isBiometricEnabled,
    bool? isEncryptionActive,
    int? autoLockTimeoutMinutes,
  }) {
    return SecuritySettingsModel(
      isBiometricEnabled: isBiometricEnabled ?? this.isBiometricEnabled,
      isEncryptionActive: isEncryptionActive ?? this.isEncryptionActive,
      autoLockTimeoutMinutes: autoLockTimeoutMinutes ?? this.autoLockTimeoutMinutes,
    );
  }
}
