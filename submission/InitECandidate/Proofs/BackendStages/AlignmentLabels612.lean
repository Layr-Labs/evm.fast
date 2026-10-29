import InitECandidate.Proofs.BackendStages.Alignment612
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_612 : List (Nat × Nat) :=
[(10, 484120), (9, 484048), (8, 484044), (7, 483884), (3, 483804), (2, 483708), (6, 483652), (1, 483528), (5, 483528)]
theorem localLabelsFinal_612_eq : LabToTarget.sectionLabels 483512 Alignment612.lines [] = (484120, localLabelsFinal_612) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_612_eq
end InitECandidate.Proofs.BackendStages
