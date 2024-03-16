class CustomerService {
  Future<List<String>> fetchCustomerList() async {
    try {
      // จำลองการเรียกข้อมูลจาก API
      // สมมติว่าเรามีการเรียกข้อมูลจากฐานข้อมูลหรือ API
      return ['Harry', 'Alex', 'William', 'James'];
    } catch (e) {
      // Throw ข้อผิดพลาดเมื่อมีปัญหา
      throw Exception('Failed to fetch data');
    }
  }
}
