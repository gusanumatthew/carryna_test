import 'package:carryna_test/core/utils/colors.dart';
import 'package:carryna_test/features/home/Presentation/widgets/bar.dart';
import 'package:flutter/material.dart';

class HomeBarType extends StatefulWidget {
  final void Function(int)? onChanged;
  final int index;
  const HomeBarType({super.key, this.onChanged, this.index = 0});

  @override
  State<HomeBarType> createState() => _HomeBarTypeState();
}

class _HomeBarTypeState extends State<HomeBarType> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.bounceInOut,
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: CarryNaColors.darkLight),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Bar(
            isSelected: widget.index == 0,
            text: 'Promos',
            onTap: () => widget.onChanged!(0),
          ),
          Bar(
              isSelected: widget.index == 1,
              text: 'Wallets',
              onTap: () {
                widget.onChanged!(1);
              }),
        ],
      ),
    );
  }
}
