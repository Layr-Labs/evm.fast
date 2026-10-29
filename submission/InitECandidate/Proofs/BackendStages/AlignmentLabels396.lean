import InitECandidate.Proofs.BackendStages.Alignment396
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_396 : List (Nat × Nat) :=
[(8, 302120), (7, 302108), (3, 302100), (2, 302080), (6, 302024), (1, 301968), (5, 301968)]
theorem localLabelsFinal_396_eq : LabToTarget.sectionLabels 301952 Alignment396.lines [] = (302120, localLabelsFinal_396) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_396_eq
end InitECandidate.Proofs.BackendStages
