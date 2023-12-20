import 'package:flutter/material.dart';
import 'package:tes_flutter/core.dart';
import '../view/dashboard_user_view.dart';

class DashboardUserController extends State<DashboardUserView> {
  static late DashboardUserController instance;
  late DashboardUserView view;

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
