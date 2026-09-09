import 'package:ecommerce_styliq/core/routing/app_routes.dart';
import 'package:ecommerce_styliq/features/auth/login_screen.dart';
import 'package:ecommerce_styliq/features/auth/register_screen.dart';
import 'package:ecommerce_styliq/features/main_screen/main_screen.dart';
import 'package:ecommerce_styliq/features/main_screen/screens/cart/cart_screen.dart';
import 'package:ecommerce_styliq/features/main_screen/screens/home/widgets/product_card.dart';
import 'package:ecommerce_styliq/features/main_screen/screens/home/widgets/product_details_screen.dart';
import 'package:go_router/go_router.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.loginScreen,
    routes: [
      GoRoute(
        path: AppRoutes.loginScreen,
        name: AppRoutes.loginScreen,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: AppRoutes.registerScreen,
        name: AppRoutes.registerScreen,
        builder: (context, state) => const RegisterScreen(),
      ),
      GoRoute(
        path: AppRoutes.mainScreen,
        name: AppRoutes.mainScreen,
        builder: (context, state) => const MainScreen(),
      ),
      GoRoute(
        path: AppRoutes.productDetails,
        name: AppRoutes.productDetails,
        builder: (context, state) {
          return ProductDetailsScreen();
        },
      ),
      GoRoute(
        path: AppRoutes.cartScreen,
        name: AppRoutes.cartScreen,
        builder: (context, state) {
          return CartScreen();
        },
      ),
    ],
  );
}
