import InitECandidate.Proofs.BackendStages.Alignment262
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_262 : List (Nat × Nat) :=
[(32, 201792), (31, 201780), (15, 201772), (14, 201752), (30, 201696), (29, 201668), (13, 201660), (12, 201640),
  (28, 201584), (27, 201548), (11, 201536), (10, 201512), (26, 201456), (25, 201416), (9, 201404), (8, 201380),
  (24, 201324), (23, 201280), (7, 201268), (6, 201244), (22, 201188), (21, 201148), (5, 201140), (4, 201116),
  (20, 201060), (19, 201028), (3, 201024), (2, 201004), (18, 200948), (1, 200912), (17, 200912)]
theorem localLabelsFinal_262_eq : LabToTarget.sectionLabels 200896 Alignment262.lines [] = (201792, localLabelsFinal_262) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_262_eq
end InitECandidate.Proofs.BackendStages
