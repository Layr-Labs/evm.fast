import InitECandidate.Proofs.BackendStages.Alignment703
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_703 : List (Nat × Nat) :=
[(26, 666848), (25, 666788), (11, 666772), (10, 666744), (24, 666688), (23, 666648), (9, 666644), (8, 666624),
  (22, 666568), (21, 666532), (20, 666508), (7, 666504), (6, 666484), (19, 666428), (18, 666396), (17, 666372),
  (5, 666356), (4, 666328), (16, 666272), (15, 666204), (3, 666200), (2, 666176), (14, 666120), (1, 666056),
  (13, 666056)]
theorem localLabelsFinal_703_eq : LabToTarget.sectionLabels 666040 Alignment703.lines [] = (666848, localLabelsFinal_703) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_703_eq
end InitECandidate.Proofs.BackendStages
