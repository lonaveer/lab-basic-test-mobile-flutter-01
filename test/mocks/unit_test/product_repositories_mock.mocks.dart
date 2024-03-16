// Mocks generated by Mockito 5.4.4 from annotations
// in my_flutter_app/test/mocks/unit_test/product_repositories_mock.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:my_flutter_app/repositories/product_repositories.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeProduct_0 extends _i1.SmartFake implements _i2.Product {
  _FakeProduct_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ProductRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockProductRepository extends _i1.Mock implements _i2.ProductRepository {
  MockProductRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<_i2.Product> fetchProduct() => (super.noSuchMethod(
        Invocation.method(
          #fetchProduct,
          [],
        ),
        returnValue: _i3.Future<_i2.Product>.value(_FakeProduct_0(
          this,
          Invocation.method(
            #fetchProduct,
            [],
          ),
        )),
      ) as _i3.Future<_i2.Product>);
}
