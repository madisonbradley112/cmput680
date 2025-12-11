include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  PARTIAL_INLINER_PASS
  REVERSE_POST_ORDER_FUNCTION_ATTRS
  ADD_PGO_INSTR_PASSES
  RECOMPUTE_GLOBALS_AA_PASS
  INVOKE_OPTIMIZER_EARLY_EP_CALLBACKS_PASS
  DROP_UNNECESSARY_ASSUMES_PASS
  LOOP_VERSIONING_LICM_PASS
  LICM_PASS
  FLOAT_2_INT_PASS
  LOWER_CONSTANT_INTRINSICS_PASS
  LOWER_MATRIX_INTRINSICS_PASS
  EARLY_CSE_PASS
  CONTROL_HEIGHT_REDUCTION_PASS
  INVOKE_VECTORIZER_START_EP_CALLBACKS_PASS
  LOOP_ROTATE_PASS
  LOOP_DELETION_PASS
  LOOP_INTERCHANGE_PASS
  LOOP_FUSE_PASS
  LOOP_DISTRIBUTE_PASS
  INJECT_TLI_MAPPINGS_PASS
  ADD_VECTOR_PASSES
  INVOKE_VECTORIZER_END_EP_CALLBACKS_PASS
  LOOP_SINK_PASS
  INST_SIMPLIFY_PASS
  DIV_REM_PAIRS_PASS
  TAIL_CALL_ELIM_PASS
  SIMPLIFY_CFG_PASS
  INVOKE_OPTIMIZER_LAST_EP_CALLBACKS_PASS
  HOT_COLD_SPLITTING_PASS
  IROUTLINER_PASS
  GLOBAL_DCE_PASS
  CONSTANT_MERGE_PASS
  MERGE_FUNCTIONS_PASS
  CG_PROFILE_PASS
  REL_LOOKUP_TABLE_CONVERTER_PASS
  EXIT

  Entry -> PartialInlinerPass -> ReversePostOrderFunctionAttrsPass 
  Entry -> ReversePostOrderFunctionAttrsPass -> addPGOInstrPasses -> invokeOptimizerEarlyEPCallbacks
  ReversePostOrderFunctionAttrsPass -> RecomputeGlobalsAAPass -> invokeOptimizerEarlyEPCallbacks
  ReversePostOrderFunctionAttrsPass -> invokeOptimizerEarlyEPCallbacks
  addPGOInstrPasses -> RecomputeGlobalsAAPass
  invokeOptimizerEarlyEPCallbacks -> DropUnnecessaryAssumesPass -> Float2IntPass
  invokeOptimizerEarlyEPCallbacks -> LoopVersioningLICMPass -> LICMPass -> Float2IntPass
  invokeOptimizerEarlyEPCallbacks -> Float2IntPass
  DropUnnecessaryAssumesPass -> LoopVersioningLICMPass
  Float2IntPass -> LowerConstantIntrinsicsPass -> LowerMatrixIntrinsicsPass -> EarlyCSEPass -> invokeVectorizerStartEPCallbacks
  EarlyCSEPass -> ControlHeightReductionPass
  LowerConstantIntrinsicsPass -> ControlHeightReductionPass 
  ControlHeightReductionPass -> invokeVectorizerStartEPCallbacks
  LowerConstantIntrinsicsPass -> invokeVectorizerStartEPCallbacks
  invokeVectorizerStartEPCallbacks -> LoopRotatePass -> LoopDeletionPass -> LoopInterchangePass -> LoopFusePass -> LoopDistributePass
  LoopDeletionPass -> LoopFusePass
  LoopDeletionPass -> LoopDistributePass
  LoopDistributePass -> InjectTLIMappings -> addVectorPasses -> invokeVectorizerEndEPCallbacks -> LoopSinkPass -> InstSimplifyPass -> DivRemPairsPass -> TailCallElimPass -> SimplifyCFGPass -> invokeOptimizerLastEPCallbacks -> HotColdSplittingPass -> GlobalDCEPass
  HotColdSplittingPass -> IROutlinerPass -> GlobalDCEPass
  invokeOptimizerLastEPCallbacks -> IROutlinerPass
  invokeOptimizerLastEPCallbacks -> GlobalDCEPass 
  GlobalDCEPass -> ConstantMergePass -> MergeFunctionsPass -> RelLookupTableConverterPass
  MergeFunctionsPass -> CGProfilePass -> RelLookupTableConverterPass
  ConstantMergePass -> CGProfilePass
  ConstantMergePass -> RelLookupTableConverterPass
  RelLookupTableConverterPass -> Exit
   label = "buildModuleOptimizationPipeline"; 
  }
}