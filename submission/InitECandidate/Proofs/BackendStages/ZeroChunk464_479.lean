import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData464_479
import InitECandidate.Proofs.BackendStages.FinalChunk464_479
import InitECandidate.Proofs.BackendStages.ZeroTargets464
import InitECandidate.Proofs.BackendStages.ZeroTargets465
import InitECandidate.Proofs.BackendStages.ZeroTargets466
import InitECandidate.Proofs.BackendStages.ZeroTargets467
import InitECandidate.Proofs.BackendStages.ZeroTargets468
import InitECandidate.Proofs.BackendStages.ZeroTargets469
import InitECandidate.Proofs.BackendStages.ZeroTargets470
import InitECandidate.Proofs.BackendStages.ZeroTargets471
import InitECandidate.Proofs.BackendStages.ZeroTargets472
import InitECandidate.Proofs.BackendStages.ZeroTargets473
import InitECandidate.Proofs.BackendStages.ZeroTargets474
import InitECandidate.Proofs.BackendStages.ZeroTargets475
import InitECandidate.Proofs.BackendStages.ZeroTargets476
import InitECandidate.Proofs.BackendStages.ZeroTargets477
import InitECandidate.Proofs.BackendStages.ZeroTargets478
import InitECandidate.Proofs.BackendStages.ZeroTargets479
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk464_479
theorem targets_eq : ZeroProgramCollection.targets FinalChunk464_479.padded = ZeroChunkData464_479.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded464.lines.filterMap ZeroCollection.lineTarget, Padded465.lines.filterMap ZeroCollection.lineTarget, Padded466.lines.filterMap ZeroCollection.lineTarget, Padded467.lines.filterMap ZeroCollection.lineTarget, Padded468.lines.filterMap ZeroCollection.lineTarget, Padded469.lines.filterMap ZeroCollection.lineTarget, Padded470.lines.filterMap ZeroCollection.lineTarget, Padded471.lines.filterMap ZeroCollection.lineTarget, Padded472.lines.filterMap ZeroCollection.lineTarget, Padded473.lines.filterMap ZeroCollection.lineTarget, Padded474.lines.filterMap ZeroCollection.lineTarget, Padded475.lines.filterMap ZeroCollection.lineTarget, Padded476.lines.filterMap ZeroCollection.lineTarget, Padded477.lines.filterMap ZeroCollection.lineTarget, Padded478.lines.filterMap ZeroCollection.lineTarget, Padded479.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData464_479.keys
  rw [targets464_eq, targets465_eq, targets466_eq, targets467_eq, targets468_eq, targets469_eq, targets470_eq, targets471_eq, targets472_eq, targets473_eq, targets474_eq, targets475_eq, targets476_eq, targets477_eq, targets478_eq, targets479_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk464_479
