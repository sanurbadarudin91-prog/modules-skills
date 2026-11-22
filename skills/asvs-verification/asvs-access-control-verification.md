# Skill: ASVS Access Control Verification

Fungsi: Memvalidasi kontrol akses dan verifikasi hak akses objek/fungsi.

### Trigger
- Audit logika otorisasi aplikasi.
- Penambahan role baru atau akses objek baru.

### Aksi
1. Pastikan setiap permintaan API memvalidasi kepemilikan objek (BOLA/IDOR prevention).
2. Terapkan akses berbasis role (RBAC) dengan prinsip *least privilege*.
3. Verifikasi kontrol akses di sisi server (jangan hanya di UI).
4. Pastikan akses admin terproteksi dan terpisah.

### Guardrail
- Default-deny: Jika akses tidak diizinkan eksplisit, tolak.
- Jangan mengandalkan ID yang bisa ditebak untuk otorisasi.

### Format Output
- Daftar endpoint berisiko otorisasi.
- Langkah perbaikan akses kontrol.
