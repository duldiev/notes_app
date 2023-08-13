// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:notes_app/src/presentation/screens/note_details_screen.dart'
    as _i1;
import 'package:notes_app/src/presentation/screens/note_editor_screen.dart'
    as _i2;
import 'package:notes_app/src/presentation/screens/notes_screen.dart' as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    NoteDetailsRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.NoteDetailsScreen(),
      );
    },
    NoteEditorRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.NoteEditorScreen(),
      );
    },
    NotesRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.NotesScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.NoteDetailsScreen]
class NoteDetailsRoute extends _i4.PageRouteInfo<void> {
  const NoteDetailsRoute({List<_i4.PageRouteInfo>? children})
      : super(
          NoteDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoteDetailsRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.NoteEditorScreen]
class NoteEditorRoute extends _i4.PageRouteInfo<void> {
  const NoteEditorRoute({List<_i4.PageRouteInfo>? children})
      : super(
          NoteEditorRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoteEditorRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.NotesScreen]
class NotesRoute extends _i4.PageRouteInfo<void> {
  const NotesRoute({List<_i4.PageRouteInfo>? children})
      : super(
          NotesRoute.name,
          initialChildren: children,
        );

  static const String name = 'NotesRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
