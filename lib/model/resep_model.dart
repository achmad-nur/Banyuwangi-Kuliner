class Resep {
  List<Data>? data;

  Resep({this.data});

  Resep.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? nama;
  String? img;
  String? deskripsi;
  String? harga;

  Data({this.id, this.nama, this.img, this.deskripsi, this.harga});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    img = json['img'];
    deskripsi = json['deskripsi'];
    harga = json['harga'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['img'] = this.img;
    data['deskripsi'] = this.deskripsi;
    data['harga'] = this.harga;
    return data;
  }
}