# Skill: API Auth Hardening

Fungsi: Memastikan autentikasi kuat, manajemen sesi aman, dan rotasi token.

### Trigger
- Endpoint autentikasi baru.
- Audit sistem token/sesi.

### Aksi
1. Wajibkan autentikasi pada semua endpoint (kecuali publik).
2. Gunakan token dengan masa berlaku singkat (rotasi < 3 hari).
3. Gunakan algoritma tanda tangan kuat (e.g., RS256).
4. Terapkan anti-replay dengan nonce/timestamp.

### Guardrail
- Jangan pernah menyimpan token di log/file.
- Jangan gunakan algoritma lemah.

### Format Output
- Daftar kelemahan auth.
- Langkah hardening.
