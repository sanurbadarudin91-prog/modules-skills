# Skill: API Security Misconfiguration

Fungsi: Memastikan konfigurasi API aman dan mengurangi *attack surface*.

### Trigger
- Deployment API baru.
- Audit konfigurasi server API (Nginx/API Gateway).

### Aksi
1. Matikan fitur debug/verbose error messages.
2. Konfigurasi header keamanan (HSTS, CSP, X-Frame-Options).
3. Hapus dokumentasi/API sample yang tidak perlu dari production.
4. Gunakan TLS 1.3 dan cipher suite yang kuat.

### Guardrail
- Selalu gunakan prinsip konfigurasi default-secure.

### Format Output
- Daftar miskonfigurasi keamanan.
- Daftar langkah hardening konfigurasi.
