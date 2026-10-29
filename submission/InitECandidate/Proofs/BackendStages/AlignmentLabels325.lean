import InitECandidate.Proofs.BackendStages.Alignment325
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_325 : List (Nat × Nat) :=
[(15, 258136), (14, 258120), (5, 258108), (4, 258084), (13, 258028), (12, 257996), (10, 257996), (3, 257988),
  (2, 257968), (9, 257912), (11, 257876), (8, 257852), (1, 257824), (7, 257824)]
theorem localLabelsFinal_325_eq : LabToTarget.sectionLabels 257808 Alignment325.lines [] = (258136, localLabelsFinal_325) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_325_eq
end InitECandidate.Proofs.BackendStages
