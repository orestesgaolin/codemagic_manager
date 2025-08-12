import 'package:flutter_secure_storage_x/flutter_secure_storage_x.dart';

class SecureStorageService {
  static const String _apiKeyKey = 'codemagic_api_key';
  
  static const _storage = FlutterSecureStorage();

  static Future<String?> getApiKey() async {
    try {
      return await _storage.read(key: _apiKeyKey);
    } catch (e) {
      return null;
    }
  }

  static Future<void> saveApiKey(String apiKey) async {
    try {
      await _storage.write(key: _apiKeyKey, value: apiKey);
    } catch (e) {
      // Ignore errors - fallback to manual entry
    }
  }

  static Future<void> deleteApiKey() async {
    try {
      await _storage.delete(key: _apiKeyKey);
    } catch (e) {
      // Ignore errors
    }
  }
}