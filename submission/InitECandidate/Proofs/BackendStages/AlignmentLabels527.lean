import InitECandidate.Proofs.BackendStages.Alignment527
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_527 : List (Nat × Nat) :=
[(16, 391728), (15, 391716), (7, 391708), (6, 391688), (14, 391632), (13, 391604), (5, 391600), (4, 391584),
  (12, 391528), (11, 391484), (3, 391480), (2, 391464), (10, 391408), (1, 391376), (9, 391376)]
theorem localLabelsFinal_527_eq : LabToTarget.sectionLabels 391360 Alignment527.lines [] = (391728, localLabelsFinal_527) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_527_eq
end InitECandidate.Proofs.BackendStages
