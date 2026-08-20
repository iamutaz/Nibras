import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nibras/features/notifications/data/cubit/all_notifications_cubit.dart';
import 'package:nibras/features/notifications/data/cubit/all_notifications_state.dart';
import 'package:nibras/features/notifications/data/cubit/read_all_notifications_cubit.dart';
import 'package:nibras/features/notifications/widget/notification_card.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  void initState() {
    super.initState();
    // جلب الإشعارات عند فتح الصفحة
    context.read<AllNotificationsCubit>().getAllNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('الإشعارات'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        actions: [
          BlocBuilder<AllNotificationsCubit, AllNotificationsState>(
            builder: (context, state) {
              return state.maybeWhen(
                allnotificationssuccess: (data) {
                  final hasUnread = data.data.any(
                    (notification) => !notification.isRead,
                  );
                  if (!hasUnread) return const SizedBox();

                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: TextButton(
                      onPressed: () {
                        // تحديث جميع الإشعارات كمقروءة
                        context
                            .read<ReadAllNotificationsCubit>()
                            .readAllNotifications();
                      },
                      child: Text(
                        'تحديث الكل',
                        style: TextStyle(color: Colors.blue, fontSize: 14.sp),
                      ),
                    ),
                  );
                },
                orElse: () => const SizedBox(),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<AllNotificationsCubit, AllNotificationsState>(
        builder: (context, state) {
          return state.maybeWhen(
            /// حالة التحميل الأولي
            allnotificationsloading: () {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const CircularProgressIndicator(),
                    SizedBox(height: 16.h),
                    Text(
                      'جاري تحميل الإشعارات...',
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ],
                ),
              );
            },

            /// حالة النجاح
            allnotificationssuccess: (data) {
              if (data.data.isEmpty) {
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.notifications_off_outlined,
                        size: 60.sp,
                        color: Colors.grey[400],
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        'لا توجد إشعارات',
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'ستظهر الإشعارات هنا عند وصولها',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                );
              }

              return RefreshIndicator(
                onRefresh: () async {
                  context.read<AllNotificationsCubit>().getAllNotifications();
                },
                child: ListView.builder(
                  padding: EdgeInsets.all(16.w),
                  itemCount: data.data.length,
                  itemBuilder: (context, index) {
                    final notification = data.data[index];
                    return Padding(
                      padding: EdgeInsets.only(bottom: 12.h),
                      child: NotificationCard(
                        notification: notification,
                        onRefresh: () {
                          context
                              .read<AllNotificationsCubit>()
                              .getAllNotifications();
                        },
                      ),
                    );
                  },
                ),
              );
            },

            /// حالة الخطأ
            allnotificationsfailure: (error) {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.error_outline,
                      size: 60.sp,
                      color: Colors.red[300],
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      'حدث خطأ ما',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.red[600],
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 8.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 32.w),
                      child: Text(
                        error,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                    SizedBox(height: 24.h),
                    ElevatedButton.icon(
                      onPressed: () {
                        context
                            .read<AllNotificationsCubit>()
                            .getAllNotifications();
                      },
                      icon: const Icon(Icons.refresh),
                      label: const Text('إعادة المحاولة'),
                    ),
                  ],
                ),
              );
            },

            /// الحالة الافتراضية
            orElse: () => const SizedBox(),
          );
        },
      ),
    );
  }
}
