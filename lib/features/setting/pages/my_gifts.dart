import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';

import 'package:nibras/features/gift/data/cubit/my_gifts_cubit.dart';
import 'package:nibras/features/gift/data/cubit/my_gifts_state.dart';

class MyGifts extends StatelessWidget {
  const MyGifts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gifts', style: TextStyles.font16authblackbold),
      ),
      body: BlocBuilder<MyGiftsCubit, MyGiftsState>(
        builder: (context, state) {
          return state.maybeWhen(
            mygiftsloading: () =>
                const Center(child: CircularProgressIndicator()),
            mygiftsfailure: (error) => Center(
              child: Text(
                error,
                style: const TextStyle(color: Colors.red, fontSize: 16),
              ),
            ),
            mygiftssuccess: (response) {
              final gifts = response.data;

              if (gifts.isEmpty) {
                return const Center(
                  child: Text(
                    'You don\'t have any sent gifts yet.',
                    style: TextStyle(fontSize: 16),
                  ),
                );
              }

              return SafeArea(
                child: ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: gifts.length,
                  itemBuilder: (context, index) {
                    return _buildGiftCard(context, gifts[index]);
                  },
                ),
              );
            },
            orElse: () => const SizedBox.shrink(),
          );
        },
      ),
    );
  }

  Widget _buildGiftCard(BuildContext context, dynamic gift) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                    image: gift.course.thumbnail != null
                        ? DecorationImage(
                            image: NetworkImage(gift.course.thumbnail!),
                            fit: BoxFit.cover,
                          )
                        : null,
                  ),
                  child: gift.course.thumbnail == null
                      ? const Icon(
                          Icons.image_not_supported,
                          color: Colors.grey,
                        )
                      : null,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    gift.course.title,
                    style: TextStyles.font14authblackbold,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const Divider(height: 24),

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              decoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.blue.withOpacity(0.3)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(gift.code, style: TextStyles.font16mainbluebold),
                  IconButton(
                    icon: const Icon(Icons.copy_rounded, color: Colors.blue),
                    tooltip: 'Copy Code',
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: gift.code)).then((
                        _,
                      ) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Code copied successfully'),
                            duration: Duration(seconds: 2),
                          ),
                        );
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),

            Row(
              children: [
                const Icon(Icons.info_outline, size: 18, color: Colors.grey),
                const SizedBox(width: 6),
                Text(
                  'Status: ${gift.status}',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                    color: gift.status.toLowerCase() == 'claimed'
                        ? Colors.green
                        : Colors.orange,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Icon(Icons.timer_outlined, size: 18, color: Colors.grey),
                const SizedBox(width: 6),
                Text(
                  'Expires at: ${gift.expiresAt}',
                  style: TextStyles.font14authblackmid,
                ),
              ],
            ),

            if (gift.claimedAt != null) ...[
              const SizedBox(height: 8),
              Row(
                children: [
                  const Icon(
                    Icons.check_circle_outline,
                    size: 18,
                    color: Colors.green,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    'Claimed at: ${gift.claimedAt}',
                    style: TextStyles.font14authblackmid,
                  ),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}
