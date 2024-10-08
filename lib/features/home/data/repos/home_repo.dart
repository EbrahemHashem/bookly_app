import 'package:bookly_app/core/errors/failure.dart';
import 'package:bookly_app/features/home/data/models/bookly_model/item.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Item>>> fetchFeaturedBooks();
  Future<Either<Failure, List<Item>>> fetchNewestBooks();
}
