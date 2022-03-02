# cowpea_gwas
Variant filtering and GWAS pipeline for analyses in cowpea

## setup
Download the following files and place in data directory:  
-IITA_Core_FinalReport.xls    
-ID-TVu CrossReference (Tchamba_11August2020).xls  
-IITA-Cowpea collection.xls 

Download worldclim 2.1 bioclim variables at 30 sec resolution:
```
cd data
wget --no-check-certificate https://biogeo.ucdavis.edu/data/worldclim/v2.1/base/wc2.1_30s_bio.zip
unzip wc2.1_30s_bio.zip
```

### contents
#### data  
place data here (see setup)

#### scripts  
##### 001_format_plink_gwas.R
Formats genotypes and phenotypes into plink text (.tped, .tfam) files.

##### 002_format_plink_egwas.R
Extracts worldclim variables given accession coordinates and formats these values as plink text file.  

##### 003_ped2binary.sh
Converts plink text files into binary and produces set of plink files for gwas and envgwas. 

##### 004_rel_mtx.sh
Calculates centered relatedness matrices for gwas and envgwas. 

##### 005_mlm.sh
Fits mixed-linear models with gemma.   

#### results
results go here
