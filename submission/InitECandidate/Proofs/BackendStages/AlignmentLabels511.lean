import InitECandidate.Proofs.BackendStages.Alignment511
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_511 : List (Nat × Nat) :=
[(28, 379460), (27, 379448), (13, 379440), (12, 379420), (26, 379364), (25, 379336), (11, 379332), (10, 379316),
  (24, 379260), (23, 379232), (9, 379228), (8, 379208), (22, 379152), (21, 379124), (7, 379088), (6, 379040),
  (20, 378984), (19, 378940), (5, 378936), (4, 378916), (18, 378860), (17, 378820), (3, 378816), (2, 378796),
  (16, 378740), (1, 378712), (15, 378712)]
theorem localLabelsFinal_511_eq : LabToTarget.sectionLabels 378696 Alignment511.lines [] = (379460, localLabelsFinal_511) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_511_eq
end InitECandidate.Proofs.BackendStages
