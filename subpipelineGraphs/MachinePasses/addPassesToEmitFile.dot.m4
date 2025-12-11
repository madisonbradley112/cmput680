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
  ADD_ASM_PRINTER
  PRINT_MIR_PASS
  FREE_MACHINE_FUNCTION_PASS
  EXIT

  Entry -> addPassesToGenerateCode -> addAsmPrinter -> PrintMIRPass -> FreeMachineFunctionPass -> Exit
  addPassesToGenerateCode -> FreeMachineFunctionPass
  addAsmPrinter -> FreeMachineFunctionPass
  
   label = "addPassesToEmitFile"; 
  }
}