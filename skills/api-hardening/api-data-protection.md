# Skill: API Data Protection

Fungsi: Mencegah kebocoran data sensitif dan pemanipulasian data yang tidak diinginkan (Mass Assignment, Excessive Data Exposure).

### Trigger
- Endpoint untuk update/create objek.
- API yang mengembalikan data sensitif (user profile, dashboard).

### Input
- Schema request/response (JSON).
- Daftar field yang diperbolehkan diakses role tertentu.

### Aksi
1. Terapkan *allowlist* pada field yang boleh diterima (Mass Assignment prevention).
2. Terapkan filter pada output (pilih field yang benar-benar dibutuhkan, jangan langsung `return obj`).
3. Audit inventaris API (pastikan endpoint yang tidak digunakan dimatikan).

### Guardrail
- Selalu sanitasi input dan enkripsi data sensitif (PII) sebelum disimpan/dikirim.
- Jangan mengembalikan debug info atau internal ID ke client.

### Format Output
- Daftar field yang terekspos berlebihan.
- Rekomendasi field *allowlist*.
