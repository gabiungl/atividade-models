import 'package:flutter_test/flutter_test.dart';
import 'package:models_dart/model/equipamentos.dart';

void main() {
  test("deve tranformar json em Equiapamentos", () {
    final json = {
      "nome": "",
      "patrimonio": "",
      "categoria": "",
      "marca": "",
      "modelo": "",
    };

    final equipamentos = Equipamentos.fromJson(json);

    expect(equipamentos.nome, equals(""));
    expect(equipamentos.categoria, equals(""));
    expect(equipamentos.marca, equals(""));
    expect(equipamentos.modelo, equals(""));
  });

  test("deve criar uma instância", () {
    final json = {
      "nome": "",
      "patrimonio": "",
      "categoria": "",
      "marca": "",
      "modelo": "",
    };

    final equipamentos = Equipamentos.fromJson(json);

    // Verifica se o objeto criado
    // pertence à classe equipamentos.
    expect(equipamentos, isA<Equipamentos>());
  });
}
