import 'package:flutter/material.dart';
import 'package:kk4rpl_project/ui/pages/home_pages.dart';

class StartAnimation extends StatefulWidget {
  final AnimationController buttonController;
  final Animation shrinkButtonAnimation;
  final Animation zoomAnimation;

  final String user;
  final String password;

  StartAnimation({
    super.key, 
    required this.buttonController, 
    required this.user, 
    required this.password
  }) : 
    shrinkButtonAnimation = Tween<double>(begin: 320, end: 70).animate(
      CurvedAnimation(
        parent: buttonController, 
        curve: const Interval(0.0, 0.150)
      )
    ),
    zoomAnimation = Tween<double>(
      begin: 70,
      end: 900
    ).animate(
      CurvedAnimation(
        parent: buttonController, 
        curve: const Interval(0.550, 0.999, curve: Curves.bounceOut)
      )
    );

  Widget _buildAnimation(BuildContext context, Widget? child) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 60),
      child: zoomAnimation.value <= 300 
        ? Container(
            alignment: Alignment.center,
            width: shrinkButtonAnimation.value,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.red[700],
              borderRadius: const BorderRadius.all(Radius.circular(30)),
            ),
            child: shrinkButtonAnimation.value > 75
                ? const Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w300,
                      letterSpacing: 0.3
                    ),
                  )
                : const CircularProgressIndicator(
                    strokeWidth: 1,
                    valueColor: AlwaysStoppedAnimation(Colors.white),
                  )
          )
        : user == 'idr' 
            ? Container(
                width: zoomAnimation.value,
                height: zoomAnimation.value,
                decoration: BoxDecoration(
                  shape: zoomAnimation.value < 600
                    ? BoxShape.circle
                    : BoxShape.rectangle,
                  color: Colors.red[700]
                ),
              ) 
            : Container(
                alignment: Alignment.center,
                width: shrinkButtonAnimation.value,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.red[700],
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                ),
                child: shrinkButtonAnimation.value > 75
                    ? const Text(
                        "Sign In",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          letterSpacing: 0.3
                        ),
                      )
                    : const CircularProgressIndicator(
                        strokeWidth: 1,
                        valueColor: AlwaysStoppedAnimation(Colors.white),
                      )
              )
    );
  }

  @override
  State<StartAnimation> createState() => _StartAnimationState();
}

class _StartAnimationState extends State<StartAnimation> {
  @override
  Widget build(BuildContext context) {
    widget.buttonController.addListener(() {
      if (widget.zoomAnimation.isCompleted) {
        if (widget.user == 'idr') {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => const Home()), 
          );
        }
      }
    });

    return AnimatedBuilder(
      animation: widget.buttonController,
      builder: widget._buildAnimation,
    );
  }
}