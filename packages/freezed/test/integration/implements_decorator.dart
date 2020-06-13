import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'implements_decorator.freezed.dart';

@freezed
abstract class SimpleImplements with _$SimpleImplements {
  const factory SimpleImplements.person(String name, int age) = SimplePerson;

  @With.fromString('AdministrativeArea<House>')
  const factory SimpleImplements.street(String name) = SimpleStreet;

  @With(House)
  @With(GeographicArea)
  const factory SimpleImplements.city(String name, int population) = SimpleCity;
}

@freezed
abstract class CustomMethodImplements implements _$CustomMethodImplements {
  const CustomMethodImplements._();

  const factory CustomMethodImplements.person(String name, int age) =
      PersonCustomMethod;

  @With.fromString('AdministrativeArea<House>')
  const factory CustomMethodImplements.street(String name) = StreetCustomMethod;

  @With(House)
  @With(GeographicArea)
  const factory CustomMethodImplements.city(String name, int population) =
      CityCustomMethod;

  void function() {}
}

@freezed
abstract class GenericImplements<T> with _$GenericImplements<T> {
  const factory GenericImplements.person(String name, int age) =
      GenericPerson<T>;

  @With.fromString('AdministrativeArea<T>')
  const factory GenericImplements.street(String name, T value) =
      GenericStreet<T>;

  @With(House)
  @With(GeographicArea)
  const factory GenericImplements.city(String name, int population) =
      GenericCity<T>;
}

class GeographicArea {}

class AdministrativeArea<T> {}

class House {}
