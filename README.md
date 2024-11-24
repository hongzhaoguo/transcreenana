 # this is a brief introduction on how to analyze transcreen data;
 ## The Transcreen project is a large-scale screening project targeting the transmembrane region of CAR proteins. The length of CAR proteins ranges from 20 to 26 amino acid residues. After amplifying and constructing the library using PCR, the results of the next-generation sequencing (NGS) are analyzed through the following workflow:
 1. Step 1: Use cutadapt to trim the adapter sequences;
    Step 2: Use **MAGeCK count** to obtain the read counts corresponding to different sequences.
    Step 3: Use R package **MAGeCK-Flute** to visualize the quality control results from the **MAGeCK count** process.
    Step 4: Use MAGeCK test or MAGeCK MLE to calculate the enrichment.
    Step 5: Use R for plotting and data visualization.
 ## Step 1: Since the transmembrane region sequence ranges from 60 to 78 base pairs, the adapter sequences need to be trimmed first. This can be done using **cutadapt**. You can process the forward and reverse NGS results by using the scripts **cut1.sh** and **cut2.sh** for the forward and reverse reads, respectively.


