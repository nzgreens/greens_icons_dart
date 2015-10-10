library greens_icons.test;

import 'dart:html';
import 'dart:async';
import 'dart:svg';

import 'package:polymer/polymer.dart';

import 'package:polymer_elements/iron_icons.dart';
import 'package:polymer_elements/iron_icon.dart';

import 'package:greens_icons/greens_icons.dart';

import 'package:test/test.dart';

main() async {
  await initPolymer();

  group('[green-icons]', () {
    IronIcon icon;

    group('[NZ]', () {
      setUp(() {
        icon = createElement('<iron-icon id="nz" icon="greens:nz-icon"></iron-icon>');

        return waitForSync(icon);
      });

      tearDown(() => icon.remove());

      test('contains svg icon', () {
        expect(icon.children.first is SvgSvgElement, isTrue);
      });
    });

    group('[English and Welsh]', () {
      setUp(() {
        icon = createElement('<iron-icon id="eng-wales" icon="greens:english-wales-icon"></iron-icon>');

        return waitForSync(icon);
      });

      tearDown(() => icon.remove());

      test('contains svg icon', () {
        expect(icon.children.first is SvgSvgElement, isTrue);
      });
    });

    group('[Scottish]', () {
      setUp(() {
        icon = createElement('<iron-icon id="scottish" icon="greens:scottish-icon"></iron-icon>');

        return waitForSync(icon);
      });

      tearDown(() => icon.remove());

      test('contains svg icon', () {
        expect(icon.children.first is SvgSvgElement, isTrue);
      });
    });

    group('[Northern Ireland]', () {
      setUp(() {
        icon = createElement('<iron-icon id="northern-ireland" icon="greens:northern-ireland-icon"></iron-icon>');

        return waitForSync(icon);
      });

      tearDown(() => icon.remove());

      test('contains svg icon', () {
        expect(icon.children.first is SvgSvgElement, isTrue);
      });
    });

    group('[Australian]', () {
      setUp(() {
        icon = createElement('<iron-icon id="aus" icon="greens:australian-icon"></iron-icon>');

        return waitForSync(icon);
      });

      tearDown(() => icon.remove());

      test('contains svg icon', () {
        expect(icon.children.first is SvgSvgElement, isTrue);
      });
    });
  });
}

createElement(String html) =>
  new Element.html(html, treeSanitizer: new NullTreeSanitizer());

class NullTreeSanitizer implements NodeTreeSanitizer {
  void sanitizeTree(node) {}
}

Future waitForSync(IronIcon element) {
  var completer = new Completer();

  element.async(() => completer.complete());

  return completer.future;
}


