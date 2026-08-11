import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/networking/api_error_handler.dart';
import 'package:nibras/features/wishlist/data/cubit/add_to_wishlist_cubit.dart';
import 'package:nibras/features/wishlist/data/cubit/add_to_wishlist_state.dart';

class AddToWishlistBloclisitner extends StatelessWidget {
  const AddToWishlistBloclisitner({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddToWishlistCubit, AddToWishlistState>(
      listenWhen: (previous, current) =>
          current is AddToWishlistLoading ||
          current is AddToWishlistSuccess ||
          current is AddToWishlistFailure,
      listener: (context, state) {
        state.whenOrNull(
          addtowishlistloading: () {
            showDialog(
              context: context,
              barrierDismissible: false, // يمنع إغلاق التحميل عند الضغط خارجه
              builder: (BuildContext context) {
                return const Center(child: CircularProgressIndicator());
              },
            );
          },
          addtowishlistsuccess: (data) {
            context.pop(); // إغلاق دائرة التحميل

            // إظهار رسالة النجاح
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Success"),
                  content: const Text("Added to wishlist successfully!"),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context.pop(); // إغلاق الـ Alert
                      },
                      child: const Text("OK"),
                    ),
                  ],
                );
              },
            );
          },
          addtowishlistfailure: (error) {
            setupErrorState(context, error); // إظهار رسالة الخطأ
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
