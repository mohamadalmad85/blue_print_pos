class DividerElement {
  DividerElement({this.count = 1, this.useDashed = false});

  final int count;
  final bool useDashed;

  String get html {
    String concatHtml = '';
    for (int i = 0; i < count; i++) {
      concatHtml += useDashed ? _dashedLine : _emptyLine;
    }
    return concatHtml;
  }

  String get style {
    return 'border-top: 2px dashed black;';
  }

  String get _dashedLine => '''
    <hr style = "$style" >
    ''';

  String get _emptyLine => '''
    <br>
    ''';
}
