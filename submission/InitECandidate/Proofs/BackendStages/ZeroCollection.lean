import InitECandidate.Proofs.BackendComputation
set_option autoImplicit false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroCollection
def lineTarget {width : Nat} [NeZero width] (line : LabSem.LabLineHOL width) : Option Nat :=
  match line with
  | .labAsm (.locValue _ (.lab key 0)) _ _ _ => some key
  | .labAsm (.jump (.lab key 0)) _ _ _ => some key
  | .labAsm (.jumpCmp _ _ _ (.lab key 0)) _ _ _ => some key
  | _ => none
theorem lineTarget_eq {width : Nat} [NeZero width]
    (line : LabSem.LabLineHOL width) (acc : NumSet) :
    LabToTarget.lineGetZeroLabsAcc line acc =
      (lineTarget line).elim acc (fun key => sptInsert key () acc) := by
  cases line with
  | label a b c => rfl
  | asm a b c => rfl
  | labAsm a w bytes len =>
    cases a <;> try rfl
    case jump target => cases target with | lab n k => cases k <;> rfl
    case jumpCmp op condition right target => cases target with | lab n k => cases k <;> rfl
    case locValue register target => cases target with | lab n k => cases k <;> rfl
theorem linesTarget_eq {width : Nat} [NeZero width]
    (lines : List (LabSem.LabLineHOL width)) (acc : NumSet) :
    lines.foldr LabToTarget.lineGetZeroLabsAcc acc =
      (lines.filterMap lineTarget).foldr (fun key acc => sptInsert key () acc) acc := by
  induction lines with
  | nil => rfl
  | cons line rest ih =>
    rw [List.foldr_cons, ih, lineTarget_eq]
    cases h : lineTarget line <;> simp [List.filterMap_cons, h, List.foldr]
#print axioms lineTarget_eq
#print axioms linesTarget_eq
end InitECandidate.Proofs.BackendStages.ZeroCollection
