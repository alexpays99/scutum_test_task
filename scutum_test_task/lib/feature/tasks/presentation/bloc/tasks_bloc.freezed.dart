// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllTasksFromDb,
    required TResult Function(TaskEntity task) insertTask,
    required TResult Function(String id, TaskEntity task) updateTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(String title) inputTitle,
    required TResult Function(String description) inputDescription,
    required TResult Function(TaskCategory category) inputCategory,
    required TResult Function() resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllTasksFromDb,
    TResult? Function(TaskEntity task)? insertTask,
    TResult? Function(String id, TaskEntity task)? updateTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(String title)? inputTitle,
    TResult? Function(String description)? inputDescription,
    TResult? Function(TaskCategory category)? inputCategory,
    TResult? Function()? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllTasksFromDb,
    TResult Function(TaskEntity task)? insertTask,
    TResult Function(String id, TaskEntity task)? updateTask,
    TResult Function(String id)? deleteTask,
    TResult Function(String title)? inputTitle,
    TResult Function(String description)? inputDescription,
    TResult Function(TaskCategory category)? inputCategory,
    TResult Function()? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTasksFromDb value) fetchAllTasksFromDb,
    required TResult Function(_InsertTask value) insertTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_InputTitle value) inputTitle,
    required TResult Function(_InputDescription value) inputDescription,
    required TResult Function(_InputCategory value) inputCategory,
    required TResult Function(_ResetState value) resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult? Function(_InsertTask value)? insertTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_InputTitle value)? inputTitle,
    TResult? Function(_InputDescription value)? inputDescription,
    TResult? Function(_InputCategory value)? inputCategory,
    TResult? Function(_ResetState value)? resetState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult Function(_InsertTask value)? insertTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_InputTitle value)? inputTitle,
    TResult Function(_InputDescription value)? inputDescription,
    TResult Function(_InputCategory value)? inputCategory,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res, $Val extends TasksEvent>
    implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FetchAllTasksFromDbImplCopyWith<$Res> {
  factory _$$FetchAllTasksFromDbImplCopyWith(_$FetchAllTasksFromDbImpl value,
          $Res Function(_$FetchAllTasksFromDbImpl) then) =
      __$$FetchAllTasksFromDbImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FetchAllTasksFromDbImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$FetchAllTasksFromDbImpl>
    implements _$$FetchAllTasksFromDbImplCopyWith<$Res> {
  __$$FetchAllTasksFromDbImplCopyWithImpl(_$FetchAllTasksFromDbImpl _value,
      $Res Function(_$FetchAllTasksFromDbImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FetchAllTasksFromDbImpl
    with DiagnosticableTreeMixin
    implements _FetchAllTasksFromDb {
  const _$FetchAllTasksFromDbImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksEvent.fetchAllTasksFromDb()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'TasksEvent.fetchAllTasksFromDb'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllTasksFromDbImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllTasksFromDb,
    required TResult Function(TaskEntity task) insertTask,
    required TResult Function(String id, TaskEntity task) updateTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(String title) inputTitle,
    required TResult Function(String description) inputDescription,
    required TResult Function(TaskCategory category) inputCategory,
    required TResult Function() resetState,
  }) {
    return fetchAllTasksFromDb();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllTasksFromDb,
    TResult? Function(TaskEntity task)? insertTask,
    TResult? Function(String id, TaskEntity task)? updateTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(String title)? inputTitle,
    TResult? Function(String description)? inputDescription,
    TResult? Function(TaskCategory category)? inputCategory,
    TResult? Function()? resetState,
  }) {
    return fetchAllTasksFromDb?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllTasksFromDb,
    TResult Function(TaskEntity task)? insertTask,
    TResult Function(String id, TaskEntity task)? updateTask,
    TResult Function(String id)? deleteTask,
    TResult Function(String title)? inputTitle,
    TResult Function(String description)? inputDescription,
    TResult Function(TaskCategory category)? inputCategory,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (fetchAllTasksFromDb != null) {
      return fetchAllTasksFromDb();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTasksFromDb value) fetchAllTasksFromDb,
    required TResult Function(_InsertTask value) insertTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_InputTitle value) inputTitle,
    required TResult Function(_InputDescription value) inputDescription,
    required TResult Function(_InputCategory value) inputCategory,
    required TResult Function(_ResetState value) resetState,
  }) {
    return fetchAllTasksFromDb(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult? Function(_InsertTask value)? insertTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_InputTitle value)? inputTitle,
    TResult? Function(_InputDescription value)? inputDescription,
    TResult? Function(_InputCategory value)? inputCategory,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return fetchAllTasksFromDb?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult Function(_InsertTask value)? insertTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_InputTitle value)? inputTitle,
    TResult Function(_InputDescription value)? inputDescription,
    TResult Function(_InputCategory value)? inputCategory,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (fetchAllTasksFromDb != null) {
      return fetchAllTasksFromDb(this);
    }
    return orElse();
  }
}

