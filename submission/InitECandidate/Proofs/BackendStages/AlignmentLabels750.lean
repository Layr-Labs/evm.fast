import InitECandidate.Proofs.BackendStages.Alignment750
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_750 : List (Nat × Nat) :=
[(16, 747568), (15, 747556), (7, 747548), (6, 747528), (14, 747472), (13, 747432), (5, 747416), (4, 747388),
  (12, 747332), (11, 747280), (3, 747264), (2, 747236), (10, 747180), (1, 747136), (9, 747136)]
theorem localLabelsFinal_750_eq : LabToTarget.sectionLabels 747120 Alignment750.lines [] = (747568, localLabelsFinal_750) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_750_eq
end InitECandidate.Proofs.BackendStages
