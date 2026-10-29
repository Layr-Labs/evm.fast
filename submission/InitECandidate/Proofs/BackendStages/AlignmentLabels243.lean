import InitECandidate.Proofs.BackendStages.Alignment243
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_243 : List (Nat × Nat) :=
[(24, 178840), (23, 178828), (11, 178820), (10, 178800), (22, 178744), (21, 178716), (9, 178704), (8, 178680),
  (20, 178624), (19, 178596), (7, 178588), (6, 178568), (18, 178512), (17, 178480), (5, 178468), (4, 178440),
  (16, 178384), (15, 178348), (3, 178336), (2, 178308), (14, 178252), (1, 178208), (13, 178208)]
theorem localLabelsFinal_243_eq : LabToTarget.sectionLabels 178192 Alignment243.lines [] = (178840, localLabelsFinal_243) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_243_eq
end InitECandidate.Proofs.BackendStages
