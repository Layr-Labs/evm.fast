import InitECandidate.Proofs.BackendStages.Alignment743
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_743 : List (Nat × Nat) :=
[(32, 743904), (31, 743840), (15, 743804), (14, 743752), (30, 743696), (29, 743664), (13, 743660), (12, 743640),
  (28, 743584), (27, 743508), (11, 743448), (10, 743372), (26, 743316), (25, 743260), (9, 743176), (8, 743056),
  (24, 743000), (23, 742968), (7, 742964), (6, 742944), (22, 742888), (21, 742856), (5, 742748), (4, 742604),
  (20, 742548), (19, 742448), (3, 742420), (2, 742376), (18, 742320), (1, 742180), (17, 742180)]
theorem localLabelsFinal_743_eq : LabToTarget.sectionLabels 742164 Alignment743.lines [] = (743904, localLabelsFinal_743) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_743_eq
end InitECandidate.Proofs.BackendStages
