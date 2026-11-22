# Skill: API Safe Logging & Monitoring

Fungsi: Memastikan logging yang efektif untuk deteksi ancaman tanpa kebocoran data.

### Trigger
- Pengaturan logging dan monitoring API.
- Triage insiden keamanan API.

### Aksi
1. Log semua akses autentikasi, otorisasi, dan kegagalan input.
2. **Jangan pernah** log PII, kredensial, atau token.
3. Monitor pola traffic untuk deteksi anomali.
4. Simpan log di tempat aman dengan retensi yang cukup.

### Guardrail
- Terapkan scrubbing ketat pada data sebelum log masuk ke SIEM/penyimpanan.

### Format Output
- Konfigurasi logging yang disarankan.
- Daftar event yang wajib dimonitor.
