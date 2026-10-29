import InitECandidate.Proofs.BackendStages.Alignment397
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_397 : List (Nat × Nat) :=
[(24, 302796), (23, 302784), (11, 302764), (10, 302732), (22, 302676), (21, 302636), (9, 302628), (8, 302604),
  (20, 302548), (19, 302504), (7, 302488), (6, 302460), (18, 302404), (17, 302368), (5, 302360), (4, 302336),
  (16, 302280), (15, 302248), (3, 302244), (2, 302224), (14, 302168), (1, 302136), (13, 302136)]
theorem localLabelsFinal_397_eq : LabToTarget.sectionLabels 302120 Alignment397.lines [] = (302796, localLabelsFinal_397) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_397_eq
end InitECandidate.Proofs.BackendStages
