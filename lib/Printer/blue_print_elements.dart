import 'package:blue_print_pos/Data/text_style_element.dart';
import 'package:blue_print_pos/Elements/divider_element.dart';
import 'package:blue_print_pos/Elements/html_container.dart';
import 'package:blue_print_pos/Elements/image_element.dart';
import 'package:blue_print_pos/Elements/row_element.dart';
import 'package:blue_print_pos/Elements/text_element.dart';

class BluePrintElements {
  BluePrintElements();

  void addTextElement({
    required String text,
    TextStyleElement? textStyleElement,
  }) {
    _contentElement += TextElement(
      text: text,
      textStyleElement: textStyleElement,
    ).html;
  }

  void addRowElement({
    required List<String> dataRow,
    TextStyleElement? textStyleElement,
    List<int>? flexCells,
    bool withBorderTop = false,
    bool withBorderRight = false,
    bool withBorderBottom = false,
    bool withBorderLeft = false,
  }) {
    _contentElement += RowElement(
      dataRow: dataRow,
      textStyleElement: textStyleElement,
      flexCells: flexCells,
      withBorderTop: withBorderTop,
      withBorderRight: withBorderRight,
      withBorderBottom: withBorderBottom,
      withBorderLeft: withBorderLeft,
    ).html;
  }

  void addSpaceLine({
    int count = 1,
    bool useDashed = false,
  }) {
    _contentElement += DividerElement(
      count: count,
      useDashed: useDashed,
    ).html;
  }

  void addLineElement() {
    _contentElement += '''
    <br/>
    ''';
  }

  void addImageElement(
    String base64, {
    int width = 120,
    FloatType floatType = FloatType.none,
  }) {
    _contentElement += ImageElement(
      base64,
      width: width,
      floatType: floatType,
    ).html;
  }

  String _contentElement = '';

  String get htmlAsString => HtmlContainer(_contentElement).htmlContainer;
}
