import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData400_415
import InitECandidate.Proofs.BackendStages.FinalChunk400_415
import InitECandidate.Proofs.BackendStages.ZeroTargets400
import InitECandidate.Proofs.BackendStages.ZeroTargets401
import InitECandidate.Proofs.BackendStages.ZeroTargets402
import InitECandidate.Proofs.BackendStages.ZeroTargets403
import InitECandidate.Proofs.BackendStages.ZeroTargets404
import InitECandidate.Proofs.BackendStages.ZeroTargets405
import InitECandidate.Proofs.BackendStages.ZeroTargets406
import InitECandidate.Proofs.BackendStages.ZeroTargets407
import InitECandidate.Proofs.BackendStages.ZeroTargets408
import InitECandidate.Proofs.BackendStages.ZeroTargets409
import InitECandidate.Proofs.BackendStages.ZeroTargets410
import InitECandidate.Proofs.BackendStages.ZeroTargets411
import InitECandidate.Proofs.BackendStages.ZeroTargets412
import InitECandidate.Proofs.BackendStages.ZeroTargets413
import InitECandidate.Proofs.BackendStages.ZeroTargets414
import InitECandidate.Proofs.BackendStages.ZeroTargets415
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk400_415
theorem targets_eq : ZeroProgramCollection.targets FinalChunk400_415.padded = ZeroChunkData400_415.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded400.lines.filterMap ZeroCollection.lineTarget, Padded401.lines.filterMap ZeroCollection.lineTarget, Padded402.lines.filterMap ZeroCollection.lineTarget, Padded403.lines.filterMap ZeroCollection.lineTarget, Padded404.lines.filterMap ZeroCollection.lineTarget, Padded405.lines.filterMap ZeroCollection.lineTarget, Padded406.lines.filterMap ZeroCollection.lineTarget, Padded407.lines.filterMap ZeroCollection.lineTarget, Padded408.lines.filterMap ZeroCollection.lineTarget, Padded409.lines.filterMap ZeroCollection.lineTarget, Padded410.lines.filterMap ZeroCollection.lineTarget, Padded411.lines.filterMap ZeroCollection.lineTarget, Padded412.lines.filterMap ZeroCollection.lineTarget, Padded413.lines.filterMap ZeroCollection.lineTarget, Padded414.lines.filterMap ZeroCollection.lineTarget, Padded415.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData400_415.keys
  rw [targets400_eq, targets401_eq, targets402_eq, targets403_eq, targets404_eq, targets405_eq, targets406_eq, targets407_eq, targets408_eq, targets409_eq, targets410_eq, targets411_eq, targets412_eq, targets413_eq, targets414_eq, targets415_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk400_415
