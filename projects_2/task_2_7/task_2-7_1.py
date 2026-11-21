date = "2026-02-08"
files = ["seq1", "seq2", "seq3", "seq4"]

for name in files:
    new_name = name + "_" + date + ".fasta"
    print(f"{new_name}")
