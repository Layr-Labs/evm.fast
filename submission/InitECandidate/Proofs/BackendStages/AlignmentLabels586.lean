import InitECandidate.Proofs.BackendStages.Alignment586
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_586 : List (Nat × Nat) :=
[(32, 440844), (31, 440772), (15, 440760), (14, 440732), (30, 440676), (29, 440640), (13, 440620), (12, 440584),
  (28, 440528), (27, 440496), (11, 440444), (10, 440380), (26, 440324), (25, 440292), (9, 440220), (8, 440136),
  (24, 440080), (23, 440044), (7, 440040), (6, 440020), (22, 439964), (21, 439900), (5, 439880), (4, 439832),
  (20, 439776), (19, 439732), (3, 439728), (2, 439708), (18, 439652), (1, 439620), (17, 439620)]
theorem localLabelsFinal_586_eq : LabToTarget.sectionLabels 439604 Alignment586.lines [] = (440844, localLabelsFinal_586) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_586_eq
end InitECandidate.Proofs.BackendStages
