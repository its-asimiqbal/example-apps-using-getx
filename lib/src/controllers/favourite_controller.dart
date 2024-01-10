
import 'package:get/get.dart';

class FavouriteController extends GetxController{

  RxList<String> fruitList = ['Apple', 'Banana', 'Mango', 'Orange'].obs;
  RxList tempFruitList = [].obs;

  addToFavourite(String value){
    tempFruitList.add(value);
  }

  removeFromFavourite(String value){
    tempFruitList.remove(value);
  }
}