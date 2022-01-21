import 'package:bloc/bloc.dart';
import 'package:simple_weather/domain/models/weather_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());
}
