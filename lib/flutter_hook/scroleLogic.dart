import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

ScrollController mYUseScrollController(animatedContainer) {
  return Hook.use(_FedAnimationHook(animatedContainer));
}




// ignore: must_be_immutable
class _FedAnimationHook extends Hook<ScrollController> {
  AnimationController animatedContainer;

  _FedAnimationHook(this.animatedContainer);

  @override
  _FedAnimationHookState createState() => _FedAnimationHookState();
}

class _FedAnimationHookState
    extends HookState<ScrollController, _FedAnimationHook> {
  ScrollController _scrollController;

  @override
  void initHook() {
    _scrollController = ScrollController();
    _scrollController.addListener(() {
      switch (_scrollController.position.userScrollDirection) {
        case ScrollDirection.forward:
          hook.animatedContainer.forward();
          break;
        case ScrollDirection.idle:
          break;
        case ScrollDirection.reverse:
          hook.animatedContainer.reverse();
          break;
      }
    });
  }

  @override
  ScrollController build(BuildContext context) {
    return _scrollController;
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
