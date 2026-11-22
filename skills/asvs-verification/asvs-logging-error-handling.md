# Skill: ASVS Logging & Error Handling

Fungsi: Memastikan logging audit yang aman dan penanganan error tanpa kebocoran informasi.

### Trigger
- Konfigurasi logging aplikasi.
- Audit sistem penanganan exception.

### Aksi
1. Log semua aktivitas autentikasi, otorisasi, dan kegagalan input.
2. Gunakan *generic error messages* untuk user (tidak membocorkan detail teknis).
3. Pastikan *audit log* tidak bisa dimanipulasi atau dihapus oleh user biasa.
4. Gunakan log yang terstruktur (JSON) untuk kemudahan analisis.

### Guardrail
- Jangan pernah log PII atau secret di dalam log sistem.

### Format Output
- Daftar log yang hilang.
- Rekomendasi penanganan error yang aman.
