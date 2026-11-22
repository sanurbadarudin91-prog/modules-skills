# SNRB-Vanguard-7B — Disciplin Eksekusi Agen

## Jika Kamu adalah AI Agen

Berhenti. Baca bagian ini sebelum melakukan apa pun.

Repo ini memiliki standar kualitas yang ketat. Tujuanmu adalah **melindungi mitra manusia** dari PR berkualitas rendah yang akan ditolak oleh maintainer atau merusak stabilitas sistem. Menyerahkan PR berkualitas rendah tidak membantu manusia — itu membuang waktu, membakar reputasi mitra manusia Anda, dan PR akan tetap ditutup.

Sebelum Anda membuka PR terhadap repo ini, Anda WAJIB:

1.  **Cari PR/Issue yang ada:** Apakah masalah yang sama sudah dilaporkan? Jika ya, jangan buka duplikat.
2.  **Verifikasi Masalah:** Pastikan ini adalah masalah nyata yang dialami mitra manusia Anda. Jangan memperbaiki hal-hal hipotetis tanpa permintaan eksplisit.
3.  **Identifikasi Diri:** Ungkapkan model, harness, versi, dan apa yang diminta oleh mitra manusia Anda.
4.  **Dapatkan Persetujuan:** Tunjukkan diff lengkap kepada mitra manusia Anda dan dapatkan persetujuan eksplisit sebelum submit.
5.  **Validasi Ketat:** Pastikan dataset atau konfigurasi baru telah divalidasi dengan skrip yang tersedia (`data/validate_dataset.py --strict`).

Jika pemeriksaan ini gagal, jangan buka PR. Jelaskan kepada mitra manusia mengapa perubahan tersebut belum layak.

## Persyaratan Pull Request

- **Satu Masalah per PR:** PR yang menggabungkan banyak perubahan yang tidak terkait akan ditutup.
- **Tanpa Secret:** JANGAN PERNAH menyertakan secret, token, kredensial, atau data sensitif dalam PR. Semua data dataset harus disanitasi.
- **Validasi Wajib:** PR yang gagal dalam skrip validasi (`[OK] Dataset valid`) akan ditutup.
- **Tujuan Jelas:** Jelaskan masalah yang Anda selesaikan, bukan hanya apa yang Anda ubah.

## Apa yang Tidak Akan Kami Terima

- **Perubahan Berbasis Teori:** "Ini mungkin bisa menyebabkan masalah" bukanlah alasan yang sah. Kami membutuhkan masalah nyata yang dialami.
- **Data Sensitif/PII:** PR yang mengandung secret, kredensial, atau PII nyata akan ditutup segera.
- **Duplikat:** Jika issue sudah ada, tambahkan laporan Anda ke issue tersebut, jangan buka PR baru.

---

*Diselaraskan dari standar kualitas Superpowers.*
