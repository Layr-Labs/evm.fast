import InitECandidate.Proofs.BackendStages.Alignment160
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_160 : List (Nat × Nat) :=
[(16, 87860), (14, 87852), (15, 87844), (13, 87816), (12, 87808), (11, 87808), (3, 87792), (2, 87764), (10, 87708),
  (9, 87656), (8, 87652), (7, 87628), (6, 87624), (1, 87608), (5, 87608)]
theorem localLabelsFinal_160_eq : LabToTarget.sectionLabels 87592 Alignment160.lines [] = (87860, localLabelsFinal_160) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_160_eq
end InitECandidate.Proofs.BackendStages
