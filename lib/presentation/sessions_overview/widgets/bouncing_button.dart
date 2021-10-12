import 'package:flutter/material.dart';
import 'package:ubunye_method/theme.dart';

class BouncingButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onPressed;

  BouncingButton({required this.icon, required this.onPressed});

  @override
  _BouncingButtonState createState() => _BouncingButtonState();
}

class _BouncingButtonState extends State<BouncingButton> with SingleTickerProviderStateMixin {
  double _scale = 1;

  AnimationController? _controller;
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 200,
      ),
      lowerBound: 0.0,
      upperBound: 0.1,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        onTapDown: _onTapDown,
        onTapCancel: _onTapCancel,
        child: Transform.scale(
          scale: _scale,
          child: _animatedButton(),
        ),
      ),
    );
  }

  Widget _animatedButton() {
    return Container(
      height: 160,
      width: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100.0),
          boxShadow: [
            BoxShadow(
              color: Color(0x80000000),
              blurRadius: 12.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
          color: Colors.white),
      child: IconButton(
        icon: Icon(
          widget.icon,
          color: kAccentColor,
        ),
        iconSize: 64.0,
        onPressed: widget.onPressed,
      ),
    );
  }

  void _onTapDown(TapDownDetails details) {
    setState(() {
      _scale *= 0.8;
    });
    _controller?.forward();
  }

  void _onTapCancel() {
    setState(() {
      _scale = 1;
    });
    _controller?.reverse();
  }
}
