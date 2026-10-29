import InitECandidate.Proofs.BackendStages.Alignment643
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_643 : List (Nat × Nat) :=
[(18, 541580), (17, 541568), (15, 541568), (7, 541560), (6, 541536), (14, 541480), (16, 541392), (13, 541376),
  (5, 541368), (4, 541344), (12, 541288), (11, 541252), (3, 541216), (2, 541164), (10, 541108), (1, 541044),
  (9, 541044)]
theorem localLabelsFinal_643_eq : LabToTarget.sectionLabels 541028 Alignment643.lines [] = (541580, localLabelsFinal_643) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_643_eq
end InitECandidate.Proofs.BackendStages
