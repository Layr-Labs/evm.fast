import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData112_127
import InitECandidate.Proofs.BackendStages.FinalChunk112_127
import InitECandidate.Proofs.BackendStages.ZeroTargets112
import InitECandidate.Proofs.BackendStages.ZeroTargets113
import InitECandidate.Proofs.BackendStages.ZeroTargets114
import InitECandidate.Proofs.BackendStages.ZeroTargets115
import InitECandidate.Proofs.BackendStages.ZeroTargets116
import InitECandidate.Proofs.BackendStages.ZeroTargets117
import InitECandidate.Proofs.BackendStages.ZeroTargets118
import InitECandidate.Proofs.BackendStages.ZeroTargets119
import InitECandidate.Proofs.BackendStages.ZeroTargets120
import InitECandidate.Proofs.BackendStages.ZeroTargets121
import InitECandidate.Proofs.BackendStages.ZeroTargets122
import InitECandidate.Proofs.BackendStages.ZeroTargets123
import InitECandidate.Proofs.BackendStages.ZeroTargets124
import InitECandidate.Proofs.BackendStages.ZeroTargets125
import InitECandidate.Proofs.BackendStages.ZeroTargets126
import InitECandidate.Proofs.BackendStages.ZeroTargets127
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk112_127
theorem targets_eq : ZeroProgramCollection.targets FinalChunk112_127.padded = ZeroChunkData112_127.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded112.lines.filterMap ZeroCollection.lineTarget, Padded113.lines.filterMap ZeroCollection.lineTarget, Padded114.lines.filterMap ZeroCollection.lineTarget, Padded115.lines.filterMap ZeroCollection.lineTarget, Padded116.lines.filterMap ZeroCollection.lineTarget, Padded117.lines.filterMap ZeroCollection.lineTarget, Padded118.lines.filterMap ZeroCollection.lineTarget, Padded119.lines.filterMap ZeroCollection.lineTarget, Padded120.lines.filterMap ZeroCollection.lineTarget, Padded121.lines.filterMap ZeroCollection.lineTarget, Padded122.lines.filterMap ZeroCollection.lineTarget, Padded123.lines.filterMap ZeroCollection.lineTarget, Padded124.lines.filterMap ZeroCollection.lineTarget, Padded125.lines.filterMap ZeroCollection.lineTarget, Padded126.lines.filterMap ZeroCollection.lineTarget, Padded127.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData112_127.keys
  rw [targets112_eq, targets113_eq, targets114_eq, targets115_eq, targets116_eq, targets117_eq, targets118_eq, targets119_eq, targets120_eq, targets121_eq, targets122_eq, targets123_eq, targets124_eq, targets125_eq, targets126_eq, targets127_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk112_127
