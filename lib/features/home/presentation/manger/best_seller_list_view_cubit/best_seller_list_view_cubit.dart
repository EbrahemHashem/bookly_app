import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'best_seller_list_view_state.dart';

class BestSellerListViewCubit extends Cubit<BestSellerListViewState> {
  BestSellerListViewCubit() : super(BestSellerListViewInitial());
}
