import InitECandidate.Proofs.BackendStages.Alignment164
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_164 : List (Nat × Nat) :=
[(21, 93132), (9, 93116), (20, 93092), (19, 93072), (11, 93060), (10, 93056), (18, 93028), (17, 93024), (15, 93004),
  (5, 92968), (4, 92916), (14, 92860), (16, 92824), (13, 92780), (3, 92748), (2, 92700), (12, 92644), (8, 92564),
  (1, 92532), (7, 92532)]
theorem localLabelsFinal_164_eq : LabToTarget.sectionLabels 92516 Alignment164.lines [] = (93132, localLabelsFinal_164) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_164_eq
end InitECandidate.Proofs.BackendStages
