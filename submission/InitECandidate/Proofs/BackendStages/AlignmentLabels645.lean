import InitECandidate.Proofs.BackendStages.Alignment645
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_645 : List (Nat × Nat) :=
[(22, 548956), (16, 548944), (21, 548812), (20, 548704), (7, 548588), (6, 548444), (19, 548388), (18, 548296),
  (5, 548276), (4, 548240), (17, 548184), (15, 547904), (11, 547900), (14, 547772), (13, 547764), (3, 547732),
  (2, 547684), (12, 547628), (10, 547504), (1, 541924), (9, 541924)]
theorem localLabelsFinal_645_eq : LabToTarget.sectionLabels 541908 Alignment645.lines [] = (548956, localLabelsFinal_645) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_645_eq
end InitECandidate.Proofs.BackendStages
