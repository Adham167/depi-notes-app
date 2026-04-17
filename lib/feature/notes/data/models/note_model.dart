import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:depi_notes_app/feature/notes/domain/entities/note_entity.dart';

class NoteModel {
  final String id;
  final String title;
  final String content;
  final DateTime createdAt;

  NoteModel({
    required this.id,
    required this.title,
    required this.content,
    required this.createdAt,
  });

  factory NoteModel.fromJson(json) {
    return NoteModel(
      id: json['id'],
      title: json['title'],
      content: json['subTitle'],
      createdAt: (json['createdAt'] as Timestamp).toDate(),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'subTitle': content,
      'createdAt': Timestamp.fromDate(createdAt),
    };
  }

  NoteModel copyWith({
    String? id,
    String? title,
    String? content,
    DateTime? createdAt,
  }) {
    return NoteModel(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      createdAt: createdAt ?? this.createdAt,
    );
  }
}

extension NoteMapper on NoteModel {
  NoteEntity toNoteEntity() {
    return NoteEntity(
      id: id,
      title: title,
      content: content,
      createdAt: createdAt,
    );
  }
}

extension NoteEntityMapper on NoteEntity {
  NoteModel toNoteModel() {
    return NoteModel(
      id: id,
      title: title,
      content: content,
      createdAt: createdAt,
    );
  }
}
