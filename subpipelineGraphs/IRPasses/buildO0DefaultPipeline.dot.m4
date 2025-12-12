include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  SAMPLE_PROFILE_PROBE_PASS
  ADD_PGO_INSTR_PASSES_FOR_O0
  ENTRY_EXIT_INSTRUMENTER_PASS
  INVOKE_PIPELINE_START_EP_CALLBACKS_PASS
  SAMPLE_PROFILE_LOADER_PASS
  ADD_DISCRIMINATORS_PASS
  REQUIRE_ANALYSIS_PASS
  INVOKE_PIPELINE_EARLY_SIMPLIFICATION_EP_CALLBACKS_PASS
  ALWAYS_INLINER_PASS
  MERGE_FUNCTIONS_PASS
  LOWER_MATRIX_INTRINSICS_PASS
  INVOKE_CGSCC_OPTIMIZER_LATE_EP_CALLBACKS_PASS
  INVOKE_LATE_LOOP_OPTIMIZATIONS_EP_CALLBACKS_PASS
  INVOKE_LOOP_OPTIMIZER_END_EP_CALLBACKS_PASS
  INVOKE_SCALAR_OPTIMIZER_LATE_EP_CALLBACKS_PASS
  INVOKE_OPTIMIZER_EARLY_EP_CALLBACKS_PASS
  INVOKE_VECTORIZER_START_EP_CALLBACKS_PASS
  INVOKE_VECTORIZER_END_EP_CALLBACKS_PASS
  BUILD_CORO_WRAPPER
  INVOKE_OPTIMIZER_LAST_EP_CALLBACKS_PASS
  ADD_REQUIRED_LTO_PRE_LINK_PASSES
  ANNOTATION_REMARKS_PASS
  ALLOC_TOKEN_PASS
  EXIT

  Entry -> SampleProfileProbePass -> EntryExitInstrumenterPass
  SampleProfileProbePass -> addPGOInstrPassesForO0
  Entry -> EntryExitInstrumenterPass
  Entry -> addPGOInstrPassesForO0 -> EntryExitInstrumenterPass
  EntryExitInstrumenterPass -> invokePipelineStartEPCallbacks -> AddDiscriminatorsPass -> invokePipelineEarlySimplificationEPCallbacks
  invokePipelineStartEPCallbacks -> invokePipelineEarlySimplificationEPCallbacks -> AlwaysInlinerPass
  invokePipelineStartEPCallbacks -> SampleProfileLoaderPass -> RequireAnalysisPass -> invokePipelineEarlySimplificationEPCallbacks
  AlwaysInlinerPass -> MergeFunctionsPass -> LowerMatrixIntrinsicsPass -> invokeCGSCCOptimizerLateEPCallbacks -> invokeLateLoopOptimizationsEPCallbacks -> invokeLoopOptimizerEndEPCallbacks -> invokeScalarOptimizerLateEPCallbacks -> invokeOptimizerEarlyEPCallbacks
  AlwaysInlinerPass -> LowerMatrixIntrinsicsPass
  AlwaysInlinerPass -> invokeCGSCCOptimizerLateEPCallbacks
  AlwaysInlinerPass -> invokeLateLoopOptimizationsEPCallbacks 
  AlwaysInlinerPass -> invokeLoopOptimizerEndEPCallbacks 
  AlwaysInlinerPass -> invokeScalarOptimizerLateEPCallbacks
  AlwaysInlinerPass -> invokeOptimizerEarlyEPCallbacks

  MergeFunctionsPass -> invokeCGSCCOptimizerLateEPCallbacks
  MergeFunctionsPass -> invokeLateLoopOptimizationsEPCallbacks 
  MergeFunctionsPass -> invokeLoopOptimizerEndEPCallbacks 
  MergeFunctionsPass -> invokeScalarOptimizerLateEPCallbacks
  MergeFunctionsPass -> invokeOptimizerEarlyEPCallbacks

  LowerMatrixIntrinsicsPass -> invokeLateLoopOptimizationsEPCallbacks 
  LowerMatrixIntrinsicsPass -> invokeLoopOptimizerEndEPCallbacks 
  LowerMatrixIntrinsicsPass -> invokeScalarOptimizerLateEPCallbacks
  LowerMatrixIntrinsicsPass -> invokeOptimizerEarlyEPCallbacks

  invokeCGSCCOptimizerLateEPCallbacks -> invokeLoopOptimizerEndEPCallbacks 
  invokeCGSCCOptimizerLateEPCallbacks -> invokeScalarOptimizerLateEPCallbacks
  invokeCGSCCOptimizerLateEPCallbacks -> invokeOptimizerEarlyEPCallbacks

  invokeLateLoopOptimizationsEPCallbacks -> invokeScalarOptimizerLateEPCallbacks
  invokeLateLoopOptimizationsEPCallbacks -> invokeOptimizerEarlyEPCallbacks

  invokeLoopOptimizerEndEPCallbacks -> invokeOptimizerEarlyEPCallbacks

  invokeOptimizerEarlyEPCallbacks -> invokeVectorizerStartEPCallbacks
  invokeOptimizerEarlyEPCallbacks -> invokeVectorizerEndEPCallbacks
  invokeVectorizerStartEPCallbacks -> invokeVectorizerEndEPCallbacks -> buildCoroWrapper -> AllocTokenPass -> invokeOptimizerLastEPCallbacks
  buildCoroWrapper -> invokeOptimizerLastEPCallbacks 
  invokeOptimizerLastEPCallbacks -> addRequiredLTOPreLinkPasses -> AnnotationRemarksPass
  invokeOptimizerLastEPCallbacks -> AnnotationRemarksPass
  AnnotationRemarksPass -> Exit
  invokeOptimizerEarlyEPCallbacks -> buildCoroWrapper
  invokeVectorizerStartEPCallbacks -> buildCoroWrapper

   label = "buildO0DefaultPipeline"; 
  }
}