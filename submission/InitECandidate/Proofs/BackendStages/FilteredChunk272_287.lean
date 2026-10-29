import InitECandidate.Proofs.BackendStages.SectionChunk272_287
import InitECandidate.Proofs.BackendStages.Filtered272
import InitECandidate.Proofs.BackendStages.Filtered273
import InitECandidate.Proofs.BackendStages.Filtered274
import InitECandidate.Proofs.BackendStages.Filtered275
import InitECandidate.Proofs.BackendStages.Filtered276
import InitECandidate.Proofs.BackendStages.Filtered277
import InitECandidate.Proofs.BackendStages.Filtered278
import InitECandidate.Proofs.BackendStages.Filtered279
import InitECandidate.Proofs.BackendStages.Filtered280
import InitECandidate.Proofs.BackendStages.Filtered281
import InitECandidate.Proofs.BackendStages.Filtered282
import InitECandidate.Proofs.BackendStages.Filtered283
import InitECandidate.Proofs.BackendStages.Filtered284
import InitECandidate.Proofs.BackendStages.Filtered285
import InitECandidate.Proofs.BackendStages.Filtered286
import InitECandidate.Proofs.BackendStages.Filtered287
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk272_287
def sections : LabSem.LabProgHOL 64 := [Filtered272, Filtered273, Filtered274, Filtered275, Filtered276, Filtered277, Filtered278, Filtered279, Filtered280, Filtered281, Filtered282, Filtered283, Filtered284, Filtered285, Filtered286, Filtered287]
theorem compiled_eq : SectionChunk272_287.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section272 with lines := section272.lines.filter LabFilter.notSkip }, { section273 with lines := section273.lines.filter LabFilter.notSkip }, { section274 with lines := section274.lines.filter LabFilter.notSkip }, { section275 with lines := section275.lines.filter LabFilter.notSkip }, { section276 with lines := section276.lines.filter LabFilter.notSkip }, { section277 with lines := section277.lines.filter LabFilter.notSkip }, { section278 with lines := section278.lines.filter LabFilter.notSkip }, { section279 with lines := section279.lines.filter LabFilter.notSkip }, { section280 with lines := section280.lines.filter LabFilter.notSkip }, { section281 with lines := section281.lines.filter LabFilter.notSkip }, { section282 with lines := section282.lines.filter LabFilter.notSkip }, { section283 with lines := section283.lines.filter LabFilter.notSkip }, { section284 with lines := section284.lines.filter LabFilter.notSkip }, { section285 with lines := section285.lines.filter LabFilter.notSkip }, { section286 with lines := section286.lines.filter LabFilter.notSkip }, { section287 with lines := section287.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered272_eq, Filtered273_eq, Filtered274_eq, Filtered275_eq, Filtered276_eq, Filtered277_eq, Filtered278_eq, Filtered279_eq, Filtered280_eq, Filtered281_eq, Filtered282_eq, Filtered283_eq, Filtered284_eq, Filtered285_eq, Filtered286_eq, Filtered287_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk272_287
