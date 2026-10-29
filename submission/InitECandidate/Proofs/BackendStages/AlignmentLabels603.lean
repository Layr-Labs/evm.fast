import InitECandidate.Proofs.BackendStages.Alignment603
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_603 : List (Nat × Nat) :=
[(35, 477760), (34, 477748), (15, 477740), (14, 477720), (33, 477664), (32, 477528), (13, 477496), (12, 477448),
  (31, 477392), (30, 477364), (11, 477360), (10, 477344), (29, 477288), (28, 477256), (27, 477228), (25, 477228),
  (9, 477176), (8, 477112), (24, 477056), (23, 477024), (7, 476968), (6, 476900), (22, 476844), (21, 476808),
  (5, 476800), (4, 476780), (20, 476724), (19, 476680), (3, 476672), (2, 476648), (18, 476592), (26, 476528),
  (1, 476476), (17, 476476)]
theorem localLabelsFinal_603_eq : LabToTarget.sectionLabels 476460 Alignment603.lines [] = (477760, localLabelsFinal_603) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_603_eq
end InitECandidate.Proofs.BackendStages
