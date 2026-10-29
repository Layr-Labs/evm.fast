import InitECandidate.Proofs.BackendStages.Alignment266
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_266 : List (Nat × Nat) :=
[(40, 206612), (39, 206600), (19, 206592), (18, 206572), (38, 206516), (37, 206488), (17, 206480), (16, 206460),
  (36, 206404), (35, 206372), (15, 206352), (14, 206320), (34, 206264), (33, 206216), (13, 206196), (12, 206164),
  (32, 206108), (31, 206056), (11, 206044), (10, 206020), (30, 205964), (29, 205912), (9, 205900), (8, 205876),
  (28, 205820), (27, 205768), (7, 205756), (6, 205732), (26, 205676), (25, 205628), (5, 205620), (4, 205596),
  (24, 205540), (23, 205508), (3, 205504), (2, 205484), (22, 205428), (1, 205392), (21, 205392)]
theorem localLabelsFinal_266_eq : LabToTarget.sectionLabels 205376 Alignment266.lines [] = (206612, localLabelsFinal_266) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_266_eq
end InitECandidate.Proofs.BackendStages
