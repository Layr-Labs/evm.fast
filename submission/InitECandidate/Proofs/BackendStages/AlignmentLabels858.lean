import InitECandidate.Proofs.BackendStages.Alignment858
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_858 : List (Nat × Nat) :=
[(27, 940932), (26, 940916), (11, 940888), (25, 940856), (24, 940824), (17, 940804), (22, 940772), (21, 940736),
  (20, 940716), (7, 940660), (6, 940588), (19, 940532), (18, 940404), (16, 940384), (23, 940372), (15, 940340),
  (5, 940276), (4, 940196), (14, 940140), (13, 940104), (3, 940100), (2, 940080), (12, 940024), (10, 939924),
  (1, 939872), (9, 939872)]
theorem localLabelsFinal_858_eq : LabToTarget.sectionLabels 939856 Alignment858.lines [] = (940932, localLabelsFinal_858) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_858_eq
end InitECandidate.Proofs.BackendStages
