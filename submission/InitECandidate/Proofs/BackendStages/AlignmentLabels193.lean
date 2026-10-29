import InitECandidate.Proofs.BackendStages.Alignment193
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_193 : List (Nat × Nat) :=
[(24, 104324), (23, 104296), (22, 104284), (21, 104264), (20, 104256), (19, 104252), (18, 104244), (17, 104196),
  (16, 104192), (15, 104140), (14, 104096), (13, 104064), (12, 104044), (5, 104028), (4, 103996), (11, 103940),
  (10, 103880), (9, 103860), (3, 103836), (2, 103796), (8, 103740), (1, 103688), (7, 103688)]
theorem localLabelsFinal_193_eq : LabToTarget.sectionLabels 103672 Alignment193.lines [] = (104324, localLabelsFinal_193) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_193_eq
end InitECandidate.Proofs.BackendStages
