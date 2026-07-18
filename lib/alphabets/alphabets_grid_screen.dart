import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:kids_learnings/alphabets/alphabets_screen.dart';
import 'package:kids_learnings/model/alphabet_data.dart';


class AlphabetsGridScreen extends StatefulWidget {
  const AlphabetsGridScreen({super.key});

  @override
  State<AlphabetsGridScreen> createState() => _AlphabetsGridScreenState();
}

class _AlphabetsGridScreenState extends State<AlphabetsGridScreen> {
  late final FlutterTts _tts;

  @override
  void initState() {
    super.initState();
    _tts = FlutterTts()..setSpeechRate(0.5);
  }

  @override
  void dispose() {
    _tts.stop();
    super.dispose();
  }

  Future<void> _speakLetter(String letter) => _tts.speak(letter);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Alphabets',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.1,
        ),
        itemCount: kAlphabets.length,
        itemBuilder: (context, index) {
          final data = kAlphabets[index];
          return _AlphabetCard(
            data: data,
            onSound: () => _speakLetter(data.letter),
            onWords: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => AlphabetScreen(index: index),
              ),
            ),
          );
        },
      ),
    );
  }
}

// ── Single grid card ──────────────────────────────────────────────────────────

class _AlphabetCard extends StatelessWidget {
  final AlphabetData data;
  final VoidCallback onSound;
  final VoidCallback onWords;

  const _AlphabetCard({
    required this.data,
    required this.onSound,
    required this.onWords,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.orange.shade50,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: Colors.orangeAccent, width: 2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // ── Big letter ──────────────────────────────────────────────────
          Text(
            data.letterWord,   // e.g. "B b"
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              fontFamily: 'KGRedHands',
              color: Colors.deepOrange,
            ),
          ),

          const SizedBox(height: 10),

          // ── Sound + Words buttons ───────────────────────────────────────
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _CardButton(
                icon: Icons.volume_up_rounded,
                label: 'Sound',
                color: Colors.blue,
                onTap: onSound,
              ),
              _CardButton(
                icon: Icons.abc_rounded,
                label: 'Words',
                color: Colors.orangeAccent,
                onTap: onWords,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _CardButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;
  final VoidCallback onTap;

  const _CardButton({
    required this.icon,
    required this.label,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.white, size: 16),
            const SizedBox(width: 4),
            Text(
              label,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}