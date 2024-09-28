import 'package:docdoc/features/login/data/models/login_request_body.dart';
import 'package:docdoc/features/login/data/models/login_response.dart';
import 'package:docdoc/features/login/data/repos/login_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:docdoc/features/login/logic/cubit/login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(const LoginState.initial());
  final LoginRepo loginRepo;

  void emitLoginStates(LoginRequestBody loginRequestBody) async{
    emit(const LoginState.loding());
    final response = await loginRepo.login(loginRequestBody);

    response.when(
      success:(loginResponse){
        emit(LoginState.success(loginResponse));
      } , failure: (failure){
        emit(LoginState.failure(error: failure.apiErrorModel.message ?? ''));
      });
  }
}
