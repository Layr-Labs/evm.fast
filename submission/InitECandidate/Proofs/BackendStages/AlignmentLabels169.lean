import InitECandidate.Proofs.BackendStages.Alignment169
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_169 : List (Nat × Nat) :=
[(19, 95208), (15, 95192), (18, 95172), (17, 95124), (7, 95092), (6, 95044), (16, 94988), (14, 94924), (13, 94912),
  (5, 94900), (4, 94872), (12, 94816), (11, 94784), (3, 94780), (2, 94760), (10, 94704), (1, 94668), (9, 94668)]
theorem localLabelsFinal_169_eq : LabToTarget.sectionLabels 94652 Alignment169.lines [] = (95208, localLabelsFinal_169) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_169_eq
end InitECandidate.Proofs.BackendStages
