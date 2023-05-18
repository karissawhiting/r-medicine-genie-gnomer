---
  format: 
  revealjs: 
  theme:  [default, style.scss]
transition: fade
slide-number: true
execute:
  echo: true 
output: asis
editor: source
---
  
# Analyzing Data {background-color="#007CBA" style="text-align: center;"}

# {genieBPC} + {gnomeR} Pipeline

![](images/genie-gnomer-pipline.png)
## Case Study??

Maybe use a case study as example. If so, add an analysis slide with clinical endpoint data

## Analyzing Data: Issues/Steps To Address

EDIT THIS DOWN AND ALSO ADD PATHWAYS 

1) **Summarizing on Alteration or Gene Levels** 
  
  2) **Multiple Testing and False Positives**
  - Very low prevalence genes are often not very informative in standard IMPACT analyses. Choose a threshold (e.g. 1% or 5 %) _a prior_ to limit number of tests. 
- Report q-value (adjusted for multiple testing)

2) **Limited Power To Detect With Sparse Alterations**  
  - Pathways

MAKE THIS MORE GENERAL, Maybe add a slide on Z score - omit maybe 
3) **Analyzing Tumor Mutation Burden Across Samples**
  - Although TMB is always measured as number of mutations per coding area, depth of sequencing can make this measure inconsistent between studies. 
- Usually ok within IMPACT studies but not always comparable with WES studies

4) **OncoKB Annotation**
  - Some studies may require oncoKB annotation of data

5) CNA segmentation data???? - Maybe 

## Analyzing Data: Summarize Data with tbl_genomic()

```{r}

```

## Analyzing Data: Summarize Data with tbl_genomic()

May want to analyze on the gene level only
Use summarize_by_gene() first

```{r}

```

## Analyzing Data: Multiple Testing

Ct=u t this down or omit

- Because each hypothesis test has a probability of producing a type I error (falsely rejecting a null hypothesis that is true), performing a large number of hypothesis tests virtually guarantees the presence of type I errors among the findings.

- Firstly, depending on size of data and type of analysis, choose a prevalence threshold for genes to test

- [Report tests with adjustment]{.emphasized}- Recommended to use false discovery rate adjustment as opposed to FWER (eg. bonferroni) as it controls for a low proportion of false positives, instead of guarding against making any false positive conclusion at all

- Reference: Goeman JJ, Solari A. Multiple hypothesis testing in genomics. Stat Med. 2014 May 20;33(11):1946-78. doi: 10.1002/sim.6082. Epub 2014 Jan 8. PMID: 24399688.

Keep this 
Helper Functions for Multiple Testing: 
  
  - subset_by_frequency
- subset_by_panel 
- tbl_genomic()

## Analyzing Data: Pathways

## Analyzing Data: Data Visualization

- could also mention color palettes 
- CNA heatmap?
  
  ## Summary
  
  ## Misc
  - oncoKB
- oncoprints, etc 
- CNA?
  