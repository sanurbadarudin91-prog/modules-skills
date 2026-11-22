# Skill: API Rate Limiting

Fungsi: Mencegah *Resource Consumption* berlebih dan *brute force*.

### Trigger
- Audit performa endpoint.
- Endpoint autentikasi atau pencarian.

### Aksi
1. Implementasikan *rate limiting* berdasarkan per-user atau per-IP.
2. Gunakan *throttling* untuk mencegah *DDoS* dan *brute force*.
3. Monitor penggunaan API dan set *threshold* yang wajar.

### Guardrail
- Pastikan limit tidak merusak operasional sah (False Positive minimization).

### Format Output
- Rekomendasi limit per endpoint.
- Daftar endpoint tanpa limit.
