enum ConnectionStatus {
  connected,
  disconnect,
  timeout,
  printerNotSelected,
  ticketEmpty,
  printInProgress,
  scanInProgress
}


extension ConnectionStatusExtension on ConnectionStatus{
  String get value {
    switch(this){
      case ConnectionStatus.connected:
        return 'الطابعة متصلة';
      case ConnectionStatus.disconnect:
        return 'الطابعة غير متصلة';
      case ConnectionStatus.timeout:
        return 'انتهى الوقت المحدد للاتصال';
      case ConnectionStatus.printerNotSelected:
        return 'يرجى اختيار طابعة';
      case ConnectionStatus.ticketEmpty:
        return 'لا توجد داتا للطباعة';
      case ConnectionStatus.printInProgress:
        return 'جاري الطباعة...';
      case ConnectionStatus.scanInProgress:
        return 'جاري البحث عن الطابعة...';
    }
  }
}