import InitECandidate.Proofs.BackendStages.Alignment176
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_176 : List (Nat × Nat) :=
[(15, 96992), (14, 96980), (5, 96964), (4, 96936), (13, 96880), (12, 96844), (3, 96828), (2, 96796), (11, 96740),
  (10, 96696), (8, 96688), (9, 96660), (1, 96640), (7, 96640)]
theorem localLabelsFinal_176_eq : LabToTarget.sectionLabels 96624 Alignment176.lines [] = (96992, localLabelsFinal_176) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_176_eq
end InitECandidate.Proofs.BackendStages
