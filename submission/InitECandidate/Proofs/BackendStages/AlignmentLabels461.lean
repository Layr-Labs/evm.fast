import InitECandidate.Proofs.BackendStages.Alignment461
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def localLabelsFinal_461 : List (Nat × Nat) :=
[(33, 356852), (32, 356840), (31, 356820), (9, 356808), (8, 356780), (30, 356724), (13, 356692), (29, 356672),
  (28, 356660), (17, 356640), (26, 356592), (25, 356552), (23, 356552), (22, 356540), (21, 356528), (7, 356472),
  (6, 356400), (20, 356344), (24, 356312), (19, 356252), (5, 356244), (4, 356220), (18, 356164), (16, 356064),
  (27, 356004), (15, 355972), (3, 355968), (2, 355948), (14, 355892), (12, 355824), (1, 355784), (11, 355784)]
theorem localLabelsFinal_461_eq : LabToTarget.sectionLabels 355768 Alignment461.lines [] = (356852, localLabelsFinal_461) := by
  with_unfolding_all rfl
#print axioms localLabelsFinal_461_eq
end InitECandidate.Proofs.BackendStages
