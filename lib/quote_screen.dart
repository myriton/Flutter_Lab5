import 'dart:math';
import 'package:flutter/material.dart';
import 'quote_card.dart';

class QuoteData {
  final String quote;
  final String author;
  final String imagePath;

  const QuoteData(this.quote, this.author, this.imagePath);
}

const List<QuoteData> _quotes = [
  QuoteData(
    'Успех — это способность идти от одной неудачи к другой, не теряя энтузиазма.',
    'Уинстон Черчилль',
    'assets/images/uspeh.jpg',
  ),
  QuoteData(
    'Воображение важнее знаний.',
    'Альберт Эйнштейн',
    'assets/images/einshtein.jpg',
  ),
  QuoteData(
    'Тот, кто не рискует, не пьёт шампанского.',
    'Народная мудрость',
    'assets/images/shampan.jpg',
  ),
];

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  final Random _random = Random();
  int _index = 0;

 void _nextQuote() {
  setState(() {
    _index = _random.nextInt(_quotes.length);
  });
}

  @override
  Widget build(BuildContext context) {
    final q = _quotes[_index];

    return Column(
      children: [
        const Text(
          'Цитата дня',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Center(
          child: QuoteCard(
            quote: q.quote,
            author: q.author,
            imagePath: q.imagePath,
          ),
        ),
        ElevatedButton(
          onPressed: _nextQuote,
          child: const Text(
            'Следующая цитата',
            style: TextStyle(fontSize: 18, color: Colors.white),
          ),
        ),
      ],
    );
  }
}