include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  SJ_LJ_EH_PREPARE_PASS
  DWARF_EH_PASS_PASS
  WIN_EH_PASS_PASS
  WASM_EH_PASS_PASS
  LOWER_INVOKE_PASS
  UNREACHABLE_BLOCK_ELIMINATION_PASS

  EXIT

  Entry -> SjLjEHPreparePass -> DwarfEHPass -> Exit
  Entry -> DwarfEHPass
  Entry -> WinEHPass -> DwarfEHPass
  WinEHPass -> WasmEHPass -> Exit
  Entry -> LowerInvokePass -> UnreachableBlockEliminationPass -> Exit
  
   label = "addPassesToHandleExceptions"; 
  }
}