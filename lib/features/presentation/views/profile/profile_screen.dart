import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/resources/app_assets.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/presentation/common/arrow_painter.dart';
import 'package:free_palestine/features/presentation/common/awsome_dialoge.dart';
import 'package:free_palestine/features/presentation/common/custom_input.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';
import 'package:free_palestine/features/presentation/views/profile/statistics_widget.dart';
import 'package:free_palestine/features/presentation/views/store/avatars_widget.dart';
import 'package:free_palestine/features/presentation/views/store/borders_widget.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey containerKey = GlobalKey();
  bool showSelected = false;
  String selectItem = 'images';
  TextEditingController name = TextEditingController();
  String userName = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    userName = 'سيف محمد';
    name.text = 'سيف محمد';
  }

  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      title: 'الملف الشخصي',
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Center(
                    child: SizedBox(
                      width: 110,
                      child: Stack(
                        children: [
                          Image.asset('assets/images/girl.png',
                              height: 110, width: 110),
                          Positioned(
                            left: 0,
                            bottom: 5,
                            child: IconButton(
                              onPressed: () {
                                setState(() {
                                  showSelected = !showSelected;
                                });
                              },
                              icon: Container(
                                width: 37,
                                height: 37,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Theme.of(context).primaryColor,
                                ),
                                child: Image.asset('assets/images/edit.png'),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 25),
                  _profileItem(
                    context,
                    label: 'اسم اللاعب',
                    child: _buildEditableText(
                      context,
                      text: userName,
                      onTap: () {
                        AwesomeDialog(
                          context: context,
                          dialogType: DialogType.question,
                          btnOkColor: Theme.of(context).splashColor,
                          btnOkText: 'تعديل',
                          btnCancelColor: AppColors.cancel,
                          btnCancelText: 'إلغاء',
                          dialogBackgroundColor: Theme.of(context).canvasColor,
                          body: Center(
                            child: Column(
                              children: [
                                 Text(
                                  'تعديل الإسم',
                                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                                    fontSize: FontSize.s18,
                                  ),
                                ),
                                const SizedBox(height: AppSize.s10),
                                SizedBox(
                                  width: context.screenWidth * 0.7,
                                  child: Directionality(
                                    textDirection: TextDirection.rtl,
                                    child: CustomInput(
                                        controller: name,
                                        type: TextInputType.text,
                                        startColor: Theme.of(context).canvasColor.withOpacity(0.3),
                                        endColor: Theme.of(context).splashColor.withOpacity(0.3),
                                        label: 'الإسم'),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          btnOkOnPress: () {
                            setState(() {
                              userName = name.text;
                            });
                          },
                          btnCancelOnPress: () {},
                        ).show();
                      },
                    ),
                  ),
                  _profileItem(
                    context,
                    label: 'عدد الجولات',
                    child: _buildText(context, '15'),
                  ),
                  _profileItem(
                    context,
                    label: 'احصائياتك',
                    width: 350,
                    child: const StatisticsWidget(),
                  ),
                  _profileItem(
                    context,
                    label: 'أفضل حرف',
                    child: _buildText(context, 'ن'),
                  ),
                  _profileItem(
                    context,
                    label: 'أسوأ حرف',
                    child: _buildText(context, 'ع'),
                  ),
                ],
              ),
              if (showSelected == true)
                Positioned(
                  top: context.screenHeight * 0.15,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 3),
                          child: CustomPaint(
                            size: const Size(50, 35),
                            painter: ArrowPainter(
                                color: Theme.of(context).canvasColor),
                          ),
                        ),
                        Container(
                          width: context.screenWidth * 0.92,
                          height: context.screenHeight * 0.6,
                          decoration: BoxDecoration(
                            color: Theme.of(context).canvasColor,
                            borderRadius: BorderRadius.circular(9),
                          ),
                          child: Column(
                            children: [
                              Container(
                                width: context.screenWidth * 0.9,
                                alignment: Alignment.topLeft,
                                child: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      showSelected = false;
                                    });
                                  },
                                  icon: Image.asset(
                                    ImageAssets.close,
                                    fit: BoxFit.cover,
                                  ),
                                  iconSize: AppSize.s44,
                                ),
                              ),
                              Container(
                                height: context.screenHeight * 0.523,
                                child: DefaultTabController(
                                  length: 2,
                                  child: Scaffold(
                                    appBar: PreferredSize(
                                      preferredSize: Size.fromHeight(50),
                                      child: AppBar(
                                        elevation: 0,
                                        bottom: TabBar(
                                          indicatorColor: Theme.of(context)
                                              .secondaryHeaderColor,
                                          labelColor:
                                              Theme.of(context).splashColor,
                                          unselectedLabelColor:
                                              Theme.of(context)
                                                  .secondaryHeaderColor,
                                          tabs: [
                                            Tab(child: Text('الشخصيات')),
                                            Tab(child: Text('الإطارات')),
                                          ],
                                        ),
                                        automaticallyImplyLeading: false,
                                      ),
                                    ),
                                    body: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: TabBarView(
                                        children: [
                                          AvatarsWidget(needHead: false),
                                          Text('borders')
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEditableText(BuildContext context,
      {required String text, required VoidCallback onTap}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildText(context, text),
        GestureDetector(
          onTap: onTap,
          child: Image.asset('assets/images/edit.png'),
        ),
      ],
    );
  }

  Text _buildText(BuildContext context, String text) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .headlineMedium!
          .copyWith(fontSize: FontSize.s15),
    );
  }

  Widget _profileItem(BuildContext context,
      {required String label, required Widget child, double width = 265}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _labelContainer(context, label),
        _contentContainer(context, child, width),
        const SizedBox(height: 20),
      ],
    );
  }

  Container _labelContainer(BuildContext context, String label) {
    return Container(
      width: 178,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(9),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).primaryColor,
            Theme.of(context).splashColor,
          ],
        ),
      ),
      child: Text(
        label,
        style: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(fontSize: FontSize.s15, color: AppColors.nearBlack),
      ),
    );
  }

  Container _contentContainer(
      BuildContext context, Widget child, double width) {
    return Container(
      width: width,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(9),
          bottomLeft: Radius.circular(9),
          bottomRight: Radius.circular(9),
        ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Theme.of(context).canvasColor,
            Theme.of(context).dividerColor,
          ],
        ),
      ),
      child: Center(child: child),
    );
  }
}
