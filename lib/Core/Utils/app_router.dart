import 'package:bookly/Features/Home/presentation/views/home_view.dart';
import 'package:bookly/Features/Home/presentation/views/details_view.dart';
import 'package:bookly/Features/Splash/Presentation/Views/splash_view.dart';
import 'package:go_router/go_router.dart';


   const String kHomeView = '/homeView';
   const String kDetailsView = '/detailsView';
   final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
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

