import InitECandidate.Proofs.BackendStages.ZeroCollection
set_option autoImplicit false
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroProgramCollection
def targets {width : Nat} [NeZero width] (code : LabSem.LabProgHOL width) : List Nat :=
  (code.map (fun sec => sec.lines.filterMap ZeroCollection.lineTarget)).flatten
theorem fold_eq {width : Nat} [NeZero width] (code : LabSem.LabProgHOL width) (acc : NumSet) :
    code.foldr LabToTarget.secGetZeroLabsAcc acc =
      (targets code).foldr (fun key acc => sptInsert key () acc) acc := by
  induction code with
  | nil => rfl
  | cons sec rest ih =>
    unfold targets at *
    rw [List.foldr_cons, ih, LabToTarget.secGetZeroLabsAcc, ZeroCollection.linesTarget_eq,
      List.map_cons, List.flatten_cons, List.foldr_append]
theorem targets_append {width : Nat} [NeZero width] (left right : LabSem.LabProgHOL width) :
    targets (left ++ right) = targets left ++ targets right := by
  simp only [targets, List.map_append, List.flatten_append]
#print axioms fold_eq
#print axioms targets_append
end InitECandidate.Proofs.BackendStages.ZeroProgramCollection
