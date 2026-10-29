import InitECandidate.Proofs.BackendStages.Alignment792
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_792 : List (Nat × Nat) :=
[(36, 822888), (35, 822876), (17, 822868), (16, 822848), (34, 822792), (33, 822760), (15, 822752), (14, 822732),
  (32, 822676), (31, 822644), (13, 822624), (12, 822592), (30, 822536), (29, 822500), (11, 822448), (10, 822384),
  (28, 822328), (27, 822284), (9, 822184), (8, 822072), (26, 822016), (25, 821972), (7, 821960), (6, 821936),
  (24, 821880), (23, 821840), (5, 821836), (4, 821816), (22, 821760), (21, 821724), (3, 821720), (2, 821700),
  (20, 821644), (1, 821556), (19, 821556)]
theorem localLabelsFinal_792_eq : LabToTarget.sectionLabels 821540 Alignment792.lines [] = (822888, localLabelsFinal_792) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_792_eq
end InitECandidate.Proofs.BackendStages
