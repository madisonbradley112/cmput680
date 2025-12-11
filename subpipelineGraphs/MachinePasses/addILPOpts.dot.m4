include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  MACHINE_COMBINER_PASS
  EXIT

  
  Entry -> MachineCombiner -> Exit
  Entry -> Exit
   label = "addILPOpts"; 
  }
}