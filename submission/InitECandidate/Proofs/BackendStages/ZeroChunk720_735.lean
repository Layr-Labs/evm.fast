import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData720_735
import InitECandidate.Proofs.BackendStages.FinalChunk720_735
import InitECandidate.Proofs.BackendStages.ZeroTargets720
import InitECandidate.Proofs.BackendStages.ZeroTargets721
import InitECandidate.Proofs.BackendStages.ZeroTargets722
import InitECandidate.Proofs.BackendStages.ZeroTargets723
import InitECandidate.Proofs.BackendStages.ZeroTargets724
import InitECandidate.Proofs.BackendStages.ZeroTargets725
import InitECandidate.Proofs.BackendStages.ZeroTargets726
import InitECandidate.Proofs.BackendStages.ZeroTargets727
import InitECandidate.Proofs.BackendStages.ZeroTargets728
import InitECandidate.Proofs.BackendStages.ZeroTargets729
import InitECandidate.Proofs.BackendStages.ZeroTargets730
import InitECandidate.Proofs.BackendStages.ZeroTargets731
import InitECandidate.Proofs.BackendStages.ZeroTargets732
import InitECandidate.Proofs.BackendStages.ZeroTargets733
import InitECandidate.Proofs.BackendStages.ZeroTargets734
import InitECandidate.Proofs.BackendStages.ZeroTargets735
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk720_735
theorem targets_eq : ZeroProgramCollection.targets FinalChunk720_735.padded = ZeroChunkData720_735.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded720.lines.filterMap ZeroCollection.lineTarget, Padded721.lines.filterMap ZeroCollection.lineTarget, Padded722.lines.filterMap ZeroCollection.lineTarget, Padded723.lines.filterMap ZeroCollection.lineTarget, Padded724.lines.filterMap ZeroCollection.lineTarget, Padded725.lines.filterMap ZeroCollection.lineTarget, Padded726.lines.filterMap ZeroCollection.lineTarget, Padded727.lines.filterMap ZeroCollection.lineTarget, Padded728.lines.filterMap ZeroCollection.lineTarget, Padded729.lines.filterMap ZeroCollection.lineTarget, Padded730.lines.filterMap ZeroCollection.lineTarget, Padded731.lines.filterMap ZeroCollection.lineTarget, Padded732.lines.filterMap ZeroCollection.lineTarget, Padded733.lines.filterMap ZeroCollection.lineTarget, Padded734.lines.filterMap ZeroCollection.lineTarget, Padded735.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData720_735.keys
  rw [targets720_eq, targets721_eq, targets722_eq, targets723_eq, targets724_eq, targets725_eq, targets726_eq, targets727_eq, targets728_eq, targets729_eq, targets730_eq, targets731_eq, targets732_eq, targets733_eq, targets734_eq, targets735_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk720_735
