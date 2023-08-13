// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'note_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NoteEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function(String value) changeText,
    required TResult Function() attachImage,
    required TResult Function() save,
    required TResult Function(int? id) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function(String value)? changeText,
    TResult? Function()? attachImage,
    TResult? Function()? save,
    TResult? Function(int? id)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function(String value)? changeText,
    TResult Function()? attachImage,
    TResult Function()? save,
    TResult Function(int? id)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Create value) create,
    required TResult Function(ChangeText value) changeText,
    required TResult Function(AttachImage value) attachImage,
    required TResult Function(Save value) save,
    required TResult Function(Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Create value)? create,
    TResult? Function(ChangeText value)? changeText,
    TResult? Function(AttachImage value)? attachImage,
    TResult? Function(Save value)? save,
    TResult? Function(Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Create value)? create,
    TResult Function(ChangeText value)? changeText,
    TResult Function(AttachImage value)? attachImage,
    TResult Function(Save value)? save,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteEventCopyWith<$Res> {
  factory $NoteEventCopyWith(NoteEvent value, $Res Function(NoteEvent) then) =
      _$NoteEventCopyWithImpl<$Res, NoteEvent>;
}

/// @nodoc
class _$NoteEventCopyWithImpl<$Res, $Val extends NoteEvent>
    implements $NoteEventCopyWith<$Res> {
  _$NoteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateCopyWith<$Res> {
  factory _$$CreateCopyWith(_$Create value, $Res Function(_$Create) then) =
      __$$CreateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreateCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$Create>
    implements _$$CreateCopyWith<$Res> {
  __$$CreateCopyWithImpl(_$Create _value, $Res Function(_$Create) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Create implements Create {
  const _$Create();

  @override
  String toString() {
    return 'NoteEvent.create()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Create);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function(String value) changeText,
    required TResult Function() attachImage,
    required TResult Function() save,
    required TResult Function(int? id) delete,
  }) {
    return create();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function(String value)? changeText,
    TResult? Function()? attachImage,
    TResult? Function()? save,
    TResult? Function(int? id)? delete,
  }) {
    return create?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function(String value)? changeText,
    TResult Function()? attachImage,
    TResult Function()? save,
    TResult Function(int? id)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Create value) create,
    required TResult Function(ChangeText value) changeText,
    required TResult Function(AttachImage value) attachImage,
    required TResult Function(Save value) save,
    required TResult Function(Delete value) delete,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Create value)? create,
    TResult? Function(ChangeText value)? changeText,
    TResult? Function(AttachImage value)? attachImage,
    TResult? Function(Save value)? save,
    TResult? Function(Delete value)? delete,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Create value)? create,
    TResult Function(ChangeText value)? changeText,
    TResult Function(AttachImage value)? attachImage,
    TResult Function(Save value)? save,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class Create implements NoteEvent {
  const factory Create() = _$Create;
}

/// @nodoc
abstract class _$$ChangeTextCopyWith<$Res> {
  factory _$$ChangeTextCopyWith(
          _$ChangeText value, $Res Function(_$ChangeText) then) =
      __$$ChangeTextCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$ChangeTextCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$ChangeText>
    implements _$$ChangeTextCopyWith<$Res> {
  __$$ChangeTextCopyWithImpl(
      _$ChangeText _value, $Res Function(_$ChangeText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ChangeText(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeText implements ChangeText {
  const _$ChangeText(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'NoteEvent.changeText(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeText &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeTextCopyWith<_$ChangeText> get copyWith =>
      __$$ChangeTextCopyWithImpl<_$ChangeText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function(String value) changeText,
    required TResult Function() attachImage,
    required TResult Function() save,
    required TResult Function(int? id) delete,
  }) {
    return changeText(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function(String value)? changeText,
    TResult? Function()? attachImage,
    TResult? Function()? save,
    TResult? Function(int? id)? delete,
  }) {
    return changeText?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function(String value)? changeText,
    TResult Function()? attachImage,
    TResult Function()? save,
    TResult Function(int? id)? delete,
    required TResult orElse(),
  }) {
    if (changeText != null) {
      return changeText(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Create value) create,
    required TResult Function(ChangeText value) changeText,
    required TResult Function(AttachImage value) attachImage,
    required TResult Function(Save value) save,
    required TResult Function(Delete value) delete,
  }) {
    return changeText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Create value)? create,
    TResult? Function(ChangeText value)? changeText,
    TResult? Function(AttachImage value)? attachImage,
    TResult? Function(Save value)? save,
    TResult? Function(Delete value)? delete,
  }) {
    return changeText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Create value)? create,
    TResult Function(ChangeText value)? changeText,
    TResult Function(AttachImage value)? attachImage,
    TResult Function(Save value)? save,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (changeText != null) {
      return changeText(this);
    }
    return orElse();
  }
}

abstract class ChangeText implements NoteEvent {
  const factory ChangeText(final String value) = _$ChangeText;

  String get value;
  @JsonKey(ignore: true)
  _$$ChangeTextCopyWith<_$ChangeText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AttachImageCopyWith<$Res> {
  factory _$$AttachImageCopyWith(
          _$AttachImage value, $Res Function(_$AttachImage) then) =
      __$$AttachImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AttachImageCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$AttachImage>
    implements _$$AttachImageCopyWith<$Res> {
  __$$AttachImageCopyWithImpl(
      _$AttachImage _value, $Res Function(_$AttachImage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AttachImage implements AttachImage {
  const _$AttachImage();

  @override
  String toString() {
    return 'NoteEvent.attachImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AttachImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function(String value) changeText,
    required TResult Function() attachImage,
    required TResult Function() save,
    required TResult Function(int? id) delete,
  }) {
    return attachImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function(String value)? changeText,
    TResult? Function()? attachImage,
    TResult? Function()? save,
    TResult? Function(int? id)? delete,
  }) {
    return attachImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function(String value)? changeText,
    TResult Function()? attachImage,
    TResult Function()? save,
    TResult Function(int? id)? delete,
    required TResult orElse(),
  }) {
    if (attachImage != null) {
      return attachImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Create value) create,
    required TResult Function(ChangeText value) changeText,
    required TResult Function(AttachImage value) attachImage,
    required TResult Function(Save value) save,
    required TResult Function(Delete value) delete,
  }) {
    return attachImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Create value)? create,
    TResult? Function(ChangeText value)? changeText,
    TResult? Function(AttachImage value)? attachImage,
    TResult? Function(Save value)? save,
    TResult? Function(Delete value)? delete,
  }) {
    return attachImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Create value)? create,
    TResult Function(ChangeText value)? changeText,
    TResult Function(AttachImage value)? attachImage,
    TResult Function(Save value)? save,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (attachImage != null) {
      return attachImage(this);
    }
    return orElse();
  }
}

