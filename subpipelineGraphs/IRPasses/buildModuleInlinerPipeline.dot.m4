include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  MODULE_INLINER_PASS
  GLOBAL_OPT_PASS
  GLOBAL_DCE_PASS
  PGO_CTX_PROF_FLATTENING_PASS
  BUILD_FUNCTION_SIMPLIFICATION_PIPELINE
  CORO_SPLIT_PASS
  CORO_ANNOTATION_ELIDE_PASS
  EXIT

  Entry -> ModuleInlinerPass -> buildFunctionSimplificationPipeline -> Exit
  ModuleInlinerPass -> GlobalOptPass -> GlobalDCEPass -> PGOCtxProfFlatteningPass -> buildFunctionSimplificationPipeline -> CoroSplitPass -> CoroAnnotationElidePass -> Exit
   label = "buildModuleInlinerPipeline"; 
  }
}