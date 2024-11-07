import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';
import '../view/uk_dashboard13_view.dart';
import 'package:carousel_slider/carousel_controller.dart' as carousel_slider;

class UkDashboard13Controller extends State<UkDashboard13View> {
  static late UkDashboard13Controller instance;
  late UkDashboard13View view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  int currentIndex = 0;
  final carousel_slider.CarouselController carouselController =
      carousel_slider.CarouselController();
}
