import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class AnimatedSizeAndFade extends StatelessWidget {
  static final _key = UniqueKey();
  final Widget? child;
  final Duration fadeDuration;
  final Duration sizeDuration;
  final Curve fadeInCurve;
  final Curve fadeOutCurve;
  final Curve sizeCurve;
  final Alignment alignment;
  final bool show;
  AnimatedSizeAndFade({
    Key? key,
    this.child,
    this.fadeDuration = const Duration(milliseconds: 500),
    this.sizeDuration = const Duration(milliseconds: 500),
    this.fadeInCurve = Curves.easeInOut,
    this.fadeOutCurve = Curves.easeInOut,
    this.sizeCurve = Curves.easeInOut,
    this.alignment = Alignment.center,
  })  : show = true,
        super(key: key);
  /// Use this constructor when you want to show/hide the child, by doing a
  /// vertical size/fade. To that end, instead of changing the child,
  /// simply change [show]. Note this widget will try to have its width as
  /// big as possible, so put it in a parent with limited width constraints.
  AnimatedSizeAndFade.showHide({
    Key? key,
    this.child,
    required this.show,
    this.fadeDuration = const Duration(milliseconds: 500),
    this.sizeDuration = const Duration(milliseconds: 500),
    this.fadeInCurve = Curves.easeInOut,
    this.fadeOutCurve = Curves.easeInOut,
    this.sizeCurve = Curves.easeInOut,
    this.alignment = Alignment.center,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var animatedSize = AnimatedSize(
      duration: sizeDuration,
      curve: sizeCurve,
      child: AnimatedSwitcher(
        child: show
            ? child
            : Container(
          key: AnimatedSizeAndFade._key,
          width: double.infinity,
          height: 0,
        ),
        duration: fadeDuration,
        switchInCurve: fadeInCurve,
        switchOutCurve: fadeOutCurve,
        layoutBuilder: _layoutBuilder,
      ),
    );
    return ClipRect(child: animatedSize);
  }
  Widget _layoutBuilder(Widget? currentChild, List<Widget> previousChildren) {
    List<Widget> children = previousChildren;
    if (currentChild != null) {
      if (previousChildren.isEmpty)
        children = [currentChild];
      else {
        children = [
          Positioned(
            left: 0.0,
            right: 0.0,
            child: Container(child: previousChildren[0]),
          ),
          Container(child: currentChild),
        ];
      }
    }
    return Stack(
      clipBehavior: Clip.none,
      children: children,
      alignment: alignment,
    );
  }
}
