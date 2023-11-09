part of 'poems_cubit.dart';

@immutable
abstract class PoemsState {
  const PoemsState();
}

class PoemsInitial extends PoemsState {}

class PoemsLoading extends PoemsState {}

class PoemsEmpty extends PoemsState {}

class PoemsFailure extends PoemsState {
  final String errorMessage;

  const PoemsFailure(this.errorMessage);
}

class PoemsSuccess extends PoemsState {
  final List<ShortPoemModel> poems;

  const PoemsSuccess(this.poems);
}

// Show Poem
class ShowPoemLoading extends PoemsState {}

class ShowPoemFailure extends PoemsState {
  final String errorMessage;

  const ShowPoemFailure(this.errorMessage);
}

class ShowPoemSuccess extends PoemsState {
  final PoemModel poem;

  const ShowPoemSuccess(this.poem);
}
