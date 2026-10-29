import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData752_767
import InitECandidate.Proofs.BackendStages.FinalChunk752_767
import InitECandidate.Proofs.BackendStages.ZeroTargets752
import InitECandidate.Proofs.BackendStages.ZeroTargets753
import InitECandidate.Proofs.BackendStages.ZeroTargets754
import InitECandidate.Proofs.BackendStages.ZeroTargets755
import InitECandidate.Proofs.BackendStages.ZeroTargets756
import InitECandidate.Proofs.BackendStages.ZeroTargets757
import InitECandidate.Proofs.BackendStages.ZeroTargets758
import InitECandidate.Proofs.BackendStages.ZeroTargets759
import InitECandidate.Proofs.BackendStages.ZeroTargets760
import InitECandidate.Proofs.BackendStages.ZeroTargets761
import InitECandidate.Proofs.BackendStages.ZeroTargets762
import InitECandidate.Proofs.BackendStages.ZeroTargets763
import InitECandidate.Proofs.BackendStages.ZeroTargets764
import InitECandidate.Proofs.BackendStages.ZeroTargets765
import InitECandidate.Proofs.BackendStages.ZeroTargets766
import InitECandidate.Proofs.BackendStages.ZeroTargets767
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk752_767
theorem targets_eq : ZeroProgramCollection.targets FinalChunk752_767.padded = ZeroChunkData752_767.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded752.lines.filterMap ZeroCollection.lineTarget, Padded753.lines.filterMap ZeroCollection.lineTarget, Padded754.lines.filterMap ZeroCollection.lineTarget, Padded755.lines.filterMap ZeroCollection.lineTarget, Padded756.lines.filterMap ZeroCollection.lineTarget, Padded757.lines.filterMap ZeroCollection.lineTarget, Padded758.lines.filterMap ZeroCollection.lineTarget, Padded759.lines.filterMap ZeroCollection.lineTarget, Padded760.lines.filterMap ZeroCollection.lineTarget, Padded761.lines.filterMap ZeroCollection.lineTarget, Padded762.lines.filterMap ZeroCollection.lineTarget, Padded763.lines.filterMap ZeroCollection.lineTarget, Padded764.lines.filterMap ZeroCollection.lineTarget, Padded765.lines.filterMap ZeroCollection.lineTarget, Padded766.lines.filterMap ZeroCollection.lineTarget, Padded767.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData752_767.keys
  rw [targets752_eq, targets753_eq, targets754_eq, targets755_eq, targets756_eq, targets757_eq, targets758_eq, targets759_eq, targets760_eq, targets761_eq, targets762_eq, targets763_eq, targets764_eq, targets765_eq, targets766_eq, targets767_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk752_767
