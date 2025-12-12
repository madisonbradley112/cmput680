include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  MACHINE_COPY_PROPAGATION_PASS
  RISCV_LATE_BRANCH_OPT_PASS_PASS
  RISCV_INDIRECT_BRANCH_TRACKING_PASS
  BRANCH_RELAXATION_PASS_PASS
  RISCV_MAKE_COMPRESSIBLE_OPT_PASS
  EXIT

  Entry -> MachineCopyPropagationPass -> RISCVLateBranchOptPass -> RISCVIndirectBranchTrackingPass -> BranchRelaxationPass -> RISCVMakeCompressibleOptPass -> Exit
  Entry -> RISCVLateBranchOptPass
  Entry -> RISCVIndirectBranchTrackingPass
  
   label = "addPreEmitPass"; 
  }
}