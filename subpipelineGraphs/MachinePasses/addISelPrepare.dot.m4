include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  ADD_PRE_ISEL
  DUMMY_CGSCC_PASS
  OBJ_C_ARC_CONTRACT_PASS
  CALL_BR_PASS
  SAFE_STACK_PASS
  STACK_PROTECTOR_PASS
  PRINT_FUNCTION_PASS
  VERIFIER_PASS
  EXIT

  
  Entry -> addPreISel -> DummyCGSCCPass -> ObjCARCContractPass
  DummyCGSCCPass -> CallBrPass
  addPreISel -> ObjCARCContractPass -> CallBrPass
  addPreISel -> CallBrPass
  CallBrPass -> SafeStackPass -> StackProtectorPass
  StackProtectorPass -> PrintFunctionPass -> VerifierPass -> Exit
  StackProtectorPass -> VerifierPass
  PrintFunctionPass -> Exit
  StackProtectorPass -> Exit

  
   label = "addISelPrepare"; 
  }
}