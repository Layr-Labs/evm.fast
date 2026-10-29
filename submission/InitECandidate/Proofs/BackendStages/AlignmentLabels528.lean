import InitECandidate.Proofs.BackendStages.Alignment528
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_528 : List (Nat × Nat) :=
[(16, 392096), (15, 392084), (7, 392076), (6, 392056), (14, 392000), (13, 391972), (5, 391968), (4, 391952),
  (12, 391896), (11, 391852), (3, 391848), (2, 391832), (10, 391776), (1, 391744), (9, 391744)]
theorem localLabelsFinal_528_eq : LabToTarget.sectionLabels 391728 Alignment528.lines [] = (392096, localLabelsFinal_528) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_528_eq
end InitECandidate.Proofs.BackendStages
