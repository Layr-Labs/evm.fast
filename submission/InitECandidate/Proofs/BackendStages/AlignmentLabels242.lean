import InitECandidate.Proofs.BackendStages.Alignment242
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_242 : List (Nat × Nat) :=
[(29, 178192), (28, 178180), (13, 178172), (12, 178152), (27, 178096), (26, 178068), (11, 178060), (10, 178040),
  (25, 177984), (24, 177952), (9, 177944), (8, 177920), (23, 177864), (22, 177832), (7, 177812), (6, 177776),
  (21, 177720), (20, 177680), (19, 177668), (5, 177660), (4, 177640), (18, 177584), (17, 177556), (3, 177540),
  (2, 177512), (16, 177456), (1, 177392), (15, 177392)]
theorem localLabelsFinal_242_eq : LabToTarget.sectionLabels 177376 Alignment242.lines [] = (178192, localLabelsFinal_242) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_242_eq
end InitECandidate.Proofs.BackendStages
