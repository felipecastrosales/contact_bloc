import 'package:equatable/equatable.dart';

class ContactNote extends Equatable {
  const ContactNote({
    required this.name,
  });

  final String name;

  ContactNote copyWith({
    String? name,
  }) {
    return ContactNote(
      name: name ?? this.name,
    );
  }

  @override
  List<Object> get props => [name];
}
