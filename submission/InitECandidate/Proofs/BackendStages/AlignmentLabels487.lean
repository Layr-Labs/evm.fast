import InitECandidate.Proofs.BackendStages.Alignment487
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_487 : List (Nat × Nat) :=
[(12, 364736), (11, 364724), (5, 364712), (4, 364688), (10, 364632), (9, 364596), (3, 364592), (2, 364572), (8, 364516),
  (1, 364484), (7, 364484)]
theorem localLabelsFinal_487_eq : LabToTarget.sectionLabels 364468 Alignment487.lines [] = (364736, localLabelsFinal_487) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_487_eq
end InitECandidate.Proofs.BackendStages
