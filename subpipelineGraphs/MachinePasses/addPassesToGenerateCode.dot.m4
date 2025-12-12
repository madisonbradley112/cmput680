include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  INVOKE_GLOBAL_TARGET_PASS_CONFIG_CALLBACKS_PASS
  ADD_ISEL_PASSES_PASS
  ADD_MACHINE_PASSES_PASS

  EXIT

  Entry -> invokeGlobalTargetPassConfigCallbacks -> addISelPasses -> addMachinePasses -> Exit
  
   label = "addPassesToGenerateCode"; 
  }
}