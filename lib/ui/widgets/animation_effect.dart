
import 'package:flutter/material.dart';
import 'package:oxo/ui/utils/style.dart';
import 'package:progress_indicators/progress_indicators.dart';

// ignore: must_be_immutable
class AnimationButtonEffect extends StatefulWidget {
  final bool disabled;
  final bool isGrey;
  final bool isLoading;
  Widget child;
  AnimationButtonEffect(
      {Key? key, this.disabled = true,
        this.isGrey = false,
        this.isLoading = false,
        required this.child}) : super(key: key);

  @override
  _AnimationButtonEffectState createState() => _AnimationButtonEffectState();
}

class _AnimationButtonEffectState extends State<AnimationButtonEffect>
    with TickerProviderStateMixin {
  AnimationController? _controllerA;

  var squareScaleA = 0.95;

  @override
  void initState() {
    _controllerA = AnimationController(
      vsync: this,
      lowerBound: 0.95,
      upperBound: 1.0,
      duration: const Duration(milliseconds: 80),
    );
    _controllerA!.addListener(() {
      setState(() {
        squareScaleA = _controllerA!.value;
      });
    });

    _controllerA!.forward(from: 0.0);
    super.initState();
  }

  @override
  void dispose() {
    _controllerA!.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widget.disabled ? Listener(
      onPointerDown: (_) {
        _controllerA!.reverse();
      },
      onPointerUp: (_) {
        _controllerA!.forward(from: 1.0);
        if (!widget.disabled) {
        }
      },
      child: Transform.scale(
        scale: squareScaleA,
        child: Stack(
          children: [
            widget.child,
            widget.isLoading
                ? Positioned(
              left: 0,
              right: 0,
              bottom: 5,
              child: JumpingDotsProgressIndicator(
                // dotSpacing: 5,
                numberOfDots: 3,
                fontSize: 55.0,
                color:  Style.blackColor,
              ),
            )
                : const SizedBox()
          ],
        ),
      ),
    ) : widget.child;
  }
}