import InitECandidate.Proofs.BackendStages.Alignment395
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_395 : List (Nat × Nat) :=
[(12, 301952), (11, 301940), (5, 301928), (4, 301904), (10, 301848), (9, 301812), (3, 301804), (2, 301780), (8, 301724),
  (1, 301684), (7, 301684)]
theorem localLabelsFinal_395_eq : LabToTarget.sectionLabels 301668 Alignment395.lines [] = (301952, localLabelsFinal_395) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_395_eq
end InitECandidate.Proofs.BackendStages
