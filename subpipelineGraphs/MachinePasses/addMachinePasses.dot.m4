include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  ADD_MACHINE_SSA_OPTIMIZATION_PASS
  LOCAL_STACK_SLOT_ALLOCATION_PASS
  REG_USAGE_INFO_PROP_PASS
  ADD_PRE_REG_ALLOC
  MIR_ADD_FS_DISCRIMINATORS_PASS_1
  MIR_PROFILE_LOADER_PASS_1
  ADD_OPTIMIZED_REG_ALLOC_PASS
  ADD_FAST_REG_ALLOC_PASS
  ADD_POST_REG_ALLOC
  REMOVE_REDUNDANT_DEBUG_VALUES_PASS
  FIXUP_STATEPOINT_CALLER_SAVED_ID
  POST_RA_MACHINE_SINKING_PASS
  SHRINK_WRAP_PASS
  PROLOG_EPILOG_INSERTER_PASS
  ADD_MACHINE_LATE_OPTIMIZATION
  EXPAND_POST_RA_PSEUDOS_PASS
  ADD_PRE_SCHED2
  IMPLICIT_NULL_CHECKS_PASS
  POST_MACHINE_SCHEDULER_PASS
  POST_RA_SCHEDULER_PASS
  ADD_GC_PASSES
  ADD_BLOCK_PLACEMENT
  F_ENTRY_INSERTER
  XRAY_INSTRUMENTATION
  PATCHABLE_FUNCTION
  ADD_PRE_EMIT_PASS_PASS
  REG_USAGE_INFO_COLLECTOR_PASS
  FUNCLET_LAYOUT
  REMOVE_LOADS_INTO_FAKE_USES_PASS
  STACK_MAP_LIVENESS_PASS
  LIVE_DEBUG_VALUES_PASS
  MACHINE_SANITIZER_BINARY_METADATA_PASS
  MACHINE_OUTLINER_PASS
  GC_EMPTY_BASIC_BLOCKS_PASS
  MIR_ADD_FS_DISCRIMINATORS_PASS_2
  MIR_PROFILE_LOADER_PASS_2
  MACHINE_FUNCTION_SPLITTER_PASS
  STATIC_DATA_SPLITTER_PASS
  STATIC_DATA_ANNOTATOR_PASS
  MACHINE_BLOCK_HASH_INFO_PASS
  BASIC_BLOCK_SECTIONS_PROFILE_READER_WRAPPER_PASS
  BASIC_BLOCK_PATH_CLONING_PASS
  BASIC_BLOCK_SECTIONS_PASS
  ADD_POST_BB_SECTIONS
  CFI_FIXUP_PASS
  STACK_FRAME_LAYOUT_ANALYSIS_PASS
  ADD_PRE_EMIT_PASS2_PASS
  EXIT

  
  Entry -> addMachineSSAOptimization -> RegUsageInfoPropPass
  Entry -> LocalStackSlotAllocation -> RegUsageInfoPropPass
  addMachineSSAOptimization -> addPreRegAlloc 
  LocalStackSlotAllocation -> addPreRegAlloc
  RegUsageInfoPropPass -> addPreRegAlloc

  addPreRegAlloc -> MIRAddFSDiscriminatorsPass_1 -> MIRProfileLoaderPass_1
  MIRAddFSDiscriminatorsPass_1 -> addOptimizedRegAlloc
  MIRAddFSDiscriminatorsPass_1 -> addFastRegAlloc
  MIRProfileLoaderPass_1 -> addOptimizedRegAlloc
  MIRProfileLoaderPass_1 -> addFastRegAlloc
  addPreRegAlloc -> addOptimizedRegAlloc
  addPreRegAlloc -> addFastRegAlloc
  BasicBlockSectionsPass -> addPostBBSections

  addOptimizedRegAlloc -> addPostRegAlloc 
  addFastRegAlloc -> addPostRegAlloc
  addPostRegAlloc -> RemoveRedundantDebugValues -> FixupStatepointCallerSavedID
  PostRAMachineSinking -> ShrinkWrap
  FixupStatepointCallerSavedID -> PostRAMachineSinking
  FixupStatepointCallerSavedID -> PrologEpilogInserterPass
  FixupStatepointCallerSavedID -> addMachineLateOptimization
  FixupStatepointCallerSavedID -> ExpandPostRAPseudos
  

  ShrinkWrap -> PrologEpilogInserterPass
  ShrinkWrap -> addMachineLateOptimization
  ShrinkWrap -> ExpandPostRAPseudos

  PrologEpilogInserterPass -> addMachineLateOptimization
  PrologEpilogInserterPass -> ExpandPostRAPseudos

  addMachineLateOptimization -> ExpandPostRAPseudos -> addPreSched2 -> ImplicitNullChecks
  addPreSched2 -> PostMachineScheduler
  addPreSched2 -> PostRAScheduler
  addPreSched2 -> addGCPasses

  ImplicitNullChecks -> PostMachineScheduler
  ImplicitNullChecks -> PostRAScheduler
  ImplicitNullChecks -> addGCPasses

  addGCPasses -> addBlockPlacement -> FEntryInserter
  addGCPasses -> FEntryInserter -> XRayInstrumentation -> PatchableFunction -> addPreEmitPass -> RegUsageInfoCollector -> FuncletLayout
  addPreEmitPass -> FuncletLayout -> RemoveLoadsIntoFakeUses -> StackMapLiveness -> LiveDebugValues 
  LiveDebugValues -> MachineSanitizerBinaryMetadata
  
  StaticDataSplitterPass -> StaticDataAnnotatorPass
  MachineBlockHashInfoPass -> BasicBlockSectionsProfileReaderWrapperPass -> BasicBlockMatchingAndInferencePass 
  BasicBlockSectionsProfileReaderWrapperPass -> BasicBlockPathCloningPass
  MachineBlockHashInfoPass -> BasicBlockSectionsPass
  BasicBlockMatchingAndInferencePass -> BasicBlockSectionsPass 
  BasicBlockPathCloningPass -> BasicBlockSectionsPass

  MachineSanitizerBinaryMetadata -> MachineOutlinerPass 
  MachineSanitizerBinaryMetadata -> GCEmptyBasicBlocks 
  MachineSanitizerBinaryMetadata -> MIRAddFSDiscriminatorsPass_2
  MachineSanitizerBinaryMetadata -> MIRProfileLoaderPass_2
  MachineSanitizerBinaryMetadata -> MachineFunctionSplitter 
  MachineSanitizerBinaryMetadata -> StaticDataSplitterPass
  MachineSanitizerBinaryMetadata -> MachineBlockHashInfoPass
  MachineSanitizerBinaryMetadata -> BasicBlockSectionsProfileReaderWrapperPass
  MachineSanitizerBinaryMetadata -> BasicBlockSectionsPass
  MachineSanitizerBinaryMetadata -> addPostBBSections

  MachineOutlinerPass -> GCEmptyBasicBlocks 
  MachineOutlinerPass -> MIRAddFSDiscriminatorsPass_2
  MachineOutlinerPass -> MIRProfileLoaderPass_2
  MachineOutlinerPass -> MachineFunctionSplitter 
  MachineOutlinerPass -> StaticDataSplitterPass
  MachineOutlinerPass -> MachineBlockHashInfoPass
  MachineOutlinerPass -> BasicBlockSectionsProfileReaderWrapperPass
  MachineOutlinerPass -> BasicBlockSectionsPass
  MachineOutlinerPass -> addPostBBSections

  GCEmptyBasicBlocks -> MIRAddFSDiscriminatorsPass_2
  GCEmptyBasicBlocks -> MIRProfileLoaderPass_2
  GCEmptyBasicBlocks -> MachineFunctionSplitter 
  GCEmptyBasicBlocks -> StaticDataSplitterPass
  GCEmptyBasicBlocks -> MachineBlockHashInfoPass
  GCEmptyBasicBlocks -> BasicBlockSectionsProfileReaderWrapperPass
  GCEmptyBasicBlocks -> BasicBlockSectionsPass
  GCEmptyBasicBlocks -> addPostBBSections

  MIRAddFSDiscriminatorsPass_2 -> MIRProfileLoaderPass_2
  MIRAddFSDiscriminatorsPass_2 -> MachineFunctionSplitter 
  MIRAddFSDiscriminatorsPass_2 -> StaticDataSplitterPass
  MIRAddFSDiscriminatorsPass_2 -> MachineBlockHashInfoPass
  MIRAddFSDiscriminatorsPass_2 -> BasicBlockSectionsProfileReaderWrapperPass
  MIRAddFSDiscriminatorsPass_2 -> BasicBlockSectionsPass
  MIRAddFSDiscriminatorsPass_2 -> addPostBBSections

  MIRProfileLoaderPass_2 -> MachineFunctionSplitter 
  MIRProfileLoaderPass_2 -> StaticDataSplitterPass
  MIRProfileLoaderPass_2 -> MachineBlockHashInfoPass
  MIRProfileLoaderPass_2 -> BasicBlockSectionsProfileReaderWrapperPass
  MIRProfileLoaderPass_2 -> BasicBlockSectionsPass
  MIRProfileLoaderPass_2 -> addPostBBSections
 
  MachineFunctionSplitter -> StaticDataSplitterPass
  MachineFunctionSplitter -> MachineBlockHashInfoPass
  MachineFunctionSplitter -> BasicBlockSectionsProfileReaderWrapperPass
  MachineFunctionSplitter -> BasicBlockSectionsPass
  MachineFunctionSplitter -> addPostBBSections

  StaticDataAnnotatorPass -> MachineBlockHashInfoPass
  StaticDataAnnotatorPass -> BasicBlockSectionsProfileReaderWrapperPass
  StaticDataAnnotatorPass -> BasicBlockSectionsPass
  StaticDataAnnotatorPass -> addPostBBSections

  addPostBBSections -> CFIFixup -> StackFrameLayoutAnalysisPass
  addPostBBSections -> StackFrameLayoutAnalysisPass -> addPreEmitPass2

  PostMachineScheduler -> PostRAScheduler
  PostMachineScheduler -> addGCPasses
  PostRAScheduler -> addGCPasses
  addPreEmitPass2 -> Exit

   label = "addMachinePasses"; 
  }
}