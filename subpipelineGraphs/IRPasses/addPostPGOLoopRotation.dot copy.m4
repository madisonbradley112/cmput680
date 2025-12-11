include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  LOOP_ROTATE_PASS
  EXIT

  Entry -> LoopRotatePass -> Exit
   label = "addPostPGOLoopRotation"; 
  }
}