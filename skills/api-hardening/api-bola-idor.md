# Skill: API BOLA/IDOR Audit

Fungsi: Mencegah Broken Object Level Authorization (BOLA/IDOR) melalui validasi kepemilikan objek.

### Trigger
- Audit endpoint yang menerima ID objek (IDOR).
- Penambahan fungsi akses data user baru.

### Aksi
1. Pastikan setiap akses ke objek (GET/PUT/DELETE) memvalidasi bahwa `user_id` yang terautentikasi adalah pemilik objek.
2. Hindari penggunaan ID berurutan atau mudah ditebak. Gunakan UUID.
3. Jangan pernah mempercayai input user untuk menentukan ID objek tanpa validasi backend.

### Guardrail
- Default-deny: Jika kepemilikan tidak terverifikasi, tolak (403 Forbidden).

### Format Output
- Hasil audit endpoint.
- Langkah remediasi (penambahan validasi akses).
