import InitECandidate.Proofs.BackendStages.Alignment535
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_535 : List (Nat × Nat) :=
[(16, 398028), (15, 398016), (7, 398008), (6, 397988), (14, 397932), (13, 397904), (5, 397900), (4, 397884),
  (12, 397828), (11, 397800), (3, 397796), (2, 397780), (10, 397724), (1, 397696), (9, 397696)]
theorem localLabelsFinal_535_eq : LabToTarget.sectionLabels 397680 Alignment535.lines [] = (398028, localLabelsFinal_535) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_535_eq
end InitECandidate.Proofs.BackendStages
