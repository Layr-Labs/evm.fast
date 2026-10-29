import InitECandidate.Proofs.BackendStages.Alignment575
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_575 : List (Nat × Nat) :=
[(24, 431096), (23, 431084), (11, 431076), (10, 431056), (22, 431000), (21, 430972), (9, 430968), (8, 430952),
  (20, 430896), (19, 430868), (7, 430864), (6, 430844), (18, 430788), (17, 430760), (5, 430756), (4, 430736),
  (16, 430680), (15, 430656), (3, 430652), (2, 430636), (14, 430580), (1, 430548), (13, 430548)]
theorem localLabelsFinal_575_eq : LabToTarget.sectionLabels 430532 Alignment575.lines [] = (431096, localLabelsFinal_575) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_575_eq
end InitECandidate.Proofs.BackendStages
