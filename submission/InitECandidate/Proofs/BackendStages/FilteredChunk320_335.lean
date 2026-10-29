import InitECandidate.Proofs.BackendStages.SectionChunk320_335
import InitECandidate.Proofs.BackendStages.Filtered320
import InitECandidate.Proofs.BackendStages.Filtered321
import InitECandidate.Proofs.BackendStages.Filtered322
import InitECandidate.Proofs.BackendStages.Filtered323
import InitECandidate.Proofs.BackendStages.Filtered324
import InitECandidate.Proofs.BackendStages.Filtered325
import InitECandidate.Proofs.BackendStages.Filtered326
import InitECandidate.Proofs.BackendStages.Filtered327
import InitECandidate.Proofs.BackendStages.Filtered328
import InitECandidate.Proofs.BackendStages.Filtered329
import InitECandidate.Proofs.BackendStages.Filtered330
import InitECandidate.Proofs.BackendStages.Filtered331
import InitECandidate.Proofs.BackendStages.Filtered332
import InitECandidate.Proofs.BackendStages.Filtered333
import InitECandidate.Proofs.BackendStages.Filtered334
import InitECandidate.Proofs.BackendStages.Filtered335
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk320_335
def sections : LabSem.LabProgHOL 64 := [Filtered320, Filtered321, Filtered322, Filtered323, Filtered324, Filtered325, Filtered326, Filtered327, Filtered328, Filtered329, Filtered330, Filtered331, Filtered332, Filtered333, Filtered334, Filtered335]
theorem compiled_eq : SectionChunk320_335.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section320 with lines := section320.lines.filter LabFilter.notSkip }, { section321 with lines := section321.lines.filter LabFilter.notSkip }, { section322 with lines := section322.lines.filter LabFilter.notSkip }, { section323 with lines := section323.lines.filter LabFilter.notSkip }, { section324 with lines := section324.lines.filter LabFilter.notSkip }, { section325 with lines := section325.lines.filter LabFilter.notSkip }, { section326 with lines := section326.lines.filter LabFilter.notSkip }, { section327 with lines := section327.lines.filter LabFilter.notSkip }, { section328 with lines := section328.lines.filter LabFilter.notSkip }, { section329 with lines := section329.lines.filter LabFilter.notSkip }, { section330 with lines := section330.lines.filter LabFilter.notSkip }, { section331 with lines := section331.lines.filter LabFilter.notSkip }, { section332 with lines := section332.lines.filter LabFilter.notSkip }, { section333 with lines := section333.lines.filter LabFilter.notSkip }, { section334 with lines := section334.lines.filter LabFilter.notSkip }, { section335 with lines := section335.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered320_eq, Filtered321_eq, Filtered322_eq, Filtered323_eq, Filtered324_eq, Filtered325_eq, Filtered326_eq, Filtered327_eq, Filtered328_eq, Filtered329_eq, Filtered330_eq, Filtered331_eq, Filtered332_eq, Filtered333_eq, Filtered334_eq, Filtered335_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk320_335
