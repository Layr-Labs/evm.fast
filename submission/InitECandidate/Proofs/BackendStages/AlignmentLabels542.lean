import InitECandidate.Proofs.BackendStages.Alignment542
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_542 : List (Nat × Nat) :=
[(25, 400956), (24, 400944), (11, 400936), (10, 400916), (23, 400860), (22, 400832), (9, 400828), (8, 400812),
  (21, 400756), (20, 400696), (19, 400656), (7, 400652), (6, 400632), (18, 400576), (17, 400548), (5, 400544),
  (4, 400524), (16, 400468), (15, 400444), (3, 400440), (2, 400424), (14, 400368), (1, 400336), (13, 400336)]
theorem localLabelsFinal_542_eq : LabToTarget.sectionLabels 400320 Alignment542.lines [] = (400956, localLabelsFinal_542) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_542_eq
end InitECandidate.Proofs.BackendStages
