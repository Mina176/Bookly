import 'package:bookly/Features/Home/presentation/views/home_view.dart';
import 'package:bookly/Features/Home/presentation/views/details_view.dart';
import 'package:bookly/Features/Search/Presentation/Views/search_view.dart';
import 'package:bookly/Features/Splash/Presentation/Views/splash_view.dart';
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
      builder: (context, state) => DetailsView(),
    ),
  ],
);
