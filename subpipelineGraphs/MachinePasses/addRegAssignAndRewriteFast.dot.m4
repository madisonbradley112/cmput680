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
  ADD_POST_FAST_REG_ALLOC_REWRITE
  EXIT

  Entry -> RVVRegAllocPass -> RISCVInsertVSETVLIPass -> RISCVDeadRegisterDefinitionsPass -> RegAllocPass -> addPostFastRegAllocRewrite -> Exit
  RISCVInsertVSETVLIPass -> RegAllocPass
  
   label = "addRegAssignAndRewriteFast"; 
  }
}