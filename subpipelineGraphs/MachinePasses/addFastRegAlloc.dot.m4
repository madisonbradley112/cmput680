include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  INIT_UNDEF_PASS
  PHI_ELIMINATION_PASS
  TWO_ADDRESS_INSTRUCTION_PASS_PASS
  ADD_REG_ASSIGN_AND_REWRITE_FAST_PASS
  EXIT

  
  Entry -> InitUndef -> PHIElimination -> TwoAddressInstructionPass -> addRegAssignAndRewriteFast -> Exit
   label = "addFastRegAlloc"; 
  }
}