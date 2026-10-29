import InitECandidate.Proofs.BackendStages.SectionChunk448_463
import InitECandidate.Proofs.BackendStages.Filtered448
import InitECandidate.Proofs.BackendStages.Filtered449
import InitECandidate.Proofs.BackendStages.Filtered450
import InitECandidate.Proofs.BackendStages.Filtered451
import InitECandidate.Proofs.BackendStages.Filtered452
import InitECandidate.Proofs.BackendStages.Filtered453
import InitECandidate.Proofs.BackendStages.Filtered454
import InitECandidate.Proofs.BackendStages.Filtered455
import InitECandidate.Proofs.BackendStages.Filtered456
import InitECandidate.Proofs.BackendStages.Filtered457
import InitECandidate.Proofs.BackendStages.Filtered458
import InitECandidate.Proofs.BackendStages.Filtered459
import InitECandidate.Proofs.BackendStages.Filtered460
import InitECandidate.Proofs.BackendStages.Filtered461
import InitECandidate.Proofs.BackendStages.Filtered462
import InitECandidate.Proofs.BackendStages.Filtered463
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk448_463
def sections : LabSem.LabProgHOL 64 := [Filtered448, Filtered449, Filtered450, Filtered451, Filtered452, Filtered453, Filtered454, Filtered455, Filtered456, Filtered457, Filtered458, Filtered459, Filtered460, Filtered461, Filtered462, Filtered463]
theorem compiled_eq : SectionChunk448_463.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section448 with lines := section448.lines.filter LabFilter.notSkip }, { section449 with lines := section449.lines.filter LabFilter.notSkip }, { section450 with lines := section450.lines.filter LabFilter.notSkip }, { section451 with lines := section451.lines.filter LabFilter.notSkip }, { section452 with lines := section452.lines.filter LabFilter.notSkip }, { section453 with lines := section453.lines.filter LabFilter.notSkip }, { section454 with lines := section454.lines.filter LabFilter.notSkip }, { section455 with lines := section455.lines.filter LabFilter.notSkip }, { section456 with lines := section456.lines.filter LabFilter.notSkip }, { section457 with lines := section457.lines.filter LabFilter.notSkip }, { section458 with lines := section458.lines.filter LabFilter.notSkip }, { section459 with lines := section459.lines.filter LabFilter.notSkip }, { section460 with lines := section460.lines.filter LabFilter.notSkip }, { section461 with lines := section461.lines.filter LabFilter.notSkip }, { section462 with lines := section462.lines.filter LabFilter.notSkip }, { section463 with lines := section463.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered448_eq, Filtered449_eq, Filtered450_eq, Filtered451_eq, Filtered452_eq, Filtered453_eq, Filtered454_eq, Filtered455_eq, Filtered456_eq, Filtered457_eq, Filtered458_eq, Filtered459_eq, Filtered460_eq, Filtered461_eq, Filtered462_eq, Filtered463_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk448_463
