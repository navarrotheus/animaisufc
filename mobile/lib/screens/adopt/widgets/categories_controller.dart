import 'package:mobx/mobx.dart';
part 'categories_controller.g.dart';

class CategoriesController = _CategoriesControllerBase
    with _$CategoriesController;

abstract class _CategoriesControllerBase with Store {
  @observable
  bool dogPressed = false;

  @observable
  bool catPressed = false;

  @action
  void pressDogButton() {
    if (dogPressed == false) {
      dogPressed = true;
      if (catPressed == true) {
        catPressed = false;
      }
    } else {
      dogPressed = false;
    }
  }

  @action
  void pressCatButton() {
    if (catPressed == false) {
      catPressed = true;
      if (dogPressed == true) {
        dogPressed = false;
      }
    } else {
      catPressed = false;
    }
  }
}
