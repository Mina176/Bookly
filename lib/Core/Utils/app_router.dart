import 'package:bookly/Core/Utils/service_locator.dart';
import 'package:bookly/Core/models/book_model/book_model.dart';
import 'package:bookly/Features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly/Features/Home/presentation/manager/similar_book_cubit/fetch_similar_books_cubit.dart';
import 'package:bookly/Features/Home/presentation/views/home_view.dart';
import 'package:bookly/Features/Home/presentation/views/details_view.dart';
import 'package:bookly/Features/Search/Presentation/Views/search_view.dart';
import 'package:bookly/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

const String kHomeView = '/homeView';
const String kDetailsView = '/detailsView';
const String kSearchView = '/searchView';
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => SplashView(),
    ),
    GoRoute(
      path: kSearchView,
      builder: (context, state) => SearchView(),
    ),
    GoRoute(
      path: kHomeView,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: kDetailsView,
      builder: (context, state) => BlocProvider(
        create: (context) => SimilarBooksCubit(
          getIt.get<HomeRepoImpl>(),
        ),
        child: DetailsView(
          book: state.extra as BookModel,
        ),
      ),
    ),
  ],
);
