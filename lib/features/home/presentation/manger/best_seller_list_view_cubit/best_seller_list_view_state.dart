part of 'best_seller_list_view_cubit.dart';

sealed class BestSellerListViewState extends Equatable {
  const BestSellerListViewState();

  @override
  List<Object> get props => [];
}

final class BestSellerListViewInitial extends BestSellerListViewState {}

final class BestSellerListViewSuccess extends BestSellerListViewState {
  final List<Item> books;

  const BestSellerListViewSuccess(this.books);
}

final class BestSellerListViewLoading extends BestSellerListViewState {}

final class BestSellerListViewFailure extends BestSellerListViewState {
  final String errMessage;
  const BestSellerListViewFailure(this.errMessage);
}
