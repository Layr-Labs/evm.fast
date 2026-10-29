import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData352_367
import InitECandidate.Proofs.BackendStages.FinalChunk352_367
import InitECandidate.Proofs.BackendStages.ZeroTargets352
import InitECandidate.Proofs.BackendStages.ZeroTargets353
import InitECandidate.Proofs.BackendStages.ZeroTargets354
import InitECandidate.Proofs.BackendStages.ZeroTargets355
import InitECandidate.Proofs.BackendStages.ZeroTargets356
import InitECandidate.Proofs.BackendStages.ZeroTargets357
import InitECandidate.Proofs.BackendStages.ZeroTargets358
import InitECandidate.Proofs.BackendStages.ZeroTargets359
import InitECandidate.Proofs.BackendStages.ZeroTargets360
import InitECandidate.Proofs.BackendStages.ZeroTargets361
import InitECandidate.Proofs.BackendStages.ZeroTargets362
import InitECandidate.Proofs.BackendStages.ZeroTargets363
import InitECandidate.Proofs.BackendStages.ZeroTargets364
import InitECandidate.Proofs.BackendStages.ZeroTargets365
import InitECandidate.Proofs.BackendStages.ZeroTargets366
import InitECandidate.Proofs.BackendStages.ZeroTargets367
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk352_367
theorem targets_eq : ZeroProgramCollection.targets FinalChunk352_367.padded = ZeroChunkData352_367.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded352.lines.filterMap ZeroCollection.lineTarget, Padded353.lines.filterMap ZeroCollection.lineTarget, Padded354.lines.filterMap ZeroCollection.lineTarget, Padded355.lines.filterMap ZeroCollection.lineTarget, Padded356.lines.filterMap ZeroCollection.lineTarget, Padded357.lines.filterMap ZeroCollection.lineTarget, Padded358.lines.filterMap ZeroCollection.lineTarget, Padded359.lines.filterMap ZeroCollection.lineTarget, Padded360.lines.filterMap ZeroCollection.lineTarget, Padded361.lines.filterMap ZeroCollection.lineTarget, Padded362.lines.filterMap ZeroCollection.lineTarget, Padded363.lines.filterMap ZeroCollection.lineTarget, Padded364.lines.filterMap ZeroCollection.lineTarget, Padded365.lines.filterMap ZeroCollection.lineTarget, Padded366.lines.filterMap ZeroCollection.lineTarget, Padded367.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData352_367.keys
  rw [targets352_eq, targets353_eq, targets354_eq, targets355_eq, targets356_eq, targets357_eq, targets358_eq, targets359_eq, targets360_eq, targets361_eq, targets362_eq, targets363_eq, targets364_eq, targets365_eq, targets366_eq, targets367_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk352_367
