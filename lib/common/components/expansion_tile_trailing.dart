import 'package:flutter/material.dart';

class ExpansionTileTrailing extends StatefulWidget {
  late Function(bool isExpanded)? _onExpansion;

  ExpansionTileTrailing({Key? key}) : super(key: key);

  @override
  State<ExpansionTileTrailing> createState() => _ExpansionTileTrailingState();

  void startAnimation(bool isExpanded) {
    _onExpansion?.call(isExpanded);
  }
}

class _ExpansionTileTrailingState extends State<ExpansionTileTrailing>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _turns;
  static final Animatable<double> _easeInTween =
      CurveTween(curve: Curves.easeIn);
  static final Animatable<double> _halfTween =
      Tween<double>(begin: 0.0, end: 0.5);

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
        duration: const Duration(milliseconds: 200), vsync: this);
    _turns = _animationController.drive(_halfTween.chain(_easeInTween));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widget._onExpansion = startAnimation;
    return RotationTransition(
      turns: _turns,
      child: Icon(
        Icons.expand_more,
        color: Theme.of(context).iconTheme.color,
      ),
    );
  }

  void startAnimation(bool isExpanded) {
    if (isExpanded) {
      _animationController.forward();
      return;
    }

    _animationController.reverse();
  }
}
