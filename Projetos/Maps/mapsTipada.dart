main() {
  Map<String, dynamic> maps = {
    "nome": "Bruno Gomes",
    "idade": 32,
    "cidade": "Bandeirantes",
    "estado": "Paraná",
  };

  print(maps["cidade"]);

  maps["cidade"] = "Curitiba";

  print(maps["cidade"]);
}
