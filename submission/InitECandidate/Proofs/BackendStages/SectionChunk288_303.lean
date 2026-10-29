import InitECandidate.Proofs.BackendStages.NamedChunk288_303
import InitECandidate.Proofs.BackendStages.Section288
import InitECandidate.Proofs.BackendStages.Section289
import InitECandidate.Proofs.BackendStages.Section290
import InitECandidate.Proofs.BackendStages.Section291
import InitECandidate.Proofs.BackendStages.Section292
import InitECandidate.Proofs.BackendStages.Section293
import InitECandidate.Proofs.BackendStages.Section294
import InitECandidate.Proofs.BackendStages.Section295
import InitECandidate.Proofs.BackendStages.Section296
import InitECandidate.Proofs.BackendStages.Section297
import InitECandidate.Proofs.BackendStages.Section298
import InitECandidate.Proofs.BackendStages.Section299
import InitECandidate.Proofs.BackendStages.Section300
import InitECandidate.Proofs.BackendStages.Section301
import InitECandidate.Proofs.BackendStages.Section302
import InitECandidate.Proofs.BackendStages.Section303
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk288_303
def sections : LabSem.LabProgHOL 64 := [section288, section289, section290, section291, section292, section293, section294, section295, section296, section297, section298, section299, section300, section301, section302, section303]
theorem compiled_eq : NamedChunk288_303.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named288, StackToLab.progToSectionHOL Named289, StackToLab.progToSectionHOL Named290, StackToLab.progToSectionHOL Named291, StackToLab.progToSectionHOL Named292, StackToLab.progToSectionHOL Named293, StackToLab.progToSectionHOL Named294, StackToLab.progToSectionHOL Named295, StackToLab.progToSectionHOL Named296, StackToLab.progToSectionHOL Named297, StackToLab.progToSectionHOL Named298, StackToLab.progToSectionHOL Named299, StackToLab.progToSectionHOL Named300, StackToLab.progToSectionHOL Named301, StackToLab.progToSectionHOL Named302, StackToLab.progToSectionHOL Named303] = sections
  rw [section288_eq, section289_eq, section290_eq, section291_eq, section292_eq, section293_eq, section294_eq, section295_eq, section296_eq, section297_eq, section298_eq, section299_eq, section300_eq, section301_eq, section302_eq, section303_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk288_303
