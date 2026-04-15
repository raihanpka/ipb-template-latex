# Template Tugas Akhir Sarjana (S1) IPB University: LaTeX

Template LaTeX untuk penulisan skripsi/tugas akhir sarjana (S1) di Institut Pertanian Bogor (IPB University). Template ini diadaptasi secara penuh dari Template Word resmi PPKI (Pedoman Penulisan Karya Ilmiah) Edisi ke-4 yang diterbitkan oleh IPB University.

Template ini juga bisa diakses melalui [Overleaf](https://www.overleaf.com/read/zcgrrzkfgkcw#4b4995)

---

## Daftar Isi

- [Gambaran Umum](#gambaran-umum)
- [Persyaratan Sistem](#persyaratan-sistem)
- [Struktur Direktori](#struktur-direktori)
- [Cara Penggunaan](#cara-penggunaan)
- [Spesifikasi Format](#spesifikasi-format)
- [Panduan Tabel](#panduan-tabel)
- [Panduan Gambar](#panduan-gambar)
- [Panduan Caption](#panduan-caption)
- [Panduan Lampiran](#panduan-lampiran)
- [Panduan Sitasi dan Daftar Pustaka](#panduan-sitasi-dan-daftar-pustaka)
- [Kustomisasi](#kustomisasi)
- [Lisensi](#lisensi)
- [Kredit dan Atribusi](#kredit-dan-atribusi)

---

## Gambaran Umum

Template ini mencakup seluruh komponen dokumen tugas akhir IPB, mulai dari halaman judul hingga riwayat hidup, dengan struktur modular satu file per bab agar mudah dikelola. Seluruh pengaturan format (margin, font, penomoran, caption, header/footer) sudah dikonfigurasi di `main.tex` sesuai ketentuan PPKI IPB Edisi ke-4.

Fitur utama template ini:

- Struktur modular satu file per bab di dalam direktori `chapters/`
- Font Times New Roman 12pt via paket `mathptmx`
- Penomoran bab dengan angka Romawi kapital (I, II, III) dan subbab dengan angka Arab desimal (1.1, 1.2)
- Sub-subbab tidak dicetak tebal, indent otomatis di bawah subbab induknya, dan tidak masuk ke Daftar Isi
- Penomoran halaman preliminari dengan angka Romawi kecil (posisi tengah atas) dan halaman isi dengan angka Arab (posisi kanan atas)
- Caption gambar dan tabel sesuai gaya IPB: tanpa titik dua, tanpa cetak tebal, dengan hanging indent otomatis
- Tabel bergaya three-line menggunakan paket `booktabs`
- Daftar Isi, Daftar Tabel, Daftar Gambar otomatis
- Daftar Lampiran otomatis (mekanisme sama seperti Daftar Gambar, menggunakan `tocloft`)
- Halaman standalone "LAMPIRAN" sebelum lampiran pertama, masing-masing lampiran di halaman tersendiri
- Sitasi gaya author-year IPB menggunakan paket `natbib` dan gaya bibliografi kustom `ipb.bst`
- Dukungan BibTeX untuk manajemen referensi dengan format sesuai PPKI IPB Edisi ke-4
- File [`ipb.csl`](https://github.com/auriza/csl-ipb/) disertakan untuk pengguna Zotero/Mendeley

---

## Persyaratan Sistem

### Distribusi TeX

| Distribusi | Versi Minimum | Keterangan |
|---|---|---|
| TeX Live | 2020 atau lebih baru | Direkomendasikan untuk Linux dan macOS |
| MiKTeX | 21.x atau lebih baru | Direkomendasikan untuk Windows |
| Overleaf | Semua versi aktif | Tidak memerlukan instalasi lokal |

### Paket LaTeX yang Diperlukan

Seluruh paket berikut sudah tersedia di TeX Live Full dan MiKTeX dengan fitur auto-install. Jika menggunakan instalasi minimal, pastikan paket-paket berikut terpasang:

`fontenc`, `inputenc`, `babel` (dengan dukungan bahasa Indonesia), `mathptmx`, `geometry`, `setspace`, `indentfirst`, `fancyhdr`, `titlesec`, `tocloft`, `chngcntr`, `caption`, `booktabs`, `array`, `tabularx`, `multirow`, `longtable`, `graphicx`, `float`, `amsmath`, `amssymb`, `natbib`, `hyperref`, `microtype`, `xcolor`, `url`, `enumitem`, `hanging`, `etoolbox`

### Compiler

Template ini dikembangkan dan diuji menggunakan **pdfLaTeX**. Penggunaan XeLaTeX atau LuaLaTeX memerlukan penyesuaian pada bagian pengaturan font (lihat komentar di `main.tex`).

---

## Struktur Direktori

```
ipb-template-latex/
|
+-- main.tex                        Entry point utama, berisi seluruh pengaturan format
+-- Makefile                        Build otomatis (make, make clean, make cleanall)
+-- ipb.bst                         Gaya bibliografi BibTeX kustom sesuai PPKI IPB Edisi ke-4
+-- ipb.csl                         Gaya sitasi CSL untuk Zotero/Mendeley (referensi format)
|
+-- chapters/
|   +-- cover.tex                   Halaman judul (cover luar)
|   +-- cover_dalam.tex             Halaman judul dalam (dengan keterangan "Skripsi sebagai...")
|   +-- pernyataan.tex              Pernyataan mengenai skripsi dan pelimpahan hak cipta
|   +-- abstrak.tex                 Abstrak (Bahasa Indonesia) dan Abstract (Bahasa Inggris)
|   +-- hak_cipta.tex               Halaman hak cipta
|   +-- tim_penguji.tex             Halaman tim penguji
|   +-- lembar_persetujuan.tex      Lembar pengesahan pembimbing dan ketua program studi
|   +-- prakata.tex                 Prakata
|   +-- daftar_isi.tex              Daftar Isi, Daftar Tabel, Daftar Gambar, Daftar Lampiran
|   +-- bab1_pendahuluan.tex        Bab I   Pendahuluan
|   +-- bab2_tinjauan_pustaka.tex   Bab II  Tinjauan Pustaka
|   +-- bab3_metode.tex             Bab III Metode
|   +-- bab4_hasil_pembahasan.tex   Bab IV  Hasil dan Pembahasan
|   +-- bab5_simpulan_saran.tex     Bab V   Simpulan dan Saran
|   +-- daftar_pustaka.tex          Daftar Pustaka (BibTeX)
|   +-- lampiran.tex                Lampiran (dengan halaman standalone + per halaman)
|   +-- riwayat_hidup.tex           Riwayat Hidup
|
+-- images/
|   +-- ipb_logo.png                Logo IPB University
|   +-- contoh_gambar1.jpg          Gambar contoh 1
|   +-- contoh_gambar2.jpg          Gambar contoh 2
|
+-- refs/
|   +-- daftar_pustaka.bib          Database referensi BibTeX
|
+-- README.md                       Dokumentasi ini
```

---

## Cara Penggunaan

### 1. Clone atau Unduh Repositori

```bash
git clone https://github.com/raihanpka/ipb-template-latex.git
cd ipb-template-latex
```

### 2. Isi Data Mahasiswa

Buka setiap file di dalam `chapters/` dan ganti bagian placeholder seperti `NAMA PENULIS`, `JUDUL KARYA ILMIAH`, `NAMA DEPARTEMEN/PROGRAM STUDI`, `20XX`, dan sebagainya dengan data yang sesuai.

### 3. Compile

**Menggunakan Makefile (direkomendasikan):**

```bash
make              # Compile main.tex ke main.pdf
make clean        # Hapus file sementara
make cleanall     # Hapus semua file hasil compile termasuk PDF
```

**Menggunakan latexmk langsung:**

```bash
latexmk -pdf -bibtex main.tex
```

**Menggunakan pdfLaTeX secara manual:**

```bash
pdflatex main.tex
bibtex main
pdflatex main.tex
pdflatex main.tex
```

Urutan ini diperlukan agar referensi sitasi, daftar pustaka, daftar isi, dan penomoran halaman diproses dengan benar.

**Menggunakan Overleaf:**

Upload seluruh isi direktori ke proyek Overleaf baru. Pastikan compiler diatur ke **pdfLaTeX** di menu Settings, kemudian klik Compile.

Atau bisa langsung akses template ini di Overleaf melalui tautan berikut: [https://www.overleaf.com/read/zcgrrzkfgkcw#4b4995](https://www.overleaf.com/read/zcgrrzkfgkcw#4b4995)

### 4. Menambah Bab Baru

Buat file baru di direktori `chapters/`, misalnya `chapters/bab6_xxx.tex`, lalu tambahkan baris berikut di `main.tex` pada bagian `\mainmatter`:

```latex
\include{chapters/bab6_xxx}
```

---

## Spesifikasi Format

Seluruh pengaturan berikut sudah diterapkan di `main.tex` sesuai PPKI IPB Edisi ke-4.

| Elemen | Spesifikasi |
|---|---|
| Ukuran kertas | A4 (210 x 297 mm) |
| Margin | Atas 3 cm, Bawah 3 cm, Dalam 3 cm, Luar 3 cm, Gutter 1 cm |
| Font teks | Times New Roman 12pt |
| Spasi teks | Tunggal (single spacing) |
| Indentasi awal paragraf | 1 cm |
| Jarak antar paragraf | 0 pt (tidak ada jarak tambahan) |
| Judul bab | 14pt, cetak tebal, rata tengah, huruf kapital penuh |
| Judul subbab | 12pt, cetak tebal, rata kiri |
| Judul sub-subbab | 12pt, tidak tebal, indent di bawah subbab |
| Penomoran bab | Angka Romawi kapital (I, II, III, IV, V) |
| Penomoran subbab | Angka Arab desimal (1.1, 1.2, 2.1, 2.2) |
| Penomoran sub-subbab | Angka Arab desimal (2.1.1, 2.1.2) - tidak masuk Daftar Isi |
| Nomor halaman preliminari | Angka Romawi kecil, posisi tengah atas |
| Nomor halaman isi | Angka Arab, posisi kanan atas |
| Garis header/footer | Tidak ada |
| Halaman rata bawah | Tidak (raggedbottom) |

---

## Panduan Tabel

### Ketentuan Tabel IPB

- Caption ditulis **di atas** tabel.
- Format caption: `Tabel N Judul tabel` tanpa titik dua dan tanpa cetak tebal.
- Baris lanjutan caption rata di bawah huruf pertama judul (hanging indent otomatis).
- Garis tabel hanya berupa garis horizontal: garis atas tebal (`\toprule`), garis bawah header tipis (`\midrule`), garis bawah tabel tebal (`\bottomrule`).
- Tidak ada garis vertikal pada tabel.
- Tidak ada shading atau warna pada sel.
- Catatan kaki tabel menggunakan superskrip huruf kecil (`a`, `b`, `c`) dan ditulis di bawah garis penutup tabel.
- Penempatan tabel menggunakan `[H]` (posisi fixed, bukan float).

### Contoh Kode Tabel

```latex
\begin{table}[H]
  \caption{Judul tabel ditulis di sini tanpa titik dua}
  \label{tab:nama_label}
  \centering
  \begin{tabular}{lcc}
    \toprule
    Kolom 1 & Kolom 2 & Kolom 3 \\
    \midrule
    Data 1  & 10.20a  & 0.38a   \\
    Data 2  & 10.64a  & 0.55a   \\
    \bottomrule
  \end{tabular}
  \begin{minipage}{\linewidth}
    \vspace{2pt}
    \footnotesize
    $^{\mathrm{a}}$Keterangan catatan kaki tabel ditulis di sini.
  \end{minipage}
\end{table}
```

### Merujuk Tabel dalam Teks

```latex
Hasil pengukuran disajikan pada Tabel~\ref{tab:nama_label}.
```

---

## Panduan Gambar

### Ketentuan Gambar IPB

- Caption ditulis **di bawah** gambar.
- Format caption: `Gambar N Judul gambar` tanpa titik dua dan tanpa cetak tebal.
- Baris lanjutan caption rata di bawah huruf pertama judul (hanging indent otomatis).
- Gambar diletakkan di tengah halaman menggunakan `\centering`.
- Gambar dirujuk dalam teks sebelum atau sesudah penempatannya.
- Penempatan gambar menggunakan `[H]` (posisi fixed).

### Contoh Kode Gambar

```latex
\begin{figure}[H]
  \centering
  \includegraphics[width=0.7\textwidth]{images/nama_file_gambar}
  \caption{Judul gambar ditulis di sini tanpa titik dua}
  \label{fig:nama_label}
\end{figure}
```

### Gambar Berdampingan (Subfigure)

Tambahkan paket berikut di `main.tex`:

```latex
\usepackage{subcaption}
```

Kemudian gunakan:

```latex
\begin{figure}[H]
  \centering
  \begin{subfigure}[b]{0.48\textwidth}
    \includegraphics[width=\textwidth]{images/gambar_a}
    \caption{Keterangan subfigure a}
    \label{fig:sub_a}
  \end{subfigure}
  \hfill
  \begin{subfigure}[b]{0.48\textwidth}
    \includegraphics[width=\textwidth]{images/gambar_b}
    \caption{Keterangan subfigure b}
    \label{fig:sub_b}
  \end{subfigure}
  \caption{Judul gambar utama}
  \label{fig:gabungan}
\end{figure}
```

### Merujuk Gambar dalam Teks

```latex
Struktur morfologi disajikan pada Gambar~\ref{fig:nama_label}.
```

---

## Panduan Caption

Caption pada template ini mengikuti format IPB secara tepat.

| Elemen Caption | Ketentuan |
|---|---|
| Label | `Gambar N` atau `Tabel N` dengan N adalah nomor urut global |
| Pemisah label dan judul | Spasi tunggal (tanpa titik dua) |
| Cetak tebal pada label | Tidak ada |
| Cetak miring pada judul | Tidak ada |
| Hanging indent | Otomatis; baris lanjutan rata di bawah huruf pertama judul |
| Posisi caption gambar | Di bawah gambar (`skip=6pt` jarak gambar ke caption) |
| Posisi caption tabel | Di atas tabel (`skip=0pt`) |
| Sistem penomoran | Global sequential, tidak mengikuti nomor bab |

---

## Panduan Lampiran

Lampiran menggunakan counter `lampiran` yang didefinisikan secara otomatis oleh `tocloft` via `\newlistof` di `main.tex`. Entry Daftar Lampiran dihasilkan otomatis dari `\addcontentsline` di `lampiran.tex` -- sama seperti mekanisme Daftar Gambar.

### Struktur Lampiran

1. **Halaman standalone "LAMPIRAN"** -- halaman terpisah berisi teks "LAMPIRAN" di tengah halaman
2. **Lampiran 1** -- halaman tersendiri dengan tabel/konten
3. **Lampiran 2** -- halaman tersendiri dengan tabel/konten
4. dst.

### Contoh Menambah Lampiran Baru

Tambahkan di `chapters/lampiran.tex`:

```latex
\clearpage

\refstepcounter{lampiran}
\addcontentsline{lamp}{lampiran}{\protect\numberline{\thelampiran}Lampiran 3\enspace Judul lampiran ketiga}
\label{lamp:ketiga}

\noindent\hangindent=5.6em
\makebox[5.4em][l]{\textbf{Lampiran \thelampiran}}%
Judul lampiran ketiga

\vspace{4pt}

% Tabel atau gambar lampiran ditempatkan di sini
```

Daftar Lampiran di `daftar_isi.tex` akan otomatis terupdate tanpa perlu diedit.

### Merujuk Lampiran dalam Teks

```latex
Data lengkap disajikan pada Lampiran~\ref{lamp:ketiga}.
```

---

## Panduan Sitasi dan Daftar Pustaka

### Gaya Sitasi IPB

Template menggunakan gaya **author-year** (Harvard) sesuai ketentuan PPKI IPB Edisi ke-4 melalui paket `natbib` dan gaya bibliografi kustom `ipb.bst`.

#### Format Sitasi dalam Teks

| Perintah | Hasil |
|---|---|
| `\citep{Widowati2020}` | (Widowati et al. 2020) |
| `\citet{Bente2006}` | Bente dan Rico-Hesse (2006) |
| `\citep{Bente2006, Kochel2005}` | (Bente dan Rico-Hesse 2006; Kochel et al. 2005) |
| `\citeauthor{Onlamoon2010}` | Onlamoon et al. |
| `\citeyear{Onlamoon2010}` | 2010 |

Catatan:
- Dua penulis: menggunakan "dan" sebagai penghubung, misalnya `(Bente dan Rico-Hesse 2006)`
- Tiga penulis atau lebih: menggunakan "et al." hanya pada sitasi dalam teks, misalnya `(Widowati et al. 2020)`
- Tidak ada koma antara penulis dan tahun (sesuai format IPB)

#### Format Daftar Pustaka

Daftar pustaka diformat secara otomatis oleh `ipb.bst` sesuai ketentuan PPKI IPB Edisi ke-4:

| Elemen | Format |
|---|---|
| Nama penulis | `NamaBelakang Inisial` tanpa koma dan tanpa titik (contoh: `Widowati W`, `Rico-Hesse R`) |
| Tahun | Tanpa tanda kurung, diikuti titik (contoh: `2006.`) |
| Judul artikel | Huruf kapital hanya pada kata pertama |
| Nama jurnal | Cetak miring, diikuti titik |
| Volume dan halaman | `Vol(No):Hal` (contoh: `27(3):186--196`) |
| DOI | `doi:` diikuti nomor DOI |
| Judul buku | Cetak miring |
| Edisi | `Ed ke-N` |
| Penerbit | `Kota: Nama Penerbit` |
| Skripsi/tesis/disertasi | Judul diikuti `[skripsi]`, `[tesis]`, atau `[disertasi]` |
| Dalam buku/prosiding | `Di dalam:` sebelum editor dan judul buku |
| Semua penulis | Disebutkan semua hingga 10 penulis; 11+ menggunakan et al. |

Contoh hasil format daftar pustaka:

```
Bente A, Rico-Hesse R. 2006. Model of dengue virus infection. Drug Discov
  Today Dis Models. 3(1):97--103. doi:10.1016/j.ddmod.2006.03.014.

Widowati W, Jasaputra D, Wargasetia T, Eltania T, Azizah A, Subangkit M,
  Lister I, Ginting C, Girsang E, Faried A. 2020. Apoptotic potential of
  secretome from interleukin-induced natural killer cells toward breast cancer
  cell line by transwell assay. HAYATI J Biosci. 27(3):186--196.
  doi:10.4308/hjb.27.3.186.
```

> **Catatan:** Untuk inisial ganda (misalnya D.K.), tulis dengan spasi di file `.bib`: `Jasaputra, D. K.` agar BibTeX menghasilkan `Jasaputra DK` (bukan `Jasaputra D`).

### Menggunakan BibTeX

1. Tambahkan entri referensi ke file `refs/daftar_pustaka.bib`.
2. Pastikan file `chapters/daftar_pustaka.tex` berisi:

```latex
\bibliographystyle{ipb}
\bibliography{refs/daftar_pustaka}
```

3. Compile dengan `make` atau `latexmk -pdf -bibtex main.tex`.

### Contoh Entri BibTeX

```bibtex
@article{Widowati2020,
  author  = {Widowati, W. and Jasaputra, D. K. and Wargasetia, T. L.},
  year    = {2020},
  title   = {Apoptotic potential of secretome},
  journal = {HAYATI J Biosci},
  volume  = {27},
  number  = {3},
  pages   = {186--196},
  doi     = {10.4308/hjb.27.3.186}
}

@book{ContohBuku2018,
  author    = {Nama, A. B. and Penulis, C. D.},
  year      = {2018},
  title     = {Judul Buku yang Dicetak Miring},
  publisher = {Nama Penerbit},
  address   = {Kota}
}

@phdthesis{ContohDisertasi2019,
  author  = {Mahasiswa, A. B.},
  year    = {2019},
  title   = {Judul disertasi ditulis di sini},
  school  = {Institut Pertanian Bogor},
  address = {Bogor}
}
```

### File ipb.csl untuk Zotero/Mendeley

File `ipb.csl` disertakan dalam repositori ini sebagai referensi gaya sitasi untuk pengguna Zotero atau Mendeley. File ini diadaptasi dari [csl-ipb](https://github.com/auriza/csl-ipb/) oleh Auriza Rahmad Akbar. File CSL mengikuti spesifikasi Citation Style Language dan dapat diimpor langsung ke Zotero melalui menu Preferences > Cite > Style Manager > +.

---

## Kustomisasi

### Memisahkan Bab Hasil dan Pembahasan

Jika bab Hasil dan Pembahasan perlu dipisah, buat dua file terpisah dan ubah bagian `\mainmatter` di `main.tex`:

```latex
% Ganti satu baris ini:
\include{chapters/bab4_hasil_pembahasan}

% Menjadi dua baris:
\include{chapters/bab4_hasil}
\include{chapters/bab4_pembahasan}
```

### Mengubah Compiler ke XeLaTeX atau LuaLaTeX

Hapus atau komentari baris `\usepackage{mathptmx}` di `main.tex`, lalu tambahkan:

```latex
\usepackage{fontspec}
\setmainfont{Times New Roman}
```

Pastikan font Times New Roman sudah terpasang di sistem operasi yang digunakan.

### Menambah Persamaan Matematika

Paket `amsmath` dan `amssymb` sudah dimuat. Gunakan lingkungan standar LaTeX:

```latex
\begin{equation}
  y = ax^2 + bx + c
  \label{eq:nama_label}
\end{equation}
```

### Menambah Penyorotan Sintaks Kode Program

Tambahkan salah satu paket berikut di `main.tex` sesuai kebutuhan:

```latex
\usepackage{listings}    % Tanpa dependensi eksternal
\usepackage{minted}      % Memerlukan Python Pygments
```

---

## Kredit dan Atribusi

Template Word asli merupakan milik **IPB University** dan diterbitkan melalui dokumen PPKI Edisi ke-4. Template LaTeX ini merupakan hasil konversi dan adaptasi mandiri yang tidak bersifat resmi dan tidak terafiliasi dengan IPB University.

**Konversi dan adaptasi LaTeX:**

Raihan Putra Kirana
GitHub: [@raihanpka](https://github.com/raihanpka)

**Kontributor:**

Mochamad Chairulridjal Nurvikri
GitHub: [@chairulridjaal](https://github.com/chairulridjaal)

---

Jika template ini bermanfaat untuk penelitian atau penulisan skripsi Anda, silakan berikan bintang (star) pada repositori ini sebagai bentuk apresiasi. Kontribusi berupa laporan masalah (issue), saran perbaikan, maupun pull request sangat disambut.
