import InitECandidate.Proofs.BackendStages.Alignment255
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_255 : List (Nat × Nat) :=
[(17, 189488), (11, 189472), (16, 189448), (15, 189424), (13, 189424), (5, 189388), (4, 189340), (12, 189284),
  (14, 189224), (10, 189184), (9, 189180), (3, 189156), (2, 189116), (8, 189060), (1, 189016), (7, 189016)]
theorem localLabelsFinal_255_eq : LabToTarget.sectionLabels 189000 Alignment255.lines [] = (189488, localLabelsFinal_255) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_255_eq
end InitECandidate.Proofs.BackendStages
