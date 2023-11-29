import 'package:flutter/material.dart';
import 'package:free_palestine/core/extension/extensions.dart';
import 'package:free_palestine/core/helper_functions/route_navigation.dart';
import 'package:free_palestine/core/resources/app_colors.dart';
import 'package:free_palestine/core/resources/app_fonts.dart';
import 'package:free_palestine/core/resources/app_routers.dart';
import 'package:free_palestine/core/resources/values_manager.dart';
import 'package:free_palestine/features/data/local/cotts_list.dart';
import 'package:free_palestine/features/presentation/common/custom_input.dart';
import 'package:free_palestine/features/presentation/common/gradient_background.dart';

class CottsScreen extends StatefulWidget {
  const CottsScreen({Key? key}) : super(key: key);

  @override
  State<CottsScreen> createState() => _CottsScreenState();
}

class _CottsScreenState extends State<CottsScreen> {
  TextEditingController controller = TextEditingController();
  List<CottModel> filteredCotts = cottsList; // Initial full list of items.

  @override
  void initState() {
    super.initState();
    controller.addListener(_onSearchTextChanged);
  }

  @override
  void dispose() {
    controller.removeListener(_onSearchTextChanged);
    controller.dispose();
    super.dispose();
  }

  _onSearchTextChanged() {
    final searchText = controller.text.toLowerCase();
    if (searchText.isEmpty) {
      setState(() {
        filteredCotts = cottsList;
      });
    } else {
      setState(() {
        filteredCotts = cottsList
            .where((cott) =>
            cott.name.toLowerCase().contains(searchText))
            .toList();
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return GradientBackground(
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topRight,
            height: context.screenHeight *0.2,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/cotts.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    onPressed: () {
                      pushAndRemoveRoute(context, Routes.home);
                    },
                    icon: Image.asset('assets/images/home.png'),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: context.screenHeight *0.2),
            padding: const EdgeInsets.all(8.0),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: DefaultTabController(
              length: 2,
              child: Scaffold(
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(50),
                  child: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    bottom: TabBar(
                      indicatorColor: const Color.fromRGBO(65, 128, 64, 1),
                      labelColor: const Color.fromRGBO(65, 128, 64, 1),
                      unselectedLabelColor:
                      Theme.of(context).secondaryHeaderColor,
                      tabs: [
                        const Tab(
                            child: Text(
                              'صور منتجات',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: FontSize.s18),
                            )),
                        const Tab(
                            child: Text(
                              'أسماء منتجات',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: FontSize.s18),
                            )),
                      ],
                    ),
                    automaticallyImplyLeading: false,
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            for(int i=1;i<=16;i++)
                            Image.asset('assets/images/cott$i.jpeg'),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        child: Column(
                          children: [
                            5.heightSizedBox,
                            SizedBox(
                              child: TextField(
                                controller: controller,
                                decoration: const InputDecoration(
                                  labelText: 'بحث',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(Radius.circular(15),),
                                  ),
                                  contentPadding: EdgeInsets.all(16),
                                ),
                              ),
                            ),
                            filteredCotts.length > 0 ? GridView.builder(
                              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                childAspectRatio: 2,
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 20,
                                crossAxisCount: 3,
                              ),
                              itemCount: filteredCotts.length, // Use the length of the filtered list
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              padding: const EdgeInsets.only(top: AppPadding.p16),
                              itemBuilder: (context, index) {
                                return Container(
                                  decoration: BoxDecoration(
                                    color: Color.fromRGBO(220, 248, 255, 1),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/boycott.png',
                                        width: 30,
                                      ),
                                      Text(filteredCotts[index].name,
                                          style: Theme.of(context).textTheme.headlineSmall),
                                    ],
                                  ),
                                );
                              },
                            ) : Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('لاتوجد نتائج بحث'),
                                  Icon(Icons.no_stroller_sharp),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
