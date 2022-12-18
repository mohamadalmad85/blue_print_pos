class HtmlContainer {
  HtmlContainer(this.elements);

  final String elements;

  String get htmlContainer =>
      '<!DOCTYPE html>' +
      '<html lang="en">' +
      '<head>' +
      '<meta charset="UTF-8">' +
      '<meta name="viewport" content="width=device-width, initial-scale=1.0">' +
      css +
      '<\/head>' +
      '<body>' +
      '<div class="container">' +
      elements +
      '<\/div>' +
      '<\/body>' +
      '<\/html>';

  String get css => '''
      <style>    
          body {
              background: #ffffff;
              width: 100%;
              direction: rtl;
          }
          
          .container {
              max-width: 100%;
              margin: auto;
              direction: rtl;
          }          
      </style>
    ''';
}
