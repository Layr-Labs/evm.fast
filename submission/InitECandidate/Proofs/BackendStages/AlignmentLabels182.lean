import InitECandidate.Proofs.BackendStages.Alignment182
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_182 : List (Nat × Nat) :=
[(22, 98488), (21, 98424), (9, 98408), (8, 98376), (20, 98320), (19, 98272), (7, 98260), (6, 98232), (18, 98176),
  (17, 98128), (5, 98116), (4, 98088), (16, 98032), (15, 97952), (14, 97948), (13, 97924), (3, 97912), (2, 97884),
  (12, 97828), (1, 97784), (11, 97784)]
theorem localLabelsFinal_182_eq : LabToTarget.sectionLabels 97768 Alignment182.lines [] = (98488, localLabelsFinal_182) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_182_eq
end InitECandidate.Proofs.BackendStages
