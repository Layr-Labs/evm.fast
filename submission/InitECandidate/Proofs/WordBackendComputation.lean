import Flapjack.Compiler.Backend.WordToWord.FastCompile

/-! Compose checked function optimizations without reducing their bodies. -/
set_option autoImplicit false
namespace InitECandidate.Proofs.WordBackendComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.Asm

theorem compileWith_eq_of_parts (ra : WordToWord.RegAllocFn)
    {width : Nat} [NeZero width] (config : WordToWord.Config)
    (target : AsmConfigExact width)
    (inputs outputs : List (Nat × Nat × WordLangProgHOL (BitVec width)))
    (oracles remaining : List (Option (Spt Nat)))
    (next : WordToWord.nextNOracle inputs.length config.colOracle = (oracles, remaining))
    (functions : (inputs.zip oracles).map
      (WordToWord.fullCompileSingleWith ra target.twoRegArith
        (target.regCount - (5 + target.avoidRegs.length)) config.regAlg target) = outputs) :
    WordToWord.compileWith ra config target inputs = (remaining, outputs) := by
  unfold WordToWord.compileWith
  dsimp only
  rw [next]
  dsimp only
  rw [functions]

/-- Consuming one provided oracle per function leaves no oracle remainder. -/
theorem nextNOracle_self (oracles : List (Option (Spt Nat))) :
    WordToWord.nextNOracle oracles.length oracles = (oracles, []) := by
  simp [WordToWord.nextNOracle]

#print axioms nextNOracle_self
#print axioms compileWith_eq_of_parts
end InitECandidate.Proofs.WordBackendComputation
