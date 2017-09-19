// Copyright (c) 2017, Patrick. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:async';
import 'package:angular/angular.dart';
import 'package:fo_components/fo_components.dart';

@Component(
  selector: 'hi-nav',
  styleUrls: const ['nav_component.css'],
  templateUrl: 'nav_component.html',
  directives: const [],
  providers: const [],
  pipes: const [PhrasePipe]
)
class NavComponent implements OnDestroy
{
  void ngOnDestroy()
  {
    onStepChangeController.close();
  }


  final StreamController<int> onStepChangeController = new StreamController();

  @Input('step')
  int step;

  @Output('stepChange')
  Stream<int> get onStepOutput => onStepChangeController.stream;
}