abstract class _FetchAllTasksFromDb implements TasksEvent {
  const factory _FetchAllTasksFromDb() = _$FetchAllTasksFromDbImpl;
}

/// @nodoc
abstract class _$$InsertTaskImplCopyWith<$Res> {
  factory _$$InsertTaskImplCopyWith(
          _$InsertTaskImpl value, $Res Function(_$InsertTaskImpl) then) =
      __$$InsertTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskEntity task});
}

/// @nodoc
class __$$InsertTaskImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$InsertTaskImpl>
    implements _$$InsertTaskImplCopyWith<$Res> {
  __$$InsertTaskImplCopyWithImpl(
      _$InsertTaskImpl _value, $Res Function(_$InsertTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$InsertTaskImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$InsertTaskImpl with DiagnosticableTreeMixin implements _InsertTask {
  const _$InsertTaskImpl(this.task);

  @override
  final TaskEntity task;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksEvent.insertTask(task: $task)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksEvent.insertTask'))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InsertTaskImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InsertTaskImplCopyWith<_$InsertTaskImpl> get copyWith =>
      __$$InsertTaskImplCopyWithImpl<_$InsertTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllTasksFromDb,
    required TResult Function(TaskEntity task) insertTask,
    required TResult Function(String id, TaskEntity task) updateTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(String title) inputTitle,
    required TResult Function(String description) inputDescription,
    required TResult Function(TaskCategory category) inputCategory,
    required TResult Function() resetState,
  }) {
    return insertTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllTasksFromDb,
    TResult? Function(TaskEntity task)? insertTask,
    TResult? Function(String id, TaskEntity task)? updateTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(String title)? inputTitle,
    TResult? Function(String description)? inputDescription,
    TResult? Function(TaskCategory category)? inputCategory,
    TResult? Function()? resetState,
  }) {
    return insertTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllTasksFromDb,
    TResult Function(TaskEntity task)? insertTask,
    TResult Function(String id, TaskEntity task)? updateTask,
    TResult Function(String id)? deleteTask,
    TResult Function(String title)? inputTitle,
    TResult Function(String description)? inputDescription,
    TResult Function(TaskCategory category)? inputCategory,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (insertTask != null) {
      return insertTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTasksFromDb value) fetchAllTasksFromDb,
    required TResult Function(_InsertTask value) insertTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_InputTitle value) inputTitle,
    required TResult Function(_InputDescription value) inputDescription,
    required TResult Function(_InputCategory value) inputCategory,
    required TResult Function(_ResetState value) resetState,
  }) {
    return insertTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult? Function(_InsertTask value)? insertTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_InputTitle value)? inputTitle,
    TResult? Function(_InputDescription value)? inputDescription,
    TResult? Function(_InputCategory value)? inputCategory,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return insertTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult Function(_InsertTask value)? insertTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_InputTitle value)? inputTitle,
    TResult Function(_InputDescription value)? inputDescription,
    TResult Function(_InputCategory value)? inputCategory,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (insertTask != null) {
      return insertTask(this);
    }
    return orElse();
  }
}

abstract class _InsertTask implements TasksEvent {
  const factory _InsertTask(final TaskEntity task) = _$InsertTaskImpl;

  TaskEntity get task;
  @JsonKey(ignore: true)
  _$$InsertTaskImplCopyWith<_$InsertTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateTaskImplCopyWith<$Res> {
  factory _$$UpdateTaskImplCopyWith(
          _$UpdateTaskImpl value, $Res Function(_$UpdateTaskImpl) then) =
      __$$UpdateTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id, TaskEntity task});
}

/// @nodoc
class __$$UpdateTaskImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$UpdateTaskImpl>
    implements _$$UpdateTaskImplCopyWith<$Res> {
  __$$UpdateTaskImplCopyWithImpl(
      _$UpdateTaskImpl _value, $Res Function(_$UpdateTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? task = null,
  }) {
    return _then(_$UpdateTaskImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as TaskEntity,
    ));
  }
}

