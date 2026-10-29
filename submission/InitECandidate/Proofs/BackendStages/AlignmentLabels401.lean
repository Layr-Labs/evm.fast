import InitECandidate.Proofs.BackendStages.Alignment401
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_401 : List (Nat × Nat) :=
[(48, 305292), (47, 305280), (21, 305272), (20, 305248), (46, 305192), (45, 305160), (44, 305132), (43, 305100),
  (19, 305092), (18, 305060), (42, 305004), (41, 304968), (40, 304936), (17, 304916), (16, 304884), (39, 304828),
  (38, 304788), (15, 304780), (14, 304756), (37, 304700), (36, 304672), (13, 304660), (12, 304636), (35, 304580),
  (34, 304544), (11, 304528), (10, 304496), (33, 304440), (32, 304408), (9, 304404), (8, 304384), (31, 304328),
  (30, 304300), (7, 304296), (6, 304276), (29, 304220), (28, 304188), (27, 304156), (5, 304144), (4, 304116),
  (26, 304060), (25, 304008), (3, 304004), (2, 303984), (24, 303928), (1, 303896), (23, 303896)]
theorem localLabelsFinal_401_eq : LabToTarget.sectionLabels 303880 Alignment401.lines [] = (305292, localLabelsFinal_401) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_401_eq
end InitECandidate.Proofs.BackendStages
