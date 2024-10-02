part of 'custom_list_view_cubit.dart';

sealed class CustomListViewState extends Equatable {
  const CustomListViewState();

  @override
  List<Object> get props => [];
}

final class CustomListViewInitial extends CustomListViewState {}

final class CustomListViewLoading extends CustomListViewState {}

final class CustomListViewFailure extends CustomListViewState {
  final String errMessage;

  const CustomListViewFailure({required this.errMessage});
}

final class CustomListViewSuccess extends CustomListViewState {
  final List<Item> books;
  const CustomListViewSuccess({required this.books});
}
