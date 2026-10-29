import InitECandidate.Proofs.BackendStages.Alignment271
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_271 : List (Nat × Nat) :=
[(13, 208784), (12, 208772), (5, 208764), (4, 208740), (11, 208684), (10, 208656), (9, 208632), (3, 208628),
  (2, 208608), (8, 208552), (1, 208524), (7, 208524)]
theorem localLabelsFinal_271_eq : LabToTarget.sectionLabels 208508 Alignment271.lines [] = (208784, localLabelsFinal_271) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_271_eq
end InitECandidate.Proofs.BackendStages
