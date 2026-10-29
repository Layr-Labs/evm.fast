import InitECandidate.Proofs.BackendStages.Alignment564
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_564 : List (Nat × Nat) :=
[(16, 421016), (15, 421004), (7, 420996), (6, 420976), (14, 420920), (13, 420892), (5, 420888), (4, 420872),
  (12, 420816), (11, 420752), (3, 420748), (2, 420732), (10, 420676), (1, 420644), (9, 420644)]
theorem localLabelsFinal_564_eq : LabToTarget.sectionLabels 420628 Alignment564.lines [] = (421016, localLabelsFinal_564) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_564_eq
end InitECandidate.Proofs.BackendStages
