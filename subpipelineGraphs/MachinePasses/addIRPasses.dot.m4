include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  ATOMIC_EXPAND_LEGACY_PASS
  RISCV_ZACAS_ABI_FIX_PASS
  LOOP_DATA_PREFETCH_PASS
  RISCV_GATHER_SCATTER_LOWERING_PASS
  INTERLEAVED_ACCESS_PASS
  RISCV_CODE_GEN_PREPARE_LEGACY_PASS
  VERIFIER_PASS
  TYPE_BASED_AA_WRAPPER_PASS
  SCOPED_NO_ALIAS_AA_WRAPPER_PASS
  BASIC_AA_WRAPPER_PASS
  EXPAND_MEM_CMP_LEGACY_PASS
  CANONICALIZE_FREEZE_IN_LOOPS_PASS
  LOOP_STRENGTH_REDUCE_PASS
  LOOP_TERM_FOLD_PASS
  EXPAND_MEM_CMP_LEGACY_PASS
  MERGE_ICMPS_LEGACY_PASS
  GC_LOWERING_PASS
  SHADOW_STACK_GC_LOWERING_PASS
  LOWER_GLOBAL_DTORS_LEGACY_PASS
  UNREACHABLE_BLOCK_ELIMINATION_PASS
  CONSTANT_HOISTING_PASS
  REPLACE_WITH_VECLIB_LEGACY_PASS
  PARTIALLY_INLINE_LIB_CALLS_PASS
  POST_INLINE_ENTRY_EXIT_INSTRUMENTER_PASS
  SCALARIZE_MASKED_MEM_INTRIN_LEGACY_PASS
  EXPAND_REDUCTIONS_PASS
  SELECT_OPTIMIZE_PASS
  GLOBAL_MERGE_FUNC_PASS
  WINDOWS_SECURE_HOT_PATCHING_PASS
  EXIT

  
  Entry -> AtomicExpandLegacyPass -> RISCVZacasABIFixPass -> LoopDataPrefetchPass -> RISCVGatherScatterLoweringPass
  RISCVZacasABIFixPass -> RISCVGatherScatterLoweringPass -> InterleavedAccessPass -> RISCVCodeGenPrepareLegacyPass -> VerifierPass
  RISCVZacasABIFixPass -> VerifierPass 
  RISCVZacasABIFixPass -> TypeBasedAAWrapperPass
  RISCVZacasABIFixPass -> GCLowering
  VerifierPass -> GCLowering
  VerifierPass -> TypeBasedAAWrapperPass
  RISCVCodeGenPrepareLegacyPass -> GCLowering
  RISCVCodeGenPrepareLegacyPass -> TypeBasedAAWrapperPass -> ScopedNoAliasAAWrapperPass -> BasicAAWrapperPass
  BasicAAWrapperPass -> CanonicalizeFreezeInLoopsPass -> LoopStrengthReducePass -> LoopTermFoldPass 
  LoopStrengthReducePass -> MergeICmpsLegacyPass 
  LoopStrengthReducePass -> ExpandMemCmpLegacyPass
  LoopTermFoldPass -> MergeICmpsLegacyPass 
  LoopTermFoldPass -> ExpandMemCmpLegacyPass
  BasicAAWrapperPass -> MergeICmpsLegacyPass 
  BasicAAWrapperPass -> ExpandMemCmpLegacyPass 
  ExpandMemCmpLegacyPass -> GCLowering
  GCLowering -> ShadowStackGCLowering
  ShadowStackGCLowering -> LowerGlobalDtorsLegacyPass -> UnreachableBlockEliminationPass
  ShadowStackGCLowering -> UnreachableBlockEliminationPass
  UnreachableBlockEliminationPass -> ConstantHoistingPass 
  UnreachableBlockEliminationPass -> ReplaceWithVeclibLegacyPass 
  UnreachableBlockEliminationPass -> PartiallyInlineLibCallsPass
  UnreachableBlockEliminationPass -> PostInlineEntryExitInstrumenterPass
   
  ConstantHoistingPass -> ReplaceWithVeclibLegacyPass 
  ConstantHoistingPass -> PartiallyInlineLibCallsPass
  ConstantHoistingPass -> PostInlineEntryExitInstrumenterPass
   
  ReplaceWithVeclibLegacyPass -> PartiallyInlineLibCallsPass
  ReplaceWithVeclibLegacyPass -> PostInlineEntryExitInstrumenterPass

  PartiallyInlineLibCallsPass -> PostInlineEntryExitInstrumenterPass -> ScalarizeMaskedMemIntrinLegacyPass 
  
  ScalarizeMaskedMemIntrinLegacyPass -> ExpandReductionsPass
  ScalarizeMaskedMemIntrinLegacyPass -> SelectOptimizePass
  ScalarizeMaskedMemIntrinLegacyPass -> GlobalMergeFuncPass
  ScalarizeMaskedMemIntrinLegacyPass -> WindowsSecureHotPatchingPass

  ExpandReductionsPass -> SelectOptimizePass
  ExpandReductionsPass -> GlobalMergeFuncPass
  ExpandReductionsPass -> WindowsSecureHotPatchingPass

  SelectOptimizePass -> GlobalMergeFuncPass
  SelectOptimizePass -> WindowsSecureHotPatchingPass

  GlobalMergeFuncPass -> WindowsSecureHotPatchingPass

  ScalarizeMaskedMemIntrinLegacyPass -> Exit
  ExpandReductionsPass -> Exit
  SelectOptimizePass -> Exit 
  GlobalMergeFuncPass -> Exit 
  WindowsSecureHotPatchingPass -> Exit

  MergeICmpsLegacyPass -> ExpandMemCmpLegacyPass

   label = "addIRPasses"; 
  }
}