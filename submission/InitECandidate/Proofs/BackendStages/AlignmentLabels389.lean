import InitECandidate.Proofs.BackendStages.Alignment389
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_389 : List (Nat × Nat) :=
[(27, 300496), (26, 300484), (11, 300476), (10, 300456), (25, 300400), (24, 300296), (9, 300276), (8, 300244),
  (23, 300188), (22, 300152), (7, 300132), (6, 300096), (21, 300040), (20, 300004), (18, 300004), (5, 299996),
  (4, 299976), (17, 299920), (19, 299884), (16, 299844), (15, 299824), (3, 299816), (2, 299792), (14, 299736),
  (1, 299700), (13, 299700)]
theorem localLabelsFinal_389_eq : LabToTarget.sectionLabels 299684 Alignment389.lines [] = (300496, localLabelsFinal_389) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_389_eq
end InitECandidate.Proofs.BackendStages
