import InitECandidate.Proofs.BackendStages.Alignment363
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_363 : List (Nat × Nat) :=
[(24, 280748), (23, 280720), (11, 280696), (10, 280656), (22, 280600), (21, 280556), (9, 280548), (8, 280524),
  (20, 280468), (19, 280420), (7, 280412), (6, 280388), (18, 280332), (17, 280296), (5, 280288), (4, 280264),
  (16, 280208), (15, 280172), (3, 280164), (2, 280140), (14, 280084), (1, 280032), (13, 280032)]
theorem localLabelsFinal_363_eq : LabToTarget.sectionLabels 280016 Alignment363.lines [] = (280748, localLabelsFinal_363) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_363_eq
end InitECandidate.Proofs.BackendStages
