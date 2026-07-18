class AlphabetData {
  final String letter;       // e.g. "B"
  final String letterWord;   // e.g. "B b"
  final List<WordColor> words;

  const AlphabetData({
    required this.letter,
    required this.letterWord,
    required this.words,
  });
}

class WordColor {
  final String word;
  final int colorValue; // Use color.value int so the file stays dart-only (no Flutter import needed)

  const WordColor(this.word, this.colorValue);
}

// ─── A–Z Data ────────────────────────────────────────────────────────────────

const List<AlphabetData> kAlphabets = [
  AlphabetData(
    letter: 'A',
    letterWord: 'A a',
    words: [
      WordColor('Apple',  0xFFFF5722), // deepOrange
      WordColor('Ant',    0xFF2196F3), // blue
      WordColor('Arrow',  0xFFE91E63), // pinkAccent
      WordColor('Avocado',0xFF795548), // brown
    ],
  ),
  AlphabetData(
    letter: 'B',
    letterWord: 'B b',
    words: [
      WordColor('Ball',   0xFFFF5722),
      WordColor('Bus',    0xFF2196F3),
      WordColor('Bee',    0xFFE91E63),
      WordColor('Banana', 0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'C',
    letterWord: 'C c',
    words: [
      WordColor('Cat',    0xFFFF5722),
      WordColor('Car',    0xFF2196F3),
      WordColor('Cake',   0xFFE91E63),
      WordColor('Cloud',  0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'D',
    letterWord: 'D d',
    words: [
      WordColor('Dog',    0xFFFF5722),
      WordColor('Duck',   0xFF2196F3),
      WordColor('Door',   0xFFE91E63),
      WordColor('Drum',   0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'E',
    letterWord: 'E e',
    words: [
      WordColor('Egg',        0xFFFF5722),
      WordColor('Elephant',   0xFF2196F3),
      WordColor('Eagle',      0xFFE91E63),
      WordColor('Earth',      0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'F',
    letterWord: 'F f',
    words: [
      WordColor('Fish',   0xFFFF5722),
      WordColor('Frog',   0xFF2196F3),
      WordColor('Flower', 0xFFE91E63),
      WordColor('Flag',   0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'G',
    letterWord: 'G g',
    words: [
      WordColor('Goat',   0xFFFF5722),
      WordColor('Grapes', 0xFF2196F3),
      WordColor('Gate',   0xFFE91E63),
      WordColor('Gift',   0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'H',
    letterWord: 'H h',
    words: [
      WordColor('Hat',    0xFFFF5722),
      WordColor('Horse',  0xFF2196F3),
      WordColor('House',  0xFFE91E63),
      WordColor('Hand',   0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'I',
    letterWord: 'I i',
    words: [
      WordColor('Ice',        0xFFFF5722),
      WordColor('Igloo',      0xFF2196F3),
      WordColor('Island',     0xFFE91E63),
      WordColor('Insect',     0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'J',
    letterWord: 'J j',
    words: [
      WordColor('Jar',    0xFFFF5722),
      WordColor('Jug',    0xFF2196F3),
      WordColor('Juice',  0xFFE91E63),
      WordColor('Jet',    0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'K',
    letterWord: 'K k',
    words: [
      WordColor('Kite',   0xFFFF5722),
      WordColor('King',   0xFF2196F3),
      WordColor('Key',    0xFFE91E63),
      WordColor('Koala',  0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'L',
    letterWord: 'L l',
    words: [
      WordColor('Lion',   0xFFFF5722),
      WordColor('Leaf',   0xFF2196F3),
      WordColor('Lamp',   0xFFE91E63),
      WordColor('Lemon',  0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'M',
    letterWord: 'M m',
    words: [
      WordColor('Monkey', 0xFFFF5722),
      WordColor('Moon',   0xFF2196F3),
      WordColor('Mango',  0xFFE91E63),
      WordColor('Mouse',  0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'N',
    letterWord: 'N n',
    words: [
      WordColor('Nest',   0xFFFF5722),
      WordColor('Nose',   0xFF2196F3),
      WordColor('Net',    0xFFE91E63),
      WordColor('Nut',    0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'O',
    letterWord: 'O o',
    words: [
      WordColor('Orange', 0xFFFF5722),
      WordColor('Owl',    0xFF2196F3),
      WordColor('Ocean',  0xFFE91E63),
      WordColor('Olive',  0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'P',
    letterWord: 'P p',
    words: [
      WordColor('Pen',    0xFFFF5722),
      WordColor('Pig',    0xFF2196F3),
      WordColor('Parrot', 0xFFE91E63),
      WordColor('Pear',   0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'Q',
    letterWord: 'Q q',
    words: [
      WordColor('Queen',      0xFFFF5722),
      WordColor('Quill',      0xFF2196F3),
      WordColor('Quail',      0xFFE91E63),
      WordColor('Question',   0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'R',
    letterWord: 'R r',
    words: [
      WordColor('Rabbit',     0xFFFF5722),
      WordColor('Rain',       0xFF2196F3),
      WordColor('Rainbow',    0xFFE91E63),
      WordColor('Ring',       0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'S',
    letterWord: 'S s',
    words: [
      WordColor('Sun',    0xFFFF5722),
      WordColor('Star',   0xFF2196F3),
      WordColor('Snake',  0xFFE91E63),
      WordColor('Ship',   0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'T',
    letterWord: 'T t',
    words: [
      WordColor('Tree',   0xFFFF5722),
      WordColor('Train',  0xFF2196F3),
      WordColor('Tiger',  0xFFE91E63),
      WordColor('Table',  0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'U',
    letterWord: 'U u',
    words: [
      WordColor('Umbrella',   0xFFFF5722),
      WordColor('Unicorn',    0xFF2196F3),
      WordColor('Uncle',      0xFFE91E63),
      WordColor('Urn',        0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'V',
    letterWord: 'V v',
    words: [
      WordColor('Van',        0xFFFF5722),
      WordColor('Violin',     0xFF2196F3),
      WordColor('Vegetable',  0xFFE91E63),
      WordColor('Volcano',    0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'W',
    letterWord: 'W w',
    words: [
      WordColor('Whale',      0xFFFF5722),
      WordColor('Watch',      0xFF2196F3),
      WordColor('Window',     0xFFE91E63),
      WordColor('Watermelon', 0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'X',
    letterWord: 'X x',
    words: [
      WordColor('Xylophone',  0xFFFF5722),
      WordColor('X-ray',      0xFF2196F3),
      WordColor('Xerus',      0xFFE91E63),
      WordColor('Xbox',       0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'Y',
    letterWord: 'Y y',
    words: [
      WordColor('Yacht',  0xFFFF5722),
      WordColor('Yarn',   0xFF2196F3),
      WordColor('Yak',    0xFFE91E63),
      WordColor('Yam',    0xFF795548),
    ],
  ),
  AlphabetData(
    letter: 'Z',
    letterWord: 'Z z',
    words: [
      WordColor('Zebra',  0xFFFF5722),
      WordColor('Zoo',    0xFF2196F3),
      WordColor('Zero',   0xFFE91E63),
      WordColor('Zip',    0xFF795548),
    ],
  ),
];