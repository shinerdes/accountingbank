import 'dart:convert';
import 'package:accountingbank/model/fix/fix_question.dart';
import 'package:accountingbank/model/write/write_question.dart';
import 'package:dio/dio.dart';

// class PostService {
//   final _dio = Dio(BaseOptions(
//     baseUrl: "https://your-api.com",
//     headers: {"Content-Type": "application/json"},
//   ))
//     ..interceptors.add(LogInterceptor(
//       responseBody: true,
//       requestBody: true,
//     ));
//   final String baseUrl = "http://13.124.70.40/api/v1/problem/1/question";

//   Future<WriteQuestion> createPost(WriteQuestion post) async {
//     try {
//       final response = await _dio.post(
//         baseUrl,
//         data: post.toJson(), // Send the JSON data
//       );

//       print(response);

//       return WriteQuestion.fromJson(response.data); // Freeze the response
//     } catch (e) {
//       throw Exception("Failed to create post: $e");
//     }
//   }
// }
