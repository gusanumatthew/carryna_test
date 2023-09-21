import 'package:flutter/material.dart';

class SlideFromBottomWidget extends StatefulWidget {
  const SlideFromBottomWidget({
    super.key,
    required this.child,
    this.delay = 0.0,
    required this.onCompleted,
  });
  final Widget child;
  final double delay;
  final void Function() onCompleted;

  @override
  State<SlideFromBottomWidget> createState() => _SlideFromBottomWidgetState();
}

class _SlideFromBottomWidgetState extends State<SlideFromBottomWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
    _forward();
  }

  void _forward() async {
    _controller.forward().then((value) {
      Future.delayed(const Duration(milliseconds: 1000), () {
        widget.onCompleted();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(0, 4),
        end: const Offset(0, 0),
      ).animate(_controller),
      child: ScaleTransition(
        scale: _animation,
        child: widget.child,
      ),
    );
  }
}
