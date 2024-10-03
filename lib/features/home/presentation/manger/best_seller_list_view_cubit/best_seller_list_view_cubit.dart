import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/item.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_list_view_state.dart';

class BestSellerListViewCubit extends Cubit<BestSellerListViewState> {
  BestSellerListViewCubit(this.homeRepo) : super(BestSellerListViewInitial());

  final HomeRepo homeRepo;

  Future<void> fetchBestSeller() async {
    emit(BestSellerListViewLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(BestSellerListViewFailure(failure.errMessage)),
      (books) => emit(BestSellerListViewSuccess(books)),
    );
  }
}
