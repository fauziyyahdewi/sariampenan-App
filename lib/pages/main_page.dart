import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/model/logistic.dart';
import 'package:sariampenan/model/mail.dart';
import 'package:sariampenan/model/repair.dart';
import 'package:sariampenan/model/ship_monitor.dart';
import 'package:sariampenan/my_setup.dart';
import 'package:sariampenan/pages/input_data_page.dart';
import 'package:sariampenan/pages/input_detail_data_page.dart';
import 'package:sariampenan/pages/list_approval_request_page.dart';
import 'package:sariampenan/pages/list_request.dart';
import 'package:sariampenan/pages/profile_page.dart';
import 'package:sariampenan/widgets/shortcut_box.dart';
import 'package:sariampenan/widgets/trip_monitor.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  void _previousData() {
    setState(() {
      currentIndex =
          (currentIndex - 1 + dummyDataShip.length) % dummyDataShip.length;
    });
  }

  void _nextData() {
    setState(() {
      currentIndex = (currentIndex + 1) % dummyDataShip.length;
    });
  }

    void _navigateToMainPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MainPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    ShipMonitorDataModel currentShip = dummyDataShip[currentIndex];
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'App V1',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: mySetup.primaryColor,
                ),
              ),
              Text(
                'Hello Direksi @name',
                style: GoogleFonts.poppins(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: mySetup.primaryColor,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                    color: mySetup.primaryColor,
                    border: Border.all(width: 2),
                    borderRadius: BorderRadius.circular(
                      40,
                    )),
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0.06 * height),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 8),
            child: Row(
              children: [
                GestureDetector(
                  onTap: _previousData,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: mySetup.primaryColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    currentShip.name,
                    style: GoogleFonts.poppins(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                GestureDetector(
                  onTap: _nextData,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: mySetup.primaryColor,
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TripMonitorBox(ship: currentShip),
            // SettingRequest(),
            SizedBox(height: 10),
            createInfoButtons(),
            SizedBox(height: 10),
            createOtherMenuButtons(),
          ],
        ),
      ),
    );
  }

  Widget createInfoButtons() {
    ShipMonitorDataModel currentShip = dummyDataShip[currentIndex];

    int repairsCount = dummyDataRepair
        .where((repair) => repair.shipId == currentShip.shipId)
        .length;
    int logisticsCount = dummyDataLogistic
        .where((logistic) => logistic.shipId == currentShip.shipId)
        .length;
    int mailsCount =
        dummyDataMail.where((mail) => mail.shipId == currentShip.shipId).length;
    double space = 15.0;
    double size = (MediaQuery.of(context).size.width - 20.0 * 2 - space) / 2;

    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: Wrap(
        spacing: space,
        runSpacing: space,
        children: [
          createShortCutInfo(
            size,
            Icons.build,
            'Perbaikan',
            '${repairsCount}',
            Color.fromARGB(255, 239, 90, 111),
            onClick: () {},
          ),
          createShortCutInfo(
            size,
            Icons.shopping_cart_checkout,
            'Logistic',
            '${logisticsCount}',
            Color.fromARGB(255, 63, 162, 246),
            onClick: () {},
          ),
          createShortCutInfo(
            size,
            Icons.mail,
            'Surat',
            '${mailsCount}',
            Color.fromARGB(255, 239, 184, 90),
            onClick: () {},
          ),
        ],
      ),
    );
  }

  Widget createOtherMenuButtons() {
    double space = 15.0;
    double size = (MediaQuery.of(context).size.width - 20.0 * 3 - space) / 3;

    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: Wrap(
        spacing: space,
        runSpacing: space,
        children: [
          createShortCutOtherMenu(
            size,
            Icons.shopping_cart_checkout,
            'Aproval Logistik',
            onClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListApprovalRequestPage(),
                ),
              );
            },
          ),
          createShortCutOtherMenu(
            size,
            Icons.query_builder_outlined,
            'Aproval Perbaikan',
            onClick: () {},
          ),
          createShortCutOtherMenu(
            size,
            Icons.people,
            'Crew Kapal',
            onClick: () {},
          ),
          createShortCutOtherMenu(
            size,
            Icons.directions_boat,
            'Input LKK',
            onClick: () {},
          ),
          createShortCutOtherMenu(
            size,
            Icons.security_update,
            'Input PPKK',
            onClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputDetailDataPage(onBack: () => _navigateToMainPage(context),),
                ),
              );
            },
          ),
          createShortCutOtherMenu(
            size,
            Icons.document_scanner,
            'Input Hasil Perbaikan',
            onClick: () {},
          ),
          createShortCutOtherMenu(
            size,
            Icons.build,
            'Perbaikan',
            onClick: () {},
          ),
          createShortCutOtherMenu(
            size,
            Icons.request_page,
            'Permintaan Logistic',
            onClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ListRequestPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
