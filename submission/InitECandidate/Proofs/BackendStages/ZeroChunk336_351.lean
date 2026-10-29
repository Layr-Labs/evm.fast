import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData336_351
import InitECandidate.Proofs.BackendStages.FinalChunk336_351
import InitECandidate.Proofs.BackendStages.ZeroTargets336
import InitECandidate.Proofs.BackendStages.ZeroTargets337
import InitECandidate.Proofs.BackendStages.ZeroTargets338
import InitECandidate.Proofs.BackendStages.ZeroTargets339
import InitECandidate.Proofs.BackendStages.ZeroTargets340
import InitECandidate.Proofs.BackendStages.ZeroTargets341
import InitECandidate.Proofs.BackendStages.ZeroTargets342
import InitECandidate.Proofs.BackendStages.ZeroTargets343
import InitECandidate.Proofs.BackendStages.ZeroTargets344
import InitECandidate.Proofs.BackendStages.ZeroTargets345
import InitECandidate.Proofs.BackendStages.ZeroTargets346
import InitECandidate.Proofs.BackendStages.ZeroTargets347
import InitECandidate.Proofs.BackendStages.ZeroTargets348
import InitECandidate.Proofs.BackendStages.ZeroTargets349
import InitECandidate.Proofs.BackendStages.ZeroTargets350
import InitECandidate.Proofs.BackendStages.ZeroTargets351
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk336_351
theorem targets_eq : ZeroProgramCollection.targets FinalChunk336_351.padded = ZeroChunkData336_351.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded336.lines.filterMap ZeroCollection.lineTarget, Padded337.lines.filterMap ZeroCollection.lineTarget, Padded338.lines.filterMap ZeroCollection.lineTarget, Padded339.lines.filterMap ZeroCollection.lineTarget, Padded340.lines.filterMap ZeroCollection.lineTarget, Padded341.lines.filterMap ZeroCollection.lineTarget, Padded342.lines.filterMap ZeroCollection.lineTarget, Padded343.lines.filterMap ZeroCollection.lineTarget, Padded344.lines.filterMap ZeroCollection.lineTarget, Padded345.lines.filterMap ZeroCollection.lineTarget, Padded346.lines.filterMap ZeroCollection.lineTarget, Padded347.lines.filterMap ZeroCollection.lineTarget, Padded348.lines.filterMap ZeroCollection.lineTarget, Padded349.lines.filterMap ZeroCollection.lineTarget, Padded350.lines.filterMap ZeroCollection.lineTarget, Padded351.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData336_351.keys
  rw [targets336_eq, targets337_eq, targets338_eq, targets339_eq, targets340_eq, targets341_eq, targets342_eq, targets343_eq, targets344_eq, targets345_eq, targets346_eq, targets347_eq, targets348_eq, targets349_eq, targets350_eq, targets351_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk336_351
