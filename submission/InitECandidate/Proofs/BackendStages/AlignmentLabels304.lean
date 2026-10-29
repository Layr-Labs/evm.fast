import InitECandidate.Proofs.BackendStages.Alignment304
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_304 : List (Nat × Nat) :=
[(21, 240188), (20, 240176), (9, 240164), (8, 240140), (19, 240084), (18, 240052), (16, 240032), (6, 240024),
  (5, 240004), (15, 239948), (17, 239912), (7, 239888), (4, 239868), (14, 239812), (13, 239780), (3, 239764),
  (2, 239732), (12, 239676), (1, 239636), (11, 239636)]
theorem localLabelsFinal_304_eq : LabToTarget.sectionLabels 239620 Alignment304.lines [] = (240188, localLabelsFinal_304) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_304_eq
end InitECandidate.Proofs.BackendStages
