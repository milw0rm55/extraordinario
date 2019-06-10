
import 'package:extraordinario/model/Program.dart';

abstract class DetailPageView {

  openDetailScreen(Program category);
  showCategories(List<Program> categories);
  showLoading();
  hideLoading();
  showError();
}