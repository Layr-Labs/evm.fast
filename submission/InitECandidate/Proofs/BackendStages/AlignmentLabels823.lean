import InitECandidate.Proofs.BackendStages.Alignment823
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_823 : List (Nat × Nat) :=
[(18, 892712), (17, 892660), (16, 892636), (7, 892624), (6, 892596), (15, 892540), (14, 892504), (5, 892496),
  (4, 892472), (13, 892416), (12, 892384), (3, 892380), (2, 892364), (11, 892308), (10, 892268), (1, 892220),
  (9, 892220)]
theorem localLabelsFinal_823_eq : LabToTarget.sectionLabels 892204 Alignment823.lines [] = (892712, localLabelsFinal_823) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_823_eq
end InitECandidate.Proofs.BackendStages
