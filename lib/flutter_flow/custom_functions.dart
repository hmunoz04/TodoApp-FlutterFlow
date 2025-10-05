import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double convertCelsiusToFahrenheit(double? celsiusTemperature) {
  // convert celsius to Fahrenheit
  if (celsiusTemperature == null) {
    return double.nan; // Return NaN if input is null
  }
  return (celsiusTemperature * 9 / 5) + 32; // Convert Celsius to Fahrenheit
}

double convertFahrenheitToCelsius(double? fahrenheitTemp) {
  // convert fahrenheit to celsius
  if (fahrenheitTemp == null) {
    return double.nan; // Return NaN if input is null
  }
  return (fahrenheitTemp - 32) * 5 / 9; // Convert Fahrenheit to Celsius
}

String gradeCalculator(String? grade) {
  //  compute letter grades (A, B, C, D, F) based on an integer score (0-100)
  if (grade == null) {
    return 'Enter a number Below:'; // Return 'Invalid' if input is null
  }

  int score = int.tryParse(grade) ?? -1; // Parse the input grade

  if (score < 0 || score > 100) {
    return 'Enter a number between 0 and 100'; // Return 'Invalid' for out of range scores
  }

  if (score >= 90) {
    return 'A'; // Grade A for scores 90-100
  } else if (score >= 80) {
    return 'B'; // Grade B for scores 80-89
  } else if (score >= 70) {
    return 'C'; // Grade C for scores 70-79
  } else if (score >= 60) {
    return 'D'; // Grade D for scores 60-69
  } else {
    return 'F'; // Grade F for scores below 60
  }
}
