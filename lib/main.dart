import 'package:bookly_app/constans.dart';
import 'package:bookly_app/core/utils/api_service.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:bookly_app/core/utils/service_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bookly_app/features/home/presentation/manger/best_seller_list_view_cubit/best_seller_list_view_cubit.dart';
import 'package:bookly_app/features/home/presentation/manger/custom_list_view_cubit/custom_list_view_cubit.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        //
        BlocProvider(
          create: (context) => CustomListViewCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
        //
        BlocProvider(
          create: (context) => BestSellerListViewCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
        //
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
