include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  TYPE_PROMOTION_PASS
  CODEGEN_PREPARE_PASS
  EXIT

  Entry -> TypePromotionLegacyPass -> CodeGenPrepareLegacyPass -> Exit
  TypePromotionLegacyPass -> Exit
  
   label = "addCodeGenPrepare"; 
  }
}