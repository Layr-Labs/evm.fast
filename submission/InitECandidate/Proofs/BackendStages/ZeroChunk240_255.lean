import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData240_255
import InitECandidate.Proofs.BackendStages.FinalChunk240_255
import InitECandidate.Proofs.BackendStages.ZeroTargets240
import InitECandidate.Proofs.BackendStages.ZeroTargets241
import InitECandidate.Proofs.BackendStages.ZeroTargets242
import InitECandidate.Proofs.BackendStages.ZeroTargets243
import InitECandidate.Proofs.BackendStages.ZeroTargets244
import InitECandidate.Proofs.BackendStages.ZeroTargets245
import InitECandidate.Proofs.BackendStages.ZeroTargets246
import InitECandidate.Proofs.BackendStages.ZeroTargets247
import InitECandidate.Proofs.BackendStages.ZeroTargets248
import InitECandidate.Proofs.BackendStages.ZeroTargets249
import InitECandidate.Proofs.BackendStages.ZeroTargets250
import InitECandidate.Proofs.BackendStages.ZeroTargets251
import InitECandidate.Proofs.BackendStages.ZeroTargets252
import InitECandidate.Proofs.BackendStages.ZeroTargets253
import InitECandidate.Proofs.BackendStages.ZeroTargets254
import InitECandidate.Proofs.BackendStages.ZeroTargets255
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk240_255
theorem targets_eq : ZeroProgramCollection.targets FinalChunk240_255.padded = ZeroChunkData240_255.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded240.lines.filterMap ZeroCollection.lineTarget, Padded241.lines.filterMap ZeroCollection.lineTarget, Padded242.lines.filterMap ZeroCollection.lineTarget, Padded243.lines.filterMap ZeroCollection.lineTarget, Padded244.lines.filterMap ZeroCollection.lineTarget, Padded245.lines.filterMap ZeroCollection.lineTarget, Padded246.lines.filterMap ZeroCollection.lineTarget, Padded247.lines.filterMap ZeroCollection.lineTarget, Padded248.lines.filterMap ZeroCollection.lineTarget, Padded249.lines.filterMap ZeroCollection.lineTarget, Padded250.lines.filterMap ZeroCollection.lineTarget, Padded251.lines.filterMap ZeroCollection.lineTarget, Padded252.lines.filterMap ZeroCollection.lineTarget, Padded253.lines.filterMap ZeroCollection.lineTarget, Padded254.lines.filterMap ZeroCollection.lineTarget, Padded255.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData240_255.keys
  rw [targets240_eq, targets241_eq, targets242_eq, targets243_eq, targets244_eq, targets245_eq, targets246_eq, targets247_eq, targets248_eq, targets249_eq, targets250_eq, targets251_eq, targets252_eq, targets253_eq, targets254_eq, targets255_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk240_255
