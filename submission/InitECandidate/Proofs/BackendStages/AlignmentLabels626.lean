import InitECandidate.Proofs.BackendStages.Alignment626
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_626 : List (Nat × Nat) :=
[(21, 524032), (20, 523284), (9, 523276), (8, 523252), (19, 523196), (18, 523144), (7, 523140), (6, 523120),
  (17, 523064), (16, 523012), (5, 523008), (4, 522988), (15, 522932), (14, 522880), (3, 522876), (2, 522856),
  (13, 522800), (12, 522764), (1, 522728), (11, 522728)]
theorem localLabelsFinal_626_eq : LabToTarget.sectionLabels 522712 Alignment626.lines [] = (524032, localLabelsFinal_626) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_626_eq
end InitECandidate.Proofs.BackendStages
