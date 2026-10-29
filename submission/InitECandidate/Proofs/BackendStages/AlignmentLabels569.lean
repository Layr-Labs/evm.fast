import InitECandidate.Proofs.BackendStages.Alignment569
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_569 : List (Nat × Nat) :=
[(63, 427356), (62, 427344), (29, 427336), (28, 427316), (61, 427260), (60, 427232), (58, 427232), (27, 427228),
  (26, 427212), (57, 427156), (56, 427100), (25, 427088), (24, 427060), (55, 427004), (59, 426972), (54, 426960),
  (23, 426928), (22, 426884), (53, 426828), (52, 426800), (51, 426760), (21, 426736), (20, 426696), (50, 426640),
  (49, 426604), (19, 426596), (18, 426572), (48, 426516), (47, 426488), (17, 426444), (16, 426388), (46, 426332),
  (45, 426304), (15, 426300), (14, 426280), (44, 426224), (43, 426176), (13, 426120), (12, 426044), (42, 425988),
  (41, 425940), (11, 425888), (10, 425820), (40, 425764), (39, 425732), (9, 425728), (8, 425708), (38, 425652),
  (37, 425608), (7, 425604), (6, 425584), (36, 425528), (35, 425488), (5, 425484), (4, 425464), (34, 425408),
  (33, 425368), (3, 425364), (2, 425344), (32, 425288), (1, 425260), (31, 425260)]
theorem localLabelsFinal_569_eq : LabToTarget.sectionLabels 425244 Alignment569.lines [] = (427356, localLabelsFinal_569) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_569_eq
end InitECandidate.Proofs.BackendStages
