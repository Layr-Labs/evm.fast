import InitECandidate.Proofs.BackendStages.Alignment203
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_203 : List (Nat × Nat) :=
[(18, 108652), (17, 108640), (15, 108640), (7, 108632), (6, 108608), (14, 108552), (16, 108488), (13, 108472),
  (5, 108464), (4, 108440), (12, 108384), (11, 108352), (3, 108316), (2, 108264), (10, 108208), (1, 108148),
  (9, 108148)]
theorem localLabelsFinal_203_eq : LabToTarget.sectionLabels 108132 Alignment203.lines [] = (108652, localLabelsFinal_203) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_203_eq
end InitECandidate.Proofs.BackendStages
