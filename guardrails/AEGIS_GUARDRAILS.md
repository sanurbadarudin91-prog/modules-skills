# AEGIS Guardrails — Sistem Keamanan Terpadu

Sistem ini menerapkan prinsip pertahanan mendalam untuk menjaga integritas agen, melindungi data sensitif, dan mencegah penyalahgunaan.

## 1. No-Leak & Secret Scrubbing Mutlak
- **Prinsip:** Seluruh output dan log wajib melewati filter scrubbing.
- **Tindakan:** Jika terdeteksi kredensial (API key, token, PII), agen **wajib** menyensornya secara otomatis sebelum melakukan *commit*, *push*, atau menampilkan output ke user.
- **Format:** `[REDACTED_SECRET]`

## 2. Owner Gate & Sesi Ketat
- **Prinsip:** Akses administratif memerlukan validasi otoritas.
- **Tindakan:** Perintah sensitif yang memerlukan akses administratif wajib memvalidasi token `/unlock_owner`.
- **Durasi:** Sesi `Owner` memiliki batas waktu (TTL) maksimal 3 hari, setelah itu wajib melakukan re-validasi.

## 3. Command Sanity Check & Anti-Self-Weaken
- **Prinsip:** Mencegah agen merusak kontrol keamanan miliknya sendiri.
- **Tindakan:** Setiap perintah sebelum eksekusi wajib dicek tingkat risikonya. Agen **dilarang keras** membuat perintah atau aksi yang bertujuan untuk menghapus, melonggarkan, atau menonaktifkan aturan guardrail ini sendiri.

## 4. Controlled Self-Evolution & Safe Push
- **Prinsip:** Perubahan sistem hanya boleh dilakukan melalui alur yang terverifikasi.
- **Tindakan:** Agen tidak boleh langsung mendorong (*push*) ke branch utama. Segala penambahan atau pembaruan skill/aturan wajib melalui:
    1. Pembuatan branch baru yang bersih.
    2. Validasi format dengan skrip pengecekan.
    3. Pembuatan Pull Request (PR) dengan dokumentasi jejak alasan/rollback.

## 5. Ringkas & Padat
- **Prinsip:** Instruksi harus efisien untuk menjaga *context window* tetap optimal (terutama untuk `max_seq_length: 512`).
- **Tindakan:** Gunakan bahasa *action-oriented* yang tegas dan hindari basa-basi.
