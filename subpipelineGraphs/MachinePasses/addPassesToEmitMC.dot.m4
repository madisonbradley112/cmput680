include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  ADD_PASSES_TO_GENERATE_CODE_PASS
  ASM_PRINTER
  FREE_MACHINE_FUNCTION_PASS
  EXIT

  Entry -> addPassesToGenerateCode -> AsmPrinter -> FreeMachineFunctionPass -> Exit
  
   label = "addOptimizedRegAlloc"; 
  }
}