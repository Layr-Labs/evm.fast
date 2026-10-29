import InitECandidate.Proofs.BackendStages.SectionChunk144_159
import InitECandidate.Proofs.BackendStages.Filtered144
import InitECandidate.Proofs.BackendStages.Filtered145
import InitECandidate.Proofs.BackendStages.Filtered146
import InitECandidate.Proofs.BackendStages.Filtered147
import InitECandidate.Proofs.BackendStages.Filtered148
import InitECandidate.Proofs.BackendStages.Filtered149
import InitECandidate.Proofs.BackendStages.Filtered150
import InitECandidate.Proofs.BackendStages.Filtered151
import InitECandidate.Proofs.BackendStages.Filtered152
import InitECandidate.Proofs.BackendStages.Filtered153
import InitECandidate.Proofs.BackendStages.Filtered154
import InitECandidate.Proofs.BackendStages.Filtered155
import InitECandidate.Proofs.BackendStages.Filtered156
import InitECandidate.Proofs.BackendStages.Filtered157
import InitECandidate.Proofs.BackendStages.Filtered158
import InitECandidate.Proofs.BackendStages.Filtered159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk144_159
def sections : LabSem.LabProgHOL 64 := [Filtered144, Filtered145, Filtered146, Filtered147, Filtered148, Filtered149, Filtered150, Filtered151, Filtered152, Filtered153, Filtered154, Filtered155, Filtered156, Filtered157, Filtered158, Filtered159]
theorem compiled_eq : SectionChunk144_159.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section144 with lines := section144.lines.filter LabFilter.notSkip }, { section145 with lines := section145.lines.filter LabFilter.notSkip }, { section146 with lines := section146.lines.filter LabFilter.notSkip }, { section147 with lines := section147.lines.filter LabFilter.notSkip }, { section148 with lines := section148.lines.filter LabFilter.notSkip }, { section149 with lines := section149.lines.filter LabFilter.notSkip }, { section150 with lines := section150.lines.filter LabFilter.notSkip }, { section151 with lines := section151.lines.filter LabFilter.notSkip }, { section152 with lines := section152.lines.filter LabFilter.notSkip }, { section153 with lines := section153.lines.filter LabFilter.notSkip }, { section154 with lines := section154.lines.filter LabFilter.notSkip }, { section155 with lines := section155.lines.filter LabFilter.notSkip }, { section156 with lines := section156.lines.filter LabFilter.notSkip }, { section157 with lines := section157.lines.filter LabFilter.notSkip }, { section158 with lines := section158.lines.filter LabFilter.notSkip }, { section159 with lines := section159.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered144_eq, Filtered145_eq, Filtered146_eq, Filtered147_eq, Filtered148_eq, Filtered149_eq, Filtered150_eq, Filtered151_eq, Filtered152_eq, Filtered153_eq, Filtered154_eq, Filtered155_eq, Filtered156_eq, Filtered157_eq, Filtered158_eq, Filtered159_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk144_159
