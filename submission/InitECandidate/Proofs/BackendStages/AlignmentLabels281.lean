import InitECandidate.Proofs.BackendStages.Alignment281
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_281 : List (Nat × Nat) :=
[(34, 223872), (33, 223848), (32, 223836), (15, 223824), (14, 223796), (31, 223740), (30, 223688), (13, 223668),
  (12, 223632), (29, 223576), (28, 223548), (11, 223504), (10, 223444), (27, 223388), (26, 223360), (9, 223284),
  (8, 223192), (25, 223136), (24, 223088), (7, 223084), (6, 223064), (23, 223008), (22, 222980), (5, 222936),
  (4, 222876), (21, 222820), (20, 222772), (3, 222768), (2, 222748), (19, 222692), (18, 222632), (1, 222580),
  (17, 222580)]
theorem localLabelsFinal_281_eq : LabToTarget.sectionLabels 222564 Alignment281.lines [] = (223872, localLabelsFinal_281) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_281_eq
end InitECandidate.Proofs.BackendStages
