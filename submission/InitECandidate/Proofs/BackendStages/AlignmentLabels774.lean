import InitECandidate.Proofs.BackendStages.Alignment774
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_774 : List (Nat × Nat) :=
[(20, 788092), (19, 788080), (9, 788048), (8, 787980), (18, 787924), (17, 787852), (7, 787848), (6, 787828),
  (16, 787772), (15, 787740), (5, 787664), (4, 787572), (14, 787516), (13, 787416), (3, 787388), (2, 787344),
  (12, 787288), (1, 787208), (11, 787208)]
theorem localLabelsFinal_774_eq : LabToTarget.sectionLabels 787192 Alignment774.lines [] = (788092, localLabelsFinal_774) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_774_eq
end InitECandidate.Proofs.BackendStages
