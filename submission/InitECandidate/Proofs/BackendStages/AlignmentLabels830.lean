import InitECandidate.Proofs.BackendStages.Alignment830
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_830 : List (Nat × Nat) :=
[(12, 896552), (11, 896500), (5, 896484), (4, 896456), (10, 896400), (9, 896356), (3, 896352), (2, 896332), (8, 896276),
  (1, 896212), (7, 896212)]
theorem localLabelsFinal_830_eq : LabToTarget.sectionLabels 896196 Alignment830.lines [] = (896552, localLabelsFinal_830) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_830_eq
end InitECandidate.Proofs.BackendStages
