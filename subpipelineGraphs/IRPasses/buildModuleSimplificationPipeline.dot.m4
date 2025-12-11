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
  PGO_INDIRECT_CALL_PROMOTION_PASS_1
  INFER_FUNCTION_ATTRS_PASS
  CORO_EARLY_PASS
  ENTRY_EXIT_INSTRUMENTER_PASS
  LOWER_EXPECT_INTRINSIC_PASS
  SIMPLIFY_CFG_PASS_1
  SROA_PASS
  EARLY_CSE_PASS
  CALL_SITE_SPLITTING_PASS
  SAMPLE_PROFILE_LOADER_PASS
  REQUIRE_ANALYSIS_PASS
  PGO_INDIRECT_CALL_PROMOTION_PASS_2
  OPENMP_OPT_PASS
  ATTRIBUTOR_PASS
  LOWER_TYPE_TESTS_PASS
  INVOKE_PIPELINE_EARLY_SIMPLIFICATION_EP_CALLBACKS_PASS
  IPSCCP_PASS
  CALLED_VALUE_PROPAGATION_PASS
  GLOBAL_OPT_PASS_1
  PROMOTE_PASS
  INST_COMBINE_PASS
  INVOKE_PEEPHOLE_EP_CALLBACKS_PASS
  SIMPLIFY_CFG_PASS_2
  ADD_PRE_INLINER_PASSES
  PGO_INSTRUMENTATION_GEN_PASS
  ASSIGN_GUID_PASS
  NOINLINE_NON_PREVAILING_PASS
  PGO_CTX_PROF_FLATTENING_PASS
  PGO_CTX_PROF_LOWERING_PASS
  ADD_POST_PGO_LOOP_ROTATION
  ADD_PGO_INSTR_PASSES
  PGO_INDIRECT_CALL_PROMOTION_PASS_3
  PGO_INSTRUMENTATION_GEN_CREATE_VAR_PASS
  MEM_PROF_USE_PASS
  PGO_FORCE_FUNCTION_ATTRS_PASS
  ALWAYS_INLINER_PASS
  BUILD_MODULE_INLINER_PIPELINE
  BUILD_INLINER_PIPELINE
  DEAD_ARGUMENT_ELIMINATION_PASS
  SIMPLIFY_TYPE_TESTS_PASS
  CORO_CLEANUP_PASS
  GLOBAL_OPT_PASS_2
  GLOBAL_DCE_PASS
  EXIT


  Entry -> SampleProfileProbePass 
  Entry -> PGOIndirectCallPromotion_1
  Entry -> InferFunctionAttrsPass 
  Entry -> OpenMPOptPass
  PGOIndirectCallPromotion_1 -> OpenMPOptPass
  SampleProfileProbePass -> PGOIndirectCallPromotion_1
  SampleProfileProbePass -> InferFunctionAttrsPass
  SampleProfileProbePass -> SampleProfileLoaderPass
  SampleProfileProbePass -> OpenMPOptPass
  InferFunctionAttrsPass -> CoroEarlyPass -> EntryExitInstrumenterPass -> LowerExpectIntrinsicPass -> SimplifyCFGPass_1 -> SROAPass -> EarlyCSEPass -> CallSiteSplittingPass 
  EarlyCSEPass -> SampleProfileLoaderPass
  EarlyCSEPass -> OpenMPOptPass
  CallSiteSplittingPass -> SampleProfileLoaderPass
  CallSiteSplittingPass -> OpenMPOptPass
  SampleProfileLoaderPass -> RequireAnalysisPass
  RequireAnalysisPass -> OpenMPOptPass
  RequireAnalysisPass -> PGOIndirectCallPromotion_2
  OpenMPOptPass -> AttributorPass -> LowerTypeTestsPass
  AttributorPass -> invokePipelineEarlySimplificationEPCallbacks
  OpenMPOptPass -> LowerTypeTestsPass
  OpenMPOptPass -> invokePipelineEarlySimplificationEPCallbacks
  invokePipelineEarlySimplificationEPCallbacks -> IPSCCPPass -> CalledValuePropagationPass -> GlobalOptPass_1 -> PromotePass -> InstCombinePass -> invokePeepholeEPCallbacks -> SimplifyCFGPass_2 -> PGOForceFunctionAttrsPass
  SimplifyCFGPass_2 -> PGOInstrumentationGenCreateVar
  SimplifyCFGPass_2 -> MemProfUsePass
  SimplifyCFGPass_2 -> AlwaysInlinerPass
  SimplifyCFGPass_2 -> addPreInlinerPasses -> addPGOInstrPasses -> PGOIndirectCallPromotion_3
  addPGOInstrPasses -> PGOInstrumentationGenCreateVar
  addPreInlinerPasses -> PGOInstrumentationGen -> AssignGUIDPass -> PGOCtxProfFlatteningPass -> Exit
  AssignGUIDPass -> NoinlineNonPrevailing -> addPostPGOLoopRotation -> PGOCtxProfLoweringPass -> PGOIndirectCallPromotion_3
  PGOInstrumentationGenCreateVar -> PGOForceFunctionAttrsPass
  PGOInstrumentationGenCreateVar -> MemProfUsePass
  PGOInstrumentationGenCreateVar -> AlwaysInlinerPass
  PGOIndirectCallPromotion_3 -> PGOInstrumentationGenCreateVar
  PGOIndirectCallPromotion_3 -> MemProfUsePass
  PGOIndirectCallPromotion_3 -> PGOForceFunctionAttrsPass
  PGOIndirectCallPromotion_3 -> AlwaysInlinerPass
  MemProfUsePass -> PGOForceFunctionAttrsPass 
  MemProfUsePass -> AlwaysInlinerPass
  AlwaysInlinerPass -> buildModuleInlinerPipeline -> DeadArgumentEliminationPass
  AlwaysInlinerPass -> buildInlinerPipeline -> DeadArgumentEliminationPass
  DeadArgumentEliminationPass -> CoroCleanupPass
  DeadArgumentEliminationPass -> SimplifyTypeTestsPass
  DeadArgumentEliminationPass -> GlobalOptPass_2 
  SimplifyTypeTestsPass -> CoroCleanupPass
  SimplifyTypeTestsPass -> GlobalOptPass_2
  GlobalOptPass_2 -> GlobalDCEPass -> Exit
  PGOIndirectCallPromotion_2 -> OpenMPOptPass
  LowerTypeTestsPass -> invokePipelineEarlySimplificationEPCallbacks
  PGOForceFunctionAttrsPass -> AlwaysInlinerPass
  CoroCleanupPass -> GlobalOptPass_2
   label = "buildModuleSimplificationPipeline"; 
  }
}