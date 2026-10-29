import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData368_383
import InitECandidate.Proofs.BackendStages.FinalChunk368_383
import InitECandidate.Proofs.BackendStages.ZeroTargets368
import InitECandidate.Proofs.BackendStages.ZeroTargets369
import InitECandidate.Proofs.BackendStages.ZeroTargets370
import InitECandidate.Proofs.BackendStages.ZeroTargets371
import InitECandidate.Proofs.BackendStages.ZeroTargets372
import InitECandidate.Proofs.BackendStages.ZeroTargets373
import InitECandidate.Proofs.BackendStages.ZeroTargets374
import InitECandidate.Proofs.BackendStages.ZeroTargets375
import InitECandidate.Proofs.BackendStages.ZeroTargets376
import InitECandidate.Proofs.BackendStages.ZeroTargets377
import InitECandidate.Proofs.BackendStages.ZeroTargets378
import InitECandidate.Proofs.BackendStages.ZeroTargets379
import InitECandidate.Proofs.BackendStages.ZeroTargets380
import InitECandidate.Proofs.BackendStages.ZeroTargets381
import InitECandidate.Proofs.BackendStages.ZeroTargets382
import InitECandidate.Proofs.BackendStages.ZeroTargets383
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk368_383
theorem targets_eq : ZeroProgramCollection.targets FinalChunk368_383.padded = ZeroChunkData368_383.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded368.lines.filterMap ZeroCollection.lineTarget, Padded369.lines.filterMap ZeroCollection.lineTarget, Padded370.lines.filterMap ZeroCollection.lineTarget, Padded371.lines.filterMap ZeroCollection.lineTarget, Padded372.lines.filterMap ZeroCollection.lineTarget, Padded373.lines.filterMap ZeroCollection.lineTarget, Padded374.lines.filterMap ZeroCollection.lineTarget, Padded375.lines.filterMap ZeroCollection.lineTarget, Padded376.lines.filterMap ZeroCollection.lineTarget, Padded377.lines.filterMap ZeroCollection.lineTarget, Padded378.lines.filterMap ZeroCollection.lineTarget, Padded379.lines.filterMap ZeroCollection.lineTarget, Padded380.lines.filterMap ZeroCollection.lineTarget, Padded381.lines.filterMap ZeroCollection.lineTarget, Padded382.lines.filterMap ZeroCollection.lineTarget, Padded383.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData368_383.keys
  rw [targets368_eq, targets369_eq, targets370_eq, targets371_eq, targets372_eq, targets373_eq, targets374_eq, targets375_eq, targets376_eq, targets377_eq, targets378_eq, targets379_eq, targets380_eq, targets381_eq, targets382_eq, targets383_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk368_383
