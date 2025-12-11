include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  LOWER_EMU_TLS_PASS
  TARGET_TRANSFORM_INFO_WRAPPER_PASS
  PRE_ISEL_INTRINSIC_LOWERING_PASS
  EXPAND_LARGE_DIV_REM_PASS
  EXPAND_FP_PASS
  ADD_IR_PASSES_PASS
  ADD_CODE_GEN_PREPARE
  ADD_PASSES_TO_HANDLE_EXCEPTIONS_PASS
  ADD_ISEL_PREPARE
  ADD_CORE_ISEL_PASSES
  EXIT

  
  Entry -> LowerEmuTLSPass -> TargetTransformInfoWrapperPass
  Entry -> TargetTransformInfoWrapperPass -> PreISelIntrinsicLoweringPass -> ExpandLargeDivRemPass -> ExpandFPPass -> addIRPasses -> addCodeGenPrepare -> addPassesToHandleExceptions -> addISelPrepare -> addCoreISelPasses -> Exit
   label = "addISelPasses"; 
  }
}