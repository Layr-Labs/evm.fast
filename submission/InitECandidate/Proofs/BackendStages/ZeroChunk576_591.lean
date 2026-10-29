import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData576_591
import InitECandidate.Proofs.BackendStages.FinalChunk576_591
import InitECandidate.Proofs.BackendStages.ZeroTargets576
import InitECandidate.Proofs.BackendStages.ZeroTargets577
import InitECandidate.Proofs.BackendStages.ZeroTargets578
import InitECandidate.Proofs.BackendStages.ZeroTargets579
import InitECandidate.Proofs.BackendStages.ZeroTargets580
import InitECandidate.Proofs.BackendStages.ZeroTargets581
import InitECandidate.Proofs.BackendStages.ZeroTargets582
import InitECandidate.Proofs.BackendStages.ZeroTargets583
import InitECandidate.Proofs.BackendStages.ZeroTargets584
import InitECandidate.Proofs.BackendStages.ZeroTargets585
import InitECandidate.Proofs.BackendStages.ZeroTargets586
import InitECandidate.Proofs.BackendStages.ZeroTargets587
import InitECandidate.Proofs.BackendStages.ZeroTargets588
import InitECandidate.Proofs.BackendStages.ZeroTargets589
import InitECandidate.Proofs.BackendStages.ZeroTargets590
import InitECandidate.Proofs.BackendStages.ZeroTargets591
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk576_591
theorem targets_eq : ZeroProgramCollection.targets FinalChunk576_591.padded = ZeroChunkData576_591.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded576.lines.filterMap ZeroCollection.lineTarget, Padded577.lines.filterMap ZeroCollection.lineTarget, Padded578.lines.filterMap ZeroCollection.lineTarget, Padded579.lines.filterMap ZeroCollection.lineTarget, Padded580.lines.filterMap ZeroCollection.lineTarget, Padded581.lines.filterMap ZeroCollection.lineTarget, Padded582.lines.filterMap ZeroCollection.lineTarget, Padded583.lines.filterMap ZeroCollection.lineTarget, Padded584.lines.filterMap ZeroCollection.lineTarget, Padded585.lines.filterMap ZeroCollection.lineTarget, Padded586.lines.filterMap ZeroCollection.lineTarget, Padded587.lines.filterMap ZeroCollection.lineTarget, Padded588.lines.filterMap ZeroCollection.lineTarget, Padded589.lines.filterMap ZeroCollection.lineTarget, Padded590.lines.filterMap ZeroCollection.lineTarget, Padded591.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData576_591.keys
  rw [targets576_eq, targets577_eq, targets578_eq, targets579_eq, targets580_eq, targets581_eq, targets582_eq, targets583_eq, targets584_eq, targets585_eq, targets586_eq, targets587_eq, targets588_eq, targets589_eq, targets590_eq, targets591_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk576_591
