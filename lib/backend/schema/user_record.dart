import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserRecord extends FirestoreRecord {
  UserRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Username" field.
  String? _username;
  String get username => _username ?? '';
  bool hasUsername() => _username != null;

  // "Password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "Email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "Address" field.
  int? _address;
  int get address => _address ?? 0;
  bool hasAddress() => _address != null;

  // "YearOfBirth" field.
  int? _yearOfBirth;
  int get yearOfBirth => _yearOfBirth ?? 0;
  bool hasYearOfBirth() => _yearOfBirth != null;

  void _initializeFields() {
    _username = snapshotData['Username'] as String?;
    _password = snapshotData['Password'] as String?;
    _email = snapshotData['Email'] as String?;
    _address = castToType<int>(snapshotData['Address']);
    _yearOfBirth = castToType<int>(snapshotData['YearOfBirth']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User');

  static Stream<UserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserRecord.fromSnapshot(s));

  static Future<UserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserRecord.fromSnapshot(s));

  static UserRecord fromSnapshot(DocumentSnapshot snapshot) => UserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserRecordData({
  String? username,
  String? password,
  String? email,
  int? address,
  int? yearOfBirth,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Username': username,
      'Password': password,
      'Email': email,
      'Address': address,
      'YearOfBirth': yearOfBirth,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserRecordDocumentEquality implements Equality<UserRecord> {
  const UserRecordDocumentEquality();

  @override
  bool equals(UserRecord? e1, UserRecord? e2) {
    return e1?.username == e2?.username &&
        e1?.password == e2?.password &&
        e1?.email == e2?.email &&
        e1?.address == e2?.address &&
        e1?.yearOfBirth == e2?.yearOfBirth;
  }

  @override
  int hash(UserRecord? e) => const ListEquality()
      .hash([e?.username, e?.password, e?.email, e?.address, e?.yearOfBirth]);

  @override
  bool isValidKey(Object? o) => o is UserRecord;
}
