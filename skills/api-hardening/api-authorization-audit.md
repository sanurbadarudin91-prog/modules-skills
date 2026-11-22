# Skill: API Authorization Audit

Fungsi: Memeriksa dan memvalidasi kontrol akses pada level objek, properti, dan fungsi (BOLA/IDOR, BFLA, BOPLA).

### Trigger
- Audit keamanan pada endpoint API baru atau existing.
- Penambahan fungsi atau fitur baru yang mengakses data user.

### Input
- Definisi API (OpenAPI/Swagger).
- Konteks akses (Role, Scope, Ownership).

### Aksi
1. Verifikasi BOLA: Pastikan setiap endpoint yang menerima ID objek (URL/Body) memvalidasi kepemilikan/hak akses user terhadap objek tersebut.
2. Verifikasi BFLA: Pastikan endpoint admin tidak dapat diakses oleh user dengan role rendah.
3. Verifikasi BOPLA: Pastikan data yang dikembalikan/diterima hanya mencakup field yang diizinkan untuk role tersebut.

### Guardrail
- Default-deny: Jika user tidak memiliki akses eksplisit, tolak permintaan.
- Jangan mengandalkan ID yang bisa ditebak atau diurutkan (gunakan UUID).

### Format Output
- Daftar endpoint berisiko.
- Rekomendasi perbaikan akses kontrol.
