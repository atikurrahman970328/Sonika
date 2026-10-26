import 'package:local_auth/local_auth.dart';

class BiometricAuthService {
  static final LocalAuthentication _auth = LocalAuthentication();

  static Future<bool> authenticateUser() async {
    try {
      final bool canAuthenticateWithBiometrics = await _auth.canCheckBiometrics;
      final bool canAuthenticate = canAuthenticateWithBiometrics || await _auth.isDeviceSupported();

      if (!canAuthenticate) return false;

      return await _auth.authenticate(
        localizedAuthorizationReason: 'অ্যাপটি আনলক করতে আপনার বায়োমেট্রিক ভেরিফাই করুন',
        options: const AuthenticationOptions(
          stickyAuthentication: true,
          biometricOnly: true,
        ),
      );
    } catch (e) {
      return false;
    }
  }
}
