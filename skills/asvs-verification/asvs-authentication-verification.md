# Skill: ASVS Authentication Verification

Fungsi: Memvalidasi kontrol autentikasi kuat, manajemen sesi, dan rotasi token.

### Trigger
- Audit endpoint autentikasi baru.
- Verifikasi mekanisme login dan sesi.

### Aksi
1. Pastikan password hashing menggunakan algoritma kuat (e.g., Argon2id).
2. Wajibkan MFA untuk semua akun.
3. Terapkan batas sesi (max 3 hari) dan rotasi token yang aman.
4. Pastikan session ID memiliki entropi tinggi dan tidak dapat ditebak.

### Guardrail
- Jangan pernah menyimpan kredensial dalam bentuk plaintext.
- Wajibkan re-autentikasi untuk aksi sensitif.

### Format Output
- Skor verifikasi autentikasi.
- Daftar celah pada manajemen sesi.
