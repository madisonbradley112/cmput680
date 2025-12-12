include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  RISCV_MOVE_MERGE_PASS
  RISCV_PUSH_POP_OPTIMIZATION_PASS
  RISCV_EXPAND_PSEUDO_PASS
  RISCV_EXPAND_ATOMIC_PSEUDO_PASS
  UNPACK_MACHINE_BUNDLES
  CFI_INSTR_INSERTER_PASS
  EXIT
  
  Entry -> RISCVMoveMergePass -> RISCVPushPopOptimizationPass -> RISCVExpandPseudoPass -> RISCVExpandAtomicPseudoPass -> UnpackMachineBundles -> CFIInstrInserter -> Exit 
  Entry -> RISCVExpandPseudoPass
  UnpackMachineBundles -> Exit

   label = "addPreEmitPass2"; 
  }
}