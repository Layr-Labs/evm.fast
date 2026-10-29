import InitECandidate.Proofs.CompilerComputation
import InitE.Parameters
import Flapjack.Compiler.Backend.RiscVConfig.Executable
import Flapjack.Compiler.Backend.StackRemove.Proofs.InitLimits

open scoped InitECandidate.Proofs.CompilerComputation

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false

namespace InitE
open Flapjack Flapjack.Compiler.Backend

/-- The exact limit arithmetic used by `readLimits` for the baseline pointers.
This includes the compiler's stack reservation margins. -/
def installedLimits : Nat × Nat :=
  StackRemove.Proofs.InitLimits.getStackHeapLimit
    (2 * DataToWord.maxHeapLimit 64 RiscVConfig.pancakeRiscVBackendConfig.dataConf - 1)
    ((BitVec.ofNat 64 sourceBase), BitVec.ofNat 64 stackStart, BitVec.ofNat 64 ramEnd)

/-- The certified conservative stack upper bound fits after reservation margins. -/
theorem baseline_stack_bound_fits : 7480 < installedLimits.1 := by
  decide_cbv

/-- Globals occupy the tail of the heap-shaped ordinary-memory domain. -/
theorem source_top_excludes_globals :
    heapEnd = sourceBase + 8 * ((stackStart - sourceBase) / 8) - globalsWords * 8 := by
  decide

theorem allocator_split_aligned : (stackStart - sourceBase) % 16 = 0 := by decide

end InitE
