import InitECandidate.Proofs.BackendStages.Alignment581
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_581 : List (Nat × Nat) :=
[(20, 434864), (19, 434852), (9, 434844), (8, 434824), (18, 434768), (17, 434740), (7, 434736), (6, 434720),
  (16, 434664), (15, 434636), (5, 434632), (4, 434612), (14, 434556), (13, 434532), (3, 434528), (2, 434512),
  (12, 434456), (1, 434424), (11, 434424)]
theorem localLabelsFinal_581_eq : LabToTarget.sectionLabels 434408 Alignment581.lines [] = (434864, localLabelsFinal_581) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_581_eq
end InitECandidate.Proofs.BackendStages
