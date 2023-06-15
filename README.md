
# Dicoding Flutter Testing

This repository contains a Flutter mobile application developed for learning fundamental flutter development based on [Dicoding Class](https://www.dicoding.com/academies/195). The application focuses on creating automated testing. Automated testing in Flutter is divided into three categories, including unit tests, widget tests, and integration tests.

## Features

- Unit Testing
- Widget Testing
- Integration Testing

## Acknowledgements

#### [1] Unit Testing
Unit test menguji unit-unit kecil aplikasi, seperti fungsi, metode, atau kelas sehingga memverifikasi kebenaran sebuah logika aplikasi dalam berbagai kondisi.

#### [2] Widget Testing
Widget test menguji sebuah widget sehingga memverifikasi bahwa UI widget terlihat dan berperilaku seperti yang diharapkan.

#### [3] Integration Testing
Integration testing menguji sebagian atau seluruh aplikasi sehingga memverifikasi bahwa semua widget dan fitur telah berjalan sesuai harapan dan juga bisa untuk mengetahui performa aplikasi.

## Running Tests

To run tests, run the following command

#### Unit Testing
```bash
  flutter test test/provider/done_module_provider_test.dart
```

#### Widget Testing
```bash
  flutter test test/ui/module_page_test.dart
```

#### Integration Testing
```bash
  flutter test integration_test/app_test.dart
```

To test the performance run below. Test report in the build folder with the name timeline.timeline.json.
```bash
  flutter drive --driver=test_driver/perf_driver.dart --target=integration_test/app_test.dart --no-dds
```