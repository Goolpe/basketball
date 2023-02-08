import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:basketball/resources/resources.dart';

void main() {
  test('team_logos assets test', () {
    expect(File(TeamLogos.mba).existsSync(), true);
    expect(File(TeamLogos.trud).existsSync(), true);
  });
}
