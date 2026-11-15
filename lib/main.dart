
class DroneEntrega {
  String modelo;
  double capacidadeCargaKg;
  int autonomiaMinutos;
  bool temCamera4K;
  double velocidadeMaxKmH;

  DroneEntrega(
    this.modelo,
    this.capacidadeCargaKg, {
    required this.autonomiaMinutos,
    this.temCamera4K = false,
    this.velocidadeMaxKmH = 50.0,
  }) {
    print(
      "Montando o drone modelo '$modelo' com capacidade de $capacidadeCargaKg kg...",
    );

    if (autonomiaMinutos <= 0) {
      print(
        "Atenção: Autonomia inválida! Definindo para 30 minutos.",
      );
      this.autonomiaMinutos = 30;
    }
  }

  void exibirDados() {
    print("Modelo: $modelo");
    print("Capacidade de carga: $capacidadeCargaKg kg");
    print("Autonomia: $autonomiaMinutos minutos");
    print("Câmera 4K: $temCamera4K");
    print("Velocidade máxima: $velocidadeMaxKmH km/h");
    print("-------------------------------");
  }
}

void main() {
  // Teste 1: Todos os parâmetros
  print("TESTE 1");
  var drone1 = DroneEntrega(
    "DJI Cargo X1",
    5.0,
    autonomiaMinutos: 60,
    temCamera4K: true,
    velocidadeMaxKmH: 80.0,
  );
  drone1.exibirDados();

  // Teste 2: Parâmetros opcionais omitidos
  print("TESTE 2");
  var drone2 = DroneEntrega(
    "Delivery Mini",
    2.5,
    autonomiaMinutos: 45,
  );
  drone2.exibirDados();

  // Teste 3: Autonomia inválida
  print("TESTE 3");
  var drone3 = DroneEntrega(
    "Drone Express",
    3.0,
    autonomiaMinutos: 0,
  );
  drone3.exibirDados();
}
