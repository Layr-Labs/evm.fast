import InitECandidate.Proofs.BackendStages.Alignment300
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_300 : List (Nat × Nat) :=
[(30, 234612), (29, 234588), (28, 234560), (27, 234540), (11, 234532), (10, 234508), (26, 234452), (25, 234416),
  (9, 234408), (8, 234376), (24, 234320), (23, 234288), (21, 234288), (7, 234276), (6, 234252), (20, 234196),
  (22, 234164), (19, 234140), (18, 234096), (16, 234080), (4, 234056), (3, 234020), (15, 233964), (17, 233912),
  (5, 233860), (2, 233816), (14, 233760), (1, 233688), (13, 233688)]
theorem localLabelsFinal_300_eq : LabToTarget.sectionLabels 233672 Alignment300.lines [] = (234612, localLabelsFinal_300) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_300_eq
end InitECandidate.Proofs.BackendStages