/// @nodoc

class _$UpdateTaskImpl with DiagnosticableTreeMixin implements _UpdateTask {
  const _$UpdateTaskImpl(this.id, this.task);

  @override
  final String id;
  @override
  final TaskEntity task;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksEvent.updateTask(id: $id, task: $task)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksEvent.updateTask'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('task', task));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateTaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateTaskImplCopyWith<_$UpdateTaskImpl> get copyWith =>
      __$$UpdateTaskImplCopyWithImpl<_$UpdateTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllTasksFromDb,
    required TResult Function(TaskEntity task) insertTask,
    required TResult Function(String id, TaskEntity task) updateTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(String title) inputTitle,
    required TResult Function(String description) inputDescription,
    required TResult Function(TaskCategory category) inputCategory,
    required TResult Function() resetState,
  }) {
    return updateTask(id, task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllTasksFromDb,
    TResult? Function(TaskEntity task)? insertTask,
    TResult? Function(String id, TaskEntity task)? updateTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(String title)? inputTitle,
    TResult? Function(String description)? inputDescription,
    TResult? Function(TaskCategory category)? inputCategory,
    TResult? Function()? resetState,
  }) {
    return updateTask?.call(id, task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllTasksFromDb,
    TResult Function(TaskEntity task)? insertTask,
    TResult Function(String id, TaskEntity task)? updateTask,
    TResult Function(String id)? deleteTask,
    TResult Function(String title)? inputTitle,
    TResult Function(String description)? inputDescription,
    TResult Function(TaskCategory category)? inputCategory,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(id, task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTasksFromDb value) fetchAllTasksFromDb,
    required TResult Function(_InsertTask value) insertTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_InputTitle value) inputTitle,
    required TResult Function(_InputDescription value) inputDescription,
    required TResult Function(_InputCategory value) inputCategory,
    required TResult Function(_ResetState value) resetState,
  }) {
    return updateTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult? Function(_InsertTask value)? insertTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_InputTitle value)? inputTitle,
    TResult? Function(_InputDescription value)? inputDescription,
    TResult? Function(_InputCategory value)? inputCategory,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return updateTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult Function(_InsertTask value)? insertTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_InputTitle value)? inputTitle,
    TResult Function(_InputDescription value)? inputDescription,
    TResult Function(_InputCategory value)? inputCategory,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (updateTask != null) {
      return updateTask(this);
    }
    return orElse();
  }
}

abstract class _UpdateTask implements TasksEvent {
  const factory _UpdateTask(final String id, final TaskEntity task) =
      _$UpdateTaskImpl;

  String get id;
  TaskEntity get task;
  @JsonKey(ignore: true)
  _$$UpdateTaskImplCopyWith<_$UpdateTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteTaskImplCopyWith<$Res> {
  factory _$$DeleteTaskImplCopyWith(
          _$DeleteTaskImpl value, $Res Function(_$DeleteTaskImpl) then) =
      __$$DeleteTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$DeleteTaskImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$DeleteTaskImpl>
    implements _$$DeleteTaskImplCopyWith<$Res> {
  __$$DeleteTaskImplCopyWithImpl(
      _$DeleteTaskImpl _value, $Res Function(_$DeleteTaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteTaskImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteTaskImpl with DiagnosticableTreeMixin implements _DeleteTask {
  const _$DeleteTaskImpl(this.id);

  @override
  final String id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksEvent.deleteTask(id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksEvent.deleteTask'))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteTaskImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      __$$DeleteTaskImplCopyWithImpl<_$DeleteTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllTasksFromDb,
    required TResult Function(TaskEntity task) insertTask,
    required TResult Function(String id, TaskEntity task) updateTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(String title) inputTitle,
    required TResult Function(String description) inputDescription,
    required TResult Function(TaskCategory category) inputCategory,
    required TResult Function() resetState,
  }) {
    return deleteTask(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllTasksFromDb,
    TResult? Function(TaskEntity task)? insertTask,
    TResult? Function(String id, TaskEntity task)? updateTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(String title)? inputTitle,
    TResult? Function(String description)? inputDescription,
    TResult? Function(TaskCategory category)? inputCategory,
    TResult? Function()? resetState,
  }) {
    return deleteTask?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllTasksFromDb,
    TResult Function(TaskEntity task)? insertTask,
    TResult Function(String id, TaskEntity task)? updateTask,
    TResult Function(String id)? deleteTask,
    TResult Function(String title)? inputTitle,
    TResult Function(String description)? inputDescription,
    TResult Function(TaskCategory category)? inputCategory,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTasksFromDb value) fetchAllTasksFromDb,
    required TResult Function(_InsertTask value) insertTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_InputTitle value) inputTitle,
    required TResult Function(_InputDescription value) inputDescription,
    required TResult Function(_InputCategory value) inputCategory,
    required TResult Function(_ResetState value) resetState,
  }) {
    return deleteTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult? Function(_InsertTask value)? insertTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_InputTitle value)? inputTitle,
    TResult? Function(_InputDescription value)? inputDescription,
    TResult? Function(_InputCategory value)? inputCategory,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return deleteTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult Function(_InsertTask value)? insertTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_InputTitle value)? inputTitle,
    TResult Function(_InputDescription value)? inputDescription,
    TResult Function(_InputCategory value)? inputCategory,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (deleteTask != null) {
      return deleteTask(this);
    }
    return orElse();
  }
}

