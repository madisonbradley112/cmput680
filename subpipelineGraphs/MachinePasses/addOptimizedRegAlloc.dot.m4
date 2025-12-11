include(styles.m4)

digraph G {

  COLORS_LEGEND
 
  SHAPES_LEGEND

  subgraph cluster_3 {
    node [style=filled]
    style=filled;
    color=white;

  ENTRY
  DETECT_DEAD_LANES_PASS
  INIT_UNDEF_PASS
  PROCESS_IMPLICIT_DEFS_PASS
  UNREACHABLE_MACHINE_BLOCK_ELIM_PASS
  LIVE_VARIABLES_PASS
  MACHINE_LOOP_INFO_PASS
  PHI_ELIMINATION_PASS
  LIVE_INTERVALS_PASS
  TWO_ADDRESS_INSTRUCTION_PASS_PASS
  REGISTER_COALESCER_PASS
  RENAME_INDEPENDENT_SUBREGS_PASS
  MACHINE_SCHEDULER_PASS
  ADD_REG_ASSIGN_AND_REWRITE_OPTIMIZED_PASS
  STACK_SLOT_COLORING_PASS
  ADD_POST_REWRITE
  MACHINE_COPY_PROPAGATION_PASS
  MACHINE_LICM_PASS

  EXIT

  Entry -> DetectDeadLanes -> InitUndef -> ProcessImplicitDefs -> UnreachableMachineBlockElim -> LiveVariables -> MachineLoopInfo -> PHIElimination -> LiveIntervals -> TwoAddressInstructionPass
  PHIElimination -> TwoAddressInstructionPass -> RegisterCoalescer -> RenameIndependentSubregs -> MachineScheduler -> addRegAssignAndRewriteOptimized -> StackSlotColoring -> addPostRewrite -> MachineCopyPropagation -> MachineLICM -> Exit
  addRegAssignAndRewriteOptimized -> Exit

  
   label = "addOptimizedRegAlloc"; 
  }
}