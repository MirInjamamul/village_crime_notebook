import 'dart:async';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/app_colors.dart';



class OverlayManager {
  static OverlayEntry? _overlayEntry;

  static void showOverlay(BuildContext context) {
    if (_overlayEntry == null) {
      OverlayState overlayState = Overlay.of(context);
      _overlayEntry = OverlayEntry(
        builder: (context) => Positioned(
          top: 35,
          left: 70,
          right: 70,
          child: Material(
            color: Colors.transparent,
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColor.colorPrimary,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child:  Text(
                  'You’re using LovoRise Offline',
                  style: TextStyle(color: AppColor.colorWhite, fontSize: 12)
              ),
            ),
          ),
        ),
      );
      overlayState.insert(_overlayEntry!);
    }
  }

  static void hideOverlay() {
    if (_overlayEntry != null) {
      _overlayEntry!.remove();
      _overlayEntry = null;
    }
  }
}


void showCustomToast(String message){
  showTopSnackBar(
    Overlay.of(Get.overlayContext!),
    CustomSnackBar.info(
      messagePadding: const EdgeInsets.symmetric(horizontal: 4),
      icon: const SizedBox(),
      backgroundColor: AppColor.colorPrimary,
      borderRadius: BorderRadius.circular(4),
      message: message,
    ),
  );
}

/// Popup widget that you can use by default to show some information
class CustomSnackBar extends StatefulWidget {
  const CustomSnackBar.info({
    Key? key,
    this.message = '',
    this.colorMsgFirstPart = '',
    this.colorMsgSecPart = '',
    this.colorMsg3rdPart = '',
    this.isPremium = false,
    this.onTap,
    this.messagePadding = const EdgeInsets.symmetric(horizontal: 12),
    this.icon = const Icon(
      Icons.sentiment_neutral,
      color: Color(0x15000000),
      size: 120,
    ),
    this.textStyle = const TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: Colors.white,
    ),
    this.maxLines = 2,
    this.iconRotationAngle = 32,
    this.iconPositionTop = -10,
    this.iconPositionLeft = -8,
    this.backgroundColor = const Color(0xff2196F3),
    this.boxShadow = kDefaultBoxShadow,
    this.borderRadius = kDefaultBorderRadius,
    this.textScaleFactor = 1.0,
    this.textAlign = TextAlign.center,
  }) : super(key: key);

  final String message;
  final VoidCallback? onTap;
  final String colorMsgFirstPart;
  final String colorMsgSecPart;
  final String colorMsg3rdPart;
  final bool isPremium;
  final Widget icon;
  final Color backgroundColor;
  final TextStyle textStyle;
  final int maxLines;
  final int iconRotationAngle;
  final List<BoxShadow> boxShadow;
  final BorderRadius borderRadius;
  final double iconPositionTop;
  final double iconPositionLeft;
  final EdgeInsetsGeometry messagePadding;
  final double textScaleFactor;
  final TextAlign textAlign;

  @override
  CustomSnackBarState createState() => CustomSnackBarState();
}

class CustomSnackBarState extends State<CustomSnackBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      clipBehavior: Clip.hardEdge,
      height: widget.isPremium  ? 50 : 40,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: widget.borderRadius,
        boxShadow: widget.boxShadow,
      ),
      width: double.infinity,
      child: Center(
        child: Padding(
          padding: widget.messagePadding,
          child:  widget.isPremium ? RichText(
            textAlign: widget.textAlign,
            overflow: TextOverflow.ellipsis,
            textScaleFactor: widget.textScaleFactor,
            maxLines: widget.maxLines,
            text: TextSpan(
                text: widget.colorMsgFirstPart,
                style: theme.textTheme.bodyMedium?.merge(widget.textStyle),
                children: [
                  TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        if(widget.onTap != null){
                          widget.onTap!();
                        }
                        // Navigator.push(context, PageTransition(type: PageTransitionType.leftToRight, child: const PlatinumSubscriptionScreen(fromPage: 'Story',isIncludeSubscription: true)));
                      },
                    text: ' ${widget.colorMsgSecPart} ',
                    style: theme.textTheme.bodyMedium?.merge(widget.textStyle).copyWith(color: Colors.blueAccent),
                  ),
                  TextSpan(
                    text: widget.colorMsg3rdPart,
                    style: theme.textTheme.bodyMedium?.merge(widget.textStyle),
                  ),
                ]
            ),
          ) : Text(
            widget.message,
            style: theme.textTheme.bodyMedium?.merge(widget.textStyle),
            textAlign: widget.textAlign,
            overflow: TextOverflow.ellipsis,
            maxLines: widget.maxLines,
            textScaleFactor: widget.textScaleFactor,
          ),


        ),
      ),
    );
  }
}

const kDefaultBoxShadow = [
  BoxShadow(
    color: Colors.black26,
    offset: Offset(0, 8),
    spreadRadius: 1,
    blurRadius: 30,
  ),
];

