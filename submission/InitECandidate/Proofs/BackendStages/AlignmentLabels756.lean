import InitECandidate.Proofs.BackendStages.Alignment756
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_756 : List (Nat × Nat) :=
[(12, 755564), (11, 755552), (5, 755544), (4, 755524), (10, 755468), (9, 755436), (3, 755428), (2, 755408), (8, 755352),
  (1, 755316), (7, 755316)]
theorem localLabelsFinal_756_eq : LabToTarget.sectionLabels 755300 Alignment756.lines [] = (755564, localLabelsFinal_756) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_756_eq
end InitECandidate.Proofs.BackendStages
