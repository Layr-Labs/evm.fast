import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData736_751
import InitECandidate.Proofs.BackendStages.FinalChunk736_751
import InitECandidate.Proofs.BackendStages.ZeroTargets736
import InitECandidate.Proofs.BackendStages.ZeroTargets737
import InitECandidate.Proofs.BackendStages.ZeroTargets738
import InitECandidate.Proofs.BackendStages.ZeroTargets739
import InitECandidate.Proofs.BackendStages.ZeroTargets740
import InitECandidate.Proofs.BackendStages.ZeroTargets741
import InitECandidate.Proofs.BackendStages.ZeroTargets742
import InitECandidate.Proofs.BackendStages.ZeroTargets743
import InitECandidate.Proofs.BackendStages.ZeroTargets744
import InitECandidate.Proofs.BackendStages.ZeroTargets745
import InitECandidate.Proofs.BackendStages.ZeroTargets746
import InitECandidate.Proofs.BackendStages.ZeroTargets747
import InitECandidate.Proofs.BackendStages.ZeroTargets748
import InitECandidate.Proofs.BackendStages.ZeroTargets749
import InitECandidate.Proofs.BackendStages.ZeroTargets750
import InitECandidate.Proofs.BackendStages.ZeroTargets751
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk736_751
theorem targets_eq : ZeroProgramCollection.targets FinalChunk736_751.padded = ZeroChunkData736_751.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded736.lines.filterMap ZeroCollection.lineTarget, Padded737.lines.filterMap ZeroCollection.lineTarget, Padded738.lines.filterMap ZeroCollection.lineTarget, Padded739.lines.filterMap ZeroCollection.lineTarget, Padded740.lines.filterMap ZeroCollection.lineTarget, Padded741.lines.filterMap ZeroCollection.lineTarget, Padded742.lines.filterMap ZeroCollection.lineTarget, Padded743.lines.filterMap ZeroCollection.lineTarget, Padded744.lines.filterMap ZeroCollection.lineTarget, Padded745.lines.filterMap ZeroCollection.lineTarget, Padded746.lines.filterMap ZeroCollection.lineTarget, Padded747.lines.filterMap ZeroCollection.lineTarget, Padded748.lines.filterMap ZeroCollection.lineTarget, Padded749.lines.filterMap ZeroCollection.lineTarget, Padded750.lines.filterMap ZeroCollection.lineTarget, Padded751.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData736_751.keys
  rw [targets736_eq, targets737_eq, targets738_eq, targets739_eq, targets740_eq, targets741_eq, targets742_eq, targets743_eq, targets744_eq, targets745_eq, targets746_eq, targets747_eq, targets748_eq, targets749_eq, targets750_eq, targets751_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk736_751
