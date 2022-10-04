 class AppConfig {
  static const bool HTTPS = true;

 static const DOMAIN_PATH = "turkishemarket.com"; // directly inside the public folder

 //do not configure these below
 static const String API_ENDPATH = "api/v2";
 static const String PROTOCOL = HTTPS ? "https://" : "http://";
 static const String RAW_BASE_URL = "${PROTOCOL}${DOMAIN_PATH}";
 static const String BASE_URL = "${RAW_BASE_URL}/${API_ENDPATH}";

 ///testing
 static const String API_ENDPATH1 = "api/v1";
 static const String PROTOCOL1 = HTTPS ? "https://" : "http://";
 static const String RAW_BASE_URL1 = "${PROTOCOL1}${DOMAIN_PATH}";
 static const String BASE_URL1 = "${RAW_BASE_URL1}/${API_ENDPATH1}";
 }