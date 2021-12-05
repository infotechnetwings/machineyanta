import 'package:flutter/material.dart';

var this_year = DateTime.now().year.toString();

class AppConfig {
  static String copyright_text = "@ Machine Yantra" + this_year; //this shows in the splash screen
  static String app_name = "Machine Yantra"; //this shows in the splash screen
  static String purchase_code = "1c6b358c-jtdp-4fcc-aba9-f71a9df2ey51j"; //enter your purchase code for the app from codecanyon


  static const bool HTTPS = true;

  static const DOMAIN_PATH = "www.machineyantra.com/"; //localhost


  //do not configure these below
  static const String API_ENDPATH = "api/v2";
  static const String PUBLIC_FOLDER = "public";
  static const String PROTOCOL = HTTPS ? "https://" : "http://";
  static const String RAW_BASE_URL = "${PROTOCOL}${DOMAIN_PATH}";
  static const String BASE_URL = "${RAW_BASE_URL}/${API_ENDPATH}";


  static const String BASE_PATH = "${RAW_BASE_URL}/${PUBLIC_FOLDER}/";
//static const String BASE_PATH = "https://tosoviti.s3.ap-southeast-2.amazonaws.com/";
}
