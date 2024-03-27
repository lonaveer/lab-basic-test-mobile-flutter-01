import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:my_flutter_app/services/customer_service.dart';

// // 1. จงรันคำสั่งสร้างไฟล์ mock ของ customer_service.dart ด้วยคำสั่ง "flutter pub run build_runner build"
// // 2. จากนั้นทำการ import customer_service_mock.mocks.dart มาไว้ที่การทดสอบนี้
// import 'xxxxx____2.จงเติมคำตอบที่ถูกต้อง_____xxxxx';

void main() {
  group('CustomerService Tests', () {
    // late MockCustomerService mockCustomerService;

    // setUp(() {
    //   // สร้าง instance ของ MockCustomerService ใหม่ก่อนทำการทดสอบแต่ละครั้ง
    //   mockCustomerService = MockCustomerService();
    // });

    // // Test case ที่ 1: ตรวจสอบว่า fetchCustomerList มีการ Response กลับมาเป็น List ที่มีชื่อลูกค้า
    // test('fetchCustomerList returns a list of customer names', () async {
      // // Setup mock method ให้ส่งกลับข้อมูลที่ต้องการ
      // when(mockCustomerService.fetchCustomerList())
      //   .thenAnswer((_) async => ['Alice', 'Bob', 'Charlie']);

      // // ดำเนินการทดสอบ
      // final customerList = await mockCustomerService.fetchCustomerList();

      // // ตรวจสอบผลลัพธ์ว่า fetchCustomerList มีการ Response กลับมาเป็น List ที่มีชื่อลูกค้า (['Alice', 'Bob', 'Charlie'])
      // expect(xxxxx____3.จงเติมคำตอบที่ถูกต้อง_____xxxxx);
    // });

    // // Test case ที่ 2: ตรวจสอบกรณีที่ API ล้มเหลวหรือไม่สามารถส่งข้อมูลกลับมาได้
    // test('fetchCustomerList throws exception when API fails', () async {
      // // Setup mock method ให้ throw ข้อผิดพลาด
      // when(mockCustomerService.fetchCustomerList()).thenAnswer(
      //   (_) async => throw Exception('Failed to fetch data'),
      // );

      // // ตรวจสอบผลลัพธ์ว่า mockCustomerService.fetchCustomerList มีการ Throw Error 'Exception' กลับมาหรือไม่ , โดยใช้ throwsA(isA<Exception>()) ตรวจสอบ
      // expect(xxxxx____4.จงเติมคำตอบที่ถูกต้อง_____xxxxx);
    // });

    // // Test case ที่ 3: ตรวจสอบว่าฟังก์ชัน fetchCustomerList ถูกเรียกใช้งานหรือไม่
    // test('fetchCustomerList is called', () async {
      // // Setup mock method ให้ส่งกลับข้อมูลที่ต้องการ
      // when(xxxxx____5.จงเติมคำตอบที่ถูกต้อง_____xxxxx)
        // .thenAnswer((_) async => ['Alice', 'Bob', 'Charlie']);

      // // ดำเนินการเรียกใช้งานฟังก์ชัน
      // await xxxxx____6.จงเติมคำตอบที่ถูกต้อง_____xxxxx

      // // ตรวจสอบว่าฟังก์ชันถูกเรียกใช้งานอย่างน้อย 1 ครั้ง
      // verify(xxxxx____7.จงเติมคำตอบที่ถูกต้อง_____xxxxx).called(1);
    // });
  });
}