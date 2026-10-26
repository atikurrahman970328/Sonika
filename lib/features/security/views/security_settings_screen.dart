import 'package:flutter/material.dart';

class SecuritySettingsScreen extends StatefulWidget {
  const SecuritySettingsScreen({super.key});

  @override
  State<SecuritySettingsScreen> createState() => _SecuritySettingsScreenState();
}

class _SecuritySettingsScreenState extends State<SecuritySettingsScreen> {
  bool _biometricLock = true;
  bool _encryptionVault = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('সিকিউরিটি ও প্রাইভেসি সেটিংস'),
        backgroundColor: Colors.black87,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          SwitchListTile(
            title: const Text('বায়োমেট্রিক অ্যাপ লক', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            subtitle: const Text('ফিঙ্গারপ্রিন্ট বা ফেস আনলক ব্যবহার করুন', style: TextStyle(color: Colors.white70)),
            value: _biometricLock,
            activeColor: Colors.tealAccent,
            onChanged: (val) {
              setState(() {
                _biometricLock = val;
              });
            },
          ),
          const Divider(color: Colors.grey),
          SwitchListTile(
            title: const Text('AES-256 এনক্রিপ্টেড ভল্ট', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            subtitle: const Text('এপিআই টোকেন ও পাসওয়ার্ড সিকিউর রাখুন', style: TextStyle(color: Colors.white70)),
            value: _encryptionVault,
            activeColor: Colors.tealAccent,
            onChanged: (val) {
              setState(() {
                _encryptionVault = val;
              });
            },
          ),
        ],
      ),
    );
  }
}
