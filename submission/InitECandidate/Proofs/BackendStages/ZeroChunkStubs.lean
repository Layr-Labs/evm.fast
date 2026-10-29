import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkDataStubs
import InitECandidate.Proofs.BackendStages.FinalChunkStubs
import InitECandidate.Proofs.BackendStages.ZeroTargets0
import InitECandidate.Proofs.BackendStages.ZeroTargets1
import InitECandidate.Proofs.BackendStages.ZeroTargets2
import InitECandidate.Proofs.BackendStages.ZeroTargets4
import InitECandidate.Proofs.BackendStages.ZeroTargets5
import InitECandidate.Proofs.BackendStages.ZeroTargets6
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunkStubs
theorem targets_eq : ZeroProgramCollection.targets FinalChunkStubs.padded = ZeroChunkDataStubs.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded0.lines.filterMap ZeroCollection.lineTarget, Padded1.lines.filterMap ZeroCollection.lineTarget, Padded2.lines.filterMap ZeroCollection.lineTarget, Padded4.lines.filterMap ZeroCollection.lineTarget, Padded5.lines.filterMap ZeroCollection.lineTarget, Padded6.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkDataStubs.keys
  rw [targets0_eq, targets1_eq, targets2_eq, targets4_eq, targets5_eq, targets6_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunkStubs
