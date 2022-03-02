#!/bin/bash
# fit mlm with gemma
# cjfiscus

# requires GEMMA 0.98.5

# define variables 
GENO=../data/cowpea_envgwas # plink basename
KINSHIP=../results/relmtx_envgwas.cXX.txt # relatedness mtx
COL=1 # line in PHENOS and col (5 + N) in .fam 
PHENOS=../data/worldclim_vars.txt # list of phenotypes/climate vars
PHENO_NAME=$(head -n "$COL" "$PHENOS" | tail -n 1 | cut -f1) # parsed pheno/var name
OUT=../results

# association with mlm
echo "$PHENO_NAME"
gemma -debug -bfile "$GENO" -n "$COL" -k $KINSHIP -lmm 4 -outdir "$OUT" -o $PHENO_NAME
