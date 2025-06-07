part of 'sportshalls_cubit.dart';

@immutable
class SportshallsState {
  final List<QueryDocumentSnapshot<Map<String, dynamic>>> documents;
  final bool isLoading;
  final String errorMessage;

  const SportshallsState({
    required this.documents,
    required this.isLoading,
    required this.errorMessage,
  });
}
