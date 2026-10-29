import InitECandidate.Proofs.BackendStages.Alignment186
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_186 : List (Nat × Nat) :=
[(14, 99888), (13, 99860), (12, 99836), (5, 99820), (4, 99788), (11, 99732), (10, 99664), (9, 99640), (3, 99624),
  (2, 99592), (8, 99536), (1, 99500), (7, 99500)]
theorem localLabelsFinal_186_eq : LabToTarget.sectionLabels 99484 Alignment186.lines [] = (99888, localLabelsFinal_186) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_186_eq
end InitECandidate.Proofs.BackendStages
