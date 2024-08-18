import 'package:flutter_riverpod/flutter_riverpod.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imgUrl;

  SlideInfo(this.title, this.caption, this.imgUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
    'Busca la comida',
    'Do sunt excepteur minim exercitation ullamco tempor officia sint exercitation Lorem velit id.Elit esse pariatur veniam excepteur nulla proident veniam in aliqua pariatur do.',
    'assets/images/1.png',
  ),
  SlideInfo(
    'Entrega rápida',
    'Anim duis occaecat est irure laborum duis qui pariatur do.Amet occaecat pariatur dolor aliquip minim dolore commodo reprehenderit cupidatat irure tempor irure deserunt.',
    'assets/images/2.png',
  ),
  SlideInfo(
    'Disfruta la comida',
    'Non labore laborum culpa laboris irure aliquip.Cillum ea velit culpa amet adipisicing do consequat.',
    'assets/images/3.png',
  ),
];

final slidesProvider = Provider<List<SlideInfo>>((ref) {
  return slides;
});
