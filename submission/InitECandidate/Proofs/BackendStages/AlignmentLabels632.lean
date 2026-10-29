import InitECandidate.Proofs.BackendStages.Alignment632
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_632 : List (Nat × Nat) :=
[(17, 529140), (16, 528468), (7, 528460), (6, 528436), (15, 528380), (14, 528328), (5, 528324), (4, 528304),
  (13, 528248), (12, 528196), (3, 528192), (2, 528172), (11, 528116), (10, 528080), (1, 528044), (9, 528044)]
theorem localLabelsFinal_632_eq : LabToTarget.sectionLabels 528028 Alignment632.lines [] = (529140, localLabelsFinal_632) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_632_eq
end InitECandidate.Proofs.BackendStages
