import InitECandidate.Proofs.BackendStages.SectionChunk112_127
import InitECandidate.Proofs.BackendStages.Filtered112
import InitECandidate.Proofs.BackendStages.Filtered113
import InitECandidate.Proofs.BackendStages.Filtered114
import InitECandidate.Proofs.BackendStages.Filtered115
import InitECandidate.Proofs.BackendStages.Filtered116
import InitECandidate.Proofs.BackendStages.Filtered117
import InitECandidate.Proofs.BackendStages.Filtered118
import InitECandidate.Proofs.BackendStages.Filtered119
import InitECandidate.Proofs.BackendStages.Filtered120
import InitECandidate.Proofs.BackendStages.Filtered121
import InitECandidate.Proofs.BackendStages.Filtered122
import InitECandidate.Proofs.BackendStages.Filtered123
import InitECandidate.Proofs.BackendStages.Filtered124
import InitECandidate.Proofs.BackendStages.Filtered125
import InitECandidate.Proofs.BackendStages.Filtered126
import InitECandidate.Proofs.BackendStages.Filtered127
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk112_127
def sections : LabSem.LabProgHOL 64 := [Filtered112, Filtered113, Filtered114, Filtered115, Filtered116, Filtered117, Filtered118, Filtered119, Filtered120, Filtered121, Filtered122, Filtered123, Filtered124, Filtered125, Filtered126, Filtered127]
theorem compiled_eq : SectionChunk112_127.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section112 with lines := section112.lines.filter LabFilter.notSkip }, { section113 with lines := section113.lines.filter LabFilter.notSkip }, { section114 with lines := section114.lines.filter LabFilter.notSkip }, { section115 with lines := section115.lines.filter LabFilter.notSkip }, { section116 with lines := section116.lines.filter LabFilter.notSkip }, { section117 with lines := section117.lines.filter LabFilter.notSkip }, { section118 with lines := section118.lines.filter LabFilter.notSkip }, { section119 with lines := section119.lines.filter LabFilter.notSkip }, { section120 with lines := section120.lines.filter LabFilter.notSkip }, { section121 with lines := section121.lines.filter LabFilter.notSkip }, { section122 with lines := section122.lines.filter LabFilter.notSkip }, { section123 with lines := section123.lines.filter LabFilter.notSkip }, { section124 with lines := section124.lines.filter LabFilter.notSkip }, { section125 with lines := section125.lines.filter LabFilter.notSkip }, { section126 with lines := section126.lines.filter LabFilter.notSkip }, { section127 with lines := section127.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered112_eq, Filtered113_eq, Filtered114_eq, Filtered115_eq, Filtered116_eq, Filtered117_eq, Filtered118_eq, Filtered119_eq, Filtered120_eq, Filtered121_eq, Filtered122_eq, Filtered123_eq, Filtered124_eq, Filtered125_eq, Filtered126_eq, Filtered127_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk112_127
