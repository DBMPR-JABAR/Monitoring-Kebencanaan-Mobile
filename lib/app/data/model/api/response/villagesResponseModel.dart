import 'dart:convert';

VillagesResponseModel villagesResponseModelFromJson(String str) =>
    VillagesResponseModel.fromJson(json.decode(str));

String villagesResponseModelToJson(VillagesResponseModel data) =>
    json.encode(data.toJson());

class VillagesResponseModel {
  VillagesResponseModel({
    required this.status,
    required this.data,
  });

  final String status;
  final List<Datum> data;

  factory VillagesResponseModel.fromJson(Map<String, dynamic> json) =>
      VillagesResponseModel(
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Datum {
  Datum({
    required this.id,
    required this.kodeProvinsi,
    required this.namaProvinsi,
    required this.kodeKabupatenKota,
    required this.namaKabupatenKota,
    required this.bpsKodeKecamatan,
    required this.bpsNamaKecamatan,
    required this.bpsKodeDesaKelurahan,
    required this.bpsNamaDesaKelurahan,
    required this.kemendagriKodeKecamatan,
    required this.kemendagriNamaKecamatan,
    required this.kemendagriKodeDesaKelurahan,
    required this.kemendagriNamaDesaKelurahan,
    required this.statusPemerintahan,
    required this.tahun,
  });

  final int id;
  final String kodeProvinsi;
  final String namaProvinsi;
  final String kodeKabupatenKota;
  final String namaKabupatenKota;
  final String bpsKodeKecamatan;
  final String bpsNamaKecamatan;
  final String bpsKodeDesaKelurahan;
  final String bpsNamaDesaKelurahan;
  final String kemendagriKodeKecamatan;
  final String kemendagriNamaKecamatan;
  final String kemendagriKodeDesaKelurahan;
  final String kemendagriNamaDesaKelurahan;
  final String statusPemerintahan;
  final String tahun;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        kodeProvinsi: json["kode_provinsi"],
        namaProvinsi: json["nama_provinsi"],
        kodeKabupatenKota: json["kode_kabupaten_kota"],
        namaKabupatenKota: json["nama_kabupaten_kota"],
        bpsKodeKecamatan: json["bps_kode_kecamatan"],
        bpsNamaKecamatan: json["bps_nama_kecamatan"],
        bpsKodeDesaKelurahan: json["bps_kode_desa_kelurahan"],
        bpsNamaDesaKelurahan: json["bps_nama_desa_kelurahan"],
        kemendagriKodeKecamatan: json["kemendagri_kode_kecamatan"],
        kemendagriNamaKecamatan: json["kemendagri_nama_kecamatan"],
        kemendagriKodeDesaKelurahan: json["kemendagri_kode_desa_kelurahan"],
        kemendagriNamaDesaKelurahan: json["kemendagri_nama_desa_kelurahan"],
        statusPemerintahan: json["status_pemerintahan"],
        tahun: json["tahun"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "kode_provinsi": kodeProvinsi,
        "nama_provinsi": namaProvinsi,
        "kode_kabupaten_kota": kodeKabupatenKota,
        "nama_kabupaten_kota": namaKabupatenKota,
        "bps_kode_kecamatan": bpsKodeKecamatan,
        "bps_nama_kecamatan": bpsNamaKecamatan,
        "bps_kode_desa_kelurahan": bpsKodeDesaKelurahan,
        "bps_nama_desa_kelurahan": bpsNamaDesaKelurahan,
        "kemendagri_kode_kecamatan": kemendagriKodeKecamatan,
        "kemendagri_nama_kecamatan": kemendagriNamaKecamatan,
        "kemendagri_kode_desa_kelurahan": kemendagriKodeDesaKelurahan,
        "kemendagri_nama_desa_kelurahan": kemendagriNamaDesaKelurahan,
        "status_pemerintahan": statusPemerintahan,
        "tahun": tahun,
      };
}
