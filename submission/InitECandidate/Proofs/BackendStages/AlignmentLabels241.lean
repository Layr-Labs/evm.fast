import InitECandidate.Proofs.BackendStages.Alignment241
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_241 : List (Nat × Nat) :=
[(16, 177376), (15, 177364), (7, 177348), (6, 177320), (14, 177264), (13, 177220), (5, 177204), (4, 177176),
  (12, 177120), (11, 177084), (3, 177072), (2, 177044), (10, 176988), (1, 176932), (9, 176932)]
theorem localLabelsFinal_241_eq : LabToTarget.sectionLabels 176916 Alignment241.lines [] = (177376, localLabelsFinal_241) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_241_eq
end InitECandidate.Proofs.BackendStages
