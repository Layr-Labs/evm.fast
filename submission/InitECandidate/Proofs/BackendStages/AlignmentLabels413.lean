import InitECandidate.Proofs.BackendStages.Alignment413
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_413 : List (Nat × Nat) :=
[(9, 310816), (8, 310804), (7, 310784), (3, 310776), (2, 310752), (6, 310696), (1, 310668), (5, 310668)]
theorem localLabelsFinal_413_eq : LabToTarget.sectionLabels 310652 Alignment413.lines [] = (310816, localLabelsFinal_413) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_413_eq
end InitECandidate.Proofs.BackendStages
