import InitECandidate.Proofs.LoopComputation
import Flapjack.Pancake.LoopToWord.CompFuncExact

set_option autoImplicit false
namespace InitECandidate.Proofs.WordFrontendComputation
open Flapjack

def compileEntry {width : Nat} [NeZero width]
    (input : Nat × List Nat × HolLoopProg width) : Nat × Nat × WordLangProgHOL (BitVec width) :=
  (input.1, input.2.1.length + 1, loopToWordCompFuncHOL input.1 input.2.1 input.2.2)

theorem compileProg_eq_map {width : Nat} [NeZero width]
    (prog : List (Nat × List Nat × HolLoopProg width)) :
    loopToWordCompileHOL prog = prog.map compileEntry := by rfl

#print axioms compileProg_eq_map
end InitECandidate.Proofs.WordFrontendComputation
