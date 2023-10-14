import 'package:flutter/material.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({super.key});

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> 
with SingleTickerProviderStateMixin
{
  late AnimationController _controller;
  late Animation<double> _withAnimation;
  late Animation<Color?> _colorAnimation;
  late Animation<double> _borderRadiusAnumation;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller = AnimationController(vsync: this,duration: const Duration(seconds: 2));
    _withAnimation = Tween<double>(begin: 0,end: 200).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _colorAnimation = ColorTween(begin: Colors.blue,end: Colors.green).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInCubic));
    _borderRadiusAnumation = Tween<double>(begin: 0.0,end: 50.0).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.forward();
  }

@override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context,child){
          return Center(
            child: Container(
              width: _withAnimation.value,
              height: _withAnimation.value,
              decoration: BoxDecoration(
                color: _colorAnimation.value,
                borderRadius: BorderRadius.circular(_borderRadiusAnumation.value),
              ),
            ),
          );
        },
      ),
    );
  }
}