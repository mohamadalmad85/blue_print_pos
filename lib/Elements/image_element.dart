import 'package:blue_print_pos/Data/text_style_element.dart';

class ImageElement {
  ImageElement(
    this.data, {
    this.floatType = FloatType.none,
    this.width = 120,
  });

  final String data;
  final int width;
  final FloatType floatType;

  String get html => '''
    <div style="$_getFloatElement">
      <img src ="data:image/png;base64,$data" width="$width"/>
    </div>
    ''';



  String get _getFloatElement {
    if (floatType == FloatType.left) {
      return 'float: left; ';
    } else if (floatType == FloatType.right) {
      return 'float: right; ';
    } else {
      return 'float: none; ';
    }
  }

}
