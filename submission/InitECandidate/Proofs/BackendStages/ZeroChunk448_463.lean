import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData448_463
import InitECandidate.Proofs.BackendStages.FinalChunk448_463
import InitECandidate.Proofs.BackendStages.ZeroTargets448
import InitECandidate.Proofs.BackendStages.ZeroTargets449
import InitECandidate.Proofs.BackendStages.ZeroTargets450
import InitECandidate.Proofs.BackendStages.ZeroTargets451
import InitECandidate.Proofs.BackendStages.ZeroTargets452
import InitECandidate.Proofs.BackendStages.ZeroTargets453
import InitECandidate.Proofs.BackendStages.ZeroTargets454
import InitECandidate.Proofs.BackendStages.ZeroTargets455
import InitECandidate.Proofs.BackendStages.ZeroTargets456
import InitECandidate.Proofs.BackendStages.ZeroTargets457
import InitECandidate.Proofs.BackendStages.ZeroTargets458
import InitECandidate.Proofs.BackendStages.ZeroTargets459
import InitECandidate.Proofs.BackendStages.ZeroTargets460
import InitECandidate.Proofs.BackendStages.ZeroTargets461
import InitECandidate.Proofs.BackendStages.ZeroTargets462
import InitECandidate.Proofs.BackendStages.ZeroTargets463
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk448_463
theorem targets_eq : ZeroProgramCollection.targets FinalChunk448_463.padded = ZeroChunkData448_463.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded448.lines.filterMap ZeroCollection.lineTarget, Padded449.lines.filterMap ZeroCollection.lineTarget, Padded450.lines.filterMap ZeroCollection.lineTarget, Padded451.lines.filterMap ZeroCollection.lineTarget, Padded452.lines.filterMap ZeroCollection.lineTarget, Padded453.lines.filterMap ZeroCollection.lineTarget, Padded454.lines.filterMap ZeroCollection.lineTarget, Padded455.lines.filterMap ZeroCollection.lineTarget, Padded456.lines.filterMap ZeroCollection.lineTarget, Padded457.lines.filterMap ZeroCollection.lineTarget, Padded458.lines.filterMap ZeroCollection.lineTarget, Padded459.lines.filterMap ZeroCollection.lineTarget, Padded460.lines.filterMap ZeroCollection.lineTarget, Padded461.lines.filterMap ZeroCollection.lineTarget, Padded462.lines.filterMap ZeroCollection.lineTarget, Padded463.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData448_463.keys
  rw [targets448_eq, targets449_eq, targets450_eq, targets451_eq, targets452_eq, targets453_eq, targets454_eq, targets455_eq, targets456_eq, targets457_eq, targets458_eq, targets459_eq, targets460_eq, targets461_eq, targets462_eq, targets463_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk448_463
