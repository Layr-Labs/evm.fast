import InitECandidate.Proofs.BackendStages.Alignment740
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_740 : List (Nat × Nat) :=
[(24, 740876), (23, 740812), (11, 740776), (10, 740724), (22, 740668), (21, 740616), (9, 740612), (8, 740592),
  (20, 740536), (19, 740460), (7, 740400), (6, 740324), (18, 740268), (17, 740236), (5, 740104), (4, 739936),
  (16, 739880), (15, 739756), (3, 739704), (2, 739636), (14, 739580), (1, 739440), (13, 739440)]
theorem localLabelsFinal_740_eq : LabToTarget.sectionLabels 739424 Alignment740.lines [] = (740876, localLabelsFinal_740) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_740_eq
end InitECandidate.Proofs.BackendStages
