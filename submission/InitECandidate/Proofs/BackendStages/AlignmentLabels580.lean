import InitECandidate.Proofs.BackendStages.Alignment580
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_580 : List (Nat × Nat) :=
[(20, 434408), (19, 434396), (9, 434388), (8, 434368), (18, 434312), (17, 434284), (7, 434280), (6, 434264),
  (16, 434208), (15, 434180), (5, 434176), (4, 434156), (14, 434100), (13, 434076), (3, 434072), (2, 434056),
  (12, 434000), (1, 433968), (11, 433968)]
theorem localLabelsFinal_580_eq : LabToTarget.sectionLabels 433952 Alignment580.lines [] = (434408, localLabelsFinal_580) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_580_eq
end InitECandidate.Proofs.BackendStages
