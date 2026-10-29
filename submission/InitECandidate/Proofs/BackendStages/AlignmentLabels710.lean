import InitECandidate.Proofs.BackendStages.Alignment710
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_710 : List (Nat × Nat) :=
[(13, 703572), (12, 703540), (11, 703520), (5, 703488), (4, 703440), (10, 703384), (9, 703184), (3, 703180),
  (2, 703160), (8, 703104), (1, 703072), (7, 703072)]
theorem localLabelsFinal_710_eq : LabToTarget.sectionLabels 703056 Alignment710.lines [] = (703572, localLabelsFinal_710) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_710_eq
end InitECandidate.Proofs.BackendStages
