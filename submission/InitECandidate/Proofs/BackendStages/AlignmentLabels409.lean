import InitECandidate.Proofs.BackendStages.Alignment409
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_409 : List (Nat × Nat) :=
[(13, 308752), (12, 308740), (5, 308732), (4, 308708), (11, 308652), (10, 308616), (9, 308592), (3, 308580),
  (2, 308548), (8, 308492), (1, 308460), (7, 308460)]
theorem localLabelsFinal_409_eq : LabToTarget.sectionLabels 308444 Alignment409.lines [] = (308752, localLabelsFinal_409) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_409_eq
end InitECandidate.Proofs.BackendStages
