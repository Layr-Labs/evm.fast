import InitECandidate.Proofs.BackendStages.NamedChunk240_255
import InitECandidate.Proofs.BackendStages.Section240
import InitECandidate.Proofs.BackendStages.Section241
import InitECandidate.Proofs.BackendStages.Section242
import InitECandidate.Proofs.BackendStages.Section243
import InitECandidate.Proofs.BackendStages.Section244
import InitECandidate.Proofs.BackendStages.Section245
import InitECandidate.Proofs.BackendStages.Section246
import InitECandidate.Proofs.BackendStages.Section247
import InitECandidate.Proofs.BackendStages.Section248
import InitECandidate.Proofs.BackendStages.Section249
import InitECandidate.Proofs.BackendStages.Section250
import InitECandidate.Proofs.BackendStages.Section251
import InitECandidate.Proofs.BackendStages.Section252
import InitECandidate.Proofs.BackendStages.Section253
import InitECandidate.Proofs.BackendStages.Section254
import InitECandidate.Proofs.BackendStages.Section255
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk240_255
def sections : LabSem.LabProgHOL 64 := [section240, section241, section242, section243, section244, section245, section246, section247, section248, section249, section250, section251, section252, section253, section254, section255]
theorem compiled_eq : NamedChunk240_255.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named240, StackToLab.progToSectionHOL Named241, StackToLab.progToSectionHOL Named242, StackToLab.progToSectionHOL Named243, StackToLab.progToSectionHOL Named244, StackToLab.progToSectionHOL Named245, StackToLab.progToSectionHOL Named246, StackToLab.progToSectionHOL Named247, StackToLab.progToSectionHOL Named248, StackToLab.progToSectionHOL Named249, StackToLab.progToSectionHOL Named250, StackToLab.progToSectionHOL Named251, StackToLab.progToSectionHOL Named252, StackToLab.progToSectionHOL Named253, StackToLab.progToSectionHOL Named254, StackToLab.progToSectionHOL Named255] = sections
  rw [section240_eq, section241_eq, section242_eq, section243_eq, section244_eq, section245_eq, section246_eq, section247_eq, section248_eq, section249_eq, section250_eq, section251_eq, section252_eq, section253_eq, section254_eq, section255_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk240_255
