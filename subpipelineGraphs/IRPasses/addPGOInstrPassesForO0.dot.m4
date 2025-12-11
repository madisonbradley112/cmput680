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
  INSTR_PROFILING_LOWERING_PASS 
  EXIT

  Entry -> PGOInstrumentationUse -> RequireAnalysisPass -> PGOInstrumentationGen -> InstrProfilingLoweringPass -> Exit
  Entry -> PGOInstrumentationGen
   label = "addPGOInstrPassesForO0"; 
  }
}