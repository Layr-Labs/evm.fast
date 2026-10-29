import Flapjack.Compiler.Backend.WordToWord.FastCompile

namespace InitECandidate.Proofs.AllocationComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.Asm

/-- Certify the supplied oracle in small equations, without evaluating the
allocator's unused rejection branch or repeating the coloured program. -/
theorem wordAllocWith_eq_of_checks {width : Nat} [NeZero width]
    (ra : WordToWord.RegAllocFn) (fc : Nat) (c : AsmConfigExact width)
    (alg k : Nat) (input output : WordLangProgHOL (BitVec width))
    (oracle : Option (Spt Nat)) (colour : Spt Nat)
    (oracle_eq : oracle = some colour)
    (even_eq : WordAlloc.everyEvenColour colour = true)
    (clash_eq : (RegAlloc.checkClashTree (WordAlloc.totalColour colour)
      (WordAlloc.getClashTree input []) .ln .ln).isSome = true)
    (apply_eq : WordAlloc.applyColour (WordAlloc.totalColour colour) input = output)
    (stack_eq : everyStackVarHOL (fun x => decide (2 * k ≤ x)) output = true)
    (forced_eq : (WordAlloc.getForced c input []).all
      (fun (x, y) => WordAlloc.totalColour colour x != WordAlloc.totalColour colour y) = true) :
    WordToWord.wordAllocWith ra fc c alg k input oracle = output := by
  unfold WordToWord.wordAllocWith WordAlloc.oracleColourOk
  rw [oracle_eq]
  dsimp only
  rw [even_eq, clash_eq]
  simp only [Bool.true_and, ite_true]
  rw [apply_eq, stack_eq, forced_eq]
  rfl

#print axioms wordAllocWith_eq_of_checks
end InitECandidate.Proofs.AllocationComputation
