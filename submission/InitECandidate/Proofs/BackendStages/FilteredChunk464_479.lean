import InitECandidate.Proofs.BackendStages.SectionChunk464_479
import InitECandidate.Proofs.BackendStages.Filtered464
import InitECandidate.Proofs.BackendStages.Filtered465
import InitECandidate.Proofs.BackendStages.Filtered466
import InitECandidate.Proofs.BackendStages.Filtered467
import InitECandidate.Proofs.BackendStages.Filtered468
import InitECandidate.Proofs.BackendStages.Filtered469
import InitECandidate.Proofs.BackendStages.Filtered470
import InitECandidate.Proofs.BackendStages.Filtered471
import InitECandidate.Proofs.BackendStages.Filtered472
import InitECandidate.Proofs.BackendStages.Filtered473
import InitECandidate.Proofs.BackendStages.Filtered474
import InitECandidate.Proofs.BackendStages.Filtered475
import InitECandidate.Proofs.BackendStages.Filtered476
import InitECandidate.Proofs.BackendStages.Filtered477
import InitECandidate.Proofs.BackendStages.Filtered478
import InitECandidate.Proofs.BackendStages.Filtered479
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk464_479
def sections : LabSem.LabProgHOL 64 := [Filtered464, Filtered465, Filtered466, Filtered467, Filtered468, Filtered469, Filtered470, Filtered471, Filtered472, Filtered473, Filtered474, Filtered475, Filtered476, Filtered477, Filtered478, Filtered479]
theorem compiled_eq : SectionChunk464_479.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section464 with lines := section464.lines.filter LabFilter.notSkip }, { section465 with lines := section465.lines.filter LabFilter.notSkip }, { section466 with lines := section466.lines.filter LabFilter.notSkip }, { section467 with lines := section467.lines.filter LabFilter.notSkip }, { section468 with lines := section468.lines.filter LabFilter.notSkip }, { section469 with lines := section469.lines.filter LabFilter.notSkip }, { section470 with lines := section470.lines.filter LabFilter.notSkip }, { section471 with lines := section471.lines.filter LabFilter.notSkip }, { section472 with lines := section472.lines.filter LabFilter.notSkip }, { section473 with lines := section473.lines.filter LabFilter.notSkip }, { section474 with lines := section474.lines.filter LabFilter.notSkip }, { section475 with lines := section475.lines.filter LabFilter.notSkip }, { section476 with lines := section476.lines.filter LabFilter.notSkip }, { section477 with lines := section477.lines.filter LabFilter.notSkip }, { section478 with lines := section478.lines.filter LabFilter.notSkip }, { section479 with lines := section479.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered464_eq, Filtered465_eq, Filtered466_eq, Filtered467_eq, Filtered468_eq, Filtered469_eq, Filtered470_eq, Filtered471_eq, Filtered472_eq, Filtered473_eq, Filtered474_eq, Filtered475_eq, Filtered476_eq, Filtered477_eq, Filtered478_eq, Filtered479_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk464_479
