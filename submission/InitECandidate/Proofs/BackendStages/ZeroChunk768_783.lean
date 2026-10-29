import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData768_783
import InitECandidate.Proofs.BackendStages.FinalChunk768_783
import InitECandidate.Proofs.BackendStages.ZeroTargets768
import InitECandidate.Proofs.BackendStages.ZeroTargets769
import InitECandidate.Proofs.BackendStages.ZeroTargets770
import InitECandidate.Proofs.BackendStages.ZeroTargets771
import InitECandidate.Proofs.BackendStages.ZeroTargets772
import InitECandidate.Proofs.BackendStages.ZeroTargets773
import InitECandidate.Proofs.BackendStages.ZeroTargets774
import InitECandidate.Proofs.BackendStages.ZeroTargets775
import InitECandidate.Proofs.BackendStages.ZeroTargets776
import InitECandidate.Proofs.BackendStages.ZeroTargets777
import InitECandidate.Proofs.BackendStages.ZeroTargets778
import InitECandidate.Proofs.BackendStages.ZeroTargets779
import InitECandidate.Proofs.BackendStages.ZeroTargets780
import InitECandidate.Proofs.BackendStages.ZeroTargets781
import InitECandidate.Proofs.BackendStages.ZeroTargets782
import InitECandidate.Proofs.BackendStages.ZeroTargets783
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk768_783
theorem targets_eq : ZeroProgramCollection.targets FinalChunk768_783.padded = ZeroChunkData768_783.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded768.lines.filterMap ZeroCollection.lineTarget, Padded769.lines.filterMap ZeroCollection.lineTarget, Padded770.lines.filterMap ZeroCollection.lineTarget, Padded771.lines.filterMap ZeroCollection.lineTarget, Padded772.lines.filterMap ZeroCollection.lineTarget, Padded773.lines.filterMap ZeroCollection.lineTarget, Padded774.lines.filterMap ZeroCollection.lineTarget, Padded775.lines.filterMap ZeroCollection.lineTarget, Padded776.lines.filterMap ZeroCollection.lineTarget, Padded777.lines.filterMap ZeroCollection.lineTarget, Padded778.lines.filterMap ZeroCollection.lineTarget, Padded779.lines.filterMap ZeroCollection.lineTarget, Padded780.lines.filterMap ZeroCollection.lineTarget, Padded781.lines.filterMap ZeroCollection.lineTarget, Padded782.lines.filterMap ZeroCollection.lineTarget, Padded783.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData768_783.keys
  rw [targets768_eq, targets769_eq, targets770_eq, targets771_eq, targets772_eq, targets773_eq, targets774_eq, targets775_eq, targets776_eq, targets777_eq, targets778_eq, targets779_eq, targets780_eq, targets781_eq, targets782_eq, targets783_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk768_783
