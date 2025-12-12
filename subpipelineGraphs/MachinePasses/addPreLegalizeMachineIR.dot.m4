include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  RISCV_O0_PRE_LEGALIZER_COMBINER_PASS
  RISCV_PRE_LEGALIZER_COMBINER_PASS
  EXIT

  Entry -> Exit

  Entry -> RISCVO0PreLegalizerCombiner -> Exit
  Entry -> RISCVPreLegalizerCombiner -> Exit
  
   label = "addPreLegalizeMachineIR"; 
  }
}