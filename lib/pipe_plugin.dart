
import 'package:flutter/services.dart';

class PipePlugin {
  static const MethodChannel _channel =
      const MethodChannel('com.gujitao.pipePlugin');
  EventChannel _eventChannel = EventChannel('com.gujitao.pipePlugin.eventChannel');
  
  PipePlugin() {
    _eventChannel.receiveBroadcastStream(12345).listen(_onEvent,onError:_onError);
  }
  
  
  void sendString(String text) async{
    var param = {'text':text};
    await _channel.invokeMethod('sendString',param);
    return;
  }

  void _onEvent(Object object) {
      print('receive object $object');
  }
  void _onError(Object object) {
      print('receive error $object');
  }
}