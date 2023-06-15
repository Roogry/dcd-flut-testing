import 'package:dicodingacademy/provider/done_module_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // The test() method takes two parameters. 
  // The first is a description of what you want to test 
  // The second is an anonymous function that contains our test scenario.
  test('should contain new item when module completed', () {
    // Skenario pengujian dituliskan di sini

    // arrange
    // Arrange is the part where we prepare the objects and settings to test.
    var doneModuleProvider = DoneModuleProvider();
    var testModuleName = 'Test Module';

    // act
    // Act is the action to be executed
    doneModuleProvider.complete(testModuleName);

    // assert
    // Assert is where we verify the expected value with the result of the method call when it is Act.
    var result = doneModuleProvider.doneModuleList.contains(testModuleName);
    expect(result, true);
  });
}

// Ex : Group Test and setUp
// void main() {
//   group('Provider Test', () {
//     final testModuleName = 'Test Module';
//     DoneModuleProvider doneModuleProvider;
 
//     setUp(() {
//       doneModuleProvider = DoneModuleProvider();
//     });
 
//     test('should contain new item when module completed', () {
//       // act
//       doneModuleProvider.complete(testModuleName);
//       // assert
//       var result = doneModuleProvider.doneModuleList.contains(testModuleName);
//       expect(result, true);
//     });
 
//     test('should not contain item when module removed', () {
//       // act
//       doneModuleProvider.remove(testModuleName);
//       // assert
//       var result = doneModuleProvider.doneModuleList.contains(testModuleName);
//       expect(result, false);
//     });
//   });
// }