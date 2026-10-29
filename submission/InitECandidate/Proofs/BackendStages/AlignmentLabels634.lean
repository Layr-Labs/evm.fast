import InitECandidate.Proofs.BackendStages.Alignment634
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_634 : List (Nat × Nat) :=
[(54, 531736), (52, 531724), (53, 531716), (51, 531636), (31, 531612), (50, 531584), (49, 531560), (48, 531556),
  (47, 531536), (21, 531496), (20, 531444), (46, 531388), (45, 531268), (19, 531256), (18, 531232), (44, 531176),
  (43, 531056), (17, 531044), (16, 531020), (42, 530964), (41, 530844), (15, 530832), (14, 530808), (40, 530752),
  (39, 530632), (13, 530620), (12, 530596), (38, 530540), (37, 530420), (11, 530408), (10, 530384), (36, 530328),
  (35, 530208), (9, 530196), (8, 530172), (34, 530116), (33, 529996), (7, 529984), (6, 529960), (32, 529904),
  (30, 529768), (29, 529748), (28, 529728), (27, 529664), (5, 529640), (4, 529604), (26, 529548), (25, 529492),
  (3, 529488), (2, 529472), (24, 529416), (1, 529332), (23, 529332)]
theorem localLabelsFinal_634_eq : LabToTarget.sectionLabels 529316 Alignment634.lines [] = (531736, localLabelsFinal_634) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_634_eq
end InitECandidate.Proofs.BackendStages
