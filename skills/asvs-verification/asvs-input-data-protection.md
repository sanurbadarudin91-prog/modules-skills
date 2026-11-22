# Skill: ASVS Input Validation & Data Protection

Fungsi: Memastikan sanitasi input dan perlindungan data sensitif agar tidak bocor.

### Trigger
- Endpoint yang menerima input user.
- Endpoint yang mengembalikan data sensitif (PII/Secret).

### Aksi
1. Terapkan sanitasi/validasi input ketat (allowlist) di sisi server.
2. Saring output (filter) untuk mencegah data sensitif bocor ke client.
3. Gunakan enkripsi untuk data sensitif saat disimpan dan ditransmisikan.
4. Redaksi secret/token dari semua log output.

### Guardrail
- Jangan pernah percaya input user.
- Jangan log data sensitif atau token autentikasi.

### Format Output
- Daftar titik rawan injeksi/kebocoran.
- Strategi redaksi/enkripsi.
