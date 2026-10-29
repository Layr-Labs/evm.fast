import InitECandidate.Proofs.BackendStages.Alignment452
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_452 : List (Nat × Nat) :=
[(13, 333300), (12, 333288), (5, 333280), (4, 333260), (11, 333204), (10, 333164), (9, 333144), (3, 333124),
  (2, 333088), (8, 333032), (1, 332968), (7, 332968)]
theorem localLabelsFinal_452_eq : LabToTarget.sectionLabels 332952 Alignment452.lines [] = (333300, localLabelsFinal_452) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_452_eq
end InitECandidate.Proofs.BackendStages
