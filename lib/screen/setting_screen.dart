// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, sort_child_properties_last, deprecated_member_use, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pet/constant/color_constant.dart';
import 'package:pet/constant/image_constant.dart';
import 'package:pet/constant/style_constant.dart';
import 'package:pet/controller/change_name.dart';
import 'package:pet/widget/widget1.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final NameController c = Get.put(NameController());
    final TextEditingController _nameController = TextEditingController();

    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: SvgPicture.asset(ImageConstant.imgBtnBack),
        ),
        body: Stack(
          children: [
            Image.asset(ImageConstant.imgBackground),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(ImageConstant.imgAvatar),
                  SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Obx(() => Text(
                              "${c.userName}",
                              style: StyleConstant.textContent,
                            )),
                        SizedBox(width: 8),
                        SvgPicture.asset(ImageConstant.imgPen),
                      ],
                    ),
                    onTap: () {
                      Get.defaultDialog(
                        backgroundColor: ColorConstant.backgroundPopup,
                        title: "",
                        titleStyle: StyleConstant.textContent,
                        content: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage(ImageConstant.imgAvatar),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Update your name',
                              style: StyleConstant.textContent,
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            TextField(
                              controller: _nameController,
                              decoration: InputDecoration(
                                hintText: '${c.userName}',
                                contentPadding: EdgeInsets.all(12),
                                filled: true,
                                fillColor: ColorConstant.cancelTextButton,
                                hintStyle: TextStyle(
                                  color: ColorConstant.textColor,
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: ColorConstant.borderButton,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color: ColorConstant.borderButton,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                    child: Text(
                                      'Cancel',
                                      style: StyleConstant.textContent,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: ColorConstant.cancelButton,
                                    onPrimary: ColorConstant.cancelTextButton,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 20),
                                ElevatedButton(
                                  onPressed: () {
                                    Get.find<NameController>()
                                        .changeName(_nameController.text);
                                    Get.back();
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 12,
                                      vertical: 8,
                                    ),
                                    child: Text(
                                      'Update',
                                      style: StyleConstant.textContent,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: ColorConstant.successButton,
                                    onPrimary: ColorConstant.successTextButton,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  Expanded(
                    child: GridView.count(
                      primary: false,
                      crossAxisSpacing: 10,
                      childAspectRatio: 2,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: [
                        Widget1(
                          title: 'Invite',
                          imageUrl: ImageConstant.imgAnh1,
                        ),
                        Widget1(
                          title: 'Bonnie',
                          imageUrl: ImageConstant.imgAnh2,
                        ),
                        Widget1(
                          title: 'Friends',
                          imageUrl: ImageConstant.imgAnh3,
                        ),
                        Widget1(
                          title: 'Spin',
                          imageUrl: ImageConstant.imgAnh4,
                        ),
                        Widget1(
                          title: 'News',
                          imageUrl: ImageConstant.imgAnh5,
                        ),
                        Widget1(
                          title: 'Cards',
                          imageUrl: ImageConstant.imgAnh6,
                        ),
                        Widget1(
                          title: 'Shop',
                          imageUrl: ImageConstant.imgAnh7,
                        ),
                        Widget1(
                          title: 'Setting',
                          imageUrl: ImageConstant.imgAnh8,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
