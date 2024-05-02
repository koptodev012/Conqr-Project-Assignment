import 'dart:async';
import 'package:conqr_assignment/views/stepper/stepper_screen.dart';
import 'package:flutter/material.dart';

class SizeTransitionExample extends StatefulWidget {
  const SizeTransitionExample({super.key});

  @override
  State<SizeTransitionExample> createState() => _SizeTransitionExampleState();
}

class _SizeTransitionExampleState extends State<SizeTransitionExample>
    with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const StepperInFlutter())));
  }

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 4),
    vsync: this,
  )..repeat();
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizeTransition(
        sizeFactor: _animation,
        axis: Axis.horizontal,
        axisAlignment: -1,
        child: Center(
          child: Image.asset(
            "assets/images/Logo-01 1.png",
            height: 250,
            width: 250,
          ),
        ),
      ),
    );
  }
}

// ------------------Rotate Image Animation-----------------

// import 'package:flutter/material.dart';

// class RotationTransitionExample extends StatefulWidget {
//   const RotationTransitionExample({super.key});

//   @override
//   State<RotationTransitionExample> createState() =>
//       _RotationTransitionExampleState();
// }

// class _RotationTransitionExampleState extends State<RotationTransitionExample>
//     with TickerProviderStateMixin {
//   late final AnimationController _controller = AnimationController(
//     duration: const Duration(seconds: 2),
//     vsync: this,
//   )..repeat(reverse: true);
//   late final Animation<double> _animation = CurvedAnimation(
//     parent: _controller,
//     curve: Curves.elasticOut,
//   );

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: RotationTransition(
//           turns: _animation,
//           child: Padding(
//             padding: EdgeInsets.all(8.0),
//             child: Image.asset(
//               "assets/images/Vector.png",
//               height: 250,
//               width: 250,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
