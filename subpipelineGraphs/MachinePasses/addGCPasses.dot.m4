include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  GC_MACHINE_CODE_ANALYSIS_PASS
  EXIT

  
  Entry -> GCMachineCodeAnalysis -> Exit
   label = "addGCPasses"; 
  }
}