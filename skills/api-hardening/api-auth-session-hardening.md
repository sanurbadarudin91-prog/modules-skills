# Skill: API Authentication & Session Hardening

Fungsi: Memastikan autentikasi yang kuat dan manajemen sesi yang aman.

### Trigger
- Implementasi endpoint autentikasi baru.
- Audit sistem manajemen sesi dan token.

### Input
- Mekanisme autentikasi (OAuth2, OIDC, JWT, API Key).
- Konfigurasi token (TTL, rotasi, penyimpanan).

### Aksi
1. Pastikan autentikasi wajib pada seluruh endpoint (selain public).
2. Terapkan rotasi token dan sesi pendek (mengikuti standar AEGIS 3 hari).
3. Validasi tanda tangan JWT dengan algoritma kuat (e.g., RS256, jangan `none`).
4. Implementasikan *revocation* (blacklist token) yang efektif.

### Guardrail
- Jangan pernah menyimpan kredensial atau token di klien secara tidak aman.
- Gunakan `Secure`, `HttpOnly`, `SameSite` untuk cookies.

### Format Output
- Skor keamanan autentikasi.
- Daftar celah pada manajemen token/sesi.
