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
  SIMPLIFY_CFG_PASS_1
  INST_COMBINE_PASS_1
  LIB_CALLS_SHRINK_WRAP_PASS
  INVOKE_PEEPHOLE_EP_CALLBACKS_PASS_1
  SIMPLIFY_CFG_PASS_2
  REASSOCIATE_PASS
  LOOP_INST_SIMPLIFY_PASS
  LOOP_SIMPLIFY_CFG_PASS
  LICM_PASS_1
  LOOP_ROTATE_PASS
  LICM_PASS_2
  SIMPLE_LOOP_UNSWITCH_PASS
  LOOP_FLATTEN_PASS
  LOOP_IDIOM_RECOGNIZE_PASS
  LOOP_IND_VAR_SIMPLIFY_PASS
  INVOKE_LATE_LOOP_OPTIMIZATIONS_EP_CALLBACKS_PASS
  LOOP_DELETION_PASS
  LOOP_FULL_UNROLL_PASS
  INVOKE_LOOP_OPTIMIZER_END_EP_CALLBACKS_PASS
  SIMPLIFY_CFG_PASS_3
  INST_COMBINE_PASS_2
  SROA_PASS_2
  MEM_CPY_OPT_PASS
  SCCP_PASS
  BDCE_PASS
  INST_COMBINE_PASS_3
  INVOKE_PEEPHOLE_EP_CALLBACKS_PASS_2
  CORO_ELIDE_PASS
  INVOKE_SCALAR_OPTIMIZER_LATE_EP_CALLBACKS_PASS
  ADCE_PASS
  SIMPLIFY_CFG_PASS_4
  INST_COMBINE_PASS_4
  INVOKE_PEEPHOLE_EP_CALLBACKS_PASS_3
  EXIT

  Entry -> CountVisitsPass -> SROAPass_1
  Entry ->SROAPass_1 -> EarlyCSEPass -> SimplifyCFGPass_1 -> InstCombinePass_1 -> LibCallsShrinkWrapPass -> invokePeepholeEPCallbacks_1 -> SimplifyCFGPass_2 -> ReassociatePass -> LoopInstSimplifyPass -> LoopSimplifyCFGPass -> LICMPass_1 -> LoopRotatePass -> LICMPass_2 -> SimpleLoopUnswitchPass -> LoopFlattenPass  -> LoopIdiomRecognizePass -> IndVarSimplifyPass -> invokeLateLoopOptimizationsEPCallbacks -> LoopDeletionPass -> LoopFullUnrollPass -> invokeLoopOptimizerEndEPCallbacks
  LoopDeletionPass -> invokeLoopOptimizerEndEPCallbacks -> SimplifyCFGPass_3 -> InstCombinePass_2 -> SROAPass_2 -> MemCpyOptPass -> SCCPPass -> BDCEPass -> InstCombinePass_3 -> invokePeepholeEPCallbacks_2 -> CoroElidePass -> invokeScalarOptimizerLateEPCallbacks -> ADCEPass -> SimplifyCFGPass_4 -> InstCombinePass_4 -> invokePeepholeEPCallbacks_3 -> Exit
   label = "buildO1FunctionSimplificationPipeline"; 
  }
}