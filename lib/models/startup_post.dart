import 'package:flutter/material.dart';


class post{
  final String StartUpName;
  final String Founder;
  final String CoFounder;
  final int TeamSize;
  final String StartUpDescription;
  final String USP;
  final int investment;
  final String Location;
  final String EstDate;
  post({
    required this.StartUpName,
    required this.Founder,
    required this.CoFounder,
    required this.TeamSize,
    required this.StartUpDescription,
    required this.USP,
    required this.investment,
    required this.Location,
    required this.EstDate,
  });
}