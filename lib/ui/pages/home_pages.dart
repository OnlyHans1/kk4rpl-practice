import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController animationControllerScreen;
  late Animation<double> animationScreen;

  late AnimationController animationControllerCover;
  late Animation<double> animationCover;

  late AnimationController animationControllerProfiles;
  late Animation<double> animationProfiles;

  late AnimationController animationControllerDetail;
  late Animation<double> animationDetail;

  late AnimationController animationControllerImage;
  late Animation<double> animationImage;

  @override
  void initState() {
    super.initState();

    animationControllerScreen =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animationScreen =
        Tween<double>(begin: 1, end: 0).animate(animationControllerScreen);

    animationControllerCover =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animationCover = Tween<double>(begin: 0, end: 240).animate(
      CurvedAnimation(
        parent: animationControllerCover,
        curve: const Interval(0.150, 0.999, curve: Curves.bounceInOut),
      ),
    );

    animationControllerProfiles =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    animationProfiles = Tween<double>(begin: 0, end: 100).animate(
      CurvedAnimation(
        parent: animationControllerProfiles,
        curve: const Interval(0.550, 0.999, curve: Curves.bounceOut),
      ),
    );

    animationControllerDetail =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animationDetail = Tween<double>(begin: 0, end: 700).animate(
      CurvedAnimation(
        parent: animationControllerDetail,
        curve: const Interval(0.150, 0.999, curve: Curves.bounceOut),
      ),
    );

    animationControllerImage =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animationImage = Tween<double>(begin: 0, end: 90).animate(
      CurvedAnimation(
        parent: animationControllerImage,
        curve: const Interval(0.550, 0.999, curve: Curves.bounceOut),
      ),
    );

    animationControllerScreen.forward();
    animationControllerCover.forward();
    animationControllerProfiles.forward();

    _delay();
  }

  Future<void> _delay() async {
    await Future.delayed(const Duration(milliseconds: 300));
    animationControllerDetail.forward();
    animationControllerImage.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AnimationScreen(animation: animationScreen),
            AnimationCover(animation: animationCover),
            AnimationProfiles(animation: animationProfiles),
            AnimationDetail(animation: animationDetail),
            AnimationImage(animation: animationImage),
          ],
        ),
      ),
    );
  }
}

class AnimationScreen extends AnimatedWidget {
  const AnimationScreen({super.key, required Animation<double> animation})
      : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Container(
      height: 900,
      width: 900,
      color: Colors.red[700]?.withOpacity(animation.value),
    );
  }
}

class AnimationCover extends AnimatedWidget {
  const AnimationCover({super.key, required Animation<double> animation})
      : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Container(
      height: animation.value,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/bg1.jpg'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class AnimationProfiles extends AnimatedWidget {
  const AnimationProfiles({super.key, required Animation<double> animation})
      : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Container(
      height: 480,
      child: Center(
        child: Container(
          height: animation.value,
          width: animation.value,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 1.5),
            image: const DecorationImage(
              image: AssetImage("assets/user.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}

class AnimationDetail extends AnimatedWidget {
  const AnimationDetail({super.key, required Animation<double> animation})
      : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    return Center(
      child: SizedBox(
        height: animation.value,
        child: const SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 310)),
              Text(
                "Rhaihan Aditya Hidayat",
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "www.rah.my.id ",
                style: TextStyle(
                  fontSize: 16,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class AnimationImage extends AnimatedWidget {
  const AnimationImage({super.key, required Animation<double> animation})
      : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    final animation = listenable as Animation<double>;
    final imageSize = animation.value.clamp(80.0, 120.0); // Ukuran minimum dan maksimum gambar

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 555),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  _buildExpandedImage("assets/1.jpg", imageSize),
                  const SizedBox(width: 8.0),
                  _buildExpandedImage("assets/2.jpg", imageSize),
                  const SizedBox(width: 8.0),
                  _buildExpandedImage("assets/3.jpg", imageSize),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  _buildExpandedImage("assets/4.jpg", imageSize),
                  const SizedBox(width: 8.0),
                  _buildExpandedImage("assets/5.jpg", imageSize),
                  const SizedBox(width: 8.0),
                  _buildExpandedImage("assets/6.jpg", imageSize),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildExpandedImage(String path, double size) {
    return Expanded(
      child: Container(
        height: size,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(path),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(8.0), // Tambahkan sudut membulat
        ),
      ),
    );
  }
}

