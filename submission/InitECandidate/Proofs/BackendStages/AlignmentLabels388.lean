import InitECandidate.Proofs.BackendStages.Alignment388
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_388 : List (Nat × Nat) :=
[(26, 299684), (25, 299672), (11, 299664), (10, 299644), (24, 299588), (23, 299488), (9, 299460), (8, 299420),
  (22, 299364), (21, 299328), (7, 299316), (6, 299288), (20, 299232), (19, 299196), (17, 299196), (5, 299188),
  (4, 299168), (16, 299112), (18, 299076), (15, 299036), (3, 299032), (2, 299012), (14, 298956), (1, 298916),
  (13, 298916)]
theorem localLabelsFinal_388_eq : LabToTarget.sectionLabels 298900 Alignment388.lines [] = (299684, localLabelsFinal_388) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_388_eq
end InitECandidate.Proofs.BackendStages
