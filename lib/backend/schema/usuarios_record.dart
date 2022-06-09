import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'usuarios_record.g.dart';

abstract class UsuariosRecord
    implements Built<UsuariosRecord, UsuariosRecordBuilder> {
  static Serializer<UsuariosRecord> get serializer =>
      _$usuariosRecordSerializer;

  @nullable
  String get nombre;

  @nullable
  String get apellidos;

  @nullable
  String get correo;

  @nullable
  String get contra;

  @nullable
  String get curp;

  @nullable
  String get num;

  @nullable
  String get ima;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(UsuariosRecordBuilder builder) => builder
    ..nombre = ''
    ..apellidos = ''
    ..correo = ''
    ..contra = ''
    ..curp = ''
    ..num = ''
    ..ima = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('usuarios');

  static Stream<UsuariosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  static Future<UsuariosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s)));

  UsuariosRecord._();
  factory UsuariosRecord([void Function(UsuariosRecordBuilder) updates]) =
      _$UsuariosRecord;

  static UsuariosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference});
}

Map<String, dynamic> createUsuariosRecordData({
  String nombre,
  String apellidos,
  String correo,
  String contra,
  String curp,
  String num,
  String ima,
}) =>
    serializers.toFirestore(
        UsuariosRecord.serializer,
        UsuariosRecord((u) => u
          ..nombre = nombre
          ..apellidos = apellidos
          ..correo = correo
          ..contra = contra
          ..curp = curp
          ..num = num
          ..ima = ima));
