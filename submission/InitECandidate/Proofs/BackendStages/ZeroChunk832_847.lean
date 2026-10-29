import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData832_847
import InitECandidate.Proofs.BackendStages.FinalChunk832_847
import InitECandidate.Proofs.BackendStages.ZeroTargets832
import InitECandidate.Proofs.BackendStages.ZeroTargets833
import InitECandidate.Proofs.BackendStages.ZeroTargets834
import InitECandidate.Proofs.BackendStages.ZeroTargets835
import InitECandidate.Proofs.BackendStages.ZeroTargets836
import InitECandidate.Proofs.BackendStages.ZeroTargets837
import InitECandidate.Proofs.BackendStages.ZeroTargets838
import InitECandidate.Proofs.BackendStages.ZeroTargets839
import InitECandidate.Proofs.BackendStages.ZeroTargets840
import InitECandidate.Proofs.BackendStages.ZeroTargets841
import InitECandidate.Proofs.BackendStages.ZeroTargets842
import InitECandidate.Proofs.BackendStages.ZeroTargets843
import InitECandidate.Proofs.BackendStages.ZeroTargets844
import InitECandidate.Proofs.BackendStages.ZeroTargets845
import InitECandidate.Proofs.BackendStages.ZeroTargets846
import InitECandidate.Proofs.BackendStages.ZeroTargets847
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk832_847
theorem targets_eq : ZeroProgramCollection.targets FinalChunk832_847.padded = ZeroChunkData832_847.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded832.lines.filterMap ZeroCollection.lineTarget, Padded833.lines.filterMap ZeroCollection.lineTarget, Padded834.lines.filterMap ZeroCollection.lineTarget, Padded835.lines.filterMap ZeroCollection.lineTarget, Padded836.lines.filterMap ZeroCollection.lineTarget, Padded837.lines.filterMap ZeroCollection.lineTarget, Padded838.lines.filterMap ZeroCollection.lineTarget, Padded839.lines.filterMap ZeroCollection.lineTarget, Padded840.lines.filterMap ZeroCollection.lineTarget, Padded841.lines.filterMap ZeroCollection.lineTarget, Padded842.lines.filterMap ZeroCollection.lineTarget, Padded843.lines.filterMap ZeroCollection.lineTarget, Padded844.lines.filterMap ZeroCollection.lineTarget, Padded845.lines.filterMap ZeroCollection.lineTarget, Padded846.lines.filterMap ZeroCollection.lineTarget, Padded847.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData832_847.keys
  rw [targets832_eq, targets833_eq, targets834_eq, targets835_eq, targets836_eq, targets837_eq, targets838_eq, targets839_eq, targets840_eq, targets841_eq, targets842_eq, targets843_eq, targets844_eq, targets845_eq, targets846_eq, targets847_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk832_847
