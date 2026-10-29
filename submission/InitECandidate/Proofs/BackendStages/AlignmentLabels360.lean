import InitECandidate.Proofs.BackendStages.Alignment360
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_360 : List (Nat × Nat) :=
[(15, 277996), (9, 277980), (14, 277964), (13, 277940), (5, 277912), (4, 277868), (12, 277812), (11, 277776),
  (3, 277768), (2, 277744), (10, 277688), (8, 277596), (1, 277572), (7, 277572)]
theorem localLabelsFinal_360_eq : LabToTarget.sectionLabels 277556 Alignment360.lines [] = (277996, localLabelsFinal_360) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_360_eq
end InitECandidate.Proofs.BackendStages
