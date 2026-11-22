# Skill: API SSRF Prevention

Fungsi: Mencegah Server-Side Request Forgery (SSRF) dengan memvalidasi input URL/domain.

### Trigger
- API yang menerima input URL untuk fetching data (webhooks, proxy).

### Aksi
1. Gunakan *allowlist* domain/IP tujuan.
2. Blokir akses ke metadata service cloud (e.g., 169.254.169.254).
3. Lakukan resolusi DNS pada sisi server sebelum request (mencegah DNS rebinding).
4. Gunakan proxy yang aman jika diperlukan.

### Guardrail
- Jangan pernah membiarkan user menentukan skema protokol (e.g., file://, gopher://).

### Format Output
- Status kerentanan SSRF.
- Rekomendasi perbaikan akses URL.
