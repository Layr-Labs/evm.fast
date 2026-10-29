import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData256_271
import InitECandidate.Proofs.BackendStages.FinalChunk256_271
import InitECandidate.Proofs.BackendStages.ZeroTargets256
import InitECandidate.Proofs.BackendStages.ZeroTargets257
import InitECandidate.Proofs.BackendStages.ZeroTargets258
import InitECandidate.Proofs.BackendStages.ZeroTargets259
import InitECandidate.Proofs.BackendStages.ZeroTargets260
import InitECandidate.Proofs.BackendStages.ZeroTargets261
import InitECandidate.Proofs.BackendStages.ZeroTargets262
import InitECandidate.Proofs.BackendStages.ZeroTargets263
import InitECandidate.Proofs.BackendStages.ZeroTargets264
import InitECandidate.Proofs.BackendStages.ZeroTargets265
import InitECandidate.Proofs.BackendStages.ZeroTargets266
import InitECandidate.Proofs.BackendStages.ZeroTargets267
import InitECandidate.Proofs.BackendStages.ZeroTargets268
import InitECandidate.Proofs.BackendStages.ZeroTargets269
import InitECandidate.Proofs.BackendStages.ZeroTargets270
import InitECandidate.Proofs.BackendStages.ZeroTargets271
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk256_271
theorem targets_eq : ZeroProgramCollection.targets FinalChunk256_271.padded = ZeroChunkData256_271.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded256.lines.filterMap ZeroCollection.lineTarget, Padded257.lines.filterMap ZeroCollection.lineTarget, Padded258.lines.filterMap ZeroCollection.lineTarget, Padded259.lines.filterMap ZeroCollection.lineTarget, Padded260.lines.filterMap ZeroCollection.lineTarget, Padded261.lines.filterMap ZeroCollection.lineTarget, Padded262.lines.filterMap ZeroCollection.lineTarget, Padded263.lines.filterMap ZeroCollection.lineTarget, Padded264.lines.filterMap ZeroCollection.lineTarget, Padded265.lines.filterMap ZeroCollection.lineTarget, Padded266.lines.filterMap ZeroCollection.lineTarget, Padded267.lines.filterMap ZeroCollection.lineTarget, Padded268.lines.filterMap ZeroCollection.lineTarget, Padded269.lines.filterMap ZeroCollection.lineTarget, Padded270.lines.filterMap ZeroCollection.lineTarget, Padded271.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData256_271.keys
  rw [targets256_eq, targets257_eq, targets258_eq, targets259_eq, targets260_eq, targets261_eq, targets262_eq, targets263_eq, targets264_eq, targets265_eq, targets266_eq, targets267_eq, targets268_eq, targets269_eq, targets270_eq, targets271_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk256_271
