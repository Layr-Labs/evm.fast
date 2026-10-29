import InitECandidate.Proofs.BackendStages.Alignment217
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_217 : List (Nat × Nat) :=
[(23, 125124), (11, 125096), (22, 125036), (21, 124980), (19, 124976), (7, 124932), (6, 124872), (18, 124816),
  (20, 124772), (17, 124736), (5, 124672), (4, 124592), (16, 124536), (15, 124488), (13, 124472), (3, 124448),
  (2, 124396), (12, 124340), (14, 124256), (10, 124156), (1, 124080), (9, 124080)]
theorem localLabelsFinal_217_eq : LabToTarget.sectionLabels 124064 Alignment217.lines [] = (125124, localLabelsFinal_217) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_217_eq
end InitECandidate.Proofs.BackendStages