abstract class _DeleteTask implements TasksEvent {
  const factory _DeleteTask(final String id) = _$DeleteTaskImpl;

  String get id;
  @JsonKey(ignore: true)
  _$$DeleteTaskImplCopyWith<_$DeleteTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputTitleImplCopyWith<$Res> {
  factory _$$InputTitleImplCopyWith(
          _$InputTitleImpl value, $Res Function(_$InputTitleImpl) then) =
      __$$InputTitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$InputTitleImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$InputTitleImpl>
    implements _$$InputTitleImplCopyWith<$Res> {
  __$$InputTitleImplCopyWithImpl(
      _$InputTitleImpl _value, $Res Function(_$InputTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$InputTitleImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InputTitleImpl with DiagnosticableTreeMixin implements _InputTitle {
  const _$InputTitleImpl(this.title);

  @override
  final String title;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksEvent.inputTitle(title: $title)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksEvent.inputTitle'))
      ..add(DiagnosticsProperty('title', title));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputTitleImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputTitleImplCopyWith<_$InputTitleImpl> get copyWith =>
      __$$InputTitleImplCopyWithImpl<_$InputTitleImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllTasksFromDb,
    required TResult Function(TaskEntity task) insertTask,
    required TResult Function(String id, TaskEntity task) updateTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(String title) inputTitle,
    required TResult Function(String description) inputDescription,
    required TResult Function(TaskCategory category) inputCategory,
    required TResult Function() resetState,
  }) {
    return inputTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllTasksFromDb,
    TResult? Function(TaskEntity task)? insertTask,
    TResult? Function(String id, TaskEntity task)? updateTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(String title)? inputTitle,
    TResult? Function(String description)? inputDescription,
    TResult? Function(TaskCategory category)? inputCategory,
    TResult? Function()? resetState,
  }) {
    return inputTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllTasksFromDb,
    TResult Function(TaskEntity task)? insertTask,
    TResult Function(String id, TaskEntity task)? updateTask,
    TResult Function(String id)? deleteTask,
    TResult Function(String title)? inputTitle,
    TResult Function(String description)? inputDescription,
    TResult Function(TaskCategory category)? inputCategory,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (inputTitle != null) {
      return inputTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTasksFromDb value) fetchAllTasksFromDb,
    required TResult Function(_InsertTask value) insertTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_InputTitle value) inputTitle,
    required TResult Function(_InputDescription value) inputDescription,
    required TResult Function(_InputCategory value) inputCategory,
    required TResult Function(_ResetState value) resetState,
  }) {
    return inputTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult? Function(_InsertTask value)? insertTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_InputTitle value)? inputTitle,
    TResult? Function(_InputDescription value)? inputDescription,
    TResult? Function(_InputCategory value)? inputCategory,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return inputTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult Function(_InsertTask value)? insertTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_InputTitle value)? inputTitle,
    TResult Function(_InputDescription value)? inputDescription,
    TResult Function(_InputCategory value)? inputCategory,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (inputTitle != null) {
      return inputTitle(this);
    }
    return orElse();
  }
}

