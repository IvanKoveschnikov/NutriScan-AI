import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

/// Выводить первую букву из слова.
///
/// Буква должна быть заглавной
String? thefirstLetterFunction(String? text) {
  if (text != null && text.isNotEmpty) {
    return text[0].toUpperCase(); // Return the first letter in uppercase
  }
  return null; // Return null if text is null or empty
}
