import InitECandidate.Proofs.BackendStages.Alignment253
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_253 : List (Nat × Nat) :=
[(32, 187360), (31, 186404), (13, 186376), (12, 186332), (30, 186276), (29, 186192), (11, 186176), (10, 186144),
  (28, 186088), (27, 185996), (25, 185996), (9, 185964), (8, 185920), (24, 185864), (26, 185828), (23, 185792),
  (7, 185780), (6, 185756), (22, 185700), (21, 185344), (5, 185332), (4, 185304), (20, 185248), (19, 185220),
  (17, 185220), (3, 185216), (2, 185200), (16, 185144), (18, 185104), (1, 185076), (15, 185076)]
theorem localLabelsFinal_253_eq : LabToTarget.sectionLabels 185060 Alignment253.lines [] = (187360, localLabelsFinal_253) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_253_eq
end InitECandidate.Proofs.BackendStages
