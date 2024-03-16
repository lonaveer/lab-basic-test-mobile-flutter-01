import 'package:mockito/annotations.dart';
import 'package:my_flutter_app/services/customer_service.dart';

// เมื่อ generate code, mock class จะถูกสร้างลงในไฟล์นี้
import 'customer_service_mock.mocks.dart';

@GenerateMocks([CustomerService])
void main() {}