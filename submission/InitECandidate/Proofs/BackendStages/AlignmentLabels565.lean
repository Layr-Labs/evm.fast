import InitECandidate.Proofs.BackendStages.Alignment565
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_565 : List (Nat × Nat) :=
[(12, 421280), (11, 421268), (5, 421260), (4, 421236), (10, 421180), (9, 421152), (3, 421144), (2, 421120), (8, 421064),
  (1, 421032), (7, 421032)]
theorem localLabelsFinal_565_eq : LabToTarget.sectionLabels 421016 Alignment565.lines [] = (421280, localLabelsFinal_565) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_565_eq
end InitECandidate.Proofs.BackendStages
