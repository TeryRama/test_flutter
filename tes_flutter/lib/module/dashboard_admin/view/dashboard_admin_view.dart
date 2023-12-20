import 'package:flutter/material.dart';
import 'package:tes_flutter/core.dart';
import '../controller/dashboard_admin_controller.dart';

class DashboardAdminView extends StatefulWidget {
  const DashboardAdminView({Key? key}) : super(key: key);

  Widget build(context, DashboardAdminController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("DashboardAdmin"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<DashboardAdminView> createState() => DashboardAdminController();
}
