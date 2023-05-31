class Customerdata {
  int? code;
  String? name;
  String? email;
  int? phone;
  String? address;
  int? cnic;

  Customerdata({
    required this.name,
    required this.phone,
    required this.code,
    required this.email,
    required this.cnic,
    required this.address,
  });
}

List<Customerdata> customerData = [
  Customerdata(
    code: 12,
    name: "Rimsha",
    phone: 03128484959,
    email: "rimsha@gmail.com",
    cnic: 747374273947394,
    address: "Peshawar",
  ),
  Customerdata(
    code: 12,
    name: "khan",
    phone: 03128484959,
    email: "rimsha@gmail.com",
    cnic: 747374273947394,
    address: "Peshawar",
  ),
  Customerdata(
    code: 12,
    name: "hina",
    phone: 03128484959,
    email: "rimsha@gmail.com",
    cnic: 747374273947394,
    address: "Peshawar",
  ),
  Customerdata(
    code: 12,
    name: "nisma",
    phone: 03128484959,
    email: "rimsha@gmail.com",
    cnic: 747374273947394,
    address: "Peshawar",
  ),
  Customerdata(
    code: 12,
    name: "rehman",
    phone: 03128484959,
    email: "rimsha@gmail.com",
    cnic: 747374273947394,
    address: "Peshawar",
  ),
  Customerdata(
    code: 12,
    name: "kamal",
    phone: 03128484959,
    email: "rimsha@gmail.com",
    cnic: 747374273947394,
    address: "Peshawar",
  ),
];
