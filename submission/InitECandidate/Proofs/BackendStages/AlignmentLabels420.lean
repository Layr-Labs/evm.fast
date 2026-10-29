import InitECandidate.Proofs.BackendStages.Alignment420
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_420 : List (Nat × Nat) :=
[(31, 313960), (30, 313948), (13, 313940), (12, 313920), (29, 313864), (28, 313820), (11, 313792), (10, 313748),
  (27, 313692), (26, 313664), (24, 313664), (9, 313660), (8, 313644), (23, 313588), (22, 313556), (7, 313528),
  (6, 313484), (21, 313428), (25, 313396), (20, 313364), (5, 313360), (4, 313340), (19, 313284), (18, 313232),
  (17, 313208), (3, 313200), (2, 313176), (16, 313120), (1, 313068), (15, 313068)]
theorem localLabelsFinal_420_eq : LabToTarget.sectionLabels 313052 Alignment420.lines [] = (313960, localLabelsFinal_420) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_420_eq
end InitECandidate.Proofs.BackendStages
