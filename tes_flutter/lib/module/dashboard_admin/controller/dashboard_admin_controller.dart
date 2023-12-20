import 'package:flutter/material.dart';
import 'package:tes_flutter/core.dart';
import '../view/dashboard_admin_view.dart';

class DashboardAdminController extends State<DashboardAdminView> {
  static late DashboardAdminController instance;
  late DashboardAdminView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
