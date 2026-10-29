import InitECandidate.Proofs.BackendStages.Alignment639
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_639 : List (Nat × Nat) :=
[(21, 535504), (20, 535492), (9, 535484), (8, 535464), (19, 535408), (18, 535376), (17, 535364), (7, 535356),
  (6, 535336), (16, 535280), (15, 535236), (5, 535220), (4, 535192), (14, 535136), (13, 535072), (3, 535040),
  (2, 534992), (12, 534936), (1, 534876), (11, 534876)]
theorem localLabelsFinal_639_eq : LabToTarget.sectionLabels 534860 Alignment639.lines [] = (535504, localLabelsFinal_639) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_639_eq
end InitECandidate.Proofs.BackendStages
