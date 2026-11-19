import '../core/app_export.dart';
import '../presentation/loan_rejection_screen/loan_rejection_screen.dart';

class AppRoutes {
  // TODO: Add your routes here
  static const String initial = '/'; // 🚨 CRITICAL: DO NOT REMOVE THIS ROUTE
}

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: AppRoutes.initial,
      builder: (context, state) => const LoanRejectionScreen(),
    ),
  ],
);
