// import 'package:flutter/material.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'package:kids_learnings/model/alphabet_data.dart';



// /// A single reusable screen for every letter A–Z.
// ///
// /// Usage:
// ///   AlphabetScreen(index: 1)            // shows letter B
// ///   AlphabetScreen(data: kAlphabets[1]) // same, explicit data
// class AlphabetScreen extends StatefulWidget {
//   /// Index into [kAlphabets] (0 = A, 1 = B, … 25 = Z).
//   final int index;

//   const AlphabetScreen({Key? key, required this.index}) : super(key: key);

//   @override
//   State<AlphabetScreen> createState() => _AlphabetScreenState();
// }

// class _AlphabetScreenState extends State<AlphabetScreen> {
//   late final AlphabetData _data;
//   late final FlutterTts _tts;

//   @override
//   void initState() {
//     super.initState();
//     _data = kAlphabets[widget.index];
//     _tts = FlutterTts()..setSpeechRate(0.5)..getDefaultEngine;
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _tts.speak('Letter ${_data.letter}');
//     });
//   }

//   @override
//   void dispose() {
//     _tts.stop();
//     super.dispose();
//   }

//   Future<void> _speakWord(String word) => _tts.speak('${_data.letter} for $word');
//   Future<void> _speakLetter()          => _tts.speak(_data.letter);

//   void _goTo(BuildContext ctx, int targetIndex) {
//     Navigator.pushReplacement(
//       ctx,
//       MaterialPageRoute(builder: (_) => AlphabetScreen(index: targetIndex)),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     final isFirst = widget.index == 0;
//     final isLast  = widget.index == kAlphabets.length - 1;

//     return Scaffold(
//       backgroundColor: Colors.white,
//       bottomNavigationBar: _buildNavBar(context, isFirst, isLast),
//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               // ── Liquid fill letter ──────────────────────────────────────
//               SizedBox(
//                 height: 240,
//                 child: Center(child: _buildLiquidFill()),
//               ),
//               // ── Four word tiles ─────────────────────────────────────────
//               ..._data.words.map(
//                 (wc) => SizedBox(
//                   height: 80,
//                   child: _buildWordTile(wc),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // ── Liquid fill ───────────────────────────────────────────────────────────

//   Widget _buildLiquidFill() {
//     return GestureDetector(
//       onTap: _speakLetter,
//       child: DefaultTextStyle(
//         style: const TextStyle(
//           fontSize: 30,
//           fontFamily: 'KGRedHands',
//           color: Colors.orangeAccent,
//         ),
//         child: TextLiquidFill(
//           text: _data.letterWord,
//           waveDuration: const Duration(seconds: 5),
//           waveColor: Colors.orangeAccent,
//           boxBackgroundColor: Colors.white,
//           textStyle: const TextStyle(
//             fontSize: 165,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }

//   // ── Word tile ─────────────────────────────────────────────────────────────

//   Widget _buildWordTile(WordColor wc) {
//     return DefaultTextStyle(
//       style: TextStyle(
//         fontSize: 30,
//         fontFamily: 'KGRedHands',
//         color: Color(wc.colorValue),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Center(
//           child: AnimatedTextKit(
//             animatedTexts: [WavyAnimatedText(wc.word)],
//             isRepeatingAnimation: false,
//             onTap: () => _speakWord(wc.word),
//           ),
//         ),
//       ),
//     );
//   }

//   // ── Bottom nav bar ────────────────────────────────────────────────────────

//   Widget _buildNavBar(BuildContext ctx, bool isFirst, bool isLast) {
//     return Container(
//       height: 40,
//       margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
//       child: Row(
//         children: [
//           Expanded(
//             child: _navButton(
//               label: 'Back',
//               icon: Icons.navigate_before,
//               color: Colors.grey,
//               onPressed: isFirst ? null : () => _goTo(ctx, widget.index - 1),
//             ),
//           ),
//           Expanded(
//             child: _navButton(
//               label: 'Next',
//               icon: Icons.navigate_next,
//               color: Colors.orangeAccent,
//               onPressed: isLast ? null : () => _goTo(ctx, widget.index + 1),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget _navButton({
//     required String label,
//     required IconData icon,
//     required Color color,
//     required VoidCallback? onPressed,
//   }) {
//     return Container(
//       alignment: Alignment.center,
//       color: onPressed == null ? color.withOpacity(0.4) : color,
//       child: TextButton.icon(
//         style: TextButton.styleFrom(
//           foregroundColor: Colors.black,
//           fixedSize: const Size(250, 40),
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
//         ),
//         onPressed: onPressed,
//         icon: Icon(icon, size: 24),
//         label: Text(label,
//             style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
//       ),
//     );
//   }
// }








