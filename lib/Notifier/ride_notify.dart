// import 'dart:convert';
//  import 'package:riverpod_annotation/riverpod_annotation.dart';
// import 'package:http/http.dart' as http;
// part 'ride_notify.g.dart';
// @riverpod
// class AsyncTodos extends _$AsyncTodos {
//   // Future<List<dynamic>> _fetchTodo() async {
//   //   final json = await http.get('api/todos');
//   //   final todos = jsonDecode(json) as List<Map<String, dynamic>>;
//   //   return todos.map(Todo.fromJson).toList();
//   // }
//
//   @override
//   FutureOr<List<dynamic>> build() async {
//     // Load initial todo list from the remote repository
//     return _fetchTodo();
//   }
//
//   // Future<void> addTodo(dynamic todo) async {
//   //   // Set the state to loading
//   //   state = const AsyncValue.loading();
//   //   // Add the new todo and reload the todo list from the remote repository
//   //   state = await AsyncValue.guard(() async {
//   //     await http.post('api/todos', todo.toJson());
//   //     return _fetchTodo();
//   //   });
//   // }
//
//   // // Let's allow removing todos
//   // Future<void> removeTodo(String todoId) async {
//   //   state = const AsyncValue.loading();
//   //   state = await AsyncValue.guard(() async {
//   //     await http.delete('api/todos/$todoId');
//   //     return _fetchTodo();
//   //   });
//   // }
//
//   // // Let's mark a todo as completed
//   // Future<void> toggle(String todoId) async {
//   //   state = const AsyncValue.loading();
//   //   state = await AsyncValue.guard(() async {
//   //     await http.patch(
//   //       'api/todos/$todoId',
//   //       <String, dynamic>{'completed': true},
//   //     );
//   //     return _fetchTodo();
//   //   });
//   // }
//
// }
