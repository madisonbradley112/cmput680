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
  MIR_ADD_FS_DISCRIMINATORS_PASS
  MIR_PROFILE_LOADER_PASS
  MACHINE_BLOCK_PLACEMENT_PASS
  MACHINE_BLOCK_PLACEMENT_STATS_PASS
  EXIT

  Entry -> GCMachineCodeAnalysis -> MIRAddFSDiscriminatorsPass -> MachineBlockPlacement
  MIRAddFSDiscriminatorsPass -> MIRProfileLoaderPass -> MachineBlockPlacement -> Exit
  MachineBlockPlacement -> MachineBlockPlacementStats -> Exit
  
   label = "addBlockPlacement"; 
  }
}