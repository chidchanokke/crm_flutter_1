
import 'package:get/get.dart';

abstract class AppController<Event, State> extends GetxController {
  AppController(this._state);

  final Rx<State> _state;
  State get state => _state.value;

  int? getIdFormArguments() {
    final id = Get.arguments;
    if (id == null) return null;
    if (id is! int) return null;
    if (id <= 0) return null;
    return id;
  }

  void onEvent(Event event);

  void add(Event event) {
    onEvent(event);
  }

  void emit(State onChangState) {
    _state.value = onChangState;
    _state.refresh();
  }


}
