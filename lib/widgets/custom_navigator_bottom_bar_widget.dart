import 'package:flutter/material.dart';
import 'package:my_qr_scanner/providers/ui_provider.dart';
import 'package:provider/provider.dart';

class CustomNavigatorBottomBarWidget extends StatelessWidget {
  const CustomNavigatorBottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectMenuOpt;

    return BottomNavigationBar(
      onTap: (int i) => uiProvider.selectMenuOpt = i,
      elevation: 0,
      currentIndex: currentIndex,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.map_sharp,
          ),
          label: 'Map',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.compass_calibration_rounded,
          ),
          label: 'Directions',
        ),
      ],
    );
  }
}
