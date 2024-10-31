import 'package:flutter_push_local_notifications/presentation/screens/details_screen.dart';
import 'package:flutter_push_local_notifications/presentation/screens/home_screen.dart';
import 'package:go_router/go_router.dart';



final appRouter = GoRouter(
  routes: [


    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),

    GoRoute(
      path: '/push-details/:messageId',
      builder: (context, state) => DetailsScreen( pushMessageId: state.pathParameters['messageId'] ?? '', ),
    ),

  ]
  
);