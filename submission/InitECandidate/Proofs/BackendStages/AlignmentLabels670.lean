import InitECandidate.Proofs.BackendStages.Alignment670
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_670 : List (Nat × Nat) :=
[(18, 602544), (17, 602532), (7, 602524), (6, 602504), (16, 602448), (15, 602408), (14, 602396), (5, 602388),
  (4, 602368), (13, 602312), (12, 602252), (11, 602224), (3, 602212), (2, 602184), (10, 602128), (1, 602036),
  (9, 602036)]
theorem localLabelsFinal_670_eq : LabToTarget.sectionLabels 602020 Alignment670.lines [] = (602544, localLabelsFinal_670) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_670_eq
end InitECandidate.Proofs.BackendStages
