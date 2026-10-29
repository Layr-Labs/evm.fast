import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData304_319
import InitECandidate.Proofs.BackendStages.FinalChunk304_319
import InitECandidate.Proofs.BackendStages.ZeroTargets304
import InitECandidate.Proofs.BackendStages.ZeroTargets305
import InitECandidate.Proofs.BackendStages.ZeroTargets306
import InitECandidate.Proofs.BackendStages.ZeroTargets307
import InitECandidate.Proofs.BackendStages.ZeroTargets308
import InitECandidate.Proofs.BackendStages.ZeroTargets309
import InitECandidate.Proofs.BackendStages.ZeroTargets310
import InitECandidate.Proofs.BackendStages.ZeroTargets311
import InitECandidate.Proofs.BackendStages.ZeroTargets312
import InitECandidate.Proofs.BackendStages.ZeroTargets313
import InitECandidate.Proofs.BackendStages.ZeroTargets314
import InitECandidate.Proofs.BackendStages.ZeroTargets315
import InitECandidate.Proofs.BackendStages.ZeroTargets316
import InitECandidate.Proofs.BackendStages.ZeroTargets317
import InitECandidate.Proofs.BackendStages.ZeroTargets318
import InitECandidate.Proofs.BackendStages.ZeroTargets319
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk304_319
theorem targets_eq : ZeroProgramCollection.targets FinalChunk304_319.padded = ZeroChunkData304_319.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded304.lines.filterMap ZeroCollection.lineTarget, Padded305.lines.filterMap ZeroCollection.lineTarget, Padded306.lines.filterMap ZeroCollection.lineTarget, Padded307.lines.filterMap ZeroCollection.lineTarget, Padded308.lines.filterMap ZeroCollection.lineTarget, Padded309.lines.filterMap ZeroCollection.lineTarget, Padded310.lines.filterMap ZeroCollection.lineTarget, Padded311.lines.filterMap ZeroCollection.lineTarget, Padded312.lines.filterMap ZeroCollection.lineTarget, Padded313.lines.filterMap ZeroCollection.lineTarget, Padded314.lines.filterMap ZeroCollection.lineTarget, Padded315.lines.filterMap ZeroCollection.lineTarget, Padded316.lines.filterMap ZeroCollection.lineTarget, Padded317.lines.filterMap ZeroCollection.lineTarget, Padded318.lines.filterMap ZeroCollection.lineTarget, Padded319.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData304_319.keys
  rw [targets304_eq, targets305_eq, targets306_eq, targets307_eq, targets308_eq, targets309_eq, targets310_eq, targets311_eq, targets312_eq, targets313_eq, targets314_eq, targets315_eq, targets316_eq, targets317_eq, targets318_eq, targets319_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk304_319
