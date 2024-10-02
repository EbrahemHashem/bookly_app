import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/item.dart';
import 'package:equatable/equatable.dart';

part 'custom_list_view_state.dart';

class CustomListViewCubit extends Cubit<CustomListViewState> {
  CustomListViewCubit() : super(CustomListViewInitial());
}
