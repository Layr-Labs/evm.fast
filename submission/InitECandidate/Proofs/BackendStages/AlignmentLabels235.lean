import InitECandidate.Proofs.BackendStages.Alignment235
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_235 : List (Nat × Nat) :=
[(62, 173336), (61, 173324), (25, 173316), (24, 173296), (60, 173240), (59, 173212), (23, 173204), (22, 173184),
  (58, 173128), (54, 173096), (57, 173048), (56, 173008), (21, 172952), (20, 172884), (55, 172828), (53, 172708),
  (46, 172664), (52, 172608), (48, 172604), (51, 172544), (50, 172528), (19, 172460), (18, 172380), (49, 172324),
  (47, 172212), (45, 172184), (44, 172176), (17, 172136), (16, 172084), (43, 172028), (42, 171976), (15, 171928),
  (14, 171868), (41, 171812), (40, 171768), (13, 171756), (12, 171728), (39, 171672), (38, 171624), (11, 171616),
  (10, 171592), (37, 171536), (36, 171504), (35, 171492), (9, 171484), (8, 171464), (34, 171408), (33, 171336),
  (7, 171328), (6, 171304), (32, 171248), (31, 171212), (5, 171204), (4, 171180), (30, 171124), (29, 171088),
  (3, 171080), (2, 171056), (28, 171000), (1, 170952), (27, 170952)]
theorem localLabelsFinal_235_eq : LabToTarget.sectionLabels 170936 Alignment235.lines [] = (173336, localLabelsFinal_235) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_235_eq
end InitECandidate.Proofs.BackendStages
