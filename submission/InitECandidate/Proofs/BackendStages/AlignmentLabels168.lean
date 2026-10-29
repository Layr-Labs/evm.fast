import InitECandidate.Proofs.BackendStages.Alignment168
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_168 : List (Nat × Nat) :=
[(16, 94652), (15, 94636), (5, 94624), (4, 94596), (14, 94540), (13, 94496), (12, 94472), (11, 94456), (3, 94444),
  (2, 94416), (10, 94360), (9, 94308), (8, 94284), (1, 94256), (7, 94256)]
theorem localLabelsFinal_168_eq : LabToTarget.sectionLabels 94240 Alignment168.lines [] = (94652, localLabelsFinal_168) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_168_eq
end InitECandidate.Proofs.BackendStages
