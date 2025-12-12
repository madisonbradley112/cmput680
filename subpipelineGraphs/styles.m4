define(`COLORS_LEGEND', `
subgraph cluster_1 {
    edge [style=invis];
    node [shape=box]
    no_impact [style=filled,color=lightgray];
    minimal_impact [style=filled,color=orange];
    medium_impact [style=filled,color=yellow];
    high_impact [style=filled,color=green];
    plugin_dependent [style=filled,color=pink];
    no_impact -> minimal_impact -> medium_impact -> high_impact -> plugin_dependent;
    label = "Legend: Layout Impact"
    plugin_dependent -> legend_spacer_1
    legend_spacer_1 [label="", width=2.5, height=0, shape=box, style=invis];
 }
')

define(`SHAPES_LEGEND', `
subgraph cluster_2 {
    edge [style=invis];
    pass [shape=box];
    subpipeline [shape=oval];
    callback [shape=parallelogram];
    helper_function [shape=hexagon]
    pass -> subpipeline -> helper_function -> callback;
    label = "Legend: Pass Type"
    legend_spacer_1 -> pass
    callback -> legend_spacer_2
    legend_spacer_2 [label="", width=2.5, height=0, shape=box, style=invis];
 }
')

define(`ENTRY', `
Entry [
    label="Entry",
    shape=box,
    fillcolor=lightgray
];
')

define(`EXIT', `
Exit [
    label="Exit",
    shape=box,
    fillcolor=lightgray
];
')

dnl =========================
dnl HIGH impact passes
dnl =========================

define(`ALWAYS_INLINER_PASS', `
AlwaysInlinerPass [
    label="AlwaysInlinerPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`CONTROL_HEIGHT_REDUCTION_PASS', `
ControlHeightReductionPass [
    label="ControlHeightReductionPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`ADD_VECTOR_PASSES', `
addVectorPasses [
    label="addVectorPasses",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_PRE_INLINER_PASSES', `
addPreInlinerPasses [
    label="addPreInlinerPasses",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`BUILD_MODULE_INLINER_PIPELINE', `
buildModuleInlinerPipeline [
    label="buildModuleInlinerPipeline",
    shape=oval,
    style=filled,
    color=green
];
')

define(`BUILD_INLINER_PIPELINE', `
buildInlinerPipeline [
    label="buildInlinerPipeline",
    shape=oval,
    style=filled,
    color=green
];
')

define(`ADD_PGO_INSTR_PASSES', `
addPGOInstrPasses [
    label="addPGOInstrPasses",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_PGO_INSTR_PASSES_FOR_O0', `
addPGOInstrPassesForO0 [
    label="addPGOInstrPassesForO0",
    shape=hexagon,
    style=filled,
    color=yellow
];
')

define(`REVERSE_POST_ORDER_FUNCTION_ATTRS', `
ReversePostOrderFunctionAttrsPass [
    label="ReversePostOrderFunctionAttrsPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`HOT_COLD_SPLITTING_PASS', `
HotColdSplittingPass [
    label="HotColdSplittingPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_VECTORIZE_PASS', `
LoopVectorizePass [
    label="LoopVectorizePass",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_UNROLL_AND_JAM_PASS', `
LoopUnrollAndJamPass [
    label="LoopUnrollAndJamPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_UNROLL_AND_JAM_PASS_1', `
LoopUnrollAndJamPass_1 [
    label="LoopUnrollAndJamPass_1",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_UNROLL_AND_JAM_PASS_2', `
LoopUnrollAndJamPass_2 [
    label="LoopUnrollAndJamPass_2",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_UNROLL_PASS', `
LoopUnrollPass [
    label="LoopUnrollPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_UNROLL_PASS_1', `
LoopUnrollPass_1 [
    label="LoopUnrollPass_1",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_UNROLL_PASS_2', `
LoopUnrollPass_2 [
    label="LoopUnrollPass_2",
    shape=box,
    style=filled,
    color=green
];
')

define(`SIMPLIFY_TYPE_TESTS_PASS', `
SimplifyTypeTestsPass [
    label="SimplifyTypeTestsPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`SIMPLIFY_CFG_PASS', `
SimplifyCFGPass [
    label="SimplifyCFGPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`SIMPLIFY_CFG_PASS_1', `
SimplifyCFGPass_1 [
    label="SimplifyCFGPass_1",
    shape=box,
    style=filled,
    color=green
];
')

define(`SIMPLIFY_CFG_PASS_2', `
SimplifyCFGPass_2 [
    label="SimplifyCFGPass_2",
    shape=box,
    style=filled,
    color=green
];
')

define(`SIMPLIFY_CFG_PASS_3', `
SimplifyCFGPass_3 [
    label="SimplifyCFGPass_3",
    shape=box,
    style=filled,
    color=green
];
')

define(`SIMPLIFY_CFG_PASS_4', `
SimplifyCFGPass_4 [
    label="SimplifyCFGPass_4",
    shape=box,
    style=filled,
    color=green
];
')

define(`SIMPLIFY_CFG_PASS_5', `
SimplifyCFGPass_5 [
    label="SimplifyCFGPass_5",
    shape=box,
    style=filled,
    color=green
];
')

define(`SIMPLIFY_CFG_PASS_6', `
SimplifyCFGPass_6 [
    label="SimplifyCFGPass_6",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_SIMPLIFY_CFG_PASS', `
LoopSimplifyCFGPass [
    label="LoopSimplifyCFGPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`SIMPLE_LOOP_UNSWITCH_PASS', `
SimpleLoopUnswitchPass [
    label="SimpleLoopUnswitchPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`SIMPLE_LOOP_UNSWITCH_PASS_1', `
SimpleLoopUnswitchPass_1 [
    label="SimpleLoopUnswitchPass_1",
    shape=box,
    style=filled,
    color=green
];
')

define(`SIMPLE_LOOP_UNSWITCH_PASS_2', `
SimpleLoopUnswitchPass_2 [
    label="SimpleLoopUnswitchPass_2",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_DELETION_PASS', `
LoopDeletionPass [
    label="LoopDeletionPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_FULL_UNROLL_PASS', `
LoopFullUnrollPass [
    label="LoopFullUnrollPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_FLATTEN_PASS', `
LoopFlattenPass [
    label="LoopFlattenPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_ROTATE_PASS', `
LoopRotatePass [
    label="LoopRotatePass",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_INTERCHANGE_PASS', `
LoopInterchangePass [
    label="LoopInterchangePass",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_FUSE_PASS', `
LoopFusePass [
    label="LoopFusePass",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_DISTRIBUTE_PASS', `
LoopDistributePass [
    label="LoopDistributePass",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_VERSIONING_LICM_PASS', `
LoopVersioningLICMPass [
    label="LoopVersioningLICMPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`PARTIAL_INLINER_PASS', `
PartialInlinerPass [
    label="PartialInlinerPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`SROA_PASS', `
SROAPass [
    label="SROAPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`SROA_PASS_1', `
SROAPass_1 [
    label="SROAPass_1",
    shape=box,
    style=filled,
    color=green
];
')

define(`SROA_PASS_2', `
SROAPass_2 [
    label="SROAPass_2",
    shape=box,
    style=filled,
    color=green
];
')

dnl =========================
dnl MEDIUM impact passes
dnl =========================

define(`ADCE_PASS', `
ADCEPass [
    label="ADCEPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`GLOBAL_DCE_PASS', `
GlobalDCEPass [
    label="GlobalDCEPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`GLOBAL_OPT_PASS', `
GlobalOptPass [
    label="GlobalOptPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`GLOBAL_OPT_PASS_1', `
GlobalOptPass_1 [
    label="GlobalOptPass_1",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`GLOBAL_OPT_PASS_2', `
GlobalOptPass_2 [
    label="GlobalOptPass_2",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`IROUTLINER_PASS', `
IROutlinerPass [
    label="IROutlinerPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`IPSCCP_PASS', `
IPSCCPPass [
    label="IPSCCPPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`LOWER_TYPE_TESTS_PASS', `
LowerTypeTestsPass [
    label="LowerTypeTestsPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`MERGE_FUNCTIONS_PASS', `
MergeFunctionsPass [
    label="MergeFunctionsPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`OPENMP_OPT_PASS', `
OpenMPOptPass [
    label="OpenMPOptPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`SCCP_PASS', `
SCCPPass [
    label="SCCPPass",
    shape=box,
    style=filled,
    color=yellow
];
')

dnl =========================
dnl LOW impact passes
dnl =========================

define(`ALIGNMENT_FROM_ASSUMPTIONS_PASS', `
AlignmentFromAssumptionsPass [
    label="AlignmentFromAssumptionsPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`ATTRIBUTOR_PASS', `
AttributorPass [
    label="AttributorPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`BDCE_PASS', `
BDCEPass [
    label="BDCEPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`CALLED_VALUE_PROPAGATION_PASS', `
CalledValuePropagationPass [
    label="CalledValuePropagationPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`CORO_CLEANUP_PASS', `
CoroCleanupPass [
    label="CoroCleanupPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`CORO_SPLIT_PASS', `
CoroSplitPass [
    label="CoroSplitPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`CORO_ANNOTATION_ELIDE_PASS', `
CoroAnnotationElidePass [
    label="CoroAnnotationElidePass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`CORO_EARLY_PASS', `
CoroEarlyPass [
    label="CoroEarlyPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`CORRELATED_VALUE_PROPAGATION_PASS', `
CorrelatedValuePropagationPass [
    label="CorrelatedValuePropagationPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`CORRELATED_VALUE_PROPAGATION_PASS_1', `
CorrelatedValuePropagationPass_1 [
    label="CorrelatedValuePropagationPass_1",
    shape=box,
    style=filled,
    color=orange
];
')

define(`CORRELATED_VALUE_PROPAGATION_PASS_2', `
CorrelatedValuePropagationPass_2 [
    label="CorrelatedValuePropagationPass_2",
    shape=box,
    style=filled,
    color=orange
];
')

define(`DEAD_ARGUMENT_ELIMINATION_PASS', `
DeadArgumentEliminationPass [
    label="DeadArgumentEliminationPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`DIV_REM_PAIRS_PASS', `
DivRemPairsPass [
    label="DivRemPairsPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`ENTRY_EXIT_INSTRUMENTER_PASS', `
EntryExitInstrumenterPass [
    label="EntryExitInstrumenterPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`INFER_ALIGNMENT_PASS', `
InferAlignmentPass [
    label="InferAlignmentPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`INFER_FUNCTION_ATTRS_PASS', `
InferFunctionAttrsPass [
    label="InferFunctionAttrsPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`INFER_ALIGNMENT_PASS_1', `
InferAlignmentPass_1 [
    label="InferAlignmentPass_1",
    shape=box,
    style=filled,
    color=orange
];
')

define(`INFER_ALIGNMENT_PASS_2', `
InferAlignmentPass_2 [
    label="InferAlignmentPass_2",
    shape=box,
    style=filled,
    color=orange
];
')

define(`LIB_CALLS_SHRINK_WRAP_PASS', `
LibCallsShrinkWrapPass [
    label="LibCallsShrinkWrapPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`BUILD_CORO_WRAPPER', `
buildCoroWrapper [
    label="buildCoroWrapper",
    shape=oval,
    style=filled,
    color=green
];
')

define(`CALL_SITE_SPLITTING_PASS', `
CallSiteSplittingPass [
    label="CallSiteSplittingPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`LICM_PASS', `
LICMPass [
    label="LICMPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`LICM_PASS_1', `
LICMPass_1 [
    label="LICMPass_1",
    shape=box,
    style=filled,
    color=orange
];
')

define(`LICM_PASS_2', `
LICMPass_2 [
    label="LICMPass_2",
    shape=box,
    style=filled,
    color=orange
];
')

define(`LICM_PASS_3', `
LICMPass_3 [
    label="LICMPass_3",
    shape=box,
    style=filled,
    color=orange
];
')

define(`LOOP_IDIOM_RECOGNIZE_PASS', `
LoopIdiomRecognizePass [
    label="LoopIdiomRecognizePass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`LOOP_IND_VAR_SIMPLIFY_PASS', `
IndVarSimplifyPass [
    label="IndVarSimplifyPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`LOOP_INST_SIMPLIFY_PASS', `
LoopInstSimplifyPass [
    label="LoopInstSimplifyPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`LOOP_LOAD_ELIMINATION_PASS', `
LoopLoadEliminationPass [
    label="LoopLoadEliminationPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`LOOP_SINK_PASS', `
LoopSinkPass [
    label="LoopSinkPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`MEM_PROF_USE_PASS', `
MemProfUsePass [
    label="MemProfUsePass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`DFA_JUMP_THREADING_PASS', `
DFAJumpThreadingPass [
    label="DFAJumpThreadingPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`PROMOTE_PASS', `
PromotePass [
    label="PromotePass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`JUMP_THREADING_PASS', `
JumpThreadingPass [
    label="JumpThreadingPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`JUMP_THREADING_PASS_1', `
JumpThreadingPass_1 [
    label="JumpThreadingPass_1",
    shape=box,
    style=filled,
    color=green
];
')

define(`JUMP_THREADING_PASS_2', `
JumpThreadingPass_2 [
    label="JumpThreadingPass_2",
    shape=box,
    style=filled,
    color=green
];
')

define(`PGO_INDIRECT_CALL_PROMOTION_PASS', `
PGOIndirectCallPromotion [
    label="PGOIndirectCallPromotion",
    shape=box,
    style=filled,
    color=orange
];
')

define(`PGO_INDIRECT_CALL_PROMOTION_PASS_1', `
PGOIndirectCallPromotion_1 [
    label="PGOIndirectCallPromotion_1",
    shape=box,
    style=filled,
    color=orange
];
')

define(`PGO_INDIRECT_CALL_PROMOTION_PASS_2', `
PGOIndirectCallPromotion_2 [
    label="PGOIndirectCallPromotion_2",
    shape=box,
    style=filled,
    color=orange
];
')

define(`PGO_INDIRECT_CALL_PROMOTION_PASS_3', `
PGOIndirectCallPromotion_3 [
    label="PGOIndirectCallPromotion_3",
    shape=box,
    style=filled,
    color=orange
];
')

define(`MODULE_INLINER_PASS', `
ModuleInlinerPass [
    label="ModuleInlinerPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`MERGED_LOAD_STORE_MOTION_PASS', `
MergedLoadStoreMotionPass [
    label="MergedLoadStoreMotionPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`DSE_PASS', `
DSEPass [
    label="DSEPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`GVN_PASS', `
GVNPass [
    label="GVNPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`NEW_GVN_PASS', `
NewGVNPass [
    label="NewGVNPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`PGO_INSTRUMENTATION_GEN_PASS', `
PGOInstrumentationGen [
    label="PGOInstrumentationGen",
    shape=box,
    style=filled,
    color=orange
];
')

define(`PGO_INSTRUMENTATION_GEN_CREATE_VAR_PASS', `
PGOInstrumentationGenCreateVar [
    label="PGOInstrumentationGenCreateVar",
    shape=box,
    style=filled,
    color=orange
];
')

define(`PGO_CTX_PROF_FLATTENING_PASS', `
PGOCtxProfFlatteningPass [
    label="PGOCtxProfFlatteningPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`PGO_CTX_PROF_LOWERING_PASS', `
PGOCtxProfLoweringPass [
    label="PGOCtxProfLoweringPass",
    shape=box,
    style=filled,
    color=orange
];
')


define(`LOWER_EXPECT_INTRINSIC_PASS', `
LowerExpectIntrinsicPass [
    label="LowerExpectIntrinsicPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`REASSOCIATE_PASS', `
ReassociatePass [
    label="ReassociatePass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`REL_LOOKUP_TABLE_CONVERTER_PASS', `
RelLookupTableConverterPass [
    label="RelLookupTableConverterPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`JUMP_TABLE_TO_SWITCH_PASS', `
JumpTableToSwitchPass [
    label="JumpTableToSwitchPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`AGGRESSIVE_INST_COMBINE_PASS', `
AggressiveInstCombinePass [
    label="AggressiveInstCombinePass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`SLP_VECTORIZER_PASS', `
SLPVectorizerPass [
    label="SLPVectorizerPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`TAIL_CALL_ELIM_PASS', `
TailCallElimPass [
    label="TailCallElimPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`WARN_MISSED_TRANSFORMATIONS_PASS', `
WarnMissedTransformationsPass [
    label="WarnMissedTransformationsPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`WARN_MISSED_TRANSFORMATIONS_PASS_1', `
WarnMissedTransformationsPass_1 [
    label="WarnMissedTransformationsPass_1",
    shape=box,
    style=filled,
    color=orange
];
')

define(`WARN_MISSED_TRANSFORMATIONS_PASS_2', `
WarnMissedTransformationsPass_2 [
    label="WarnMissedTransformationsPass_2",
    shape=box,
    style=filled,
    color=orange
];
')

define(`INSTR_PROFILING_LOWERING_PASS', `
InstrProfilingLoweringPass [
    label="InstrProfilingLoweringPass",
    shape=box,
    style=filled,
    color=orange
];
')

dnl =========================
dnl NONE impact passes
dnl =========================

define(`ANNOTATION_2_METADATA_PASS', `
Annotation2MetadataPass [
    label="Annotation2MetadataPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`ANNOTATION_REMARKS_PASS', `
AnnotationRemarksPass [
    label="AnnotationRemarksPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`ASSIGN_GUID_PASS', `
AssignGUIDPass [
    label="AssignGUIDPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`CG_PROFILE_PASS', `
CGProfilePass [
    label="CGProfilePass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`CONSTANT_MERGE_PASS', `
ConstantMergePass [
    label="ConstantMergePass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`CONSTRAINT_ELIMINATION_PASS', `
ConstraintEliminationPass [
    label="ConstraintEliminationPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`CORO_ELIDE_PASS', `
CoroElidePass [
    label="CoroElidePass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`COUNT_VISITS_PASS', `
CountVisitsPass [
    label="CountVisitsPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`DROP_UNNECESSARY_ASSUMES_PASS', `
DropUnnecessaryAssumesPass [
    label="DropUnnecessaryAssumesPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`EARLY_CSE_PASS', `
EarlyCSEPass [
    label="EarlyCSEPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`EARLY_CSE_PASS_1', `
EarlyCSEPass_1 [
    label="EarlyCSEPass_1",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`EARLY_CSE_PASS_2', `
EarlyCSEPass_2 [
    label="EarlyCSEPass_2",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`FLOAT_2_INT_PASS', `
Float2IntPass [
    label="Float2IntPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`FORCE_FUNCTION_ATTRS_PASS', `
ForceFunctionAttrsPass [
    label="ForceFunctionAttrsPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`INST_COMBINE_PASS', `
InstCombinePass [
    label="InstCombinePass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`INST_COMBINE_PASS_1', `
InstCombinePass_1 [
    label="InstCombinePass_1",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`INST_COMBINE_PASS_2', `
InstCombinePass_2 [
    label="InstCombinePass_2",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`INST_COMBINE_PASS_3', `
InstCombinePass_3 [
    label="InstCombinePass_3",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`INST_COMBINE_PASS_4', `
InstCombinePass_4 [
    label="InstCombinePass_4",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`INST_COMBINE_PASS_5', `
InstCombinePass_5 [
    label="InstCombinePass_5",
    shape=box,
    style=filled,
    color=yellow
];
')


define(`INST_COMBINE_PASS_6', `
InstCombinePass_6 [
    label="InstCombinePass_6",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`INST_SIMPLIFY_PASS', `
InstSimplifyPass [
    label="InstSimplifyPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`INJECT_TLI_MAPPINGS_PASS', `
InjectTLIMappings [
    label="InjectTLIMappings",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`LOWER_CONSTANT_INTRINSICS_PASS', `
LowerConstantIntrinsicsPass [
    label="LowerConstantIntrinsicsPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`MEM_CPY_OPT_PASS', `
MemCpyOptPass [
    label="MemCpyOptPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`MEM_PROF_REMOVE_INFO_PASS', `
MemProfRemoveInfo [
    label="MemProfRemoveInfo",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`MOVE_AUTO_INIT_PASS', `
MoveAutoInitPass [
    label="MoveAutoInitPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`NAME_ANON_GLOBAL_PASS', `
NameAnonGlobalPass [
    label="NameAnonGlobalPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`NOINLINE_NON_PREVAILING_PASS', `
NoinlineNonPrevailing [
    label="NoinlineNonPrevailing",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`PGO_FORCE_FUNCTION_ATTRS_PASS', `
PGOForceFunctionAttrsPass [
    label="PGOForceFunctionAttrsPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`PGO_INSTRUMENTATION_USE_PASS', `
PGOInstrumentationUse [
    label="PGOInstrumentationUse",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`RECOMPUTE_GLOBALS_AA_PASS', `
RecomputeGlobalsAAPass [
    label="RecomputeGlobalsAAPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`REQUIRE_ANALYSIS_PASS', `
RequireAnalysisPass [
    label="RequireAnalysisPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`REQUIRE_ANALYSIS_PASS_1', `
RequireAnalysisPass_1 [
    label="RequireAnalysisPass_1",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`REQUIRE_ANALYSIS_PASS_2', `
RequireAnalysisPass_2 [
    label="RequireAnalysisPass_2",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`REQUIRE_ANALYSIS_PASS_3', `
RequireAnalysisPass_3 [
    label="RequireAnalysisPass_3",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`SAMPLE_PROFILE_LOADER_PASS', `
SampleProfileLoaderPass [
    label="SampleProfileLoaderPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`SAMPLE_PROFILE_PROBE_PASS', `
SampleProfileProbePass [
    label="SampleProfileProbePass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`VECTOR_COMBINE_PASS', `
VectorCombinePass [
    label="VectorCombinePass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`LOWER_MATRIX_INTRINSICS_PASS', `
LowerMatrixIntrinsicsPass [
    label="LowerMatrixIntrinsicsPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`ADD_DISCRIMINATORS_PASS', `
AddDiscriminatorsPass [
    label="AddDiscriminatorsPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`CANONICALIZE_ALIASES_PASS', `
CanonicalizeAliasesPass [
    label="CanonicalizeAliasesPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`ADD_POST_PGO_LOOP_ROTATION', `
addPostPGOLoopRotation [
    label="addPostPGOLoopRotation",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_REQUIRED_LTO_PRE_LINK_PASSES', `
addRequiredLTOPreLinkPasses [
    label="addRequiredLTOPreLinkPasses",
    shape=hexagon,
    style=filled,
    color=lightgray
];
')

define(`ALLOC_TOKEN_PASS', `
AllocTokenPass [
    label="AllocTokenPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`BUILD_O1_FUNCTION_SIMPLIFICATION_PIPELINE', `
buildO1FunctionSimplificationPipeline [
    label="buildO1FunctionSimplificationPipeline",
    shape=oval,
    style=filled,
    color=green
];
')

define(`BUILD_MODULE_SIMPLIFICATION_PIPELINE', `
buildModuleSimplificationPipeline [
    label="buildModuleSimplificationPipeline",
    shape=oval,
    style=filled,
    color=green
];
')

define(`BUILD_MODULE_OPTIMIZATION_PIPELINE', `
buildModuleOptimizationPipeline [
    label="buildModuleOptimizationPipeline",
    shape=oval,
    style=filled,
    color=green
];
')

define(`BUILD_FUNCTION_SIMPLIFICATION_PIPELINE', `
buildFunctionSimplificationPipeline [
    label="buildFunctionSimplificationPipeline",
    shape=oval,
    style=filled,
    color=green
];
')

define(`BUILD_O0_DEFAULT_PIPELINE', `
buildO0DefaultPipeline [
    label="buildO0DefaultPipeline",
    shape=oval,
    style=filled,
    color=green
];
')

define(`ADD_ANNOTATION_REMARKS_PASS', `
addAnnotationRemarksPass [
    label="addAnnotationRemarksPass",
    shape=hexagon,
    style=filled,
    color=lightgray
];
')

define(`PGO_MEM_OP_SIZE_OPT', `
PGOMemOPSizeOpt [
    label="PGOMemOPSizeOpt",
    shape=box,
    style=filled,
    color=orange
];
')

define(`PSEUDO_PROBE_UPDATE_PASS', `
PseudoProbeUpdatePass [
    label="PseudoProbeUpdatePass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`BUILD_O1_FUNCTION_SIMPLIFICATION_PIPELINE', `
buildO1FunctionSimplificationPipeline [
    label="buildO1FunctionSimplificationPipeline",
    shape=oval,
    style=filled,
    color=green
];
')

define(`ASSUME_SIMPLIFY_PASS', `
AssumeSimplifyPass [
    label="AssumeSimplifyPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`GVN_HOIST_PASS', `
GVNHoistPass [
    label="GVNHoistPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`GVN_SINK_PASS', `
GVNSinkPass [
    label="GVNSinkPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`SPECULATIVE_EXECUTION_PASS', `
SpeculativeExecutionPass [
    label="SpeculativeExecutionPass",
    shape=box,
    style=filled,
    color=yellow
];
')

dnl (already classified as LOW above; this alias macro can be dropped if orangeundant)

dnl =========================
dnl Plugin callback "passes"
dnl =========================

define(`INVOKE_PIPELINE_START_EP_CALLBACKS_PASS', `
invokePipelineStartEPCallbacks [
    label="invokePipelineStartEPCallbacks",
    shape=parallelogram,
    style=filled,
    color=pink
];
')

define(`INVALIDATE_ANALYSIS_PASS', `
InvalidateAnalysisPass [
    label="InvalidateAnalysisPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`INVALIDATE_ANALYSIS_PASS_1', `
InvalidateAnalysisPass_1 [
    label="InvalidateAnalysisPass_1",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`INVALIDATE_ANALYSIS_PASS_2', `
InvalidateAnalysisPass_2 [
    label="InvalidateAnalysisPass_2",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`ATTRIBUTOR_CGSCC_PASS', `
AttributorCGSCCPass [
    label="AttributorCGSCCPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`POST_ORDER_FUNCTION_ATTRS_PASS', `
PostOrderFunctionAttrsPass [
    label="PostOrderFunctionAttrsPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`POST_ORDER_FUNCTION_ATTRS_PASS_1', `
PostOrderFunctionAttrsPass_1 [
    label="PostOrderFunctionAttrsPass_1",
    shape=box,
    style=filled,
    color=orange
];
')

define(`POST_ORDER_FUNCTION_ATTRS_PASS_2', `
PostOrderFunctionAttrsPass_2 [
    label="PostOrderFunctionAttrsPass_2",
    shape=box,
    style=filled,
    color=orange
];
')

define(`ARGUMENT_PROMOTION_PASS', `
ArgumentPromotionPass [
    label="ArgumentPromotionPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`OPENMP_OPT_CGSCC_PASS', `
OpenMPOptCGSCCPass [
    label="OpenMPOptCGSCCPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`INVOKE_PIPELINE_EARLY_SIMPLIFICATION_EP_CALLBACKS_PASS', `
invokePipelineEarlySimplificationEPCallbacks [
    label="invokePipelineEarlySimplificationEPCallbacks",
    shape=parallelogram,
    style=filled,
    color=pink
];
')

define(`INVOKE_PEEPHOLE_EP_CALLBACKS_PASS', `
invokePeepholeEPCallbacks [
    label="invokePeepholeEPCallbacks",
    shape=parallelogram,
    style=filled,
    color=pink
];
')

define(`INVOKE_PEEPHOLE_EP_CALLBACKS_PASS_1', `
invokePeepholeEPCallbacks_1 [
    label="invokePeepholeEPCallbacks_1",
    shape=parallelogram,
    style=filled,
    color=pink
];
')

define(`INVOKE_PEEPHOLE_EP_CALLBACKS_PASS_2', `
invokePeepholeEPCallbacks_2 [
    label="invokePeepholeEPCallbacks_2",
    shape=parallelogram,
    style=filled,
    color=pink
];
')

define(`INVOKE_PEEPHOLE_EP_CALLBACKS_PASS_3', `
invokePeepholeEPCallbacks_3 [
    label="invokePeepholeEPCallbacks_3",
    shape=parallelogram,
    style=filled,
    color=pink
];
')

define(`INVOKE_OPTIMIZER_EARLY_EP_CALLBACKS_PASS', `
invokeOptimizerEarlyEPCallbacks [
    label="invokeOptimizerEarlyEPCallbacks",
    shape=parallelogram,
    style=filled,
    color=pink
];
')

define(`INVOKE_OPTIMIZER_LAST_EP_CALLBACKS_PASS', `
invokeOptimizerLastEPCallbacks [
    label="invokeOptimizerLastEPCallbacks",
    shape=parallelogram,
    style=filled,
    color=pink
];
')

define(`INVOKE_LATE_LOOP_OPTIMIZATIONS_EP_CALLBACKS_PASS', `
invokeLateLoopOptimizationsEPCallbacks [
    label="invokeLateLoopOptimizationsEPCallbacks",
    shape=parallelogram,
    style=filled,
    color=pink
];
')

define(`INVOKE_LOOP_OPTIMIZER_END_EP_CALLBACKS_PASS', `
invokeLoopOptimizerEndEPCallbacks [
    label="invokeLoopOptimizerEndEPCallbacks",
    shape=parallelogram,
    style=filled,
    color=pink
];
')

define(`INVOKE_SCALAR_OPTIMIZER_LATE_EP_CALLBACKS_PASS', `
invokeScalarOptimizerLateEPCallbacks [
    label="invokeScalarOptimizerLateEPCallbacks",
    shape=parallelogram,
    style=filled,
    color=pink
];
')

define(`INVOKE_VECTORIZER_START_EP_CALLBACKS_PASS', `
invokeVectorizerStartEPCallbacks [
    label="invokeVectorizerStartEPCallbacks",
    shape=parallelogram,
    style=filled,
    color=pink
];
')

define(`INVOKE_VECTORIZER_END_EP_CALLBACKS_PASS', `
invokeVectorizerEndEPCallbacks [
    label="invokeVectorizerEndEPCallbacks",
    shape=parallelogram,
    style=filled,
    color=pink
];
')

define(`INVOKE_CGSCC_OPTIMIZER_LATE_EP_CALLBACKS_PASS', `
invokeCGSCCOptimizerLateEPCallbacks [
    label="invokeCGSCCOptimizerLateEPCallbacks",
    shape=parallelogram,
    style=filled,
    color=pink
];
')

define(`MACHINE_BLOCK_PLACEMENT_PASS', `
MachineBlockPlacement [
    label="MachineBlockPlacement",
    shape=box,
    style=filled,
    color=green
];
')

define(`ADD_BLOCK_PLACEMENT', `
addBlockPlacement [
    label="addBlockPlacement",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`XRAY_INSTRUMENTATION', `
XRayInstrumentation [
    label="XRayInstrumentation",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`STATIC_DATA_SPLITTER_PASS', `
StaticDataSplitterPass [
    label="StaticDataSplitterPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`STATIC_DATA_ANNOTATOR_PASS', `
StaticDataAnnotatorPass [
    label="StaticDataAnnotatorPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`MACHINE_BLOCK_HASH_INFO_PASS', `
MachineBlockHashInfoPass [
    label="MachineBlockHashInfoPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`BASIC_BLOCK_SECTIONS_PROFILE_READER_WRAPPER_PASS', `
BasicBlockSectionsProfileReaderWrapperPass [
    label="BasicBlockSectionsProfileReaderWrapperPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`ADD_POST_BB_SECTIONS', `
addPostBBSections [
    label="addPostBBSections",
    shape=hexagon,
    style=filled,
    color=green
];
')


define(`TAIL_DUPLICATE_LEGACY_PASS', `
TailDuplicateLegacy [
    label="TailDuplicateLegacy",
    shape=box,
    style=filled,
    color=green
];
')

define(`EARLY_TAIL_DUPLICATE_LEGACY_PASS', `
EarlyTailDuplicateLegacy [
    label="EarlyTailDuplicateLegacy",
    shape=box,
    style=filled,
    color=green
];
')

define(`BRANCH_RELAXATION_PASS_PASS', `
BranchRelaxationPass [
    label="BranchRelaxationPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`MACHINE_FUNCTION_SPLITTER_PASS', `
MachineFunctionSplitter [
    label="MachineFunctionSplitter",
    shape=box,
    style=filled,
    color=green
];
')

define(`MACHINE_OUTLINER_PASS', `
MachineOutlinerPass [
    label="MachineOutlinerPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`BASIC_BLOCK_PATH_CLONING_PASS', `
BasicBlockPathCloningPass [
    label="BasicBlockPathCloningPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`BASIC_BLOCK_SECTIONS_PASS', `
BasicBlockSectionsPass [
    label="BasicBlockSectionsPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`RISCV_LATE_BRANCH_OPT_PASS_PASS', `
RISCVLateBranchOptPass [
    label="RISCVLateBranchOptPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`MACHINE_PIPELINER_PASS', `
MachinePipeliner [
    label="MachinePipeliner",
    shape=box,
    style=filled,
    color=green
];
')

define(`UNREACHABLE_MACHINE_BLOCK_ELIM_PASS', `
UnreachableMachineBlockElim [
    label="UnreachableMachineBlockElim",
    shape=box,
    style=filled,
    color=green
];
')

define(`GC_EMPTY_BASIC_BLOCKS_PASS', `
GCEmptyBasicBlocks [
    label="GCEmptyBasicBlocks",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOWER_INVOKE_PASS', `
LowerInvokePass [
    label="LowerInvokePass",
    shape=box,
    style=filled,
    color=green
];
')

define(`SJ_LJ_EH_PREPARE_PASS', `
SjLjEHPreparePass [
    label="SjLjEHPreparePass",
    shape=box,
    style=filled,
    color=green
];
')

define(`DWARF_EH_PASS_PASS', `
DwarfEHPass [
    label="DwarfEHPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`WIN_EH_PASS_PASS', `
WinEHPass [
    label="WinEHPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`WASM_EH_PASS_PASS', `
WasmEHPass [
    label="WasmEHPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`UNREACHABLE_BLOCK_ELIMINATION_PASS', `
UnreachableBlockEliminationPass [
    label="UnreachableBlockEliminationPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`POST_RA_MACHINE_SINKING_PASS', `
PostRAMachineSinking [
    label="PostRAMachineSinking",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`SHRINK_WRAP_PASS', `
ShrinkWrap [
    label="ShrinkWrap",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`PROLOG_EPILOG_INSERTER_PASS', `
PrologEpilogInserterPass [
    label="PrologEpilogInserterPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`EXPAND_POST_RA_PSEUDOS_PASS', `
ExpandPostRAPseudos [
    label="ExpandPostRAPseudos",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`ADD_PRE_SCHED2', `
addPreSched2 [
    label="addPreSched2",
    shape=hexagon,
    style=filled,
    color=yellow
];
')

define(`F_ENTRY_INSERTER', `
FEntryInserter [
    label="FEntryInserter",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`X_RAY_INSTRUMENTATION', `
XRayInstrumentation [
    label="XRayInstrumentation",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`PATCHABLE_FUNCTION', `
PatchableFunction [
    label="PatchableFunction",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`FUNCLET_LAYOUT', `
FuncletLayout [
    label="FuncletLayout",
    shape=box,
    style=filled,
    color=green
];
')


define(`CONSTANT_HOISTING_PASS', `
ConstantHoistingPass [
    label="ConstantHoistingPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`MACHINE_SINKING_LEGACY_PASS', `
MachineSinkingLegacy [
    label="MachineSinkingLegacy",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`MACHINE_LICM_PASS', `
MachineLICM [
    label="MachineLICM",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`EARLY_MACHINE_LICM_PASS', `
EarlyMachineLICM [
    label="EarlyMachineLICM",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`MIR_ADD_FS_DISCRIMINATORS_PASS', `
MIRAddFSDiscriminatorsPass [
    label="MIRAddFSDiscriminatorsPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`MIR_ADD_FS_DISCRIMINATORS_PASS_1', `
MIRAddFSDiscriminatorsPass_1 [
    label="MIRAddFSDiscriminatorsPass_1",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`MIR_ADD_FS_DISCRIMINATORS_PASS_2', `
MIRAddFSDiscriminatorsPass_2 [
    label="MIRAddFSDiscriminatorsPass_2",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`MIR_PROFILE_LOADER_PASS', `
MIRProfileLoaderPass [
    label="MIRProfileLoaderPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`MIR_PROFILE_LOADER_PASS_1', `
MIRProfileLoaderPass_1 [
    label="MIRProfileLoaderPass_1",
    shape=box,
    style=filled,
    color=orange
];
')

define(`MIR_PROFILE_LOADER_PASS_2', `
MIRProfileLoaderPass_2 [
    label="MIRProfileLoaderPass_2",
    shape=box,
    style=filled,
    color=orange
];
')

define(`EXPAND_REDUCTIONS_PASS', `
ExpandReductionsPass [
    label="ExpandReductionsPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`EXPAND_MEM_CMP_LEGACY_PASS', `
ExpandMemCmpLegacyPass [
    label="ExpandMemCmpLegacyPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`MACHINE_SCHEDULER_PASS', `
MachineScheduler [
    label="MachineScheduler",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`POST_MACHINE_SCHEDULER_PASS', `
PostMachineScheduler [
    label="PostMachineScheduler",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`POST_RA_SCHEDULER_PASS', `
PostRAScheduler [
    label="PostRAScheduler",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`MACHINE_LATE_INSTRS_CLEANUP_PASS', `
MachineLateInstrsCleanup [
    label="MachineLateInstrsCleanup",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_FUNCTION_SPLITTER_PASS', `
RISCVFunctionSplitter [
    label="RISCVFunctionSplitter",
    shape=box,
    style=filled,
    color=green
];
')

define(`CODE_GEN_PREPARE_PASS', `
CodeGenPrepare [
    label="CodeGenPrepare",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_CODE_GEN_PREPARE_LEGACY_PASS', `
RISCVCodeGenPrepareLegacyPass [
    label="RISCVCodeGenPrepareLegacyPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`TYPE_PROMOTION_PASS', `
TypePromotionLegacyPass [
    label="TypePromotionLegacyPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`GLOBAL_MERGE_PASS', `
GlobalMergePass [
    label="GlobalMergePass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_O0_PRE_LEGALIZER_COMBINER_PASS', `
RISCVO0PreLegalizerCombiner [
    label="RISCVO0PreLegalizerCombiner",
    shape=box,
    style=filled,
    color=orange
];
')

define(`RISCV_PRE_LEGALIZER_COMBINER_PASS', `
RISCVPreLegalizerCombiner [
    label="RISCVPreLegalizerCombiner",
    shape=box,
    style=filled,
    color=yellow
];
')


define(`GLOBAL_MERGE_FUNC_PASS', `
GlobalMergeFuncPass [
    label="GlobalMergeFuncPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_GATHER_SCATTER_LOWERING_PASS', `
RISCVGatherScatterLoweringPass [
    label="RISCVGatherScatterLoweringPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`INTERLEAVED_ACCESS_PASS', `
InterleavedAccessPass [
    label="InterleavedAccessPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`LOOP_STRENGTH_REDUCE_PASS', `
LoopStrengthReducePass [
    label="LoopStrengthReducePass",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOOP_TERM_FOLD_PASS', `
LoopTermFoldPass [
    label="LoopTermFoldPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`SELECT_OPTIMIZE_PASS', `
SelectOptimizePass [
    label="SelectOptimizePass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`REPLACE_WITH_VECLIB_LEGACY_PASS', `
ReplaceWithVeclibLegacyPass [
    label="ReplaceWithVeclibLegacyPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`PARTIALLY_INLINE_LIB_CALLS_PASS', `
PartiallyInlineLibCallsPass [
    label="PartiallyInlineLibCallsPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`ATOMIC_EXPAND_LEGACY_PASS', `
AtomicExpandLegacyPass [
    label="AtomicExpandLegacyPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`EXPAND_LARGE_DIV_REM_PASS', `
ExpandLargeDivRemPass [
    label="ExpandLargeDivRemPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`EXPAND_FP_PASS', `
ExpandFPPass [
    label="ExpandFPPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`STACK_PROTECTOR_PASS', `
StackProtectorPass [
    label="StackProtectorPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`SAFE_STACK_PASS', `
SafeStackPass [
    label="SafeStackPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`CFI_FIXUP_PASS', `
CFIFixup [
    label="CFIFixup",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`IMPLICIT_NULL_CHECKS_PASS', `
ImplicitNullChecks [
    label="ImplicitNullChecks",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_LOAD_STORE_OPT_PASS', `
RISCVLoadStoreOptPass [
    label="RISCVLoadStoreOptPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_VECTOR_PEEPHOLE_PASS', `
RISCVVectorPeepholePass [
    label="RISCVVectorPeepholePass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_FOLD_MEM_OFFSET_PASS', `
RISCVFoldMemOffsetPass [
    label="RISCVFoldMemOffsetPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_MOVE_MERGE_PASS', `
RISCVMoveMergePass [
    label="RISCVMoveMergePass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_PUSH_POP_OPTIMIZATION_PASS', `
RISCVPushPopOptimizationPass [
    label="RISCVPushPopOptimizationPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_EXPAND_PSEUDO_PASS', `
RISCVExpandPseudoPass [
    label="RISCVExpandPseudoPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_EXPAND_ATOMIC_PSEUDO_PASS', `
RISCVExpandAtomicPseudoPass [
    label="RISCVExpandAtomicPseudoPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`UNPACK_MACHINE_BUNDLES', `
UnpackMachineBundles [
    label="UnpackMachineBundles",
    shape=box,
    style=filled,
    color=orange
];
')


define(`RISCV_MAKE_COMPRESSIBLE_OPT_PASS', `
RISCVMakeCompressibleOptPass [
    label="RISCVMakeCompressibleOptPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_INDIRECT_BRANCH_TRACKING_PASS', `
RISCVIndirectBranchTrackingPass [
    label="RISCVIndirectBranchTrackingPass",
    shape=box,
    style=filled,
    color=orange
];
')


define(`RISCVVMV0_ELIMINATION_PASS', `
RISCVVMV0EliminationPass [
    label="RISCVVMV0EliminationPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`MACHINE_COMBINER_PASS', `
MachineCombiner [
    label="MachineCombiner",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`MACHINE_COPY_PROPAGATION_PASS', `
MachineCopyPropagationPass [
    label="MachineCopyPropagationPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_REDUNDANT_COPY_ELIMINATION_PASS', `
RISCVRedundantCopyEliminationPass [
    label="RISCVRedundantCopyEliminationPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_PROMOTE_CONSTANT_PASS', `
RISCVPromoteConstantPass [
    label="RISCVPromoteConstantPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_PRE_RA_EXPAND_PSEUDO_PASS', `
RISCVPreRAExpandPseudoPass [
    label="RISCVPreRAExpandPseudoPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_POST_RA_EXPAND_PSEUDO_PASS', `
RISCVPostRAExpandPseudoPass [
    label="RISCVPostRAExpandPseudoPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_INSERT_VSETVLI_PASS_PASS', `
RISCVInsertVSETVLIPass [
    label="RISCVInsertVSETVLIPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCVVL_OPTIMIZER_PASS', `
RISCVVLOptimizerPass [
    label="RISCVVLOptimizerPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_POST_LEGALIZER_COMBINER', `
RISCVPostLegalizerCombiner [
    label="RISCVPostLegalizerCombiner",
    shape=box,
    style=filled,
    color=yellow
];
')


define(`RISCV_PRE_ALLOC_ZILSD_OPT_PASS', `
RISCVPreAllocZilsdOptPass [
    label="RISCVPreAllocZilsdOptPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_INSERT_READ_WRITE_CSR_PASS', `
RISCVInsertReadWriteCSRPass [
    label="RISCVInsertReadWriteCSRPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_MERGE_BASE_OFFSET_OPT_PASS', `
RISCVMergeBaseOffsetOptPass [
    label="RISCVMergeBaseOffsetOptPass",
    shape=box,
    style=filled,
    color=green
];
')


define(`RISCV_INSERT_WRITE_VXRM_PASS', `
RISCVInsertWriteVXRMPass [
    label="RISCVInsertWriteVXRMPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_LANDING_PAD_SETUP_PASS', `
RISCVLandingPadSetupPass [
    label="RISCVLandingPadSetupPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`KCFI_PASS', `
KCFIPass [
    label="KCFIPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`CFI_INSTR_INSERTER_PASS', `
CFIInstrInserter [
    label="CFIInstrInserter",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`WINDOWS_SECURE_HOT_PATCHING_PASS', `
WindowsSecureHotPatchingPass [
    label="WindowsSecureHotPatchingPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`GC_MACHINE_CODE_ANALYSIS_PASS', `
GCMachineCodeAnalysis [
    label="GCMachineCodeAnalysis",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`GC_LOWERING_PASS', `
GCLowering [
    label="GCLowering",
    shape=box,
    style=filled,
    color=orange
];
')

define(`SHADOW_STACK_GC_LOWERING_PASS', `
ShadowStackGCLowering [
    label="ShadowStackGCLowering",
    shape=box,
    style=filled,
    color=orange
];
')

define(`MACHINE_BLOCK_PLACEMENT_STATS_PASS', `
MachineBlockPlacementStats [
    label="MachineBlockPlacementStats",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`VERIFIER_PASS', `
VerifierPass [
    label="VerifierPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`TYPE_BASED_AA_WRAPPER_PASS', `
TypeBasedAAWrapperPass [
    label="TypeBasedAAWrapperPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`SCOPED_NO_ALIAS_AA_WRAPPER_PASS', `
ScopedNoAliasAAWrapperPass [
    label="ScopedNoAliasAAWrapperPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`BASIC_AA_WRAPPER_PASS', `
BasicAAWrapperPass [
    label="BasicAAWrapperPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`TARGET_TRANSFORM_INFO_WRAPPER_PASS', `
TargetTransformInfoWrapperPass [
    label="TargetTransformInfoWrapperPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`PRINT_FUNCTION_PASS', `
PrintFunctionPass [
    label="PrintFunctionPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`LEGALIZER_PASS', `
Legalizer [
    label="Legalizer",
    shape=box,
    style=filled,
    color=green
];
')


define(`PRINT_MIR_PASS', `
PrintMIRPass [
    label="PrintMIRPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`LIVE_VARIABLES_PASS', `
LiveVariables [
    label="LiveVariables",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`LIVE_INTERVALS_PASS', `
LiveIntervals [
    label="LiveIntervals",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`MACHINE_LOOP_INFO_PASS', `
MachineLoopInfo [
    label="MachineLoopInfo",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`STACK_MAP_LIVENESS_PASS', `
StackMapLiveness [
    label="StackMapLiveness",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`LIVE_DEBUG_VALUES_PASS', `
LiveDebugValues [
    label="LiveDebugValues",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`REMOVE_REDUNDANT_DEBUG_VALUES_PASS', `
RemoveRedundantDebugValues [
    label="RemoveRedundantDebugValues",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`REMOVE_LOADS_INTO_FAKE_USES_PASS', `
RemoveLoadsIntoFakeUses [
    label="RemoveLoadsIntoFakeUses",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`MACHINE_SANITIZER_BINARY_METADATA_PASS', `
MachineSanitizerBinaryMetadata [
    label="MachineSanitizerBinaryMetadata",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`ASSIGN_GUID_PASS', `
AssignGUID [
    label="AssignGUID",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`INIT_UNDEF_PASS', `
InitUndef [
    label="InitUndef",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`DETECT_DEAD_LANES_PASS', `
DetectDeadLanes [
    label="DetectDeadLanes",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`PROCESS_IMPLICIT_DEFS_PASS', `
ProcessImplicitDefs [
    label="ProcessImplicitDefs",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`OPTIMIZE_PHIS_PASS', `
OptimizePHIsLegacy [
    label="OptimizePHIsLegacy",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`PHI_ELIMINATION_PASS', `
PHIElimination [
    label="PHIElimination",
    shape=box,
    style=filled,
    color=orange
];
')

define(`REGISTER_COALESCER_PASS', `
RegisterCoalescer [
    label="RegisterCoalescer",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`RENAME_INDEPENDENT_SUBREGS_PASS', `
RenameIndependentSubregs [
    label="RenameIndependentSubregs",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`TWO_ADDRESS_INSTRUCTION_PASS_PASS', `
TwoAddressInstructionPass [
    label="TwoAddressInstructionPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`STACK_SLOT_COLORING_PASS', `
StackSlotColoring [
    label="StackSlotColoring",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`LOCAL_STACK_SLOT_ALLOCATION_PASS', `
LocalStackSlotAllocation [
    label="LocalStackSlotAllocation",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`STACK_FRAME_LAYOUT_ANALYSIS_PASS', `
StackFrameLayoutAnalysisPass [
    label="StackFrameLayoutAnalysisPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`REG_USAGE_INFO_COLLECTOR_PASS', `
RegUsageInfoCollector [
    label="RegUsageInfoCollector",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`REG_USAGE_INFO_PROP_PASS', `
RegUsageInfoPropPass [
    label="RegUsageInfoPropPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`ADD_PRE_REG_ALLOC', `
addPreRegAlloc [
    label="addPreRegAlloc",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_POST_REG_ALLOC', `
addPostRegAlloc [
    label="addPostRegAlloc",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`RVV_REG_ALLOC_PASS', `
RVVRegAllocPass [
    label="RVVRegAllocPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`RISCV_INSERT_VSETVLI_PASS', `
RISCVInsertVSETVLIPass [
    label="RISCVInsertVSETVLIPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_DEAD_REGISTER_DEFINITIONS_PASS', `
RISCVDeadRegisterDefinitionsPass [
    label="RISCVDeadRegisterDefinitionsPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`REG_ALLOC_PASS', `
RegAllocPass [
    label="RegAllocPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`ADD_POST_FAST_REG_ALLOC_REWRITE', `
addPostFastRegAllocRewrite [
    label="addPostFastRegAllocRewrite",
    shape=hexagon,
    style=filled,
    color=yellow
];
')

define(`VIRT_REG_REWRITER', `
VirtRegRewriter [
    label="VirtRegRewriter",
    shape=box,
    style=filled,
    color=green
];
')

define(`VIRT_REG_REWRITER_1', `
VirtRegRewriter_1 [
    label="VirtRegRewriter_1",
    shape=box,
    style=filled,
    color=green
];
')

define(`VIRT_REG_REWRITER_2', `
VirtRegRewriter_2 [
    label="VirtRegRewriter_2",
    shape=box,
    style=filled,
    color=green
];
')

define(`REG_BANK_SELECT', `
RegBankSelect [
    label="RegBankSelect",
    shape=box,
    style=filled,
    color=green
];
')


define(`ADD_PRE_REWRITE', `
addPreRewrite [
    label="addPreRewrite",
    shape=hexagon,
    style=filled,
    color=yellow
];
')

define(`REG_ALLOC_SCORING_PASS', `
RegAllocScoringPass [
    label="RegAllocScoringPass",
    shape=box,
    style=filled,
    color=yellow
];
')



define(`FIXUP_STATEPOINT_CALLER_SAVED_ID', `
FixupStatepointCallerSavedID [
    label="FixupStatepointCallerSavedID",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`ADD_MACHINE_LATE_OPTIMIZATION', `
addMachineLateOptimization [
    label="addMachineLateOptimization",
    shape=hexagon,
    style=filled,
    color=green
];
')



define(`MACHINE_CSE_LEGACY_PASS', `
MachineCSELegacy [
    label="MachineCSELegacy",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`DEAD_MACHINE_INSTRUCTION_ELIM_PASS', `
DeadMachineInstructionElim [
    label="DeadMachineInstructionElim",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`DEAD_MACHINE_INSTRUCTION_ELIM_PASS_1', `
DeadMachineInstructionElim_1 [
    label="DeadMachineInstructionElim_1",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`DEAD_MACHINE_INSTRUCTION_ELIM_PASS_2', `
DeadMachineInstructionElim_2 [
    label="DeadMachineInstructionElim_2",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`ADD_ILP_OPTS', `
addILPOpts [
    label="addILPOpts",
    shape=hexagon,
    style=filled,
    color=yellow
];
')

define(`STACK_COLORING_LEGACY_PASS', `
StackColoringLegacy [
    label="StackColoringLegacy",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`PEEPHOLE_OPTIMIZER_LEGACY', `
PeepholeOptimizerLegacy [
    label="PeepholeOptimizerLegacy",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`RISCV_OPT_W_INSTRS_PASS', `
RISCVOptWInstrsPass [
    label="RISCVOptWInstrsPass",
    shape=box,
    style=filled,
    color=yellow
];
')


define(`BARRIER_NOOP_PASS_PASS', `
BarrierNoopPass [
    label="BarrierNoopPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`FREE_MACHINE_FUNCTION_PASS', `
FreeMachineFunctionPass [
    label="FreeMachineFunctionPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`ADD_IR_PASSES_PASS', `
addIRPasses [
    label="addIRPasses",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_CODE_GEN_PREPARE', `
addCodeGenPrepare [
    label="addCodeGenPrepare",
    shape=hexagon,
    style=filled,
    color=yellow
];
')

define(`ADD_ISEL_PREPARE', `
addISelPrepare [
    label="addISelPrepare",
    shape=hexagon,
    style=filled,
    color=yellow
];
')

define(`ADD_CORE_ISEL_PASSES', `
addCoreISelPasses [
    label="addCoreISelPasses",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_ISEL_PASSES_PASS', `
addISelPasses [
    label="addISelPasses",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`RISCV_ISEL_DAG', `
RISCVISelDag [
    label="RISCVISelDag",
    shape=box,
    style=filled,
    color=green
];
')

define(`RISCV_ZACAS_ABI_FIX_PASS', `
RISCVZacasABIFixPass [
    label="RISCVZacasABIFixPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`ADD_MACHINE_PASSES_PASS', `
addMachinePasses [
    label="addMachinePasses",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_PASSES_TO_HANDLE_EXCEPTIONS_PASS', `
addPassesToHandleExceptions [
    label="addPassesToHandleExceptions",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_PASSES_TO_GENERATE_CODE_PASS', `
addPassesToGenerateCode [
    label="addPassesToGenerateCode",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_PRE_ISEL', `
addPreISel [
    label="addPreISel",
    shape=hexagon,
    style=filled,
    color=yellow
];
')

define(`DUMMY_CGSCC_PASS', `
DummyCGSCCPass [
    label="DummyCGSCCPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`OBJ_C_ARC_CONTRACT_PASS', `
ObjCARCContractPass [
    label="ObjCARCContractPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`CALL_BR_PASS', `
CallBrPass [
    label="CallBrPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`ADD_PRE_EMIT_PASS_PASS', `
addPreEmitPass [
    label="addPreEmitPass",
    shape=parallelogram,
    style=filled,
    color=orange
];
')

define(`LOOP_DATA_PREFETCH_PASS', `
LoopDataPrefetchPass [
    label="LoopDataPrefetchPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`CANONICALIZE_FREEZE_IN_LOOPS_PASS', `
CanonicalizeFreezeInLoopsPass [
    label="CanonicalizeFreezeInLoopsPass",
    shape=box,
    style=filled,
    color=lightgray
];
')

define(`MERGE_ICMPS_LEGACY_PASS', `
MergeICmpsLegacyPass [
    label="MergeICmpsLegacyPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`LOWER_GLOBAL_DTORS_LEGACY_PASS', `
LowerGlobalDtorsLegacyPass [
    label="LowerGlobalDtorsLegacyPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`POST_INLINE_ENTRY_EXIT_INSTRUMENTER_PASS', `
PostInlineEntryExitInstrumenterPass [
    label="PostInlineEntryExitInstrumenterPass",
    shape=box,
    style=filled,
    color=orange
];
')

define(`SCALARIZE_MASKED_MEM_INTRIN_LEGACY_PASS', `
ScalarizeMaskedMemIntrinLegacyPass [
    label="ScalarizeMaskedMemIntrinLegacyPass",
    shape=box,
    style=filled,
    color=yellow
];
')


define(`ADD_PRE_EMIT_PASS2_PASS', `
addPreEmitPass2 [
    label="addPreEmitPass2",
    shape=parallelogram,
    style=filled,
    color=orange
];
')

define(`ADD_MACHINE_SSA_OPTIMIZATION_PASS', `
addMachineSSAOptimization [
    label="addMachineSSAOptimization",
    shape=parallelogram,
    style=filled,
    color=orange
];
')

define(`ADD_OPTIMIZED_REG_ALLOC_PASS', `
addOptimizedRegAlloc [
    label="addOptimizedRegAlloc",
    shape=parallelogram,
    style=filled,
    color=orange
];
')

define(`ADD_FAST_REG_ALLOC_PASS', `
addFastRegAlloc [
    label="addFastRegAlloc",
    shape=parallelogram,
    style=filled,
    color=orange
];
')

define(`ADD_REG_ASSIGN_AND_REWRITE_FAST_PASS', `
addRegAssignAndRewriteFast [
    label="addRegAssignAndRewriteFast",
    shape=parallelogram,
    style=filled,
    color=orange
];
')

define(`ADD_REG_ASSIGN_AND_REWRITE_OPTIMIZED_PASS', `
addRegAssignAndRewriteOptimized [
    label="addRegAssignAndRewriteOptimized",
    shape=parallelogram,
    style=filled,
    color=orange
];
')

define(`INVOKE_GLOBAL_TARGET_PASS_CONFIG_CALLBACKS_PASS', `
invokeGlobalTargetPassConfigCallbacks [
    label="invokeGlobalTargetPassConfigCallbacks",
    shape=parallelogram,
    style=filled,
    color=orange
];
')


define(`ADD_IR_TRANSLATOR', `
addIRTranslator [
    label="addIRTranslator",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`IR_TRANSLATOR', `
IRTranslator [
    label="IRTranslator",
    shape=box,
    style=filled,
    color=green
];
')

define(`LOWER_EMU_TLS_PASS', `
LowerEmuTLSPass [
    label="LowerEmuTLSPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`PRE_ISEL_INTRINSIC_LOWERING_PASS', `
PreISelIntrinsicLoweringPass [
    label="PreISelIntrinsicLoweringPass",
    shape=box,
    style=filled,
    color=yellow
];
')



define(`ADD_PRE_LEGALIZE_MACHINE_IR', `
addPreLegalizeMachineIR [
    label="addPreLegalizeMachineIR",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_LEGALIZE_MACHINE_IR', `
addLegalizeMachineIR [
    label="addLegalizeMachineIR",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_PRE_REG_BANK_SELECT', `
addPreRegBankSelect [
    label="addPreRegBankSelect",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_REG_BANK_SELECT', `
addRegBankSelect [
    label="addRegBankSelect",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_PRE_GLOBAL_INSTRUCTION_SELECT', `
addPreGlobalInstructionSelect [
    label="addPreGlobalInstructionSelect",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_GLOBAL_INSTRUCTION_SELECT', `
addGlobalInstructionSelect [
    label="addGlobalInstructionSelect",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`ADD_GC_PASSES', `
addGCPasses [
    label="addGCPasses",
    shape=hexagon,
    style=filled,
    color=lightgray
];
')


define(`ADD_INST_SELECTOR', `
addInstSelector [
    label="addInstSelector",
    shape=hexagon,
    style=filled,
    color=green
];
')

define(`RESET_MACHINE_FUNCTION_PASS', `
ResetMachineFunctionPass [
    label="ResetMachineFunctionPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`INSTRUCTION_SELECT', `
InstructionSelect [
    label="InstructionSelect",
    shape=box,
    style=filled,
    color=green
];
')

define(`FINALIZE_ISEL', `
FinalizeISel [
    label="FinalizeISel",
    shape=box,
    style=filled,
    color=green
];
')

define(`MACHINE_BLOCK_PLACEMENT', `
MachineBlockPlacement [
    label="MachineBlockPlacement",
    shape=box,
    style=filled,
    color=green
];
')

define(`BRANCH_FOLDER_PASS', `
BranchFolderPass [
    label="BranchFolderPass",
    shape=box,
    style=filled,
    color=green
];
')

define(`CODEGEN_PREPARE_PASS', `
CodeGenPrepareLegacyPass [
    label="CodeGenPrepareLegacyPass",
    shape=box,
    style=filled,
    color=yellow
];
')

define(`ADD_POST_REWRITE', `
addPostRewrite [
    label="addPostRewrite",
    shape=hexagon,
    style=filled,
    color=yellow
];
')

define(`ADD_ASM_PRINTER', `
addAsmPrinter [
    label="addAsmPrinter",
    shape=hexagon,
    style=filled,
    color=lightgray
];
')

define(`ASM_PRINTER', `
AsmPrinter [
    label="AsmPrinter",
    shape=box,
    style=filled,
    color=lightgray
];
')

