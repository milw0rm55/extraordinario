
import 'package:extraordinario/model/Program.dart';

abstract class MyHomePageView {

  openDetailScreen(Program category);
  showCategories(List<Program> categories);
  showLoading();
  hideLoading();
  showError();
}