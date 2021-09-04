import 'package:daily_jokes/app/model/joke_model.dart';
import 'package:daily_jokes/app/shared/joke_repository.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final JokeRepository repository = JokeRepository();

  _HomeControllerBase() {
    loadJoke('Any');
  }

  @observable
  JokeModel? _jokes;

  @computed
  JokeModel? get jokes => _jokes;

  @action
  loadJoke(String? value) {
    repository.fetchSingleJoke(value!).then((joke) {
      _jokes = joke!;
    });
  }

  @observable
  String? defineCategory = 'Any';

  @observable
  int index = 0;
}
