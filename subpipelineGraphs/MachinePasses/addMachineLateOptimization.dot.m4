include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  MACHINE_LATE_INSTRS_CLEANUP_PASS
  BRANCH_FOLDER_PASS
  TAIL_DUPLICATE_LEGACY_PASS
  MACHINE_COPY_PROPAGATION_PASS
  EXIT

  
  Entry -> MachineLateInstrsCleanup -> BranchFolderPass
  BranchFolderPass -> TailDuplicateLegacy -> MachineCopyPropagation
  BranchFolderPass -> MachineCopyPropagation
  MachineCopyPropagation -> Exit

  
   label = "addMachineLateOptimization"; 
  }
}