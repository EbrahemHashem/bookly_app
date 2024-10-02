import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/item.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'custom_list_view_state.dart';

class CustomListViewCubit extends Cubit<CustomListViewState> {
  CustomListViewCubit(this.homeRepo) : super(CustomListViewInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeaturedBooks() async {
    emit(CustomListViewLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(CustomListViewFailure(errMessage: failure.errMessage)),
      (books) => emit(CustomListViewSuccess(books: books)),
    );
  }
}
