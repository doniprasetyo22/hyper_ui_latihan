import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/mahasiswa_view.dart';

class MahasiswaController extends State<MahasiswaView> {
  static late MahasiswaController instance;
  late MahasiswaView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  testing() async {
    showLoading();
    snackbarDanger(message: 'Anda Berhasil');
    await Future.delayed(Duration(seconds: 3));
    Get.back();
    hideLoading();
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
}
