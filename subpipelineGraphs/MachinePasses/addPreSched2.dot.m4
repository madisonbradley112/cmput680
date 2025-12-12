include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  RISCV_POST_RA_EXPAND_PSEUDO_PASS
  KCFI_PASS
  RISCV_LOAD_STORE_OPT_PASS
  EXIT

  Entry -> RISCVPostRAExpandPseudoPass -> KCFIPass -> RISCVLoadStoreOptPass -> Exit
  KCFIPass -> Exit
  
   label = "addPreSched2"; 
  }
}