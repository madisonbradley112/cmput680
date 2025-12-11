include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  LOOP_VECTORIZE_PASS 
  DROP_UNNECESSARY_ASSUMES_PASS
  INFER_ALIGNMENT_PASS_1
  LOOP_UNROLL_AND_JAM_PASS_1
  LOOP_UNROLL_PASS_1
  LOOP_LOAD_ELIMINATION_PASS
  WARN_MISSED_TRANSFORMATIONS_PASS_1
  SROA_PASS_1
  INST_COMBINE_PASS_1
  EARLY_CSE_PASS_1
  CORRELATED_VALUE_PROPAGATION_PASS
  INST_COMBINE_PASS_2
  LICM_PASS_1
  SIMPLE_LOOP_UNSWITCH_PASS
  SIMPLIFY_CFG_PASS_1
  INST_COMBINE_PASS_3
  SIMPLIFY_CFG_PASS_2
  SCCP_PASS
  INST_COMBINE_PASS_4
  BDCE_PASS
  SLP_VECTORIZER_PASS
  EARLY_CSE_PASS_2
  VECTOR_COMBINE_PASS
  INST_COMBINE_PASS_5
  LOOP_UNROLL_AND_JAM_PASS_2
  LOOP_UNROLL_PASS_2
  WARN_MISSED_TRANSFORMATIONS_PASS_2
  SROA_PASS_2
  INFER_ALIGNMENT_PASS_2
  INST_COMBINE_PASS_6
  LICM_PASS_2
  ALIGNMENT_FROM_ASSUMPTIONS_PASS
  EXIT

  Entry -> LoopVectorizePass -> DropUnnecessaryAssumesPass -> InferAlignmentPass_1
  LoopVectorizePass -> InferAlignmentPass_1
  InferAlignmentPass_1 -> LoopUnrollAndJamPass_1
  InferAlignmentPass_1 -> LoopUnrollPass_1
  InferAlignmentPass_1 -> LoopLoadEliminationPass
  LoopUnrollAndJamPass_1 -> LoopUnrollPass_1
  LoopUnrollPass_1 -> WarnMissedTransformationsPass_1 -> SROAPass_1 -> InstCombinePass_1
  LoopLoadEliminationPass -> InstCombinePass_1
  InstCombinePass_1 -> EarlyCSEPass_1 -> CorrelatedValuePropagationPass -> InstCombinePass_2 -> LICMPass_1 -> SimpleLoopUnswitchPass -> SimplifyCFGPass_1 -> InstCombinePass_3 -> SimplifyCFGPass_2
  InstCombinePass_1 -> SimplifyCFGPass_2
  SimplifyCFGPass_2 -> SCCPPass -> InstCombinePass_4 -> BDCEPass -> SLPVectorizerPass
  SimplifyCFGPass_2 -> SLPVectorizerPass
  SimplifyCFGPass_2 -> VectorCombinePass
  BDCEPass -> VectorCombinePass
  VectorCombinePass -> InferAlignmentPass_2
  VectorCombinePass -> InstCombinePass_5 -> LoopUnrollPass_2
  InstCombinePass_5 -> LoopUnrollAndJamPass_2 -> LoopUnrollPass_2
  LoopUnrollPass_2 -> WarnMissedTransformationsPass_2 -> SROAPass_2 -> InferAlignmentPass_2 -> InstCombinePass_6 -> LICMPass_2 -> AlignmentFromAssumptionsPass -> Exit
  SLPVectorizerPass -> EarlyCSEPass_2 -> VectorCombinePass 
   
   label = "addVectorPasses"; 
  }
}