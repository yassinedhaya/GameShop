// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class GameStruct extends BaseStruct {
  GameStruct({
    String? nom,
    int? prix,
    String? image,
    String? description,
    int? quantity,
  })  : _nom = nom,
        _prix = prix,
        _image = image,
        _description = description,
        _quantity = quantity;

  // "Nom" field.
  String? _nom;
  String get nom => _nom ?? '';
  set nom(String? val) => _nom = val;

  bool hasNom() => _nom != null;

  // "Prix" field.
  int? _prix;
  int get prix => _prix ?? 0;
  set prix(int? val) => _prix = val;

  void incrementPrix(int amount) => prix = prix + amount;

  bool hasPrix() => _prix != null;

  // "Image" field.
  String? _image;
  String get image => _image ?? '';
  set image(String? val) => _image = val;

  bool hasImage() => _image != null;

  // "Description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "Quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  set quantity(int? val) => _quantity = val;

  void incrementQuantity(int amount) => quantity = quantity + amount;

  bool hasQuantity() => _quantity != null;

  static GameStruct fromMap(Map<String, dynamic> data) => GameStruct(
        nom: data['Nom'] as String?,
        prix: castToType<int>(data['Prix']),
        image: data['Image'] as String?,
        description: data['Description'] as String?,
        quantity: castToType<int>(data['Quantity']),
      );

  static GameStruct? maybeFromMap(dynamic data) =>
      data is Map ? GameStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Nom': _nom,
        'Prix': _prix,
        'Image': _image,
        'Description': _description,
        'Quantity': _quantity,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Nom': serializeParam(
          _nom,
          ParamType.String,
        ),
        'Prix': serializeParam(
          _prix,
          ParamType.int,
        ),
        'Image': serializeParam(
          _image,
          ParamType.String,
        ),
        'Description': serializeParam(
          _description,
          ParamType.String,
        ),
        'Quantity': serializeParam(
          _quantity,
          ParamType.int,
        ),
      }.withoutNulls;

  static GameStruct fromSerializableMap(Map<String, dynamic> data) =>
      GameStruct(
        nom: deserializeParam(
          data['Nom'],
          ParamType.String,
          false,
        ),
        prix: deserializeParam(
          data['Prix'],
          ParamType.int,
          false,
        ),
        image: deserializeParam(
          data['Image'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['Description'],
          ParamType.String,
          false,
        ),
        quantity: deserializeParam(
          data['Quantity'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'GameStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is GameStruct &&
        nom == other.nom &&
        prix == other.prix &&
        image == other.image &&
        description == other.description &&
        quantity == other.quantity;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([nom, prix, image, description, quantity]);
}

GameStruct createGameStruct({
  String? nom,
  int? prix,
  String? image,
  String? description,
  int? quantity,
}) =>
    GameStruct(
      nom: nom,
      prix: prix,
      image: image,
      description: description,
      quantity: quantity,
    );
