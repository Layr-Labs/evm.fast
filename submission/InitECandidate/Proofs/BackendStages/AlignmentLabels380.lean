import InitECandidate.Proofs.BackendStages.Alignment380
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_380 : List (Nat × Nat) :=
[(24, 292624), (23, 292612), (11, 292604), (10, 292584), (22, 292528), (21, 292500), (9, 292492), (8, 292472),
  (20, 292416), (19, 292380), (7, 292360), (6, 292328), (18, 292272), (17, 292236), (5, 292228), (4, 292204),
  (16, 292148), (15, 292116), (3, 292112), (2, 292092), (14, 292036), (1, 292000), (13, 292000)]
theorem localLabelsFinal_380_eq : LabToTarget.sectionLabels 291984 Alignment380.lines [] = (292624, localLabelsFinal_380) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_380_eq
end InitECandidate.Proofs.BackendStages