abstract class _InputTitle implements TasksEvent {
  const factory _InputTitle(final String title) = _$InputTitleImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$InputTitleImplCopyWith<_$InputTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputDescriptionImplCopyWith<$Res> {
  factory _$$InputDescriptionImplCopyWith(_$InputDescriptionImpl value,
          $Res Function(_$InputDescriptionImpl) then) =
      __$$InputDescriptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String description});
}

/// @nodoc
class __$$InputDescriptionImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$InputDescriptionImpl>
    implements _$$InputDescriptionImplCopyWith<$Res> {
  __$$InputDescriptionImplCopyWithImpl(_$InputDescriptionImpl _value,
      $Res Function(_$InputDescriptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
  }) {
    return _then(_$InputDescriptionImpl(
      null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InputDescriptionImpl
    with DiagnosticableTreeMixin
    implements _InputDescription {
  const _$InputDescriptionImpl(this.description);

  @override
  final String description;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksEvent.inputDescription(description: $description)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksEvent.inputDescription'))
      ..add(DiagnosticsProperty('description', description));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputDescriptionImpl &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @override
  int get hashCode => Object.hash(runtimeType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputDescriptionImplCopyWith<_$InputDescriptionImpl> get copyWith =>
      __$$InputDescriptionImplCopyWithImpl<_$InputDescriptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllTasksFromDb,
    required TResult Function(TaskEntity task) insertTask,
    required TResult Function(String id, TaskEntity task) updateTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(String title) inputTitle,
    required TResult Function(String description) inputDescription,
    required TResult Function(TaskCategory category) inputCategory,
    required TResult Function() resetState,
  }) {
    return inputDescription(description);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllTasksFromDb,
    TResult? Function(TaskEntity task)? insertTask,
    TResult? Function(String id, TaskEntity task)? updateTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(String title)? inputTitle,
    TResult? Function(String description)? inputDescription,
    TResult? Function(TaskCategory category)? inputCategory,
    TResult? Function()? resetState,
  }) {
    return inputDescription?.call(description);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllTasksFromDb,
    TResult Function(TaskEntity task)? insertTask,
    TResult Function(String id, TaskEntity task)? updateTask,
    TResult Function(String id)? deleteTask,
    TResult Function(String title)? inputTitle,
    TResult Function(String description)? inputDescription,
    TResult Function(TaskCategory category)? inputCategory,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (inputDescription != null) {
      return inputDescription(description);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTasksFromDb value) fetchAllTasksFromDb,
    required TResult Function(_InsertTask value) insertTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_InputTitle value) inputTitle,
    required TResult Function(_InputDescription value) inputDescription,
    required TResult Function(_InputCategory value) inputCategory,
    required TResult Function(_ResetState value) resetState,
  }) {
    return inputDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult? Function(_InsertTask value)? insertTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_InputTitle value)? inputTitle,
    TResult? Function(_InputDescription value)? inputDescription,
    TResult? Function(_InputCategory value)? inputCategory,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return inputDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult Function(_InsertTask value)? insertTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_InputTitle value)? inputTitle,
    TResult Function(_InputDescription value)? inputDescription,
    TResult Function(_InputCategory value)? inputCategory,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (inputDescription != null) {
      return inputDescription(this);
    }
    return orElse();
  }
}

abstract class _InputDescription implements TasksEvent {
  const factory _InputDescription(final String description) =
      _$InputDescriptionImpl;

  String get description;
  @JsonKey(ignore: true)
  _$$InputDescriptionImplCopyWith<_$InputDescriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputCategoryImplCopyWith<$Res> {
  factory _$$InputCategoryImplCopyWith(
          _$InputCategoryImpl value, $Res Function(_$InputCategoryImpl) then) =
      __$$InputCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TaskCategory category});
}

/// @nodoc
class __$$InputCategoryImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$InputCategoryImpl>
    implements _$$InputCategoryImplCopyWith<$Res> {
  __$$InputCategoryImplCopyWithImpl(
      _$InputCategoryImpl _value, $Res Function(_$InputCategoryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$InputCategoryImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TaskCategory,
    ));
  }
}

/// @nodoc

