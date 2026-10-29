import InitECandidate.Proofs.BackendStages.SectionChunk432_447
import InitECandidate.Proofs.BackendStages.Filtered432
import InitECandidate.Proofs.BackendStages.Filtered433
import InitECandidate.Proofs.BackendStages.Filtered434
import InitECandidate.Proofs.BackendStages.Filtered435
import InitECandidate.Proofs.BackendStages.Filtered436
import InitECandidate.Proofs.BackendStages.Filtered437
import InitECandidate.Proofs.BackendStages.Filtered438
import InitECandidate.Proofs.BackendStages.Filtered439
import InitECandidate.Proofs.BackendStages.Filtered440
import InitECandidate.Proofs.BackendStages.Filtered441
import InitECandidate.Proofs.BackendStages.Filtered442
import InitECandidate.Proofs.BackendStages.Filtered443
import InitECandidate.Proofs.BackendStages.Filtered444
import InitECandidate.Proofs.BackendStages.Filtered445
import InitECandidate.Proofs.BackendStages.Filtered446
import InitECandidate.Proofs.BackendStages.Filtered447
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk432_447
def sections : LabSem.LabProgHOL 64 := [Filtered432, Filtered433, Filtered434, Filtered435, Filtered436, Filtered437, Filtered438, Filtered439, Filtered440, Filtered441, Filtered442, Filtered443, Filtered444, Filtered445, Filtered446, Filtered447]
theorem compiled_eq : SectionChunk432_447.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section432 with lines := section432.lines.filter LabFilter.notSkip }, { section433 with lines := section433.lines.filter LabFilter.notSkip }, { section434 with lines := section434.lines.filter LabFilter.notSkip }, { section435 with lines := section435.lines.filter LabFilter.notSkip }, { section436 with lines := section436.lines.filter LabFilter.notSkip }, { section437 with lines := section437.lines.filter LabFilter.notSkip }, { section438 with lines := section438.lines.filter LabFilter.notSkip }, { section439 with lines := section439.lines.filter LabFilter.notSkip }, { section440 with lines := section440.lines.filter LabFilter.notSkip }, { section441 with lines := section441.lines.filter LabFilter.notSkip }, { section442 with lines := section442.lines.filter LabFilter.notSkip }, { section443 with lines := section443.lines.filter LabFilter.notSkip }, { section444 with lines := section444.lines.filter LabFilter.notSkip }, { section445 with lines := section445.lines.filter LabFilter.notSkip }, { section446 with lines := section446.lines.filter LabFilter.notSkip }, { section447 with lines := section447.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered432_eq, Filtered433_eq, Filtered434_eq, Filtered435_eq, Filtered436_eq, Filtered437_eq, Filtered438_eq, Filtered439_eq, Filtered440_eq, Filtered441_eq, Filtered442_eq, Filtered443_eq, Filtered444_eq, Filtered445_eq, Filtered446_eq, Filtered447_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk432_447
