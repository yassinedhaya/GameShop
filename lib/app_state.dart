import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<GameStruct> _games = [
    GameStruct.fromSerializableMap(jsonDecode(
        '{\"Nom\":\"FIFA 2500\",\"Prix\":\"199\",\"Image\":\"https://cdn.pixabay.com/photo/2015/04/19/08/32/flower-729510_1280.jpg\",\"Description\":\"Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu\'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.\\n\",\"Quantity\":\"10\"}')),
    GameStruct.fromSerializableMap(jsonDecode(
        '{\"Nom\":\"Red Dead\",\"Prix\":\"50\",\"Image\":\"https://static.vecteezy.com/system/resources/thumbnails/057/068/323/small/single-fresh-red-strawberry-on-table-green-background-food-fruit-sweet-macro-juicy-plant-image-photo.jpg\",\"Description\":\"Le lorem ipsum est, en imprimerie, une suite de mots sans signification utilisée à titre provisoire pour calibrer une mise en page, le texte définitif venant remplacer le faux-texte dès qu\'il est prêt ou que la mise en page est achevée. Généralement, on utilise un texte en faux latin, le Lorem ipsum ou Lipsum.\\n\",\"Quantity\":\"100\"}'))
  ];
  List<GameStruct> get games => _games;
  set games(List<GameStruct> value) {
    _games = value;
  }

  void addToGames(GameStruct value) {
    games.add(value);
  }

  void removeFromGames(GameStruct value) {
    games.remove(value);
  }

  void removeAtIndexFromGames(int index) {
    games.removeAt(index);
  }

  void updateGamesAtIndex(
    int index,
    GameStruct Function(GameStruct) updateFn,
  ) {
    games[index] = updateFn(_games[index]);
  }

  void insertAtIndexInGames(int index, GameStruct value) {
    games.insert(index, value);
  }
}
