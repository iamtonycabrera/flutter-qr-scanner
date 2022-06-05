import 'package:flutter/material.dart';
import 'package:my_qr_scanner/pages/directions_page.dart';
import 'package:my_qr_scanner/pages/maps_list_page.dart';
import 'package:my_qr_scanner/providers/ui_provider.dart';
import 'package:my_qr_scanner/widgets/custom_appbar_widget.dart';
import 'package:my_qr_scanner/widgets/custom_floating_action_button.dart';
import 'package:my_qr_scanner/widgets/custom_navigator_bottom_bar_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete_forever_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: _HomePageBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: CustomFloatingActionButton(),
      bottomNavigationBar: CustomNavigatorBottomBarWidget(),
    );
  }
}

class _HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectMenuOpt;
    switch (currentIndex) {
      case 0:
        return const MapsListPage();

      case 1:
        return const DirectionsPage();

      default:
        return const MapsListPage();
    }
  }
}
