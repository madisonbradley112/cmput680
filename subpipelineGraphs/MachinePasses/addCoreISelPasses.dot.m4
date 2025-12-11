include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  ADD_IR_TRANSLATOR
  ADD_PRE_LEGALIZE_MACHINE_IR
  ADD_LEGALIZE_MACHINE_IR
  ADD_PRE_REG_BANK_SELECT
  ADD_REG_BANK_SELECT
  ADD_PRE_GLOBAL_INSTRUCTION_SELECT
  ADD_GLOBAL_INSTRUCTION_SELECT
  RESET_MACHINE_FUNCTION_PASS
  ADD_INST_SELECTOR
  FINALIZE_ISEL
  EXIT

  
  Entry -> addIRTranslator -> addPreLegalizeMachineIR
  Entry -> addPreLegalizeMachineIR -> addLegalizeMachineIR -> addPreRegBankSelect -> addRegBankSelect -> addPreGlobalInstructionSelect -> addGlobalInstructionSelect -> ResetMachineFunctionPass -> FinalizeISel
  addGlobalInstructionSelect -> addInstSelector -> FinalizeISel -> Exit
  ResetMachineFunctionPass -> addInstSelector
   label = "addCoreISelPasses"; 
  }
}