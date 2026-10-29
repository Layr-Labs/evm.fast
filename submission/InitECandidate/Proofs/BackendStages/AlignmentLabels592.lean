import InitECandidate.Proofs.BackendStages.Alignment592
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_592 : List (Nat × Nat) :=
[(20, 449304), (19, 449292), (18, 449268), (16, 449268), (15, 449248), (7, 449232), (6, 449200), (14, 449144),
  (17, 449112), (13, 449088), (5, 449084), (4, 449064), (12, 449008), (11, 448972), (3, 448956), (2, 448924),
  (10, 448868), (1, 448824), (9, 448824)]
theorem localLabelsFinal_592_eq : LabToTarget.sectionLabels 448808 Alignment592.lines [] = (449304, localLabelsFinal_592) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_592_eq
end InitECandidate.Proofs.BackendStages
