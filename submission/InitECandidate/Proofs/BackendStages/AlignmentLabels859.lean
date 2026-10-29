import InitECandidate.Proofs.BackendStages.Alignment859
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_859 : List (Nat × Nat) :=
[(12, 941208), (11, 941196), (5, 941184), (4, 941160), (10, 941104), (9, 941064), (3, 941060), (2, 941040), (8, 940984),
  (1, 940948), (7, 940948)]
theorem localLabelsFinal_859_eq : LabToTarget.sectionLabels 940932 Alignment859.lines [] = (941208, localLabelsFinal_859) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_859_eq
end InitECandidate.Proofs.BackendStages
