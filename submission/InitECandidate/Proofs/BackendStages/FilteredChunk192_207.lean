import InitECandidate.Proofs.BackendStages.SectionChunk192_207
import InitECandidate.Proofs.BackendStages.Filtered192
import InitECandidate.Proofs.BackendStages.Filtered193
import InitECandidate.Proofs.BackendStages.Filtered194
import InitECandidate.Proofs.BackendStages.Filtered195
import InitECandidate.Proofs.BackendStages.Filtered196
import InitECandidate.Proofs.BackendStages.Filtered197
import InitECandidate.Proofs.BackendStages.Filtered198
import InitECandidate.Proofs.BackendStages.Filtered199
import InitECandidate.Proofs.BackendStages.Filtered200
import InitECandidate.Proofs.BackendStages.Filtered201
import InitECandidate.Proofs.BackendStages.Filtered202
import InitECandidate.Proofs.BackendStages.Filtered203
import InitECandidate.Proofs.BackendStages.Filtered204
import InitECandidate.Proofs.BackendStages.Filtered205
import InitECandidate.Proofs.BackendStages.Filtered206
import InitECandidate.Proofs.BackendStages.Filtered207
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk192_207
def sections : LabSem.LabProgHOL 64 := [Filtered192, Filtered193, Filtered194, Filtered195, Filtered196, Filtered197, Filtered198, Filtered199, Filtered200, Filtered201, Filtered202, Filtered203, Filtered204, Filtered205, Filtered206, Filtered207]
theorem compiled_eq : SectionChunk192_207.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section192 with lines := section192.lines.filter LabFilter.notSkip }, { section193 with lines := section193.lines.filter LabFilter.notSkip }, { section194 with lines := section194.lines.filter LabFilter.notSkip }, { section195 with lines := section195.lines.filter LabFilter.notSkip }, { section196 with lines := section196.lines.filter LabFilter.notSkip }, { section197 with lines := section197.lines.filter LabFilter.notSkip }, { section198 with lines := section198.lines.filter LabFilter.notSkip }, { section199 with lines := section199.lines.filter LabFilter.notSkip }, { section200 with lines := section200.lines.filter LabFilter.notSkip }, { section201 with lines := section201.lines.filter LabFilter.notSkip }, { section202 with lines := section202.lines.filter LabFilter.notSkip }, { section203 with lines := section203.lines.filter LabFilter.notSkip }, { section204 with lines := section204.lines.filter LabFilter.notSkip }, { section205 with lines := section205.lines.filter LabFilter.notSkip }, { section206 with lines := section206.lines.filter LabFilter.notSkip }, { section207 with lines := section207.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered192_eq, Filtered193_eq, Filtered194_eq, Filtered195_eq, Filtered196_eq, Filtered197_eq, Filtered198_eq, Filtered199_eq, Filtered200_eq, Filtered201_eq, Filtered202_eq, Filtered203_eq, Filtered204_eq, Filtered205_eq, Filtered206_eq, Filtered207_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk192_207
