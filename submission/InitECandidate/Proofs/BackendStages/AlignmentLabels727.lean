import InitECandidate.Proofs.BackendStages.Alignment727
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_727 : List (Nat × Nat) :=
[(22, 732664), (21, 732628), (9, 732616), (8, 732588), (20, 732532), (19, 732496), (18, 732476), (7, 732436),
  (6, 732380), (17, 732324), (16, 732124), (5, 732120), (4, 732100), (15, 732044), (14, 732008), (13, 731988),
  (3, 731976), (2, 731948), (12, 731892), (1, 731844), (11, 731844)]
theorem localLabelsFinal_727_eq : LabToTarget.sectionLabels 731828 Alignment727.lines [] = (732664, localLabelsFinal_727) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_727_eq
end InitECandidate.Proofs.BackendStages
