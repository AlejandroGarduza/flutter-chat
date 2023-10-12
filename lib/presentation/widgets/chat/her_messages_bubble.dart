import 'package:flutter/material.dart';

class HerMessagesBubble extends StatelessWidget {
  const HerMessagesBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              color: const Color(0xFF8BC34A),
              borderRadius: BorderRadius.circular(20)),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Hola Mundo',
              style: TextStyle(color: Colors.white70),
            ),
          ),
        ),
        const SizedBox(height: 5),
        _ImageBubble(),
        const SizedBox(height: 10)
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        'https://www.eluniversal.com.mx/resizer/KAZRsiMCHI6AAlUdcKXkMzOijNY=/1100x666/cloudfront-us-east-1.images.arcpublishing.com/eluniversal/RCWPKBSZNNBS5M3AHM527SEXHQ.jpg',
        width: size.width * 0.7,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            width: size.width * 0.7,
            height: 150,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: const Text('Chumi está enviando una imagen'),
          );
        },
      ),
    );
  }
}
