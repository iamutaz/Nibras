import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart' as intl;
import 'package:nibras/features/notifications/data/model/all_notifications_response_body.dart';

class NotificationCard extends StatelessWidget {
  final NotificationData notification;
  final VoidCallback onRefresh;

  const NotificationCard({
    super.key,
    required this.notification,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: notification.isRead ? Colors.grey[50] : Colors.blue[50],
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(
          color: notification.isRead ? Colors.grey[200]! : Colors.blue[200]!,
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.all(12.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// الجزء العلوي: الأيقونة والعنوان والوقت
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// الأيقونة حسب نوع الإشعار
                _NotificationIcon(type: notification.type),
                SizedBox(width: 12.w),

                /// العنوان والوصف
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              notification.title,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          if (!notification.isRead)
                            Container(
                              width: 8.w,
                              height: 8.h,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        notification.body,
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: Colors.grey[600],
                          height: 1.4,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),

            /// الجزء السفلي: الوقت والبيانات الإضافية
            SizedBox(height: 12.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _formatTime(notification.createdAt),
                  style: TextStyle(
                    fontSize: 11.sp,
                    color: Colors.grey[500],
                  ),
                ),
                if (_hasExtraData(notification))
                  _ExtraDataDisplay(
                    type: notification.type,
                    data: notification.data,
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// صيغة الوقت
  String _formatTime(String dateString) {
    try {
      final dateTime = DateTime.parse(dateString);
      final now = DateTime.now();
      final difference = now.difference(dateTime);

      if (difference.inMinutes < 1) {
        return 'الآن';
      } else if (difference.inMinutes < 60) {
        return 'منذ ${difference.inMinutes} دقيقة';
      } else if (difference.inHours < 24) {
        return 'منذ ${difference.inHours} ساعة';
      } else if (difference.inDays == 1) {
        return 'أمس';
      } else if (difference.inDays < 7) {
        return 'منذ ${difference.inDays} أيام';
      } else {
        return intl.DateFormat('d MMM, yyyy', 'ar').format(dateTime);
      }
    } catch (e) {
      return 'وقت غير معروف';
    }
  }

  /// التحقق من وجود بيانات إضافية
  bool _hasExtraData(NotificationData notification) {
    return notification.data.isNotEmpty &&
        (notification.type == 'certificate_earned' ||
            notification.type == 'badge_earned' ||
            notification.type == 'quiz_result' ||
            notification.type == 'payout_approved');
  }
}

/// الأيقونة حسب نوع الإشعار
class _NotificationIcon extends StatelessWidget {
  final String type;

  const _NotificationIcon({required this.type});

  @override
  Widget build(BuildContext context) {
    final iconData = _getIconData();
    final backgroundColor = _getBackgroundColor();

    return Container(
      width: 40.w,
      height: 40.h,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Center(
        child: Icon(
          iconData['icon'] as IconData,
          color: iconData['color'] as Color,
          size: 20.sp,
        ),
      ),
    );
  }

  Map<String, dynamic> _getIconData() {
    switch (type) {
      case 'badge_earned':
        return {
          'icon': Icons.star,
          'color': Colors.amber,
        };
      case 'certificate_earned':
        return {
          'icon': Icons.school,
          'color': Colors.purple,
        };
      case 'quiz_result':
        return {
          'icon': Icons.check_circle,
          'color': Colors.green,
        };
      case 'course_approved':
        return {
          'icon': Icons.verified,
          'color': Colors.blue,
        };
      case 'course_rejected':
        return {
          'icon': Icons.cancel,
          'color': Colors.red,
        };
      case 'instructor_approved':
        return {
          'icon': Icons.person_add,
          'color': Colors.green,
        };
      case 'instructor_rejected':
        return {
          'icon': Icons.person_remove,
          'color': Colors.red,
        };
      case 'payout_approved':
        return {
          'icon': Icons.attach_money,
          'color': Colors.green,
        };
      case 'streak_milestone':
        return {
          'icon': Icons.local_fire_department,
          'color': Colors.orange,
        };
      case 'gift_received':
        return {
          'icon': Icons.card_giftcard,
          'color': Colors.pink,
        };
      case 'gift_claimed':
        return {
          'icon': Icons.card_giftcard,
          'color': Colors.indigo,
        };
      default:
        return {
          'icon': Icons.notifications,
          'color': Colors.blue,
        };
    }
  }

  Color _getBackgroundColor() {
    switch (type) {
      case 'badge_earned':
        return Colors.amber.withOpacity(0.1);
      case 'certificate_earned':
        return Colors.purple.withOpacity(0.1);
      case 'quiz_result':
        return Colors.green.withOpacity(0.1);
      case 'course_approved':
        return Colors.blue.withOpacity(0.1);
      case 'course_rejected':
        return Colors.red.withOpacity(0.1);
      case 'instructor_approved':
        return Colors.green.withOpacity(0.1);
      case 'instructor_rejected':
        return Colors.red.withOpacity(0.1);
      case 'payout_approved':
        return Colors.green.withOpacity(0.1);
      case 'streak_milestone':
        return Colors.orange.withOpacity(0.1);
      case 'gift_received':
        return Colors.pink.withOpacity(0.1);
      case 'gift_claimed':
        return Colors.indigo.withOpacity(0.1);
      default:
        return Colors.blue.withOpacity(0.1);
    }
  }
}

/// عرض البيانات الإضافية حسب نوع الإشعار
class _ExtraDataDisplay extends StatelessWidget {
  final String type;
  final Map<String, dynamic> data;

  const _ExtraDataDisplay({
    required this.type,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    String? extraText;

    switch (type) {
      case 'badge_earned':
        extraText = data['badge_name'] as String?;
        break;
      case 'certificate_earned':
        extraText = data['verification_code'] as String?;
        break;
      case 'quiz_result':
        final score = data['score'] as int?;
        extraText = '$score%';
        break;
      case 'payout_approved':
        final amount = data['amount'] as String?;
        extraText = amount;
        break;
      default:
        return const SizedBox();
    }

    if (extraText == null || extraText.isEmpty) {
      return const SizedBox();
    }

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(6.r),
      ),
      child: Text(
        extraText,
        style: TextStyle(
          fontSize: 10.sp,
          color: Colors.grey[700],
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}