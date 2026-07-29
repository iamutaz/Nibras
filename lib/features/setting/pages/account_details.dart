import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nibras/core/helpers/extension.dart';
import 'package:nibras/core/networking/api_result.dart';
import 'package:nibras/core/theme/colors/app_colors.dart';
import 'package:nibras/core/theme/fonts/text_styles.dart';
import 'package:nibras/core/widgets/app_text_button.dart';
import 'package:nibras/core/widgets/app_text_form_feild.dart';
import 'package:nibras/features/setting/data/repos/account_repo.dart';
import 'package:nibras/features/signup/signup.dart';


class AccountDetails extends StatefulWidget {
  const AccountDetails({super.key});

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  final AccountRepo _accountRepo = AccountRepo();
  File? _selectedImage; // 🎯 الصورة المختارة محلياً، لسا ما انرفعت
  bool _isSaving = false;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path); // 🎯 بس preview محلي، ما في رفع لسا
      });
    }
  }

  Future<void> _saveChanges() async {
    // 🎯 لو ما اختار صورة جديدة أصلاً، ما في شي نحفظه
    if (_selectedImage == null) return;

    setState(() => _isSaving = true);

    final response = await _accountRepo.uploadAvatar(_selectedImage!);

    if (!mounted) return;
    setState(() => _isSaving = false);

    response.when(
      success: (url) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Avatar updated successfully')),
        );
        // الصورة المحلية ضلت معروضة، وصارت محفوظة فعلياً بالباك (url)
      },
      failure: (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(error.apiErrorModel.message ?? 'Failed to upload avatar'),
          ),
        );
        // 🎯 ما بنرجع _selectedImage لـ null هون، حتى يقدر يحاول يحفظ تاني بنفس الصورة
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: InkWell(
          onTap: () => context.pop(),
          child: Icon(Icons.arrow_back_ios, size: 14, color: Colors.black),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Account Details", style: TextStyles.font16titleblackbold),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
          child: Column(
            children: [
              Divider(color: AppColors.avatarColor),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0.h),
                child: GestureDetector(
                  onTap: _pickImage, // 🎯 هلق الأفتار قابل للضغط
                  child: CircleAvatar(
                    backgroundColor: AppColors.avatarColor,
                    radius: 35.r,
                    backgroundImage: _selectedImage != null
                        ? FileImage(_selectedImage!) // 🎯 لو اختار صورة، هاي بتظهر
                        : const AssetImage('assets/svg/profile_circle_gray.svg')
                            as ImageProvider,
                    child: _selectedImage == null
                        ? SvgPicture.asset(
                            "assets/svg/profile_vector.svg",
                            height: 30.h,
                            width: 30.w,
                          )
                        : null, // 🎯 لو في صورة مختارة، ما منعرض الأيقونة الافتراضية فوقها
                  ),
                ),
              ),
              FormBody(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "this feild can't be empty";
                  }
                  return null;
                },
                title: "Full Name",
                hint: "Aizen Souske",
                prefixpath: "assets/svg/profile_vector.svg",
              ),
              FormBody(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "this feild can't be empty";
                  }
                  return null;
                },
                title: "Email Address",
                hint: "Ahmad.Mohamed@Example.com",
                prefixpath: "assets/svg/profile_vector.svg",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0.w),
          child: AppTextButton(
            onpressed: _isSaving ? () {} : _saveChanges,
            textButton: _isSaving ? "Saving..." : "Save Changes",
            textStyle: TextStyles.font16homeblackbold,
          ),
        ),
      ),
    );
  }
}