import InitECandidate.Proofs.BackendStages.Alignment335
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_335 : List (Nat × Nat) :=
[(15, 266148), (14, 266132), (12, 266132), (13, 266112), (11, 266100), (9, 266100), (10, 266072), (8, 266060),
  (7, 266036), (3, 266024), (2, 265996), (6, 265940), (1, 265892), (5, 265892)]
theorem localLabelsFinal_335_eq : LabToTarget.sectionLabels 265876 Alignment335.lines [] = (266148, localLabelsFinal_335) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_335_eq
end InitECandidate.Proofs.BackendStages
