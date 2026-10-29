import InitECandidate.Proofs.BackendStages.SectionChunk416_431
import InitECandidate.Proofs.BackendStages.Filtered416
import InitECandidate.Proofs.BackendStages.Filtered417
import InitECandidate.Proofs.BackendStages.Filtered418
import InitECandidate.Proofs.BackendStages.Filtered419
import InitECandidate.Proofs.BackendStages.Filtered420
import InitECandidate.Proofs.BackendStages.Filtered421
import InitECandidate.Proofs.BackendStages.Filtered422
import InitECandidate.Proofs.BackendStages.Filtered423
import InitECandidate.Proofs.BackendStages.Filtered424
import InitECandidate.Proofs.BackendStages.Filtered425
import InitECandidate.Proofs.BackendStages.Filtered426
import InitECandidate.Proofs.BackendStages.Filtered427
import InitECandidate.Proofs.BackendStages.Filtered428
import InitECandidate.Proofs.BackendStages.Filtered429
import InitECandidate.Proofs.BackendStages.Filtered430
import InitECandidate.Proofs.BackendStages.Filtered431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk416_431
def sections : LabSem.LabProgHOL 64 := [Filtered416, Filtered417, Filtered418, Filtered419, Filtered420, Filtered421, Filtered422, Filtered423, Filtered424, Filtered425, Filtered426, Filtered427, Filtered428, Filtered429, Filtered430, Filtered431]
theorem compiled_eq : SectionChunk416_431.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section416 with lines := section416.lines.filter LabFilter.notSkip }, { section417 with lines := section417.lines.filter LabFilter.notSkip }, { section418 with lines := section418.lines.filter LabFilter.notSkip }, { section419 with lines := section419.lines.filter LabFilter.notSkip }, { section420 with lines := section420.lines.filter LabFilter.notSkip }, { section421 with lines := section421.lines.filter LabFilter.notSkip }, { section422 with lines := section422.lines.filter LabFilter.notSkip }, { section423 with lines := section423.lines.filter LabFilter.notSkip }, { section424 with lines := section424.lines.filter LabFilter.notSkip }, { section425 with lines := section425.lines.filter LabFilter.notSkip }, { section426 with lines := section426.lines.filter LabFilter.notSkip }, { section427 with lines := section427.lines.filter LabFilter.notSkip }, { section428 with lines := section428.lines.filter LabFilter.notSkip }, { section429 with lines := section429.lines.filter LabFilter.notSkip }, { section430 with lines := section430.lines.filter LabFilter.notSkip }, { section431 with lines := section431.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered416_eq, Filtered417_eq, Filtered418_eq, Filtered419_eq, Filtered420_eq, Filtered421_eq, Filtered422_eq, Filtered423_eq, Filtered424_eq, Filtered425_eq, Filtered426_eq, Filtered427_eq, Filtered428_eq, Filtered429_eq, Filtered430_eq, Filtered431_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk416_431
