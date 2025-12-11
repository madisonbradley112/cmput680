include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  MEM_PROF_REMOVE_INFO_PASS
  ANNOTATION_2_METADATA_PASS
  FORCE_FUNCTION_ATTRS_PASS
  ADD_DISCRIMINATORS_PASS
  INVOKE_PIPELINE_START_EP_CALLBACKS_PASS
  BUILD_MODULE_SIMPLIFICATION_PIPELINE
  BUILD_MODULE_OPTIMIZATION_PIPELINE
  PSEUDO_PROBE_UPDATE_PASS
  ADD_ANNOTATION_REMARKS_PASS
  ADD_REQUIRED_LTO_PRE_LINK_PASSES
  BUILD_O0_DEFAULT_PIPELINE
  EXIT

  Entry -> MemProfRemoveInfo -> Annotation2MetadataPass
  Entry -> Annotation2MetadataPass -> ForceFunctionAttrsPass -> AddDiscriminatorsPass -> invokePipelineStartEPCallbacks
  ForceFunctionAttrsPass -> invokePipelineStartEPCallbacks -> buildModuleSimplificationPipeline -> buildModuleOptimizationPipeline -> PseudoProbeUpdatePass -> addAnnotationRemarksPass -> addRequiredLTOPreLinkPasses -> Exit
  buildModuleOptimizationPipeline -> addAnnotationRemarksPass -> Exit
  Entry -> buildO0DefaultPipeline -> Exit
   label = "buildPerModuleDefaultPipeline"; 
  }
}