import InitECandidate.Proofs.BackendStages.Alignment838
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_838 : List (Nat × Nat) :=
[(23, 909484), (22, 909472), (9, 909464), (8, 909444), (21, 909388), (19, 909360), (20, 909352), (18, 909260),
  (17, 909252), (7, 909228), (6, 909192), (16, 909136), (15, 909092), (5, 909080), (4, 909052), (14, 908996),
  (13, 908960), (3, 908956), (2, 908936), (12, 908880), (1, 908836), (11, 908836)]
theorem localLabelsFinal_838_eq : LabToTarget.sectionLabels 908820 Alignment838.lines [] = (909484, localLabelsFinal_838) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_838_eq
end InitECandidate.Proofs.BackendStages
