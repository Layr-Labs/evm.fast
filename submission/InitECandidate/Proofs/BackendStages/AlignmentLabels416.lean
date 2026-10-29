import InitECandidate.Proofs.BackendStages.Alignment416
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_416 : List (Nat × Nat) :=
[(14, 312296), (13, 312284), (5, 312276), (4, 312252), (12, 312196), (11, 312152), (10, 312132), (3, 312120),
  (2, 312092), (9, 312036), (8, 311980), (1, 311952), (7, 311952)]
theorem localLabelsFinal_416_eq : LabToTarget.sectionLabels 311936 Alignment416.lines [] = (312296, localLabelsFinal_416) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_416_eq
end InitECandidate.Proofs.BackendStages
