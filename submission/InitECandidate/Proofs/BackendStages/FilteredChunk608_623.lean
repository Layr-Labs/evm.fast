import InitECandidate.Proofs.BackendStages.SectionChunk608_623
import InitECandidate.Proofs.BackendStages.Filtered608
import InitECandidate.Proofs.BackendStages.Filtered609
import InitECandidate.Proofs.BackendStages.Filtered610
import InitECandidate.Proofs.BackendStages.Filtered611
import InitECandidate.Proofs.BackendStages.Filtered612
import InitECandidate.Proofs.BackendStages.Filtered613
import InitECandidate.Proofs.BackendStages.Filtered614
import InitECandidate.Proofs.BackendStages.Filtered615
import InitECandidate.Proofs.BackendStages.Filtered616
import InitECandidate.Proofs.BackendStages.Filtered617
import InitECandidate.Proofs.BackendStages.Filtered618
import InitECandidate.Proofs.BackendStages.Filtered619
import InitECandidate.Proofs.BackendStages.Filtered620
import InitECandidate.Proofs.BackendStages.Filtered621
import InitECandidate.Proofs.BackendStages.Filtered622
import InitECandidate.Proofs.BackendStages.Filtered623
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk608_623
def sections : LabSem.LabProgHOL 64 := [Filtered608, Filtered609, Filtered610, Filtered611, Filtered612, Filtered613, Filtered614, Filtered615, Filtered616, Filtered617, Filtered618, Filtered619, Filtered620, Filtered621, Filtered622, Filtered623]
theorem compiled_eq : SectionChunk608_623.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section608 with lines := section608.lines.filter LabFilter.notSkip }, { section609 with lines := section609.lines.filter LabFilter.notSkip }, { section610 with lines := section610.lines.filter LabFilter.notSkip }, { section611 with lines := section611.lines.filter LabFilter.notSkip }, { section612 with lines := section612.lines.filter LabFilter.notSkip }, { section613 with lines := section613.lines.filter LabFilter.notSkip }, { section614 with lines := section614.lines.filter LabFilter.notSkip }, { section615 with lines := section615.lines.filter LabFilter.notSkip }, { section616 with lines := section616.lines.filter LabFilter.notSkip }, { section617 with lines := section617.lines.filter LabFilter.notSkip }, { section618 with lines := section618.lines.filter LabFilter.notSkip }, { section619 with lines := section619.lines.filter LabFilter.notSkip }, { section620 with lines := section620.lines.filter LabFilter.notSkip }, { section621 with lines := section621.lines.filter LabFilter.notSkip }, { section622 with lines := section622.lines.filter LabFilter.notSkip }, { section623 with lines := section623.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered608_eq, Filtered609_eq, Filtered610_eq, Filtered611_eq, Filtered612_eq, Filtered613_eq, Filtered614_eq, Filtered615_eq, Filtered616_eq, Filtered617_eq, Filtered618_eq, Filtered619_eq, Filtered620_eq, Filtered621_eq, Filtered622_eq, Filtered623_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk608_623