const kDefaultBorderRadius = BorderRadius.all(Radius.circular(12));


/// top

/// Widget for nice tap effect. It decrease widget scale while tapping
class TapBounceContainer extends StatefulWidget {
  const TapBounceContainer({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);

  final Widget child;
  final VoidCallback? onTap;

  @override
  TapBounceContainerState createState() => TapBounceContainerState();
}

/// State for a [TapBounceContainer].
class TapBounceContainerState extends State<TapBounceContainer> with SingleTickerProviderStateMixin {
  late double _scale;
  late AnimationController _controller;
  final animationDuration = const Duration(milliseconds: 200);

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: animationDuration,
      upperBound: 0.04,
    )..addListener(() {
      if (mounted) {
        setState(() {});
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _scale = 1 - _controller.value;

    return GestureDetector(
      onTapDown: _onTapDown,
      onTapUp: _onTapUp,
      onPanEnd: _onPanEnd,
      child: Transform.scale(
        scale: _scale,
        child: widget.child,
      ),
    );
  }

  void _onTapDown(TapDownDetails details) {
    if (mounted) {
      _controller.forward();
    }
  }

  Future<void> _onTapUp(TapUpDetails details) async {
    await _closeSnackBar();
  }

  Future<void> _onPanEnd(DragEndDetails details) async {
    await _closeSnackBar();
  }

  Future<void> _closeSnackBar() async {
    if (mounted) {
      unawaited(_controller.reverse());
      await Future.delayed(animationDuration);
      widget.onTap?.call();
    }
  }
}



/// last

typedef ControllerCallback = void Function(AnimationController);

/// Represents possible triggers to dismiss the snackbar.
enum DismissType { onTap, onSwipe, none }

/// Represents possible vertical position of snackbar.
enum SnackBarPosition { top, bottom }

OverlayEntry? _previousEntry;

/// The [overlayState] argument is used to add specific overlay state.
/// If you are sure that there is a overlay state in your [BuildContext],
/// You can get it [Overlay.of(BuildContext)]
/// Displays a widget that will be passed to [child] parameter above the current
/// contents of the app, with transition animation
///
/// The [child] argument is used to pass widget that you want to show
///
/// The [animationDuration] argument is used to specify duration of
/// enter transition
///
/// The [reverseAnimationDuration] argument is used to specify duration of
/// exit transition
///
/// The [displayDuration] argument is used to specify duration displaying
///
/// The [onTap] callback of [_TopSnackBar]
///
/// The [persistent] argument is used to make snack bar persistent, so
/// [displayDuration] will be ignored. Default is false.
///
/// The [onAnimationControllerInit] callback is called on internal
/// [AnimationController] has been initialized.
///
/// The [padding] argument is used to specify amount of outer padding
///
/// [curve] and [reverseCurve] arguments are used to specify curves
/// for in and out animations respectively
///
/// The [safeAreaValues] argument is used to specify the arguments of the
/// [SafeArea] widget that wrap the snackbar.
///
/// The [dismissType] argument specifies which action to trigger to
/// dismiss the snackbar. Defaults to `TopSnackBarDismissType.onTap`
///
/// The [snackBarPosition] argument specifies the vertical position of the snackbar.
/// Defaults to [SnackBarPosition.top]
///
/// The [dismissDirection] argument specifies in which direction the snackbar
/// can be dismissed. This argument is only used when [dismissType] is equal
/// to `DismissType.onSwipe`. Defaults to `[DismissDirection.up]`
void showTopSnackBar(
    OverlayState overlayState,
    Widget child, {
      Duration animationDuration = const Duration(milliseconds: 500),
      Duration reverseAnimationDuration = const Duration(milliseconds: 500),
      Duration displayDuration = const Duration(milliseconds: 500),
      VoidCallback? onTap,
      bool persistent = false,
      ControllerCallback? onAnimationControllerInit,
      EdgeInsets padding = const EdgeInsets.all(16),
      Curve curve = Curves.elasticOut,
      Curve reverseCurve = Curves.linearToEaseOut,
      SafeAreaValues safeAreaValues = const SafeAreaValues(),
      DismissType dismissType = DismissType.onTap,
      SnackBarPosition snackBarPosition = SnackBarPosition.top,
      List<DismissDirection> dismissDirection = const [DismissDirection.up],
    }) {
  late OverlayEntry overlayEntry;
  overlayEntry = OverlayEntry(
    builder: (_) {
      return _TopSnackBar(
        onDismissed: () {
          overlayEntry.remove();
          _previousEntry = null;
        },
        animationDuration: animationDuration,
        reverseAnimationDuration: reverseAnimationDuration,
        displayDuration: displayDuration,
        onTap: onTap,
        persistent: persistent,
        onAnimationControllerInit: onAnimationControllerInit,
        padding: padding,
        curve: curve,
        reverseCurve: reverseCurve,
        safeAreaValues: safeAreaValues,
        dismissType: dismissType,
        snackBarPosition: snackBarPosition,
        dismissDirections: dismissDirection,
        child: child,
      );
    },
  );

  if (_previousEntry != null && _previousEntry!.mounted) {
    _previousEntry?.remove();
  }

  overlayState.insert(overlayEntry);
  _previousEntry = overlayEntry;
}

/// Widget that controls all animations
class _TopSnackBar extends StatefulWidget {
  const _TopSnackBar({
    Key? key,
    required this.child,
    required this.onDismissed,
    required this.animationDuration,
    required this.reverseAnimationDuration,
    required this.displayDuration,
    required this.padding,
    required this.curve,
    required this.reverseCurve,
    required this.safeAreaValues,
    required this.dismissDirections,
    required this.snackBarPosition,
    this.onTap,
    this.persistent = false,
    this.onAnimationControllerInit,
    this.dismissType = DismissType.onTap,
  }) : super(key: key);

  final Widget child;
  final VoidCallback onDismissed;
  final Duration animationDuration;
  final Duration reverseAnimationDuration;
  final Duration displayDuration;
  final VoidCallback? onTap;
  final ControllerCallback? onAnimationControllerInit;
  final bool persistent;
  final EdgeInsets padding;
  final Curve curve;
  final Curve reverseCurve;
  final SafeAreaValues safeAreaValues;
  final DismissType dismissType;
  final List<DismissDirection> dismissDirections;
  final SnackBarPosition snackBarPosition;

  @override
  _TopSnackBarState createState() => _TopSnackBarState();
}

class _TopSnackBarState extends State<_TopSnackBar> with SingleTickerProviderStateMixin {
  late final Animation<Offset> _offsetAnimation;
  late final AnimationController _animationController;

  Timer? _timer;

  late final Tween<Offset> _offsetTween;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
      reverseDuration: widget.reverseAnimationDuration,
    );
    _animationController.addStatusListener(
          (status) {
        if (status == AnimationStatus.completed && !widget.persistent) {
          _timer = Timer(widget.displayDuration, () {
            if (mounted) {
              _animationController.reverse();
            }
          });
        }
        if (status == AnimationStatus.dismissed) {
          _timer?.cancel();
          widget.onDismissed.call();
        }
      },
    );

    widget.onAnimationControllerInit?.call(_animationController);

    switch(widget.snackBarPosition) {
      case SnackBarPosition.top:
        _offsetTween = Tween<Offset>(begin: const Offset(0, -1), end: Offset.zero);
        break;
      case SnackBarPosition.bottom:
        _offsetTween = Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero);
        break;
    }

