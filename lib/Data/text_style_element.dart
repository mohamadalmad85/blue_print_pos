class TextStyleElement {
  const TextStyleElement({
    this.fontSize,
    this.height,
    this.paddingTop,
    this.paddingRight,
    this.paddingBottom,
    this.paddingLeft,
    this.isBold = true,
    this.isFullWidth = false,
    this.withBorderTop = false,
    this.withBorderRight = false,
    this.withBorderBottom = false,
    this.withBorderLeft = false,
    this.alignmentType = AlignmentType.center,
    this.floatType = FloatType.none,
  });

  final double? fontSize;
  final double? height;
  final bool isBold;
  final bool isFullWidth;
  final bool withBorderTop;
  final bool withBorderRight;
  final bool withBorderBottom;
  final bool withBorderLeft;
  final double? paddingTop;
  final double? paddingRight;
  final double? paddingBottom;
  final double? paddingLeft;
  final AlignmentType alignmentType;
  final FloatType floatType;

  String get tagHtmlChild {
    return isBold ? 'b' : 'span';
  }

  String get getStyle {
    String style = _getAlignText;
    style += _getFloatText;
    style += 'padding: ${paddingTop ?? 0}px ${paddingRight ?? 0}px '
        '${paddingBottom ?? 0}px ${paddingLeft ?? 0}px;';
    style += 'font-size: ${fontSize ?? 12}px;';
    style += 'display: inline-block;';
    style += 'color: #000000;';
    style += 'font-family: Times, serif;';
    style += withBorderTop ? 'border-top: 1px solid #000000;' : '';
    style += withBorderRight ? 'border-right: 1px solid #000000;' : '';
    style += withBorderBottom ? 'border-bottom: 1px solid #000000;' : '';
    style += withBorderLeft ? 'border-left: 1px solid #000000;' : '';
    style += isFullWidth ? 'width: 100%;' : '';
    style += height == null ? '' : 'height: ${height}px;';
    return style;
  }

  String get _getAlignText {
    if (alignmentType == AlignmentType.start) {
      return 'text-align: start; ';
    } else if (alignmentType == AlignmentType.center) {
      return 'text-align: center; ';
    } else if (alignmentType == AlignmentType.end) {
      return 'text-align: end; ';
    } else {
      return 'text-align: center;';
    }
  }

  String get _getFloatText {
    if (floatType == FloatType.left) {
      return 'float: left; ';
    } else if (floatType == FloatType.right) {
      return 'float: right; ';
    } else {
      return 'float: none; ';
    }
  }
}

enum AlignmentType { start, end, center, justify }

enum FloatType { left, none, right }
