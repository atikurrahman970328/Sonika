class ExtensionMarketplaceService {
  static Future<List<Map<String, String>>> fetchAvailableExtensions() async {
    // থার্ড-পার্টি প্লাগইন ও এক্সটেনশন লিস্ট ফেচ করার সিমুলেশন
    await Future.delayed(const Duration(seconds: 1));
    return [
      {'name': 'Python Linting Pro', 'version': '1.2.0', 'author': 'Omni Team'},
      {'name': 'AI Voice Assistant Plugin', 'version': '2.0.1', 'author': 'Community'},
      {'name': 'Custom Dark Theme Pack', 'version': '1.0.5', 'author': 'Designer X'},
    ];
  }

  static Future<bool> installExtension(String extensionName) async {
    await Future.delayed(const Duration(seconds: 1));
    return true;
  }
}
