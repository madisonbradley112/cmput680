include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  ANNOTATION_REMARKS_PASS
  EXIT

  Entry -> AnnotationRemarksPass -> Exit
   label = "addAnnotationRemarksPass"; 
  }
}