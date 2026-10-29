import InitECandidate.Proofs.BackendStages.Alignment292
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_292 : List (Nat × Nat) :=
[(16, 231788), (15, 231776), (7, 231764), (6, 231740), (14, 231684), (13, 231652), (5, 231632), (4, 231600),
  (12, 231544), (11, 231508), (3, 231496), (2, 231468), (10, 231412), (1, 231360), (9, 231360)]
theorem localLabelsFinal_292_eq : LabToTarget.sectionLabels 231344 Alignment292.lines [] = (231788, localLabelsFinal_292) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_292_eq
end InitECandidate.Proofs.BackendStages
