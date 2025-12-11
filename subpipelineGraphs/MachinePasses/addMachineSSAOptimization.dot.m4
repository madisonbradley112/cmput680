include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  RISCV_VECTOR_PEEPHOLE_PASS
  RISCV_FOLD_MEM_OFFSET_PASS
  EARLY_TAIL_DUPLICATE_LEGACY_PASS
  OPTIMIZE_PHIS_PASS
  STACK_COLORING_LEGACY_PASS
  LOCAL_STACK_SLOT_ALLOCATION_PASS
  DEAD_MACHINE_INSTRUCTION_ELIM_PASS_1
  ADD_ILP_OPTS
  EARLY_MACHINE_LICM_PASS
  MACHINE_CSE_LEGACY_PASS
  MACHINE_SINKING_LEGACY_PASS
  PEEPHOLE_OPTIMIZER_LEGACY
  DEAD_MACHINE_INSTRUCTION_ELIM_PASS_2
  RISCV_OPT_W_INSTRS_PASS
  EXIT

  Entry -> RISCVVectorPeepholePass -> RISCVFoldMemOffsetPass -> EarlyTailDuplicateLegacy -> OptimizePHIsLegacy -> StackColoringLegacy -> LocalStackSlotAllocation -> DeadMachineInstructionElim_1 -> addILPOpts -> EarlyMachineLICM -> MachineCSELegacy -> MachineSinkingLegacy -> PeepholeOptimizerLegacy -> DeadMachineInstructionElim_2 -> Exit
  DeadMachineInstructionElim_2 -> RISCVOptWInstrsPass -> Exit
  

  
   label = "addMachineSSAOptimization"; 
  }
}