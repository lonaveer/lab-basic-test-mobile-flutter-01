import 'package:flutter_test/flutter_test.dart';
import 'package:my_flutter_app/class/todo_list_class.dart';

void main() {
  group('TodoList Tests', () {
    late TodoList todoList; // ประกาศให้เป็น late เพื่อรับประกันว่าตัวแปรจะถูกกำหนดค่าก่อนใช้

    setUp(() {  // ตั้งค่าสภาพแวดล้อมทดสอบก่อนแต่ละเคส
      todoList = TodoList();
    });

    test('เพิ่ม Todo', () {
      final todo = Todo(title: 'Test Todo');

      todoList.add(todo);

      // ตรวจสอบว่า todo ถูกเพิ่มเข้าไปใน todoList เรียบร้อยแล้ว
      expect(todoList.todos, contains(todo));
    });

    test('ลบ Todo', () {
      final todo = Todo(title: 'Test Todo');

      todoList.add(todo);
      todoList.remove(todo);

      // ตรวจสอบว่า todo ถูกลบออกจาก todoList เรียบร้อยแล้ว
      expect(todoList.todos, isNot(contains(todo)));
    });

    test('ทำเครื่องหมาย Todo เป็นเสร็จสิ้น', () {
      final todo = Todo(title: 'Test Todo');

      todoList.add(todo);
      todo.toggleCompleted();

      // ตรวจสอบว่าสถานะของ todo.completed เป็นจริง
      expect(todo.completed, isTrue);

      // ตรวจสอบว่า todo ถูกเก็บใน todoList ที่เสร็จแล้ว
      expect(todoList.getCompleted(), contains(todo));
    });

    test('กรอง Todo ที่เสร็จสิ้น', () {
      final todo1 = Todo(title: 'Test Todo 1', completed: true);
      final todo2 = Todo(title: 'Test Todo 2');

      todoList.add(todo1);
      todoList.add(todo2);

      final completedTodos = todoList.getCompleted();

      // ตรวจสอบว่ามี Todo เสร็จสิ้นอยู่ 1 รายการ
      expect(completedTodos.length, equals(1));

      // ตรวจสอบว่าต้องพบ todo1 อยู่ใน todoList ที่เสร็จสิ้น
      expect(completedTodos, contains(todo1));

      // ตรวจสอบว่าต้องไม่พบ todo2 อยู่ใน todoList ที่เสร็จสิ้น
      expect(completedTodos, isNot(contains(todo2)));
    });

    test('ค้นหา Todo', () {
      final todo1 = Todo(title: 'Test Todo 1');
      final todo2 = Todo(title: 'Unique Todo 2');

      todoList.add(todo1);
      todoList.add(todo2);

      final searchResults = todoList.search('Unique');

      // ตรวจสอบว่าผลลัพธ์การค้นหามี 1 รายการ
      expect(searchResults.length, equals(1));

      // ตรวจสอบว่า todo2 คือผลลัพธ์ที่ค้นหา
      expect(searchResults, contains(todo2));
    });
  });
}