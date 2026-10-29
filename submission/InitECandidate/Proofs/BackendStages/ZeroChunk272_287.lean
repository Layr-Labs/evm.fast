import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData272_287
import InitECandidate.Proofs.BackendStages.FinalChunk272_287
import InitECandidate.Proofs.BackendStages.ZeroTargets272
import InitECandidate.Proofs.BackendStages.ZeroTargets273
import InitECandidate.Proofs.BackendStages.ZeroTargets274
import InitECandidate.Proofs.BackendStages.ZeroTargets275
import InitECandidate.Proofs.BackendStages.ZeroTargets276
import InitECandidate.Proofs.BackendStages.ZeroTargets277
import InitECandidate.Proofs.BackendStages.ZeroTargets278
import InitECandidate.Proofs.BackendStages.ZeroTargets279
import InitECandidate.Proofs.BackendStages.ZeroTargets280
import InitECandidate.Proofs.BackendStages.ZeroTargets281
import InitECandidate.Proofs.BackendStages.ZeroTargets282
import InitECandidate.Proofs.BackendStages.ZeroTargets283
import InitECandidate.Proofs.BackendStages.ZeroTargets284
import InitECandidate.Proofs.BackendStages.ZeroTargets285
import InitECandidate.Proofs.BackendStages.ZeroTargets286
import InitECandidate.Proofs.BackendStages.ZeroTargets287
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk272_287
theorem targets_eq : ZeroProgramCollection.targets FinalChunk272_287.padded = ZeroChunkData272_287.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded272.lines.filterMap ZeroCollection.lineTarget, Padded273.lines.filterMap ZeroCollection.lineTarget, Padded274.lines.filterMap ZeroCollection.lineTarget, Padded275.lines.filterMap ZeroCollection.lineTarget, Padded276.lines.filterMap ZeroCollection.lineTarget, Padded277.lines.filterMap ZeroCollection.lineTarget, Padded278.lines.filterMap ZeroCollection.lineTarget, Padded279.lines.filterMap ZeroCollection.lineTarget, Padded280.lines.filterMap ZeroCollection.lineTarget, Padded281.lines.filterMap ZeroCollection.lineTarget, Padded282.lines.filterMap ZeroCollection.lineTarget, Padded283.lines.filterMap ZeroCollection.lineTarget, Padded284.lines.filterMap ZeroCollection.lineTarget, Padded285.lines.filterMap ZeroCollection.lineTarget, Padded286.lines.filterMap ZeroCollection.lineTarget, Padded287.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData272_287.keys
  rw [targets272_eq, targets273_eq, targets274_eq, targets275_eq, targets276_eq, targets277_eq, targets278_eq, targets279_eq, targets280_eq, targets281_eq, targets282_eq, targets283_eq, targets284_eq, targets285_eq, targets286_eq, targets287_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk272_287
