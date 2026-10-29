import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData480_495
import InitECandidate.Proofs.BackendStages.FinalChunk480_495
import InitECandidate.Proofs.BackendStages.ZeroTargets480
import InitECandidate.Proofs.BackendStages.ZeroTargets481
import InitECandidate.Proofs.BackendStages.ZeroTargets482
import InitECandidate.Proofs.BackendStages.ZeroTargets483
import InitECandidate.Proofs.BackendStages.ZeroTargets484
import InitECandidate.Proofs.BackendStages.ZeroTargets485
import InitECandidate.Proofs.BackendStages.ZeroTargets486
import InitECandidate.Proofs.BackendStages.ZeroTargets487
import InitECandidate.Proofs.BackendStages.ZeroTargets488
import InitECandidate.Proofs.BackendStages.ZeroTargets489
import InitECandidate.Proofs.BackendStages.ZeroTargets490
import InitECandidate.Proofs.BackendStages.ZeroTargets491
import InitECandidate.Proofs.BackendStages.ZeroTargets492
import InitECandidate.Proofs.BackendStages.ZeroTargets493
import InitECandidate.Proofs.BackendStages.ZeroTargets494
import InitECandidate.Proofs.BackendStages.ZeroTargets495
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk480_495
theorem targets_eq : ZeroProgramCollection.targets FinalChunk480_495.padded = ZeroChunkData480_495.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded480.lines.filterMap ZeroCollection.lineTarget, Padded481.lines.filterMap ZeroCollection.lineTarget, Padded482.lines.filterMap ZeroCollection.lineTarget, Padded483.lines.filterMap ZeroCollection.lineTarget, Padded484.lines.filterMap ZeroCollection.lineTarget, Padded485.lines.filterMap ZeroCollection.lineTarget, Padded486.lines.filterMap ZeroCollection.lineTarget, Padded487.lines.filterMap ZeroCollection.lineTarget, Padded488.lines.filterMap ZeroCollection.lineTarget, Padded489.lines.filterMap ZeroCollection.lineTarget, Padded490.lines.filterMap ZeroCollection.lineTarget, Padded491.lines.filterMap ZeroCollection.lineTarget, Padded492.lines.filterMap ZeroCollection.lineTarget, Padded493.lines.filterMap ZeroCollection.lineTarget, Padded494.lines.filterMap ZeroCollection.lineTarget, Padded495.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData480_495.keys
  rw [targets480_eq, targets481_eq, targets482_eq, targets483_eq, targets484_eq, targets485_eq, targets486_eq, targets487_eq, targets488_eq, targets489_eq, targets490_eq, targets491_eq, targets492_eq, targets493_eq, targets494_eq, targets495_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk480_495
