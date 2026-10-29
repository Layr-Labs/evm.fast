import InitECandidate.Proofs.BackendStages.Alignment230
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_230 : List (Nat × Nat) :=
[(51, 154888), (50, 154876), (21, 154868), (20, 154848), (49, 154792), (48, 154764), (46, 154764), (19, 154740),
  (18, 154688), (45, 154632), (47, 154588), (44, 154548), (43, 154528), (17, 154460), (16, 154376), (42, 154320),
  (41, 154292), (15, 154264), (14, 154220), (40, 154164), (39, 154120), (13, 154116), (12, 154096), (38, 154040),
  (37, 153996), (11, 153992), (10, 153972), (36, 153916), (35, 153872), (9, 153868), (8, 153848), (34, 153792),
  (33, 153748), (7, 153728), (6, 153692), (32, 153636), (31, 153588), (30, 153568), (5, 153544), (4, 153504),
  (29, 153448), (28, 153368), (26, 153364), (25, 153344), (3, 153336), (2, 153312), (24, 153256), (27, 153160),
  (1, 153116), (23, 153116)]
theorem localLabelsFinal_230_eq : LabToTarget.sectionLabels 153100 Alignment230.lines [] = (154888, localLabelsFinal_230) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_230_eq
end InitECandidate.Proofs.BackendStages
