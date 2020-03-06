

BRAWAND2011=/home/olga/ibm_lg/kmer-hashing/brawand2011

local:
	nextflow run nf-core/kmermaid \
		-r dev \
		-latest \
		--read_pairs ${BRAWAND2011}/nfcore-rnaseq-paired-end/allspecies/trim_galore/'*{1_val_1,2_val_2}.fq.gz' \
		--read_singles ${BRAWAND2011}/nfcore-rnaseq-single-end/allspecies/trim_galore/'*_trimmed.fq.gz' \
		-profile czbiohub_local \
		--log2_sketch_sizes 12 \
		--ksizes 21,27,33,51 \
		--molecules dna,protein,dayhoff \
		--custom_config_base ${HOME}/code/nf-core/configs/ \
		--outdir ${BRAWAND2011}/kmermaid/ \
		-resume --max-time 8h \
		--max_cpus 32


local_newksizes:
	nextflow run nf-core/kmermaid \
		-r olgabot/increase-max-time \
		-latest \
		--read_pairs ${BRAWAND2011}/nfcore-rnaseq-paired-end/allspecies/trim_galore/'*{1_val_1,2_val_2}.fq.gz' \
		--read_singles ${BRAWAND2011}/nfcore-rnaseq-single-end/allspecies/trim_galore/'*_trimmed.fq.gz' \
		-profile czbiohub_local \
		--log2_sketch_sizes 12 \
		--ksizes 15,18,24,30,36,39,42,45,48,54,57,60,63,66,69,72,75 \
		--molecules dna,protein,dayhoff \
		--custom_config_base ${HOME}/code/nf-core/configs/ \
		--outdir ${BRAWAND2011}/kmermaid/ \
		-resume --max-time 8h

UNIPROT_OPISTHOKONTA=/home/olga/data_lg/czbiohub-reference/uniprot/releases/2019_11/manually_downloaded/uniprot-reviewed_yes+taxonomy_2759.fasta.gz
UNIPROT_UNIREF=/home/olga/data_lg/czbiohub-reference/uniprot/releases/2019_11/uniref/uniref100/uniref100.fasta.gz

uniprot_opisthokonta:
	nextflow run \
		nf-core/kmermaid \
		-r dev \
		-latest \
		--read_pairs ${BRAWAND2011}/nfcore-rnaseq-paired-end/allspecies/trim_galore/'*{1_val_1,2_val_2}.fq.gz' \
		--read_singles ${BRAWAND2011}/nfcore-rnaseq-single-end/allspecies/trim_galore/'*_trimmed.fq.gz' \
		-profile czbiohub_local \
                --log2_sketch_sizes 14 \
		--ksizes 27 \
		--molecules dayhoff \
		--peptide_fasta ${UNIPROT_OPISTHOKONTA} \
		--custom_config_base ${HOME}/code/nf-core/configs/ \
		--outdir ${BRAWAND2011}/kmermaid_$@/ \
		-resume --max-time 8h \
		--max_cpus 32

uniprot_uniref:
	nextflow run \
		nf-core/kmermaid \
		-r dev \
		-latest \
		--read_pairs ${BRAWAND2011}/nfcore-rnaseq-paired-end/allspecies/trim_galore/'*{1_val_1,2_val_2}.fq.gz' \
		--read_singles ${BRAWAND2011}/nfcore-rnaseq-single-end/allspecies/trim_galore/'*_trimmed.fq.gz' \
		-profile czbiohub_local \
                --log2_sketch_sizes 14 \
		--ksizes 27 \
		--molecules dayhoff \
		--peptide_fasta ${UNIPROT_UNIREF} \
		--custom_config_base ${HOME}/code/nf-core/configs/ \
		--outdir ${BRAWAND2011}/kmermaid_$@/ \
		-resume --max-time 8h \
		--max_cpus 32
