import Lean
import InitECandidate.Proofs.DeadComputation
import Flapjack.RiscV.NativeSource

/-! Kernel computation uses the pure allocator through its proved equality.
The executable allocator's arrays and machine-word indices are optimized for
native execution, rather than symbolic proof reduction. -/
namespace InitECandidate.Proofs.CompilerComputation
attribute [scoped cbv_eval] Flapjack.RegAlloc.regAllocExecutable_eq
attribute [scoped cbv_eval] Flapjack.WordAlloc.removeDeadStructural_eq
end InitECandidate.Proofs.CompilerComputation
