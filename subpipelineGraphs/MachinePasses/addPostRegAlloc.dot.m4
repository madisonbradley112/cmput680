include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  RISCV_REDUNDANT_COPY_ELIMINATION_PASS
  EXIT

  Entry -> RISCVRedundantCopyEliminationPass -> Exit
  
   label = "addPostRegAlloc"; 
  }
}