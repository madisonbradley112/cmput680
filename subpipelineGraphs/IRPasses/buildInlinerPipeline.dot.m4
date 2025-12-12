include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  REQUIRE_ANALYSIS_PASS_1
  INVALIDATE_ANALYSIS_PASS_1
  REQUIRE_ANALYSIS_PASS_2
  ATTRIBUTOR_CGSCC_PASS
  POST_ORDER_FUNCTION_ATTRS_PASS_1
  ARGUMENT_PROMOTION_PASS
  OPENMP_OPT_CGSCC_PASS
  INVOKE_CGSCC_OPTIMIZER_LATE_EP_CALLBACKS_PASS
  BUILD_FUNCTION_SIMPLIFICATION_PIPELINE
  POST_ORDER_FUNCTION_ATTRS_PASS_2
  REQUIRE_ANALYSIS_PASS_3
  CORO_SPLIT_PASS 
  CORO_ANNOTATION_ELIDE_PASS
  INVALIDATE_ANALYSIS_PASS_2
  EXIT

  Entry -> RequireAnalysisPass_1 -> InvalidateAnalysisPass_1 -> RequireAnalysisPass_2 -> AttributorCGSCCPass -> PostOrderFunctionAttrsPass_1 -> ArgumentPromotionPass -> OpenMPOptCGSCCPass -> invokeCGSCCOptimizerLateEPCallbacks -> buildFunctionSimplificationPipeline -> PostOrderFunctionAttrsPass_2 -> RequireAnalysisPass_3 -> CoroSplitPass -> CoroAnnotationElidePass -> InvalidateAnalysisPass_2 -> Exit 
  Entry -> RequireAnalysisPass_2 
  RequireAnalysisPass_2 -> PostOrderFunctionAttrsPass_2 
  PostOrderFunctionAttrsPass_1 -> OpenMPOptCGSCCPass 
  PostOrderFunctionAttrsPass_1 -> invokeCGSCCOptimizerLateEPCallbacks 
  RequireAnalysisPass_3 -> InvalidateAnalysisPass_2

   label = "buildInlinerPipeline"; 
  }
}