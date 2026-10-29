import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData160_175
import InitECandidate.Proofs.BackendStages.FinalChunk160_175
import InitECandidate.Proofs.BackendStages.ZeroTargets160
import InitECandidate.Proofs.BackendStages.ZeroTargets161
import InitECandidate.Proofs.BackendStages.ZeroTargets162
import InitECandidate.Proofs.BackendStages.ZeroTargets163
import InitECandidate.Proofs.BackendStages.ZeroTargets164
import InitECandidate.Proofs.BackendStages.ZeroTargets165
import InitECandidate.Proofs.BackendStages.ZeroTargets166
import InitECandidate.Proofs.BackendStages.ZeroTargets167
import InitECandidate.Proofs.BackendStages.ZeroTargets168
import InitECandidate.Proofs.BackendStages.ZeroTargets169
import InitECandidate.Proofs.BackendStages.ZeroTargets170
import InitECandidate.Proofs.BackendStages.ZeroTargets171
import InitECandidate.Proofs.BackendStages.ZeroTargets172
import InitECandidate.Proofs.BackendStages.ZeroTargets173
import InitECandidate.Proofs.BackendStages.ZeroTargets174
import InitECandidate.Proofs.BackendStages.ZeroTargets175
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk160_175
theorem targets_eq : ZeroProgramCollection.targets FinalChunk160_175.padded = ZeroChunkData160_175.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded160.lines.filterMap ZeroCollection.lineTarget, Padded161.lines.filterMap ZeroCollection.lineTarget, Padded162.lines.filterMap ZeroCollection.lineTarget, Padded163.lines.filterMap ZeroCollection.lineTarget, Padded164.lines.filterMap ZeroCollection.lineTarget, Padded165.lines.filterMap ZeroCollection.lineTarget, Padded166.lines.filterMap ZeroCollection.lineTarget, Padded167.lines.filterMap ZeroCollection.lineTarget, Padded168.lines.filterMap ZeroCollection.lineTarget, Padded169.lines.filterMap ZeroCollection.lineTarget, Padded170.lines.filterMap ZeroCollection.lineTarget, Padded171.lines.filterMap ZeroCollection.lineTarget, Padded172.lines.filterMap ZeroCollection.lineTarget, Padded173.lines.filterMap ZeroCollection.lineTarget, Padded174.lines.filterMap ZeroCollection.lineTarget, Padded175.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData160_175.keys
  rw [targets160_eq, targets161_eq, targets162_eq, targets163_eq, targets164_eq, targets165_eq, targets166_eq, targets167_eq, targets168_eq, targets169_eq, targets170_eq, targets171_eq, targets172_eq, targets173_eq, targets174_eq, targets175_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk160_175
