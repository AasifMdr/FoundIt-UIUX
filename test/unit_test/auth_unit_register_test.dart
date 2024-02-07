import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:foundit/core/failure/failure.dart';
import 'package:foundit/features/auth/domain/use_case/auth_usecase.dart';
import 'package:foundit/features/auth/presentation/viewmodel/auth_view_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_unit_register_test.mocks.dart';

// import 'auth_unit_register_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<AuthUseCase>(),
  MockSpec<BuildContext>(),
])
void main() {
  late AuthUseCase mockAuthUsecase;

  late ProviderContainer container;

  setUpAll(() {
    mockAuthUsecase = MockAuthUseCase();

    container = ProviderContainer(
      overrides: [
        authViewModelProvider.overrideWith(
          (ref) => AuthViewModel(mockAuthUsecase),
        ),
      ],
    );
  });

  // For Signup

  test('Test for initial state ', () async {
    final authState = container.read(authViewModelProvider);

    expect(authState.isLoading, false);
  });

  test('signup test for the user', () async {
    when(mockAuthUsecase.registerUser(
            fname: 'Aasif',
            lname: 'Manandhar',
            phone: '9843807290',
            username: 'Aasif',
            password: 'Aasif123'))
        .thenAnswer((_) => Future.value(const Right(true)));

    await container.read(authViewModelProvider.notifier).registerUser(
        fname: 'Aasif',
        lname: 'Manandhar',
        phone: '9843807290',
        username: 'Aasif',
        password: 'Aasif123');

    final authState = container.read(authViewModelProvider);

    expect(authState.error, isNull);
  });

  test('signup test for invalid user', () async {
    when(mockAuthUsecase.registerUser(
            fname: 'Aasif',
            lname: 'Manandhar',
            phone: '9843807290',
            username: 'Aasif',
            password: 'Aasif123'))
        .thenAnswer((_) => Future.value(Left(Failure(error: 'Invalid'))));

    await container.read(authViewModelProvider.notifier).registerUser(
        fname: 'Aasif',
        lname: 'Manandhar',
        phone: '9843807290',
        username: 'Aasif',
        password: 'Aasif123');

    final authState = container.read(authViewModelProvider);

    expect(authState.error, 'Invalid');
  });
}
