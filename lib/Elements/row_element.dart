import 'package:blue_print_pos/Data/text_style_element.dart';

class RowElement {
  RowElement({
    required this.dataRow,
    this.textStyleElement,
    this.flexCells,
    this.withBorderTop = false,
    this.withBorderRight = false,
    this.withBorderBottom = false,
    this.withBorderLeft = false,
  });

  final List<String> dataRow;
  final TextStyleElement? textStyleElement;
  final List<int>? flexCells;
  final bool withBorderTop;
  final bool withBorderRight;
  final bool withBorderBottom;
  final bool withBorderLeft;

  String _buildRow() {
    String row = '<div style="${_styleRow()}">';
    for (int i = 0; i < dataRow.length; i++) {
      row += _buildItem(dataRow[i], i);
    }
    row += '</div>';
    return row;
  }

  String _buildItem(String text, int index) {
    return '''
    <div style="${textStyleElement?.getStyle};${_flexCell(index)}">
      <$_tagCell>$text</$_tagCell>
    </div>
    ''';
  }

  String get _tagCell => textStyleElement?.tagHtmlChild ?? 'p';

  String _flexCell(int index) {
    final int flex = flexCells == null ? 1 : flexCells![index];
    return 'flex-grow: $flex ;width: ${flex * 10}%;';
  }

  String _styleRow() {
    String styleRow = 'display: flex; flex-direction: row;';
    styleRow += withBorderTop ? 'border-top: 1px solid #000000;' : '';
    styleRow += withBorderRight ? 'border-right: 1px solid #000000;' : '';
    styleRow += withBorderBottom ? 'border-bottom: 1px solid #000000;' : '';
    styleRow += withBorderLeft ? 'border-left: 1px solid #000000;' : '';
    return styleRow;
  }

  String get html => _buildRow();
}
