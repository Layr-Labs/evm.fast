import InitECandidate.Proofs.BackendStages.SectionChunk240_255
import InitECandidate.Proofs.BackendStages.Filtered240
import InitECandidate.Proofs.BackendStages.Filtered241
import InitECandidate.Proofs.BackendStages.Filtered242
import InitECandidate.Proofs.BackendStages.Filtered243
import InitECandidate.Proofs.BackendStages.Filtered244
import InitECandidate.Proofs.BackendStages.Filtered245
import InitECandidate.Proofs.BackendStages.Filtered246
import InitECandidate.Proofs.BackendStages.Filtered247
import InitECandidate.Proofs.BackendStages.Filtered248
import InitECandidate.Proofs.BackendStages.Filtered249
import InitECandidate.Proofs.BackendStages.Filtered250
import InitECandidate.Proofs.BackendStages.Filtered251
import InitECandidate.Proofs.BackendStages.Filtered252
import InitECandidate.Proofs.BackendStages.Filtered253
import InitECandidate.Proofs.BackendStages.Filtered254
import InitECandidate.Proofs.BackendStages.Filtered255
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.FilteredChunk240_255
def sections : LabSem.LabProgHOL 64 := [Filtered240, Filtered241, Filtered242, Filtered243, Filtered244, Filtered245, Filtered246, Filtered247, Filtered248, Filtered249, Filtered250, Filtered251, Filtered252, Filtered253, Filtered254, Filtered255]
theorem compiled_eq : SectionChunk240_255.sections.map (fun sec => { sec with lines := sec.lines.filter LabFilter.notSkip }) = sections := by
  change [{ section240 with lines := section240.lines.filter LabFilter.notSkip }, { section241 with lines := section241.lines.filter LabFilter.notSkip }, { section242 with lines := section242.lines.filter LabFilter.notSkip }, { section243 with lines := section243.lines.filter LabFilter.notSkip }, { section244 with lines := section244.lines.filter LabFilter.notSkip }, { section245 with lines := section245.lines.filter LabFilter.notSkip }, { section246 with lines := section246.lines.filter LabFilter.notSkip }, { section247 with lines := section247.lines.filter LabFilter.notSkip }, { section248 with lines := section248.lines.filter LabFilter.notSkip }, { section249 with lines := section249.lines.filter LabFilter.notSkip }, { section250 with lines := section250.lines.filter LabFilter.notSkip }, { section251 with lines := section251.lines.filter LabFilter.notSkip }, { section252 with lines := section252.lines.filter LabFilter.notSkip }, { section253 with lines := section253.lines.filter LabFilter.notSkip }, { section254 with lines := section254.lines.filter LabFilter.notSkip }, { section255 with lines := section255.lines.filter LabFilter.notSkip }] = sections
  rw [Filtered240_eq, Filtered241_eq, Filtered242_eq, Filtered243_eq, Filtered244_eq, Filtered245_eq, Filtered246_eq, Filtered247_eq, Filtered248_eq, Filtered249_eq, Filtered250_eq, Filtered251_eq, Filtered252_eq, Filtered253_eq, Filtered254_eq, Filtered255_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.FilteredChunk240_255
