import InitECandidate.Proofs.BackendStages.SectionChunk304_319
import InitECandidate.Proofs.BackendStages.Filtered304
import InitECandidate.Proofs.BackendStages.Filtered305
import InitECandidate.Proofs.BackendStages.Filtered306
import InitECandidate.Proofs.BackendStages.Filtered307
import InitECandidate.Proofs.BackendStages.Filtered308
import InitECandidate.Proofs.BackendStages.Filtered309
import InitECandidate.Proofs.BackendStages.Filtered310
import InitECandidate.Proofs.BackendStages.Filtered311
import InitECandidate.Proofs.BackendStages.Filtered312
import InitECandidate.Proofs.BackendStages.Filtered313
import InitECandidate.Proofs.BackendStages.Filtered314
import InitECandidate.Proofs.BackendStages.Filtered315
import InitECandidate.Proofs.BackendStages.Filtered316
import InitECandidate.Proofs.BackendStages.Filtered317
import InitECandidate.Proofs.BackendStages.Filtered318
import InitECandidate.Proofs.BackendStages.Filtered319
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk304_319
def sections : LabSem.LabProgHOL 64 := [Filtered304, Filtered305, Filtered306, Filtered307, Filtered308, Filtered309, Filtered310, Filtered311, Filtered312, Filtered313, Filtered314, Filtered315, Filtered316, Filtered317, Filtered318, Filtered319]
theorem compiled_eq : SectionChunk304_319.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section304 with lines := section304.lines.filter LabFilter.notSkip }, { section305 with lines := section305.lines.filter LabFilter.notSkip }, { section306 with lines := section306.lines.filter LabFilter.notSkip }, { section307 with lines := section307.lines.filter LabFilter.notSkip }, { section308 with lines := section308.lines.filter LabFilter.notSkip }, { section309 with lines := section309.lines.filter LabFilter.notSkip }, { section310 with lines := section310.lines.filter LabFilter.notSkip }, { section311 with lines := section311.lines.filter LabFilter.notSkip }, { section312 with lines := section312.lines.filter LabFilter.notSkip }, { section313 with lines := section313.lines.filter LabFilter.notSkip }, { section314 with lines := section314.lines.filter LabFilter.notSkip }, { section315 with lines := section315.lines.filter LabFilter.notSkip }, { section316 with lines := section316.lines.filter LabFilter.notSkip }, { section317 with lines := section317.lines.filter LabFilter.notSkip }, { section318 with lines := section318.lines.filter LabFilter.notSkip }, { section319 with lines := section319.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered304_eq, Filtered305_eq, Filtered306_eq, Filtered307_eq, Filtered308_eq, Filtered309_eq, Filtered310_eq, Filtered311_eq, Filtered312_eq, Filtered313_eq, Filtered314_eq, Filtered315_eq, Filtered316_eq, Filtered317_eq, Filtered318_eq, Filtered319_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk304_319
