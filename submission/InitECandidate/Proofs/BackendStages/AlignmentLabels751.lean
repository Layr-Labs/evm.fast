import InitECandidate.Proofs.BackendStages.Alignment751
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_751 : List (Nat × Nat) :=
[(16, 747984), (15, 747972), (7, 747964), (6, 747944), (14, 747888), (13, 747852), (5, 747840), (4, 747816),
  (12, 747760), (11, 747716), (3, 747704), (2, 747680), (10, 747624), (1, 747584), (9, 747584)]
theorem localLabelsFinal_751_eq : LabToTarget.sectionLabels 747568 Alignment751.lines [] = (747984, localLabelsFinal_751) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_751_eq
end InitECandidate.Proofs.BackendStages
