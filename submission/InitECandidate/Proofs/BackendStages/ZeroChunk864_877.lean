import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData864_877
import InitECandidate.Proofs.BackendStages.FinalChunk864_877
import InitECandidate.Proofs.BackendStages.ZeroTargets864
import InitECandidate.Proofs.BackendStages.ZeroTargets865
import InitECandidate.Proofs.BackendStages.ZeroTargets866
import InitECandidate.Proofs.BackendStages.ZeroTargets867
import InitECandidate.Proofs.BackendStages.ZeroTargets868
import InitECandidate.Proofs.BackendStages.ZeroTargets869
import InitECandidate.Proofs.BackendStages.ZeroTargets870
import InitECandidate.Proofs.BackendStages.ZeroTargets871
import InitECandidate.Proofs.BackendStages.ZeroTargets872
import InitECandidate.Proofs.BackendStages.ZeroTargets873
import InitECandidate.Proofs.BackendStages.ZeroTargets874
import InitECandidate.Proofs.BackendStages.ZeroTargets875
import InitECandidate.Proofs.BackendStages.ZeroTargets876
import InitECandidate.Proofs.BackendStages.ZeroTargets877
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk864_877
theorem targets_eq : ZeroProgramCollection.targets FinalChunk864_877.padded = ZeroChunkData864_877.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded864.lines.filterMap ZeroCollection.lineTarget, Padded865.lines.filterMap ZeroCollection.lineTarget, Padded866.lines.filterMap ZeroCollection.lineTarget, Padded867.lines.filterMap ZeroCollection.lineTarget, Padded868.lines.filterMap ZeroCollection.lineTarget, Padded869.lines.filterMap ZeroCollection.lineTarget, Padded870.lines.filterMap ZeroCollection.lineTarget, Padded871.lines.filterMap ZeroCollection.lineTarget, Padded872.lines.filterMap ZeroCollection.lineTarget, Padded873.lines.filterMap ZeroCollection.lineTarget, Padded874.lines.filterMap ZeroCollection.lineTarget, Padded875.lines.filterMap ZeroCollection.lineTarget, Padded876.lines.filterMap ZeroCollection.lineTarget, Padded877.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData864_877.keys
  rw [targets864_eq, targets865_eq, targets866_eq, targets867_eq, targets868_eq, targets869_eq, targets870_eq, targets871_eq, targets872_eq, targets873_eq, targets874_eq, targets875_eq, targets876_eq, targets877_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk864_877
