include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  COUNT_VISITS_PASS
  SROA_PASS_1
  EARLY_CSE_PASS
  BUILD_O1_FUNCTION_SIMPLIFICATION_PIPELINE
  ASSUME_SIMPLIFY_PASS
  GVN_HOIST_PASS
  GVN_SINK_PASS
  SIMPLIFY_CFG_PASS_1
  SPECULATIVE_EXECUTION_PASS
  JUMP_THREADING_PASS_1
  CORRELATED_VALUE_PROPAGATION_PASS_1
  JUMP_TABLE_TO_SWITCH_PASS
  SIMPLIFY_CFG_PASS_2
  INST_COMBINE_PASS_1
  AGGRESSIVE_INST_COMBINE_PASS
  LIB_CALLS_SHRINK_WRAP_PASS
  INVOKE_PEEPHOLE_EP_CALLBACKS_PASS_1
  PGO_MEM_OP_SIZE_OPT
  TAIL_CALL_ELIM_PASS
  SIMPLIFY_CFG_PASS_3
  REASSOCIATE_PASS
  CONSTRAINT_ELIMINATION_PASS
  LOOP_INST_SIMPLIFY_PASS
  LOOP_SIMPLIFY_CFG_PASS
  LICM_PASS_1
  LOOP_ROTATE_PASS
  LICM_PASS_2
  SIMPLE_LOOP_UNSWITCH_PASS_1
  LOOP_FLATTEN_PASS
  LOOP_IDIOM_RECOGNIZE_PASS
  LOOP_IND_VAR_SIMPLIFY_PASS
  SIMPLE_LOOP_UNSWITCH_PASS_2
  INVOKE_LATE_LOOP_OPTIMIZATIONS_EP_CALLBACKS_PASS
  LOOP_DELETION_PASS
  LOOP_FULL_UNROLL_PASS
  INVOKE_LOOP_OPTIMIZER_END_EP_CALLBACKS_PASS
  SIMPLIFY_CFG_PASS_4
  INST_COMBINE_PASS_2
  SROA_PASS_2
  VECTOR_COMBINE_PASS
  MERGED_LOAD_STORE_MOTION_PASS
  GVN_PASS 
  NEW_GVN_PASS
  SCCP_PASS
  BDCE_PASS
  INST_COMBINE_PASS_3
  INVOKE_PEEPHOLE_EP_CALLBACKS_PASS_2
  DFA_JUMP_THREADING_PASS
  JUMP_THREADING_PASS_2
  CORRELATED_VALUE_PROPAGATION_PASS_2
  ADCE_PASS
  MEM_CPY_OPT_PASS
  DSE_PASS 
  MOVE_AUTO_INIT_PASS
  LICM_PASS_3
  CORO_ELIDE_PASS
  INVOKE_SCALAR_OPTIMIZER_LATE_EP_CALLBACKS_PASS
  SIMPLIFY_CFG_PASS_5
  INST_COMBINE_PASS_4
  INVOKE_PEEPHOLE_EP_CALLBACKS_PASS_3
  EXIT

  Entry -> buildO1FunctionSimplificationPipeline -> Exit
  Entry -> CountVisitsPass -> SROAPass_1
  Entry -> SROAPass_1 -> EarlyCSEPass -> GVNHoistPass  -> SpeculativeExecutionPass 
  EarlyCSEPass -> AssumeSimplifyPass -> GVNHoistPass 
  AssumeSimplifyPass -> SpeculativeExecutionPass 
  AssumeSimplifyPass -> GVNSinkPass 
  GVNHoistPass -> GVNSinkPass
  EarlyCSEPass -> GVNSinkPass
  GVNSinkPass -> SimplifyCFGPass_1 -> SpeculativeExecutionPass
  SpeculativeExecutionPass -> JumpThreadingPass_1 -> CorrelatedValuePropagationPass_1 -> JumpTableToSwitchPass -> SimplifyCFGPass_2
  CorrelatedValuePropagationPass_1 -> SimplifyCFGPass_2 -> InstCombinePass_1 -> AggressiveInstCombinePass -> LibCallsShrinkWrapPass -> invokePeepholeEPCallbacks_1
  AggressiveInstCombinePass -> invokePeepholeEPCallbacks_1 -> PGOMemOPSizeOpt -> TailCallElimPass
  invokePeepholeEPCallbacks_1 -> TailCallElimPass -> SimplifyCFGPass_3 -> ReassociatePass -> ConstraintEliminationPass -> LoopInstSimplifyPass
  ReassociatePass -> LoopInstSimplifyPass -> LoopSimplifyCFGPass -> LICMPass_1 -> LoopRotatePass -> LICMPass_2 -> SimpleLoopUnswitchPass_1 -> LoopFlattenPass -> LoopIdiomRecognizePass
  SimpleLoopUnswitchPass_1 -> LoopIdiomRecognizePass -> IndVarSimplifyPass -> SimpleLoopUnswitchPass_2 -> invokeLateLoopOptimizationsEPCallbacks -> LoopDeletionPass -> LoopFullUnrollPass -> invokeLoopOptimizerEndEPCallbacks
  LoopDeletionPass -> invokeLoopOptimizerEndEPCallbacks -> SimplifyCFGPass_4 -> InstCombinePass_2 -> SROAPass_2 -> VectorCombinePass -> MergedLoadStoreMotionPass -> GVNPass -> SCCPPass
  MergedLoadStoreMotionPass -> NewGVNPass -> SCCPPass -> BDCEPass -> InstCombinePass_3 -> invokePeepholeEPCallbacks_2 -> JumpThreadingPass_2 
  invokePeepholeEPCallbacks_2 -> DFAJumpThreadingPass -> JumpThreadingPass_2 -> CorrelatedValuePropagationPass_2 -> ADCEPass -> MemCpyOptPass -> DSEPass -> MoveAutoInitPass -> LICMPass_3 -> CoroElidePass -> invokeScalarOptimizerLateEPCallbacks -> SimplifyCFGPass_5 -> InstCombinePass_4 -> invokePeepholeEPCallbacks_3 -> Exit
   label = "buildFunctionSimplificationPipeline"; 
  }
}