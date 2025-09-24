// network_mock.dart

// نسخه امن و شبیه‌سازی‌شده getHostMap
Map<String, String> getHostMapSafe() {
  Map<String, String?> rawMap = {
    'zendesk': 'https://your-zendesk-host.com',
    'api': 'https://default-api.com',
  };

  // جلوگیری از null
  Map<String, String> safeMap = {};
  rawMap.forEach((key, value) {
    safeMap[key] = value ?? 'https://default-host.com';
  });

  return safeMap;
}

// نسخه امن ZendeskConfig.host
class ZendeskConfig {
  static String get host {
    final map = getHostMapSafe();
    return map['zendesk'] ?? 'https://default-zendesk.com';
  }
}

// نسخه امن TBOpen با WebView شبیه‌سازی‌شده
class TBOpen {
  static void openWebView(String url) {
    // اینجا می‌تونید WebView اصلی یا فقط print شبیه‌سازی کنید
    print('Opening WebView at: $url');
  }

  static void open(String url) {
    final host = ZendeskConfig.host;
    final fullUrl = '$host$url';
    openWebView(fullUrl);
  }
}
