include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  CORO_EARLY_PASS
  CORO_SPLIT_PASS
  CORO_CLEANUP_PASS
  GLOBAL_DCE_PASS
  EXIT

  Entry -> CoroEarlyPass -> CoroSplitPass -> CoroCleanupPass -> GlobalDCEPass -> Exit
   label = "buildCoroWrapper"; 
  }
}