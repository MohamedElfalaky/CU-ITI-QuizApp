import 'package:bloc/bloc.dart';
import 'package:cu_iti_quizapp/data/models/news_model.dart';
import 'package:cu_iti_quizapp/data/repos/news_repo.dart';
import 'package:meta/meta.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial()); // initial

  void getNews() async {
    emit(NewsLoading());
    // loading
    try {
      NewsResponse? response = await NewsRepo().getNews();

      if (response != null) {
        emit(NewsSuccess(response: response));
        // success
        // do somethig
      } else {
        emit(NewsError());
        // do another thing
        // error
      }
    } catch (e) {
      emit(NewsError()); // do something;
      print(e);
    }
  }
}
