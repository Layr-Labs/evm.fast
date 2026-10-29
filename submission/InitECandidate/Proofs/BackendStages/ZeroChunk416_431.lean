import InitECandidate.Proofs.BackendStages.ZeroProgramCollection
import InitECandidate.Proofs.BackendStages.ZeroChunkData416_431
import InitECandidate.Proofs.BackendStages.FinalChunk416_431
import InitECandidate.Proofs.BackendStages.ZeroTargets416
import InitECandidate.Proofs.BackendStages.ZeroTargets417
import InitECandidate.Proofs.BackendStages.ZeroTargets418
import InitECandidate.Proofs.BackendStages.ZeroTargets419
import InitECandidate.Proofs.BackendStages.ZeroTargets420
import InitECandidate.Proofs.BackendStages.ZeroTargets421
import InitECandidate.Proofs.BackendStages.ZeroTargets422
import InitECandidate.Proofs.BackendStages.ZeroTargets423
import InitECandidate.Proofs.BackendStages.ZeroTargets424
import InitECandidate.Proofs.BackendStages.ZeroTargets425
import InitECandidate.Proofs.BackendStages.ZeroTargets426
import InitECandidate.Proofs.BackendStages.ZeroTargets427
import InitECandidate.Proofs.BackendStages.ZeroTargets428
import InitECandidate.Proofs.BackendStages.ZeroTargets429
import InitECandidate.Proofs.BackendStages.ZeroTargets430
import InitECandidate.Proofs.BackendStages.ZeroTargets431
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.ZeroChunk416_431
theorem targets_eq : ZeroProgramCollection.targets FinalChunk416_431.padded = ZeroChunkData416_431.keys := by
  unfold ZeroProgramCollection.targets
  change [Padded416.lines.filterMap ZeroCollection.lineTarget, Padded417.lines.filterMap ZeroCollection.lineTarget, Padded418.lines.filterMap ZeroCollection.lineTarget, Padded419.lines.filterMap ZeroCollection.lineTarget, Padded420.lines.filterMap ZeroCollection.lineTarget, Padded421.lines.filterMap ZeroCollection.lineTarget, Padded422.lines.filterMap ZeroCollection.lineTarget, Padded423.lines.filterMap ZeroCollection.lineTarget, Padded424.lines.filterMap ZeroCollection.lineTarget, Padded425.lines.filterMap ZeroCollection.lineTarget, Padded426.lines.filterMap ZeroCollection.lineTarget, Padded427.lines.filterMap ZeroCollection.lineTarget, Padded428.lines.filterMap ZeroCollection.lineTarget, Padded429.lines.filterMap ZeroCollection.lineTarget, Padded430.lines.filterMap ZeroCollection.lineTarget, Padded431.lines.filterMap ZeroCollection.lineTarget].flatten = ZeroChunkData416_431.keys
  rw [targets416_eq, targets417_eq, targets418_eq, targets419_eq, targets420_eq, targets421_eq, targets422_eq, targets423_eq, targets424_eq, targets425_eq, targets426_eq, targets427_eq, targets428_eq, targets429_eq, targets430_eq, targets431_eq]
  rfl
#print axioms targets_eq
end InitECandidate.Proofs.BackendStages.ZeroChunk416_431
