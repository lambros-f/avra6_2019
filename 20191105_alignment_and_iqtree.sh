#!/bin/bash

#SBATCH --job-name=mafftiq
#SBATCH --output=output.%J.txt
#SBATCH -A rwth0146
#SBATCH --mem-per-cpu=4000M
#SBATCH --cpus-per-task=12
#SBATCH --time=48:00:00
#SBATCH --mail-type=ALL

source /home/lf216591/.bash_profile

cd /work/lf216591/08_avra6/03_phylogeny

/home/lf216591/utils/bin/mafft --amino --6merpair --maxiterate 1000 --thread 12 all_seqs.fa > all_seqs.fa.aln


#let's try ultrafast bootstrap http://www.iqtree.org/doc/Tutorial#assessing-branch-supports-with-ultrafast-bootstrap-approximation
/home/lf216591/utils/iqtree-1.6.beta4-Linux/bin/iqtree -m VT+R8 -s all_seqs.fa.aln -nt 12 -bb 1000

