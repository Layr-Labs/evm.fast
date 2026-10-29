import InitECandidate.Proofs.BackendStages.SectionChunk480_495
import InitECandidate.Proofs.BackendStages.Filtered480
import InitECandidate.Proofs.BackendStages.Filtered481
import InitECandidate.Proofs.BackendStages.Filtered482
import InitECandidate.Proofs.BackendStages.Filtered483
import InitECandidate.Proofs.BackendStages.Filtered484
import InitECandidate.Proofs.BackendStages.Filtered485
import InitECandidate.Proofs.BackendStages.Filtered486
import InitECandidate.Proofs.BackendStages.Filtered487
import InitECandidate.Proofs.BackendStages.Filtered488
import InitECandidate.Proofs.BackendStages.Filtered489
import InitECandidate.Proofs.BackendStages.Filtered490
import InitECandidate.Proofs.BackendStages.Filtered491
import InitECandidate.Proofs.BackendStages.Filtered492
import InitECandidate.Proofs.BackendStages.Filtered493
import InitECandidate.Proofs.BackendStages.Filtered494
import InitECandidate.Proofs.BackendStages.Filtered495
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk480_495
def sections : LabSem.LabProgHOL 64 := [Filtered480, Filtered481, Filtered482, Filtered483, Filtered484, Filtered485, Filtered486, Filtered487, Filtered488, Filtered489, Filtered490, Filtered491, Filtered492, Filtered493, Filtered494, Filtered495]
theorem compiled_eq : SectionChunk480_495.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section480 with lines := section480.lines.filter LabFilter.notSkip }, { section481 with lines := section481.lines.filter LabFilter.notSkip }, { section482 with lines := section482.lines.filter LabFilter.notSkip }, { section483 with lines := section483.lines.filter LabFilter.notSkip }, { section484 with lines := section484.lines.filter LabFilter.notSkip }, { section485 with lines := section485.lines.filter LabFilter.notSkip }, { section486 with lines := section486.lines.filter LabFilter.notSkip }, { section487 with lines := section487.lines.filter LabFilter.notSkip }, { section488 with lines := section488.lines.filter LabFilter.notSkip }, { section489 with lines := section489.lines.filter LabFilter.notSkip }, { section490 with lines := section490.lines.filter LabFilter.notSkip }, { section491 with lines := section491.lines.filter LabFilter.notSkip }, { section492 with lines := section492.lines.filter LabFilter.notSkip }, { section493 with lines := section493.lines.filter LabFilter.notSkip }, { section494 with lines := section494.lines.filter LabFilter.notSkip }, { section495 with lines := section495.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered480_eq, Filtered481_eq, Filtered482_eq, Filtered483_eq, Filtered484_eq, Filtered485_eq, Filtered486_eq, Filtered487_eq, Filtered488_eq, Filtered489_eq, Filtered490_eq, Filtered491_eq, Filtered492_eq, Filtered493_eq, Filtered494_eq, Filtered495_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk480_495
