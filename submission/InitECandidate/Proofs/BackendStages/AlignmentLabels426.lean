import InitECandidate.Proofs.BackendStages.Alignment426
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_426 : List (Nat × Nat) :=
[(25, 316980), (24, 316968), (11, 316960), (10, 316940), (23, 316884), (22, 316824), (9, 316800), (8, 316760),
  (21, 316704), (20, 316676), (19, 316664), (7, 316656), (6, 316636), (18, 316580), (17, 316516), (5, 316512),
  (4, 316492), (16, 316436), (15, 316388), (3, 316368), (2, 316332), (14, 316276), (1, 316232), (13, 316232)]
theorem localLabelsFinal_426_eq : LabToTarget.sectionLabels 316216 Alignment426.lines [] = (316980, localLabelsFinal_426) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_426_eq
end InitECandidate.Proofs.BackendStages
