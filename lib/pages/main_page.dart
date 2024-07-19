import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sariampenan/my_setup.dart';
import 'package:sariampenan/pages/request_page.dart';
import 'package:sariampenan/views/view_header.dart';
import 'package:sariampenan/widgets/shortcut.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double menuSize = 10;
  double backGroundHeight = 10;

  @override
  Widget build(BuildContext context) {
    backGroundHeight = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width - 30.0 * 3;
    menuSize = w / 2;
    return Scaffold(
      backgroundColor: mySetup.backgroundColor,
      body: SingleChildScrollView(
        child: Container(
          //color: Color(0xFF101010),
          child: Column(
            children: [
              headerContainer('Ship App v1'),
              waveContainer(
                child: Column(
                  children: [
                    Container(
                      height: 30.0,
                      child: Container(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Halo " + "Customer",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Icon(
                            //   Icons.arrow_drop_down,
                            //   color: Colors.white,
                            //   size: 45.0,
                            // ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 50.0,
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              child: Text(
                                'Customer',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // createPilihKonsumen(),
              createMenuButtons(context),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget createMenuButtons(BuildContext context) {
    double space = 25.0;
    double size = (MediaQuery.of(context).size.width - 20.0 * 2 - space) / 2;

    return Container(
      margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
      child: Wrap(
        spacing: space,
        runSpacing: space,
        children: [
          // _createShortCut(size, 'SALES ORDER', 'assets/images/asset-1.png', () {
          //   var custSelect =
          //       Provider.of<CustomerSelectProvider>(context, listen: false);
          //   if (custSelect.isEmpty) {
          //     myDialog.promptInfo(context, 'Pilih Konsumen Dulu');
          //   } else {
          //     myNavigator.push(context, TransSalesOrderPage());
          //   }
          createShortCutAsset(
            size,
            'PERMINTAAN LOGISTIC',
            'assets/images/quote-request.png',
            bkgColor: mySetup.menuIconColor,
            iconColor: Colors.white,
            onClick: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RequestPage()),
              );
            },
          ),
          createShortCutAsset(
            size,
            'PERBAIKAN',
            'assets/images/quote-request.png',
            bkgColor: mySetup.menuIconColor,
            iconColor: Colors.white,
            onClick: () {},
          ),
          createShortCutAsset(
            size,
            'APPROVAL PERMINTAAN LOGISTIC',
            'assets/images/quote-request.png',
            bkgColor: mySetup.menuIconColor,
            iconColor: Colors.white,
            onClick: () {},
          ),
          createShortCutAsset(
            size,
            'APPROVAL PERBAIKAN',
            'assets/images/quote-request.png',
            bkgColor: mySetup.menuIconColor,
            iconColor: Colors.white,
            onClick: () {},
          ),
          createShortCutAsset(
            size,
            'SURAT-SURAT',
            'assets/images/quote-request.png',
            bkgColor: mySetup.menuIconColor,
            iconColor: Colors.white,
            onClick: () {},
          ),
          createShortCutAsset(
            size,
            'INPUT HASIL PERBAIKAN',
            'assets/images/quote-request.png',
            bkgColor: mySetup.menuIconColor,
            iconColor: Colors.white,
            onClick: () {},
          ),
          createShortCutAsset(
            size,
            'CREW KAPAL',
            'assets/images/quote-request.png',
            bkgColor: mySetup.menuIconColor,
            iconColor: Colors.white,
            onClick: () {},
          ),
        ],
      ),
    );
  }
}