    _offsetAnimation = _offsetTween.animate(
      CurvedAnimation(
        parent: _animationController,
        curve: widget.curve,
        reverseCurve: widget.reverseCurve,
      ),
    );
    if (mounted) {
      _animationController.forward();
    }
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: widget.snackBarPosition == SnackBarPosition.top ? widget.padding.top : null,
      bottom: widget.snackBarPosition == SnackBarPosition.bottom ? widget.padding.bottom : null,
      left: widget.padding.left,
      right: widget.padding.right,
      child: SlideTransition(
        position: _offsetAnimation,
        child: SafeArea(
          top: widget.safeAreaValues.top,
          bottom: widget.safeAreaValues.bottom,
          left: widget.safeAreaValues.left,
          right: widget.safeAreaValues.right,
          minimum: widget.safeAreaValues.minimum,
          maintainBottomViewPadding: widget.safeAreaValues.maintainBottomViewPadding,
          child: _buildDismissibleChild(),
        ),
      ),
    );
  }

  /// Build different type of [Widget] depending on [DismissType] value
  Widget _buildDismissibleChild() {
    switch (widget.dismissType) {
      case DismissType.onTap:
        return TapBounceContainer(
          onTap: () {
            widget.onTap?.call();
            if (!widget.persistent && mounted) {
              _animationController.reverse();
            }
          },
          child: widget.child,
        );
      case DismissType.onSwipe:
        var childWidget = widget.child;
        for (final direction in widget.dismissDirections) {
          childWidget = Dismissible(
            direction: direction,
            key: UniqueKey(),
            dismissThresholds: const {DismissDirection.up: 0.2},
            confirmDismiss: (direction) async {
              if (!widget.persistent && mounted) {
                if (direction == DismissDirection.down) {
                  await _animationController.reverse();
                } else {
                  _animationController.reset();
                }
              }
              return false;
            },
            child: childWidget,
          );
        }
        return childWidget;
      case DismissType.none:
        return widget.child;
    }
  }
}




/// safe are


/// A data class that is used to pass safe area values for snackbar
class SafeAreaValues {
  const SafeAreaValues({
    this.left = true,
    this.right = true,
    this.top = true,
    this.bottom = true,
    this.minimum = EdgeInsets.zero,
    this.maintainBottomViewPadding = false,
  });

  final bool left;
  final bool top;
  final bool right;
  final bool bottom;
  final EdgeInsets minimum;
  final bool maintainBottomViewPadding;
}




