include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  RISCV_PROMOTE_CONSTANT_PASS
  BARRIER_NOOP_PASS_PASS
  GLOBAL_MERGE_PASS
  EXIT

  Entry -> Exit

  Entry -> RISCVPromoteConstantPass -> BarrierNoopPass -> GlobalMergePass -> Exit 
  BarrierNoopPass -> Exit
  
   label = "addPreISel"; 
  }
}