include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  RVV_REG_ALLOC_PASS
  RISCV_INSERT_VSETVLI_PASS_PASS
  RISCV_DEAD_REGISTER_DEFINITIONS_PASS
  REG_ALLOC_PASS 
  ADD_PRE_REWRITE 
  VIRT_REG_REWRITER_1
  VIRT_REG_REWRITER_2
  REG_ALLOC_SCORING_PASS

  EXIT

  Entry -> RVVRegAllocPass -> VirtRegRewriter_1 -> RISCVInsertVSETVLIPass -> RISCVDeadRegisterDefinitionsPass -> RegAllocPass -> addPreRewrite -> VirtRegRewriter_2 -> RegAllocScoringPass -> Exit
  RISCVInsertVSETVLIPass -> RegAllocPass
  
   label = "addRegAssignAndRewriteOptimized"; 
  }
}