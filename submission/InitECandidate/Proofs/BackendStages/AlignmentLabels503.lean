import InitECandidate.Proofs.BackendStages.Alignment503
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_503 : List (Nat × Nat) :=
[(28, 372768), (27, 372756), (13, 372748), (12, 372728), (26, 372672), (25, 372644), (11, 372640), (10, 372624),
  (24, 372568), (23, 372540), (9, 372536), (8, 372516), (22, 372460), (21, 372432), (7, 372396), (6, 372348),
  (20, 372292), (19, 372248), (5, 372244), (4, 372224), (18, 372168), (17, 372128), (3, 372124), (2, 372104),
  (16, 372048), (1, 372020), (15, 372020)]
theorem localLabelsFinal_503_eq : LabToTarget.sectionLabels 372004 Alignment503.lines [] = (372768, localLabelsFinal_503) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_503_eq
end InitECandidate.Proofs.BackendStages
