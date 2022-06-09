// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuarios_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsuariosRecord> _$usuariosRecordSerializer =
    new _$UsuariosRecordSerializer();

class _$UsuariosRecordSerializer
    implements StructuredSerializer<UsuariosRecord> {
  @override
  final Iterable<Type> types = const [UsuariosRecord, _$UsuariosRecord];
  @override
  final String wireName = 'UsuariosRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, UsuariosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.nombre;
    if (value != null) {
      result
        ..add('nombre')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.apellidos;
    if (value != null) {
      result
        ..add('apellidos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.correo;
    if (value != null) {
      result
        ..add('correo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.contra;
    if (value != null) {
      result
        ..add('contra')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.curp;
    if (value != null) {
      result
        ..add('curp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.num;
    if (value != null) {
      result
        ..add('num')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ima;
    if (value != null) {
      result
        ..add('ima')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType(Object)])));
    }
    return result;
  }

  @override
  UsuariosRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsuariosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'nombre':
          result.nombre = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'apellidos':
          result.apellidos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'correo':
          result.correo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contra':
          result.contra = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'curp':
          result.curp = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'num':
          result.num = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ima':
          result.ima = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(
                      DocumentReference, const [const FullType(Object)]))
              as DocumentReference<Object>;
          break;
      }
    }

    return result.build();
  }
}

class _$UsuariosRecord extends UsuariosRecord {
  @override
  final String nombre;
  @override
  final String apellidos;
  @override
  final String correo;
  @override
  final String contra;
  @override
  final String curp;
  @override
  final String num;
  @override
  final String ima;
  @override
  final DocumentReference<Object> reference;

  factory _$UsuariosRecord([void Function(UsuariosRecordBuilder) updates]) =>
      (new UsuariosRecordBuilder()..update(updates)).build();

  _$UsuariosRecord._(
      {this.nombre,
      this.apellidos,
      this.correo,
      this.contra,
      this.curp,
      this.num,
      this.ima,
      this.reference})
      : super._();

  @override
  UsuariosRecord rebuild(void Function(UsuariosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsuariosRecordBuilder toBuilder() =>
      new UsuariosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsuariosRecord &&
        nombre == other.nombre &&
        apellidos == other.apellidos &&
        correo == other.correo &&
        contra == other.contra &&
        curp == other.curp &&
        num == other.num &&
        ima == other.ima &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, nombre.hashCode), apellidos.hashCode),
                            correo.hashCode),
                        contra.hashCode),
                    curp.hashCode),
                num.hashCode),
            ima.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UsuariosRecord')
          ..add('nombre', nombre)
          ..add('apellidos', apellidos)
          ..add('correo', correo)
          ..add('contra', contra)
          ..add('curp', curp)
          ..add('num', num)
          ..add('ima', ima)
          ..add('reference', reference))
        .toString();
  }
}

class UsuariosRecordBuilder
    implements Builder<UsuariosRecord, UsuariosRecordBuilder> {
  _$UsuariosRecord _$v;

  String _nombre;
  String get nombre => _$this._nombre;
  set nombre(String nombre) => _$this._nombre = nombre;

  String _apellidos;
  String get apellidos => _$this._apellidos;
  set apellidos(String apellidos) => _$this._apellidos = apellidos;

  String _correo;
  String get correo => _$this._correo;
  set correo(String correo) => _$this._correo = correo;

  String _contra;
  String get contra => _$this._contra;
  set contra(String contra) => _$this._contra = contra;

  String _curp;
  String get curp => _$this._curp;
  set curp(String curp) => _$this._curp = curp;

  String _num;
  String get num => _$this._num;
  set num(String num) => _$this._num = num;

  String _ima;
  String get ima => _$this._ima;
  set ima(String ima) => _$this._ima = ima;

  DocumentReference<Object> _reference;
  DocumentReference<Object> get reference => _$this._reference;
  set reference(DocumentReference<Object> reference) =>
      _$this._reference = reference;

  UsuariosRecordBuilder() {
    UsuariosRecord._initializeBuilder(this);
  }

  UsuariosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nombre = $v.nombre;
      _apellidos = $v.apellidos;
      _correo = $v.correo;
      _contra = $v.contra;
      _curp = $v.curp;
      _num = $v.num;
      _ima = $v.ima;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsuariosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsuariosRecord;
  }

  @override
  void update(void Function(UsuariosRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UsuariosRecord build() {
    final _$result = _$v ??
        new _$UsuariosRecord._(
            nombre: nombre,
            apellidos: apellidos,
            correo: correo,
            contra: contra,
            curp: curp,
            num: num,
            ima: ima,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
