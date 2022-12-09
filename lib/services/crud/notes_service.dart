import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:learningdart/services/crud/crud_exceptions.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

class NotesService {
  Database? _db;

  List<DatabaseNote> _notes = [];
  
  static final NotesService _shared = NotesService._sharedInstance();
  NotesService._sharedInstance();
  factory NotesService() => _shared;
