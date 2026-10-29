import InitECandidate.Proofs.BackendStages.Alignment432
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_432 : List (Nat × Nat) :=
[(17, 321340), (9, 321324), (16, 321308), (15, 321292), (13, 321292), (5, 321268), (4, 321232), (12, 321176),
  (14, 321144), (11, 321116), (3, 321108), (2, 321084), (10, 321028), (8, 320976), (1, 320952), (7, 320952)]
theorem localLabelsFinal_432_eq : LabToTarget.sectionLabels 320936 Alignment432.lines [] = (321340, localLabelsFinal_432) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_432_eq
end InitECandidate.Proofs.BackendStages
