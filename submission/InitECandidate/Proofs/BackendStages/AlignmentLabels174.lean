import InitECandidate.Proofs.BackendStages.Alignment174
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_174 : List (Nat × Nat) :=
[(13, 96452), (12, 96440), (5, 96428), (4, 96404), (11, 96348), (10, 96304), (3, 96288), (2, 96256), (9, 96200),
  (8, 96152), (1, 96124), (7, 96124)]
theorem localLabelsFinal_174_eq : LabToTarget.sectionLabels 96108 Alignment174.lines [] = (96452, localLabelsFinal_174) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_174_eq
end InitECandidate.Proofs.BackendStages
