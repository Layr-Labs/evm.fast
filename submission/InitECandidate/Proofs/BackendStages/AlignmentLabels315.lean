import InitECandidate.Proofs.BackendStages.Alignment315
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_315 : List (Nat × Nat) :=
[(51, 248560), (19, 248544), (50, 248504), (49, 248468), (48, 248464), (47, 248448), (21, 248448), (3, 248400),
  (2, 248336), (20, 248280), (46, 248196), (45, 248192), (29, 248192), (9, 248144), (8, 248080), (28, 248024),
  (44, 247972), (43, 247968), (39, 247968), (38, 247940), (37, 247936), (35, 247936), (15, 247888), (14, 247824),
  (34, 247768), (36, 247740), (33, 247684), (13, 247592), (12, 247484), (32, 247428), (31, 247352), (11, 247280),
  (10, 247192), (30, 247136), (42, 247012), (41, 246996), (40, 246956), (27, 246892), (7, 246812), (6, 246720),
  (26, 246664), (25, 246632), (23, 246632), (5, 246624), (4, 246604), (22, 246548), (24, 246440), (18, 246316),
  (1, 246268), (17, 246268)]
theorem localLabelsFinal_315_eq : LabToTarget.sectionLabels 246252 Alignment315.lines [] = (248560, localLabelsFinal_315) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_315_eq
end InitECandidate.Proofs.BackendStages
