import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_flutter_app/repositories/product_repositories.dart';

// // 1. จงรันคำสั่งสร้างไฟล์ mock ของ product_repositories.dart ด้วยคำสั่ง "flutter pub run build_runner build"
// // 2. จากนั้นทำการ import product_repositories_mock.mocks.dart มาไว้ที่การทดสอบนี้
import '../mocks/unit_test/product_repositories_mock.mocks.dart';

void main() {
  group('Product Repositories Tests', () {
    // สร้าง instance ของ MockProductRepository
    late MockProductRepository mockProductRepository;

    setUp(() {
      // ตั้งค่าเริ่มต้นก่อนการทดสอบแต่ละครั้ง
      mockProductRepository = MockProductRepository();
    });

    test('fetchProduct returns a Product', () async {
      // ตั้งค่า mock ให้ส่งกลับข้อมูล Product ที่ต้องการเมื่อเรียก fetchProduct
      when(mockProductRepository.fetchProduct()).thenAnswer(
        (_) async => Product(id: '1', name: 'Laptop', price: 1000.0),
      );

      // เรียกใช้งาน fetchProduct
      final product = await mockProductRepository.fetchProduct();

      // ตรวจสอบผลลัพธ์ : product ต้องเป็น Type 'Product'
      expect(product, isA<Product>());

      // ตรวจสอบผลลัพธ์ : product.id ต้องเป็น '1'
      expect(product.id, '1');

      // ตรวจสอบผลลัพธ์ : product.name ต้องเป็น 'Laptop'
      expect(product.name, 'Laptop');

      // ตรวจสอบผลลัพธ์ : product.price ต้องเป็น 1000.0
      expect(product.price, 1000.0);
    });

    test('fetchProduct throws an exception when API call fails', () async {
      // ตั้งค่า mock ให้ throw Exception('Failed to fetch product')เมื่อเรียก mockProductRepository.fetchProduct()
      when(mockProductRepository.fetchProduct()).thenAnswer(
        (_) async => throw Exception('Failed to fetch product'),
      );

      // ตรวจสอบว่าการเรียก fetchProduct จะ throw ข้อผิดพลาด
      expect(mockProductRepository.fetchProduct(), throwsException);
    });
  });
}