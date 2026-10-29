import InitECandidate.Proofs.BackendStages.Alignment591
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_591 : List (Nat × Nat) :=
[(26, 448808), (25, 448780), (24, 448756), (11, 448744), (10, 448716), (23, 448660), (22, 448624), (9, 448616),
  (8, 448596), (21, 448540), (20, 448496), (7, 448488), (6, 448464), (19, 448408), (18, 448372), (17, 448348),
  (5, 448336), (4, 448308), (16, 448252), (15, 448216), (3, 448212), (2, 448192), (14, 448136), (1, 448100),
  (13, 448100)]
theorem localLabelsFinal_591_eq : LabToTarget.sectionLabels 448084 Alignment591.lines [] = (448808, localLabelsFinal_591) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_591_eq
end InitECandidate.Proofs.BackendStages
