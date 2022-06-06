// ignore_for_file: constant_identifier_names
//API
import 'package:flutter/material.dart';

const String BASE_URL = "https://mvvvip1.defas-fgi.de/";
const String RELATIVE_PATH =
    "mvv/mvv/XML_STOPFINDER_REQUEST?language=de&outputFormat=RapidJSON&type_sf=any&name_sf={Suchtext}";

//Strings
const String LOCATION_NOTFOUND =
    'Keine Ergebnisse gefunden...\nBitte versuche einen anderen Standort.';
const String HINT_TEXT = 'Ort eingeben...';
const String APPBAR_TITLE = 'Flutter Location';

const String NETWORK_ERROR_MESSAGE =
    'Bitte überprüfen Sie Ihre Internetverbindung';
const String GENERAL_ERROR_MESSAGE = 'Upps da ist etwas schief gelaufen...';

//Style:
const double radius_size = 25;
const double font_size = 18;
const double elevation = 5;
const double padding_size = 10;
const double border_width = 32;
//Color:
const Color primary_color = Color.fromARGB(255, 73, 126, 118);
const Color secondary_color = Color.fromARGB(255, 150, 207, 190);

//Animation:
const String StartView_GIF = 'https://i.gifer.com/Wczc.gif';
const String NotFound_GIF =
    'https://cdn.dribbble.com/users/722835/screenshots/3021416/media/f8f490d0b19e49f6caf469ea5e49073f.gif';

/*
Map<String, String> de
{
  'hint_text': 'hallo',
  'appbar_text': 'hello'
}
//En
Map<String, String> en
{
    'hint_text': 'hallo',
    'appbar_text': 'hello'
}*/