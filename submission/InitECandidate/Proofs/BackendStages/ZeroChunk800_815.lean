import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData800_815
import InitECandidate.Proofs.BackendStages.FinalChunk800_815
import InitECandidate.Proofs.BackendStages.ZeroTargets800
import InitECandidate.Proofs.BackendStages.ZeroTargets801
import InitECandidate.Proofs.BackendStages.ZeroTargets802
import InitECandidate.Proofs.BackendStages.ZeroTargets803
import InitECandidate.Proofs.BackendStages.ZeroTargets804
import InitECandidate.Proofs.BackendStages.ZeroTargets805
import InitECandidate.Proofs.BackendStages.ZeroTargets806
import InitECandidate.Proofs.BackendStages.ZeroTargets807
import InitECandidate.Proofs.BackendStages.ZeroTargets808
import InitECandidate.Proofs.BackendStages.ZeroTargets809
import InitECandidate.Proofs.BackendStages.ZeroTargets810
import InitECandidate.Proofs.BackendStages.ZeroTargets811
import InitECandidate.Proofs.BackendStages.ZeroTargets812
import InitECandidate.Proofs.BackendStages.ZeroTargets813
import InitECandidate.Proofs.BackendStages.ZeroTargets814
import InitECandidate.Proofs.BackendStages.ZeroTargets815
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk800_815
theorem targets_eq : ZeroProgramCollection.targets FinalChunk800_815.padded = ZeroChunkData800_815.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded800.lines.filterMap ZeroCollection.lineTarget, Padded801.lines.filterMap ZeroCollection.lineTarget, Padded802.lines.filterMap ZeroCollection.lineTarget, Padded803.lines.filterMap ZeroCollection.lineTarget, Padded804.lines.filterMap ZeroCollection.lineTarget, Padded805.lines.filterMap ZeroCollection.lineTarget, Padded806.lines.filterMap ZeroCollection.lineTarget, Padded807.lines.filterMap ZeroCollection.lineTarget, Padded808.lines.filterMap ZeroCollection.lineTarget, Padded809.lines.filterMap ZeroCollection.lineTarget, Padded810.lines.filterMap ZeroCollection.lineTarget, Padded811.lines.filterMap ZeroCollection.lineTarget, Padded812.lines.filterMap ZeroCollection.lineTarget, Padded813.lines.filterMap ZeroCollection.lineTarget, Padded814.lines.filterMap ZeroCollection.lineTarget, Padded815.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData800_815.keys
  rw [targets800_eq, targets801_eq, targets802_eq, targets803_eq, targets804_eq, targets805_eq, targets806_eq, targets807_eq, targets808_eq, targets809_eq, targets810_eq, targets811_eq, targets812_eq, targets813_eq, targets814_eq, targets815_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk800_815
