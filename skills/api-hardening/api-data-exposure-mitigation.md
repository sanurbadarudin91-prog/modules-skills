# Skill: API Data Exposure Mitigation

Fungsi: Mencegah kebocoran data sensitif dan pemanipulasian parameter (Mass Assignment, Excessive Data Exposure).

### Trigger
- Endpoint untuk create/update objek.
- API yang mengembalikan data user.

### Aksi
1. Gunakan *allowlist* untuk field input yang boleh diupdate (Mass Assignment prevention).
2. Saring output (filter field sensitif) sebelum dikirim ke client (Excessive Data Exposure prevention).
3. Jangan pernah mengirimkan *internal IDs* atau *debug information*.

### Guardrail
- Filter data di sisi server, jangan di sisi client.

### Format Output
- Daftar field yang terekspos.
- Rekomendasi field *allowlist*.
