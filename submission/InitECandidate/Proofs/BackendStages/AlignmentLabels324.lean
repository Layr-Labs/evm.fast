import InitECandidate.Proofs.BackendStages.Alignment324
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_324 : List (Nat × Nat) :=
[(58, 257808), (57, 257796), (19, 257788), (18, 257768), (56, 257712), (29, 257676), (55, 257652), (54, 257636),
  (50, 257636), (15, 257616), (14, 257584), (49, 257528), (48, 257472), (13, 257444), (12, 257400), (47, 257344),
  (53, 257316), (52, 257308), (17, 257288), (16, 257256), (51, 257200), (46, 257164), (33, 257164), (31, 257164),
  (9, 257140), (8, 257100), (30, 257044), (32, 256968), (45, 256920), (44, 256916), (35, 256900), (42, 256864),
  (41, 256852), (11, 256824), (10, 256780), (40, 256724), (39, 256644), (38, 256640), (37, 256624), (36, 256620),
  (34, 256604), (43, 256564), (28, 256488), (27, 256484), (7, 256480), (6, 256464), (26, 256408), (25, 256344),
  (5, 256336), (4, 256312), (24, 256256), (23, 256224), (3, 256220), (2, 256200), (22, 256144), (1, 256112),
  (21, 256112)]
theorem localLabelsFinal_324_eq : LabToTarget.sectionLabels 256096 Alignment324.lines [] = (257808, localLabelsFinal_324) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_324_eq
end InitECandidate.Proofs.BackendStages
