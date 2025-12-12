include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  RISCV_POST_LEGALIZER_COMBINER
  EXIT

  Entry -> Exit
  Entry -> RISCVPostLegalizerCombiner -> Exit


   label = "addPreRegBankSelect"; 
  }
}