class _$InputCategoryImpl
    with DiagnosticableTreeMixin
    implements _InputCategory {
  const _$InputCategoryImpl(this.category);

  @override
  final TaskCategory category;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksEvent.inputCategory(category: $category)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksEvent.inputCategory'))
      ..add(DiagnosticsProperty('category', category));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputCategoryImplCopyWith<_$InputCategoryImpl> get copyWith =>
      __$$InputCategoryImplCopyWithImpl<_$InputCategoryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllTasksFromDb,
    required TResult Function(TaskEntity task) insertTask,
    required TResult Function(String id, TaskEntity task) updateTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(String title) inputTitle,
    required TResult Function(String description) inputDescription,
    required TResult Function(TaskCategory category) inputCategory,
    required TResult Function() resetState,
  }) {
    return inputCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllTasksFromDb,
    TResult? Function(TaskEntity task)? insertTask,
    TResult? Function(String id, TaskEntity task)? updateTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(String title)? inputTitle,
    TResult? Function(String description)? inputDescription,
    TResult? Function(TaskCategory category)? inputCategory,
    TResult? Function()? resetState,
  }) {
    return inputCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllTasksFromDb,
    TResult Function(TaskEntity task)? insertTask,
    TResult Function(String id, TaskEntity task)? updateTask,
    TResult Function(String id)? deleteTask,
    TResult Function(String title)? inputTitle,
    TResult Function(String description)? inputDescription,
    TResult Function(TaskCategory category)? inputCategory,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (inputCategory != null) {
      return inputCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTasksFromDb value) fetchAllTasksFromDb,
    required TResult Function(_InsertTask value) insertTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_InputTitle value) inputTitle,
    required TResult Function(_InputDescription value) inputDescription,
    required TResult Function(_InputCategory value) inputCategory,
    required TResult Function(_ResetState value) resetState,
  }) {
    return inputCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult? Function(_InsertTask value)? insertTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_InputTitle value)? inputTitle,
    TResult? Function(_InputDescription value)? inputDescription,
    TResult? Function(_InputCategory value)? inputCategory,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return inputCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult Function(_InsertTask value)? insertTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_InputTitle value)? inputTitle,
    TResult Function(_InputDescription value)? inputDescription,
    TResult Function(_InputCategory value)? inputCategory,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (inputCategory != null) {
      return inputCategory(this);
    }
    return orElse();
  }
}

abstract class _InputCategory implements TasksEvent {
  const factory _InputCategory(final TaskCategory category) =
      _$InputCategoryImpl;

  TaskCategory get category;
  @JsonKey(ignore: true)
  _$$InputCategoryImplCopyWith<_$InputCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetStateImplCopyWith<$Res> {
  factory _$$ResetStateImplCopyWith(
          _$ResetStateImpl value, $Res Function(_$ResetStateImpl) then) =
      __$$ResetStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResetStateImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$ResetStateImpl>
    implements _$$ResetStateImplCopyWith<$Res> {
  __$$ResetStateImplCopyWithImpl(
      _$ResetStateImpl _value, $Res Function(_$ResetStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ResetStateImpl with DiagnosticableTreeMixin implements _ResetState {
  const _$ResetStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksEvent.resetState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'TasksEvent.resetState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResetStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchAllTasksFromDb,
    required TResult Function(TaskEntity task) insertTask,
    required TResult Function(String id, TaskEntity task) updateTask,
    required TResult Function(String id) deleteTask,
    required TResult Function(String title) inputTitle,
    required TResult Function(String description) inputDescription,
    required TResult Function(TaskCategory category) inputCategory,
    required TResult Function() resetState,
  }) {
    return resetState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fetchAllTasksFromDb,
    TResult? Function(TaskEntity task)? insertTask,
    TResult? Function(String id, TaskEntity task)? updateTask,
    TResult? Function(String id)? deleteTask,
    TResult? Function(String title)? inputTitle,
    TResult? Function(String description)? inputDescription,
    TResult? Function(TaskCategory category)? inputCategory,
    TResult? Function()? resetState,
  }) {
    return resetState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchAllTasksFromDb,
    TResult Function(TaskEntity task)? insertTask,
    TResult Function(String id, TaskEntity task)? updateTask,
    TResult Function(String id)? deleteTask,
    TResult Function(String title)? inputTitle,
    TResult Function(String description)? inputDescription,
    TResult Function(TaskCategory category)? inputCategory,
    TResult Function()? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllTasksFromDb value) fetchAllTasksFromDb,
    required TResult Function(_InsertTask value) insertTask,
    required TResult Function(_UpdateTask value) updateTask,
    required TResult Function(_DeleteTask value) deleteTask,
    required TResult Function(_InputTitle value) inputTitle,
    required TResult Function(_InputDescription value) inputDescription,
    required TResult Function(_InputCategory value) inputCategory,
    required TResult Function(_ResetState value) resetState,
  }) {
    return resetState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult? Function(_InsertTask value)? insertTask,
    TResult? Function(_UpdateTask value)? updateTask,
    TResult? Function(_DeleteTask value)? deleteTask,
    TResult? Function(_InputTitle value)? inputTitle,
    TResult? Function(_InputDescription value)? inputDescription,
    TResult? Function(_InputCategory value)? inputCategory,
    TResult? Function(_ResetState value)? resetState,
  }) {
    return resetState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllTasksFromDb value)? fetchAllTasksFromDb,
    TResult Function(_InsertTask value)? insertTask,
    TResult Function(_UpdateTask value)? updateTask,
    TResult Function(_DeleteTask value)? deleteTask,
    TResult Function(_InputTitle value)? inputTitle,
    TResult Function(_InputDescription value)? inputDescription,
    TResult Function(_InputCategory value)? inputCategory,
    TResult Function(_ResetState value)? resetState,
    required TResult orElse(),
  }) {
    if (resetState != null) {
      return resetState(this);
    }
    return orElse();
  }
}

