include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  PGO_INSTRUMENTATION_USE_PASS
  REQUIRE_ANALYSIS_PASS
  PGO_INSTRUMENTATION_GEN_PASS
  ADD_POST_PGO_LOOP_ROTATION
  INSTR_PROFILING_LOWERING_PASS 
  EXIT

  Entry -> PGOInstrumentationUse -> RequireAnalysisPass -> Exit
  Entry -> PGOInstrumentationGen -> addPostPGOLoopRotation -> InstrProfilingLoweringPass -> Exit
   label = "addPGOInstrPasses"; 
  }
}