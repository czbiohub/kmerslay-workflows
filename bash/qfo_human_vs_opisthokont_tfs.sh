
#!/bin/bash
OUTDIR=~/data_sm/kmer-hashing/quest-for-orthologs/analysis/2019/transcription-factors/
mkdir $OUTDIR
cd $OUTDIR/intermediates

PARQUET=$OUTDIR/qfo-eukaryota-tfs-protein.parquet

EUKARYOTA=/mnt/data_sm/olga/kmer-hashing/quest-for-orthologs/data/2019/Eukaryota
HUMAN=$EUKARYOTA/human-transcription-factor-fastas/human_transcription_factor_proteins.fasta
NOT_HUMAN=$EUKARYOTA/not-human-transcription-factor-fastas/

conda activate khtools--encodings--compare-cli


time khtools compare-kmers \
    --processes 120 \
    --ksize-min 3 \
    --ksize-max 45 \
    --parquet $PARQUET \
    --intermediate-parquet \
    --fastas2 $HUMAN \
    $NOT_HUMAN/*