abstract class AttachImage implements NoteEvent {
  const factory AttachImage() = _$AttachImage;
}

/// @nodoc
abstract class _$$SaveCopyWith<$Res> {
  factory _$$SaveCopyWith(_$Save value, $Res Function(_$Save) then) =
      __$$SaveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveCopyWithImpl<$Res> extends _$NoteEventCopyWithImpl<$Res, _$Save>
    implements _$$SaveCopyWith<$Res> {
  __$$SaveCopyWithImpl(_$Save _value, $Res Function(_$Save) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Save implements Save {
  const _$Save();

  @override
  String toString() {
    return 'NoteEvent.save()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Save);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function(String value) changeText,
    required TResult Function() attachImage,
    required TResult Function() save,
    required TResult Function(int? id) delete,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function(String value)? changeText,
    TResult? Function()? attachImage,
    TResult? Function()? save,
    TResult? Function(int? id)? delete,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function(String value)? changeText,
    TResult Function()? attachImage,
    TResult Function()? save,
    TResult Function(int? id)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Create value) create,
    required TResult Function(ChangeText value) changeText,
    required TResult Function(AttachImage value) attachImage,
    required TResult Function(Save value) save,
    required TResult Function(Delete value) delete,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Create value)? create,
    TResult? Function(ChangeText value)? changeText,
    TResult? Function(AttachImage value)? attachImage,
    TResult? Function(Save value)? save,
    TResult? Function(Delete value)? delete,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Create value)? create,
    TResult Function(ChangeText value)? changeText,
    TResult Function(AttachImage value)? attachImage,
    TResult Function(Save value)? save,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class Save implements NoteEvent {
  const factory Save() = _$Save;
}

/// @nodoc
abstract class _$$DeleteCopyWith<$Res> {
  factory _$$DeleteCopyWith(_$Delete value, $Res Function(_$Delete) then) =
      __$$DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({int? id});
}

/// @nodoc
class __$$DeleteCopyWithImpl<$Res>
    extends _$NoteEventCopyWithImpl<$Res, _$Delete>
    implements _$$DeleteCopyWith<$Res> {
  __$$DeleteCopyWithImpl(_$Delete _value, $Res Function(_$Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$Delete(
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$Delete implements Delete {
  const _$Delete(this.id);

  @override
  final int? id;

  @override
  String toString() {
    return 'NoteEvent.delete(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Delete &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      __$$DeleteCopyWithImpl<_$Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() create,
    required TResult Function(String value) changeText,
    required TResult Function() attachImage,
    required TResult Function() save,
    required TResult Function(int? id) delete,
  }) {
    return delete(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? create,
    TResult? Function(String value)? changeText,
    TResult? Function()? attachImage,
    TResult? Function()? save,
    TResult? Function(int? id)? delete,
  }) {
    return delete?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? create,
    TResult Function(String value)? changeText,
    TResult Function()? attachImage,
    TResult Function()? save,
    TResult Function(int? id)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Create value) create,
    required TResult Function(ChangeText value) changeText,
    required TResult Function(AttachImage value) attachImage,
    required TResult Function(Save value) save,
    required TResult Function(Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Create value)? create,
    TResult? Function(ChangeText value)? changeText,
    TResult? Function(AttachImage value)? attachImage,
    TResult? Function(Save value)? save,
    TResult? Function(Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Create value)? create,
    TResult Function(ChangeText value)? changeText,
    TResult Function(AttachImage value)? attachImage,
    TResult Function(Save value)? save,
    TResult Function(Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class Delete implements NoteEvent {
  const factory Delete(final int? id) = _$Delete;

  int? get id;
  @JsonKey(ignore: true)
  _$$DeleteCopyWith<_$Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoteState {
  Note? get note => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  bool get failed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NoteStateCopyWith<NoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoteStateCopyWith<$Res> {
  factory $NoteStateCopyWith(NoteState value, $Res Function(NoteState) then) =
      _$NoteStateCopyWithImpl<$Res, NoteState>;
  @useResult
  $Res call({Note? note, bool loading, bool success, bool failed});
}

/// @nodoc
class _$NoteStateCopyWithImpl<$Res, $Val extends NoteState>
    implements $NoteStateCopyWith<$Res> {
  _$NoteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
  }) {
    return _then(_value.copyWith(
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NoteStateCopyWith<$Res> implements $NoteStateCopyWith<$Res> {
  factory _$$_NoteStateCopyWith(
          _$_NoteState value, $Res Function(_$_NoteState) then) =
      __$$_NoteStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Note? note, bool loading, bool success, bool failed});
}

/// @nodoc
class __$$_NoteStateCopyWithImpl<$Res>
    extends _$NoteStateCopyWithImpl<$Res, _$_NoteState>
    implements _$$_NoteStateCopyWith<$Res> {
  __$$_NoteStateCopyWithImpl(
      _$_NoteState _value, $Res Function(_$_NoteState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? note = freezed,
    Object? loading = null,
    Object? success = null,
    Object? failed = null,
  }) {
    return _then(_$_NoteState(
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as Note?,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      failed: null == failed
          ? _value.failed
          : failed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_NoteState implements _NoteState {
  _$_NoteState(
      {this.note = null,
      this.loading = false,
      this.success = false,
      this.failed = false});

  @override
  @JsonKey()
  final Note? note;
  @override
  @JsonKey()
  final bool loading;
  @override
  @JsonKey()
  final bool success;
  @override
  @JsonKey()
  final bool failed;

  @override
  String toString() {
    return 'NoteState(note: $note, loading: $loading, success: $success, failed: $failed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NoteState &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.failed, failed) || other.failed == failed));
  }

  @override
  int get hashCode => Object.hash(runtimeType, note, loading, success, failed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NoteStateCopyWith<_$_NoteState> get copyWith =>
      __$$_NoteStateCopyWithImpl<_$_NoteState>(this, _$identity);
}

abstract class _NoteState implements NoteState {
  factory _NoteState(
      {final Note? note,
      final bool loading,
      final bool success,
      final bool failed}) = _$_NoteState;

  @override
  Note? get note;
  @override
  bool get loading;
  @override
  bool get success;
  @override
  bool get failed;
  @override
  @JsonKey(ignore: true)
  _$$_NoteStateCopyWith<_$_NoteState> get copyWith =>
      throw _privateConstructorUsedError;
}
