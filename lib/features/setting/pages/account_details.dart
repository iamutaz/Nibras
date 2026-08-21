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
import 'package:nibras/features/setting/data/repos/account_repo.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({super.key});

  @override
  State<AccountDetails> createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  final AccountRepo _accountRepo = AccountRepo();
  File? _selectedImage;
  bool _isSaving = false;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
      imageQuality: 80,
    );

    if (pickedFile != null) {
      setState(() {
        _selectedImage = File(pickedFile.path);
      });
    }
  }

  Future<void> _saveChanges() async {
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
        Navigator.pop(context, url);
      },
      failure: (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              error.apiErrorModel.message ?? 'Failed to upload avatar',
            ),
          ),
        );
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
          child: const Icon(
            Icons.arrow_back_ios,
            size: 14,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Account Details", style: TextStyles.font16titleblackbold),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 160.h,
            left: 16.w,
            right: 16.w,
            child: Column(
              children: [
                GestureDetector(
                  onTap: _pickImage,
                  child: CircleAvatar(
                    backgroundColor: AppColors.avatarColor,
                    radius: 70.r,
                    backgroundImage: _selectedImage != null
                        ? FileImage(_selectedImage!)
                        : const AssetImage('assets/svg/profile_circle_gray.svg')
                              as ImageProvider,
                    child: _selectedImage == null
                        ? SvgPicture.asset(
                            "assets/svg/profile_vector.svg",
                            height: 50.h,
                            width: 50.w,
                          )
                        : null,
                  ),
                ),
                SizedBox(height: 100.h),
                AppTextButton(
                  onpressed: _isSaving ? () {} : _saveChanges,
                  textButton: _isSaving ? "Saving..." : "Save Changes",
                  textStyle: TextStyles.font16homeblackbold,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