import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kids_learnings/model/alphabet_data.dart';


class AlphabetScreen extends StatefulWidget {
  final int index;

  const AlphabetScreen({Key? key, this.index = 0}) : super(key: key);

  @override
  State<AlphabetScreen> createState() => _AlphabetScreenState();
}

class _AlphabetScreenState extends State<AlphabetScreen> {
  late final AlphabetData _data;
  late final FlutterTts _tts;

  @override
  void initState() {
    super.initState();
    _data = kAlphabets[widget.index];
    _tts = FlutterTts()..setSpeechRate(0.5)..getDefaultEngine;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _tts.speak('Letter ${_data.letter}');
    });
  }

  @override
  void dispose() {
    _tts.stop();
    super.dispose();
  }

  Future<void> _speakWord(String word) => _tts.speak('${_data.letter} for $word');
  Future<void> _speakLetter()          => _tts.speak(_data.letter);

  void _goNext(BuildContext ctx) {
    Navigator.pushReplacement(
      ctx,
      MaterialPageRoute(builder: (_) => AlphabetScreen(index: widget.index + 1)),
    );
  }

  void _goBack(BuildContext ctx) {
    if (widget.index == 0) {
      Navigator.pop(ctx); // back to grid
    } else {
      Navigator.pushReplacement(
        ctx,
        MaterialPageRoute(builder: (_) => AlphabetScreen(index: widget.index - 1)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final isLast = widget.index == kAlphabets.length - 1;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.grid_view_rounded),
          tooltip: 'Back to Alphabets',
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          'Letter ${_data.letter}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      bottomNavigationBar: _buildNavBar(context, isLast),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 240,
                child: Center(child: _buildLiquidFill()),
              ),
              ..._data.words.map((wc) => SizedBox(
                    height: 80,
                    child: _buildWordTile(wc),
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLiquidFill() {
    return GestureDetector(
      onTap: _speakLetter,
      child: DefaultTextStyle(
        style: const TextStyle(
          fontSize: 30,
          fontFamily: 'KGRedHands',
          color: Colors.orangeAccent,
        ),
        child: TextLiquidFill(
          text: _data.letterWord,
          waveDuration: const Duration(seconds: 5),
          waveColor: Colors.orangeAccent,
          boxBackgroundColor: Colors.white,
          textStyle: const TextStyle(
            fontSize: 165,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget _buildWordTile(WordColor wc) {
    return DefaultTextStyle(
      style: TextStyle(
        fontSize: 30,
        fontFamily: 'KGRedHands',
        color: Color(wc.colorValue),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: AnimatedTextKit(
            animatedTexts: [WavyAnimatedText(wc.word)],
            isRepeatingAnimation: false,
            onTap: () => _speakWord(wc.word),
          ),
        ),
      ),
    );
  }

  Widget _buildNavBar(BuildContext ctx, bool isLast) {
    return Container(
      height: 40,
      margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 12),
      child: Row(
        children: [
          Expanded(
            child: _navButton(
              label: 'Back',
              icon: Icons.navigate_before,
              color: Colors.grey,
              onPressed: () => _goBack(ctx),
            ),
          ),
          Expanded(
            child: _navButton(
              label: isLast ? 'Finish' : 'Next',
              icon: isLast ? Icons.check : Icons.navigate_next,
              color: Colors.orangeAccent,
              onPressed: isLast ? () => Navigator.pop(ctx) : () => _goNext(ctx),
            ),
          ),
        ],
      ),
    );
  }

  Widget _navButton({
    required String label,
    required IconData icon,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return Container(
      alignment: Alignment.center,
      color: color,
      child: TextButton.icon(
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          fixedSize: const Size(250, 40),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        onPressed: onPressed,
        icon: Icon(icon, size: 24),
        label: Text(label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
      ),
    );
  }
}