import InitECandidate.Proofs.BackendStages.Alignment585
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_585 : List (Nat × Nat) :=
[(49, 439604), (48, 439592), (23, 439584), (22, 439564), (47, 439508), (46, 439444), (21, 439432), (20, 439408),
  (45, 439352), (44, 439316), (19, 439296), (18, 439260), (43, 439204), (42, 439148), (17, 439112), (16, 439064),
  (41, 439008), (40, 438968), (15, 438932), (14, 438884), (39, 438828), (38, 438788), (13, 438780), (12, 438760),
  (37, 438704), (36, 438664), (11, 438636), (10, 438596), (35, 438540), (34, 438500), (9, 438492), (8, 438472),
  (33, 438416), (32, 438360), (7, 438356), (6, 438336), (31, 438280), (30, 438224), (5, 438220), (4, 438200),
  (29, 438144), (28, 438108), (27, 438088), (3, 438080), (2, 438056), (26, 438000), (1, 437928), (25, 437928)]
theorem localLabelsFinal_585_eq : LabToTarget.sectionLabels 437912 Alignment585.lines [] = (439604, localLabelsFinal_585) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_585_eq
end InitECandidate.Proofs.BackendStages
