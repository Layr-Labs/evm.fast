import InitECandidate.Proofs.BackendStages.Alignment162
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_162 : List (Nat × Nat) :=
[(14, 90552), (13, 90540), (11, 90540), (5, 90516), (4, 90480), (10, 90424), (12, 90380), (9, 90368), (3, 90360),
  (2, 90336), (8, 90280), (1, 90248), (7, 90248)]
theorem localLabelsFinal_162_eq : LabToTarget.sectionLabels 90232 Alignment162.lines [] = (90552, localLabelsFinal_162) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_162_eq
end InitECandidate.Proofs.BackendStages
