import InitECandidate.Proofs.BackendStages.Alignment311
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_311 : List (Nat × Nat) :=
[(20, 243816), (19, 243804), (9, 243784), (8, 243752), (18, 243696), (17, 243656), (7, 243648), (6, 243624),
  (16, 243568), (15, 243540), (5, 243524), (4, 243488), (14, 243432), (13, 243396), (3, 243380), (2, 243348),
  (12, 243292), (1, 243252), (11, 243252)]
theorem localLabelsFinal_311_eq : LabToTarget.sectionLabels 243236 Alignment311.lines [] = (243816, localLabelsFinal_311) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_311_eq
end InitECandidate.Proofs.BackendStages
