import InitECandidate.Proofs.CompactComputation
import Flapjack.Compiler.Backend.WordCopy
open Flapjack Flapjack.Compiler.Backend
namespace CheckerExperiment
abbrev Prog := WordLangProgHOL (BitVec 64)
-- Deliberately restricted whitelist; rejects every unsupported constructor.
def check : Prog → Bool
  | .skip => true
  | .tick => true
  | .inst (.const _ _) => true
  | .inst (.arith (.div _ _ _)) => true
  | .seq a b => check a && check b
  | _ => false

theorem check_sound (p : Prog) (h : check p = true) :
    WordCopy.copyPropProg p WordCopy.emptyEq = (p, WordCopy.emptyEq) := by
  cases p with
  | skip => rfl
  | tick => rfl
  | inst i =>
    cases i with
    | const r w => rfl
    | arith a =>
      cases a <;> simp only [check, Bool.false_eq_true] at h
      case div r a b => rfl
    | _ => simp only [check, Bool.false_eq_true] at h
  | seq a b =>
    have hs : check a = true ∧ check b = true := by
      simpa only [check, Bool.and_eq_true] using h
    simp only [WordCopy.copyPropProg, check_sound a hs.1, check_sound b hs.2]
  | _ => simp only [check, Bool.false_eq_true] at h
termination_by p

theorem certificate (p : Prog) (h : check p = true) : WordCopy.copyProp p = p := by
  exact congrArg Prod.fst (check_sound p h)
#print axioms check_sound
#print axioms certificate
end CheckerExperiment
