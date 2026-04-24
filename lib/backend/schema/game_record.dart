import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GameRecord extends FirestoreRecord {
  GameRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "NameGame" field.
  String? _nameGame;
  String get nameGame => _nameGame ?? '';
  bool hasNameGame() => _nameGame != null;

  // "DescriptionGame" field.
  String? _descriptionGame;
  String get descriptionGame => _descriptionGame ?? '';
  bool hasDescriptionGame() => _descriptionGame != null;

  // "PriceGame" field.
  int? _priceGame;
  int get priceGame => _priceGame ?? 0;
  bool hasPriceGame() => _priceGame != null;

  // "QuantityGame" field.
  int? _quantityGame;
  int get quantityGame => _quantityGame ?? 0;
  bool hasQuantityGame() => _quantityGame != null;

  // "ImageGame" field.
  String? _imageGame;
  String get imageGame => _imageGame ?? '';
  bool hasImageGame() => _imageGame != null;

  void _initializeFields() {
    _nameGame = snapshotData['NameGame'] as String?;
    _descriptionGame = snapshotData['DescriptionGame'] as String?;
    _priceGame = castToType<int>(snapshotData['PriceGame']);
    _quantityGame = castToType<int>(snapshotData['QuantityGame']);
    _imageGame = snapshotData['ImageGame'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Game');

  static Stream<GameRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => GameRecord.fromSnapshot(s));

  static Future<GameRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => GameRecord.fromSnapshot(s));

  static GameRecord fromSnapshot(DocumentSnapshot snapshot) => GameRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static GameRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      GameRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'GameRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is GameRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createGameRecordData({
  String? nameGame,
  String? descriptionGame,
  int? priceGame,
  int? quantityGame,
  String? imageGame,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'NameGame': nameGame,
      'DescriptionGame': descriptionGame,
      'PriceGame': priceGame,
      'QuantityGame': quantityGame,
      'ImageGame': imageGame,
    }.withoutNulls,
  );

  return firestoreData;
}

class GameRecordDocumentEquality implements Equality<GameRecord> {
  const GameRecordDocumentEquality();

  @override
  bool equals(GameRecord? e1, GameRecord? e2) {
    return e1?.nameGame == e2?.nameGame &&
        e1?.descriptionGame == e2?.descriptionGame &&
        e1?.priceGame == e2?.priceGame &&
        e1?.quantityGame == e2?.quantityGame &&
        e1?.imageGame == e2?.imageGame;
  }

  @override
  int hash(GameRecord? e) => const ListEquality().hash([
        e?.nameGame,
        e?.descriptionGame,
        e?.priceGame,
        e?.quantityGame,
        e?.imageGame
      ]);

  @override
  bool isValidKey(Object? o) => o is GameRecord;
}
