import InitECandidate.Proofs.BackendStages.Alignment722
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_722 : List (Nat × Nat) :=
[(19, 729384), (9, 729372), (18, 729328), (17, 729260), (15, 729256), (5, 729212), (4, 729132), (14, 729076),
  (16, 728964), (13, 728916), (11, 728916), (3, 728876), (2, 728800), (10, 728744), (12, 728648), (8, 728556),
  (1, 728344), (7, 728344)]
theorem localLabelsFinal_722_eq : LabToTarget.sectionLabels 728328 Alignment722.lines [] = (729384, localLabelsFinal_722) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_722_eq
end InitECandidate.Proofs.BackendStages
