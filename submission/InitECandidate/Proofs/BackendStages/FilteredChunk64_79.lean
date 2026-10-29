import InitECandidate.Proofs.BackendStages.SectionChunk64_79
import InitECandidate.Proofs.BackendStages.Filtered64
import InitECandidate.Proofs.BackendStages.Filtered65
import InitECandidate.Proofs.BackendStages.Filtered66
import InitECandidate.Proofs.BackendStages.Filtered67
import InitECandidate.Proofs.BackendStages.Filtered68
import InitECandidate.Proofs.BackendStages.Filtered69
import InitECandidate.Proofs.BackendStages.Filtered70
import InitECandidate.Proofs.BackendStages.Filtered71
import InitECandidate.Proofs.BackendStages.Filtered72
import InitECandidate.Proofs.BackendStages.Filtered73
import InitECandidate.Proofs.BackendStages.Filtered74
import InitECandidate.Proofs.BackendStages.Filtered75
import InitECandidate.Proofs.BackendStages.Filtered76
import InitECandidate.Proofs.BackendStages.Filtered77
import InitECandidate.Proofs.BackendStages.Filtered78
import InitECandidate.Proofs.BackendStages.Filtered79
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk64_79
def sections : LabSem.LabProgHOL 64 := [Filtered64, Filtered65, Filtered66, Filtered67, Filtered68, Filtered69, Filtered70, Filtered71, Filtered72, Filtered73, Filtered74, Filtered75, Filtered76, Filtered77, Filtered78, Filtered79]
theorem compiled_eq : SectionChunk64_79.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section64 with lines := section64.lines.filter LabFilter.notSkip }, { section65 with lines := section65.lines.filter LabFilter.notSkip }, { section66 with lines := section66.lines.filter LabFilter.notSkip }, { section67 with lines := section67.lines.filter LabFilter.notSkip }, { section68 with lines := section68.lines.filter LabFilter.notSkip }, { section69 with lines := section69.lines.filter LabFilter.notSkip }, { section70 with lines := section70.lines.filter LabFilter.notSkip }, { section71 with lines := section71.lines.filter LabFilter.notSkip }, { section72 with lines := section72.lines.filter LabFilter.notSkip }, { section73 with lines := section73.lines.filter LabFilter.notSkip }, { section74 with lines := section74.lines.filter LabFilter.notSkip }, { section75 with lines := section75.lines.filter LabFilter.notSkip }, { section76 with lines := section76.lines.filter LabFilter.notSkip }, { section77 with lines := section77.lines.filter LabFilter.notSkip }, { section78 with lines := section78.lines.filter LabFilter.notSkip }, { section79 with lines := section79.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered64_eq, Filtered65_eq, Filtered66_eq, Filtered67_eq, Filtered68_eq, Filtered69_eq, Filtered70_eq, Filtered71_eq, Filtered72_eq, Filtered73_eq, Filtered74_eq, Filtered75_eq, Filtered76_eq, Filtered77_eq, Filtered78_eq, Filtered79_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk64_79
