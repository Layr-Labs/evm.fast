import InitECandidate.Proofs.BackendStages.SectionChunk96_111
import InitECandidate.Proofs.BackendStages.Filtered96
import InitECandidate.Proofs.BackendStages.Filtered97
import InitECandidate.Proofs.BackendStages.Filtered98
import InitECandidate.Proofs.BackendStages.Filtered99
import InitECandidate.Proofs.BackendStages.Filtered100
import InitECandidate.Proofs.BackendStages.Filtered101
import InitECandidate.Proofs.BackendStages.Filtered102
import InitECandidate.Proofs.BackendStages.Filtered103
import InitECandidate.Proofs.BackendStages.Filtered104
import InitECandidate.Proofs.BackendStages.Filtered105
import InitECandidate.Proofs.BackendStages.Filtered106
import InitECandidate.Proofs.BackendStages.Filtered107
import InitECandidate.Proofs.BackendStages.Filtered108
import InitECandidate.Proofs.BackendStages.Filtered109
import InitECandidate.Proofs.BackendStages.Filtered110
import InitECandidate.Proofs.BackendStages.Filtered111
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk96_111
def sections : LabSem.LabProgHOL 64 := [Filtered96, Filtered97, Filtered98, Filtered99, Filtered100, Filtered101, Filtered102, Filtered103, Filtered104, Filtered105, Filtered106, Filtered107, Filtered108, Filtered109, Filtered110, Filtered111]
theorem compiled_eq : SectionChunk96_111.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section96 with lines := section96.lines.filter LabFilter.notSkip }, { section97 with lines := section97.lines.filter LabFilter.notSkip }, { section98 with lines := section98.lines.filter LabFilter.notSkip }, { section99 with lines := section99.lines.filter LabFilter.notSkip }, { section100 with lines := section100.lines.filter LabFilter.notSkip }, { section101 with lines := section101.lines.filter LabFilter.notSkip }, { section102 with lines := section102.lines.filter LabFilter.notSkip }, { section103 with lines := section103.lines.filter LabFilter.notSkip }, { section104 with lines := section104.lines.filter LabFilter.notSkip }, { section105 with lines := section105.lines.filter LabFilter.notSkip }, { section106 with lines := section106.lines.filter LabFilter.notSkip }, { section107 with lines := section107.lines.filter LabFilter.notSkip }, { section108 with lines := section108.lines.filter LabFilter.notSkip }, { section109 with lines := section109.lines.filter LabFilter.notSkip }, { section110 with lines := section110.lines.filter LabFilter.notSkip }, { section111 with lines := section111.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered96_eq, Filtered97_eq, Filtered98_eq, Filtered99_eq, Filtered100_eq, Filtered101_eq, Filtered102_eq, Filtered103_eq, Filtered104_eq, Filtered105_eq, Filtered106_eq, Filtered107_eq, Filtered108_eq, Filtered109_eq, Filtered110_eq, Filtered111_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk96_111
