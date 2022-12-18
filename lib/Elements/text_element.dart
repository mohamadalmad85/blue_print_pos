import 'package:blue_print_pos/Data/text_style_element.dart';

class TextElement {
  TextElement({
    required this.text,
    this.textStyleElement,
  });

  final String text;
  final TextStyleElement? textStyleElement;

  String get tag => textStyleElement?.tagHtmlChild ?? 'p';

  String get html => '''
    <div style="${textStyleElement?.getStyle}">
      <$tag>$text</$tag>
    </div>
    ''';
}
