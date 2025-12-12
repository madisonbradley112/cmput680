include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  RISCV_PRE_RA_EXPAND_PSEUDO_PASS
  RISCV_MERGE_BASE_OFFSET_OPT_PASS
  RISCVVL_OPTIMIZER_PASS
  RISCV_PRE_ALLOC_ZILSD_OPT_PASS
  RISCV_INSERT_READ_WRITE_CSR_PASS
  RISCV_INSERT_WRITE_VXRM_PASS
  RISCV_LANDING_PAD_SETUP_PASS
  MACHINE_PIPELINER_PASS
  RISCVVMV0_ELIMINATION_PASS
  EXIT

  Entry -> RISCVPreRAExpandPseudoPass -> RISCVMergeBaseOffsetOptPass -> RISCVVLOptimizerPass -> RISCVPreAllocZilsdOptPass -> RISCVInsertReadWriteCSRPass -> RISCVInsertWriteVXRMPass -> RISCVLandingPadSetupPass -> MachinePipeliner -> RISCVVMV0EliminationPass -> Exit
  RISCVPreRAExpandPseudoPass -> RISCVInsertReadWriteCSRPass 
  RISCVLandingPadSetupPass -> RISCVVMV0EliminationPass 


   label = "addPreRegAlloc"; 
  }
}