#!/bin/bash
# convert tped/tfam to plink binary
# cjfiscus
# 2021-11-09

# requires plink 1.9

# format tped tfam to binary equivalents
plink --tfile ../data/cowpea --allow-extra-chr --out ../data/cowpea_gwas

# copies of binary files for egwas analyses
cp ../data/cowpea_gwas.bed ../data/cowpea_envgwas.bed
cp ../data/cowpea_gwas.bim ../data/cowpea_envgwas.bim
