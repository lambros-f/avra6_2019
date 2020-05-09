# Phylogeny of B. graminis spp. candidate effectors

In order to generate a phylogenetic tree for all the candidate effectors of sequenced B. graminis fsp IQ-TREE multicore version 1.6.beta4 for Linux 64-bit built Jun 21 2017 was used *(command: iqtree-1.6.beta4-Linux/bin/iqtree -m VT+R8 -s all_seqs.fa.aln -nt 12 -bb 1000)*.

The initial alignment was generated using MAFFT v7.310 *(command "mafft --amino --6merpair --maxiterate 1000 --thread 12")*. 

The resulting tree was visualized using ITOL. 

The B. graminis formae speciales isolates used for the tree were: B. graminis fsp lolium, poae, secalis S1459, hordei DH14, triticale T1-20, tritici 96224. 

Annotation for these genomes were either obtained from https://bmcevolbiol.biomedcentral.com/articles/10.1186/s12862-017-1064-2#Sec21 or annotated denovo using the pipeline described in Frantzeskakis BMC genomics 2018. 

Secretomes used and the IQTREE output can be found in https://github.com/lambros-f/avra6_2019.

Files:

all_seqs.fa.aln.* : IQtree output

output.11346066.txt : IQtree logfile

\*.secreted.notmhmm.fa : Secretomes of Bg spp used for the alignment and IQtree. These sequences are without the signal peptide predicted by SignalP. 

The alignment file from mafft was to large to upload on github, should be easily recreated using \*.secreted.notmhmm.fa .

