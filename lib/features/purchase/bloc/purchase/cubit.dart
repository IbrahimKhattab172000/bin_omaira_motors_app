import 'package:bin_omaira_motors/helpers/kian_custom_navigator.dart';
import 'package:bin_omaira_motors/helpers/kian_routes.dart';
import 'package:bin_omaira_motors/main_pages/kian_nav/kian_nav_cubit/cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'state.dart';

class PurchaseCubit extends Cubit<PurchaseState> {
  PurchaseCubit() : super(PurchaseInitial());

  static PurchaseCubit of(context) => BlocProvider.of(context);

  int currentViewIndex = 0;
  int currentBankIndex = 0;

  String branchOrHome = "branch";

  void next() {
    if (currentViewIndex == 2) {
      CustomNavigator.context.read<NavBarCubit>().changeView(2);
      CustomNavigator.push(Routes.MAIN);
    } else {
      currentViewIndex++;
    }
    _emit(PurchaseInitial());
  }

  void previous() {
    if (currentViewIndex == 0) {
      CustomNavigator.pop();
    } else {
      currentViewIndex--;
    }

    _emit(PurchaseInitial());
  }

  void changeView(int index) {
    currentViewIndex = index;
    _emit(PurchaseInitial());
  }

  void changeBankIndex(int index) {
    currentBankIndex = index;
    _emit(PurchaseInitial());
  }

  void setShippingTypeValue({required String value}) {
    branchOrHome = value;
    _emit(PurchaseInitial());
  }

  bool get isHome => branchOrHome == "home";

  bool get isStateLoading {
    return state is PurchaseLoading;
  }

  void _emit(PurchaseState state) {
    if (!isClosed) {
      emit(state);
    }
  }
}
