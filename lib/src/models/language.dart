import 'package:fo_components/fo_components.dart';

class Language extends FoModel
{
  Language(this.label, String id) : super(id);

  @override
  String toString() => label;

  final String label;
}