import Flapjack.Compiler.Backend.StackAlloc.Compile
import InitECandidate.Proofs.CompactComputation

/-! Experimental submission-side reflection. Not imported by the submission.
The checker rejects operations changed by StackAlloc, including discarded
exception handlers on non-returning calls. No compiler or verifier is changed.
-/
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace StackReflection
open Flapjack Flapjack.Compiler.Backend

def allocFree {width : Nat} [NeZero width] : StackLang.HolProg width → Bool
  | .seq p q | .ite _ _ _ p q => allocFree p && allocFree q
  | .loop p => allocFree p
  | .call none _ none => true
  | .call none _ (some _) => false
  | .call (some (p, _, _, _)) _ none => allocFree p
  | .call (some (p, _, _, _)) _ (some (q, _, _)) => allocFree p && allocFree q
  | .alloc _ | .storeConsts _ _ (some _) => false
  | _ => true

theorem comp_eq {width : Nat} [NeZero width] (n m : Nat) (p : StackLang.HolProg width)
    (h : allocFree p = true) : StackAlloc.comp n m p = (p, m) := by
  fun_induction StackAlloc.comp n m p <;> simp_all +zetaDelta [allocFree]
  rename_i m dest handler
  cases handler <;> simp_all [allocFree]

theorem progComp_eq {width : Nat} [NeZero width] (n : Nat) (p : StackLang.HolProg width)
    (h : allocFree p = true) : StackAlloc.progComp (n, p) = (n, p) := by
  unfold StackAlloc.progComp
  dsimp only
  rw [comp_eq _ _ _ h]

#print axioms progComp_eq
end StackReflection