abstract class _ResetState implements TasksEvent {
  const factory _ResetState() = _$ResetStateImpl;
}

/// @nodoc
mixin _$TasksState {
  ValueListenable<List<TaskEntity>>? get taskListenable =>
      throw _privateConstructorUsedError;
  Failure? get failure => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksStateCopyWith<TasksState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksStateCopyWith<$Res> {
  factory $TasksStateCopyWith(
          TasksState value, $Res Function(TasksState) then) =
      _$TasksStateCopyWithImpl<$Res, TasksState>;
  @useResult
  $Res call(
      {ValueListenable<List<TaskEntity>>? taskListenable, Failure? failure});
}

/// @nodoc
class _$TasksStateCopyWithImpl<$Res, $Val extends TasksState>
    implements $TasksStateCopyWith<$Res> {
  _$TasksStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskListenable = freezed,
    Object? failure = freezed,
  }) {
    return _then(_value.copyWith(
      taskListenable: freezed == taskListenable
          ? _value.taskListenable
          : taskListenable // ignore: cast_nullable_to_non_nullable
              as ValueListenable<List<TaskEntity>>?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksStateImplCopyWith<$Res>
    implements $TasksStateCopyWith<$Res> {
  factory _$$TasksStateImplCopyWith(
          _$TasksStateImpl value, $Res Function(_$TasksStateImpl) then) =
      __$$TasksStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ValueListenable<List<TaskEntity>>? taskListenable, Failure? failure});
}

/// @nodoc
class __$$TasksStateImplCopyWithImpl<$Res>
    extends _$TasksStateCopyWithImpl<$Res, _$TasksStateImpl>
    implements _$$TasksStateImplCopyWith<$Res> {
  __$$TasksStateImplCopyWithImpl(
      _$TasksStateImpl _value, $Res Function(_$TasksStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskListenable = freezed,
    Object? failure = freezed,
  }) {
    return _then(_$TasksStateImpl(
      taskListenable: freezed == taskListenable
          ? _value.taskListenable
          : taskListenable // ignore: cast_nullable_to_non_nullable
              as ValueListenable<List<TaskEntity>>?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }
}

/// @nodoc

class _$TasksStateImpl with DiagnosticableTreeMixin implements _TasksState {
  const _$TasksStateImpl({this.taskListenable, this.failure});

  @override
  final ValueListenable<List<TaskEntity>>? taskListenable;
  @override
  final Failure? failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TasksState(taskListenable: $taskListenable, failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TasksState'))
      ..add(DiagnosticsProperty('taskListenable', taskListenable))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksStateImpl &&
            (identical(other.taskListenable, taskListenable) ||
                other.taskListenable == taskListenable) &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, taskListenable, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksStateImplCopyWith<_$TasksStateImpl> get copyWith =>
      __$$TasksStateImplCopyWithImpl<_$TasksStateImpl>(this, _$identity);
}

abstract class _TasksState implements TasksState {
  const factory _TasksState(
      {final ValueListenable<List<TaskEntity>>? taskListenable,
      final Failure? failure}) = _$TasksStateImpl;

  @override
  ValueListenable<List<TaskEntity>>? get taskListenable;
  @override
  Failure? get failure;
  @override
  @JsonKey(ignore: true)
  _$$TasksStateImplCopyWith<_$TasksStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
