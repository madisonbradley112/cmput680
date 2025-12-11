include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  INSTRUCTION_SELECT
  EXIT

  
  Entry -> InstructionSelect -> Exit
   label = "addGlobalInstructionSelect"; 
  }
}