import InitECandidate.Proofs.BackendStages.Alignment247
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_247 : List (Nat × Nat) :=
[(20, 179736), (19, 179704), (9, 179684), (8, 179648), (18, 179592), (17, 179560), (7, 179552), (6, 179528),
  (16, 179472), (15, 179436), (5, 179428), (4, 179404), (14, 179348), (13, 179312), (3, 179304), (2, 179280),
  (12, 179224), (1, 179192), (11, 179192)]
theorem localLabelsFinal_247_eq : LabToTarget.sectionLabels 179176 Alignment247.lines [] = (179736, localLabelsFinal_247) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_247_eq
end InitECandidate.Proofs.BackendStages
