include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  SROA_PASS
  EARLY_CSE_PASS
  SIMPLIFY_CFG_PASS
  INST_COMBINE_PASS
  INVOKE_PEEPHOLE_EP_CALLBACKS_PASS
  GLOBAL_DCE_PASS
  EXIT

  Entry -> SROAPass -> EarlyCSEPass -> SimplifyCFGPass -> InstCombinePass -> invokePeepholeEPCallbacks -> GlobalDCEPass -> Exit
   label = "addPreInlinerPasses"; 
  }
}