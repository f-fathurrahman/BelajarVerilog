# Inisialisasi frekuensi clock

Contoh, untuk inisialisasi clock dengan frekuensi 50 MHz atau periode
1/50e6 = 2e-8 s = 20 ns


Blok `always` pada potongan kode Verilog berikut ini akan dieksekusi setiap
10 ns, dimulai pada waktu 0. Nilai dari `clk` akan di-invert dari nilai
awalnya setiap 10 ns.

```verilog
always #10 clk = ~clk;
```

# Penggunaan `timescale`

```verilog
`timescale 1 ns / 100 ps
```

Baris ini penting untuk simulasi Verilog, karena mengatur skalwa waktu dan
presisi operasi untuk suatu modul. Baris ini menyebabkan satuan delay dalam
nanosekon (ns) dan presisi simulator adalah 100 ps.
Rounding untuk event adalah 100 ps atau 0.1 ns.
