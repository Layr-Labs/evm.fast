import InitECandidate.Proofs.BackendStages.Alignment476
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_476 : List (Nat × Nat) :=
[(18, 359464), (17, 359392), (16, 359368), (14, 359332), (5, 359296), (4, 359248), (13, 359192), (12, 359132),
  (3, 359124), (2, 359100), (11, 359044), (10, 358988), (9, 358984), (8, 358968), (15, 358944), (1, 358908),
  (7, 358908)]
theorem localLabelsFinal_476_eq : LabToTarget.sectionLabels 358892 Alignment476.lines [] = (359464, localLabelsFinal_476) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_476_eq
end InitECandidate.Proofs.BackendStages
