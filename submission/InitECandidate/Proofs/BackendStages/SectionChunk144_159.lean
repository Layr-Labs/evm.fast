import InitECandidate.Proofs.BackendStages.NamedChunk144_159
import InitECandidate.Proofs.BackendStages.Section144
import InitECandidate.Proofs.BackendStages.Section145
import InitECandidate.Proofs.BackendStages.Section146
import InitECandidate.Proofs.BackendStages.Section147
import InitECandidate.Proofs.BackendStages.Section148
import InitECandidate.Proofs.BackendStages.Section149
import InitECandidate.Proofs.BackendStages.Section150
import InitECandidate.Proofs.BackendStages.Section151
import InitECandidate.Proofs.BackendStages.Section152
import InitECandidate.Proofs.BackendStages.Section153
import InitECandidate.Proofs.BackendStages.Section154
import InitECandidate.Proofs.BackendStages.Section155
import InitECandidate.Proofs.BackendStages.Section156
import InitECandidate.Proofs.BackendStages.Section157
import InitECandidate.Proofs.BackendStages.Section158
import InitECandidate.Proofs.BackendStages.Section159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk144_159
def sections : LabSem.LabProgHOL 64 := [section144, section145, section146, section147, section148, section149, section150, section151, section152, section153, section154, section155, section156, section157, section158, section159]
theorem compiled_eq : NamedChunk144_159.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named144, StackToLab.progToSectionHOL Named145, StackToLab.progToSectionHOL Named146, StackToLab.progToSectionHOL Named147, StackToLab.progToSectionHOL Named148, StackToLab.progToSectionHOL Named149, StackToLab.progToSectionHOL Named150, StackToLab.progToSectionHOL Named151, StackToLab.progToSectionHOL Named152, StackToLab.progToSectionHOL Named153, StackToLab.progToSectionHOL Named154, StackToLab.progToSectionHOL Named155, StackToLab.progToSectionHOL Named156, StackToLab.progToSectionHOL Named157, StackToLab.progToSectionHOL Named158, StackToLab.progToSectionHOL Named159] = sections
  rw [section144_eq, section145_eq, section146_eq, section147_eq, section148_eq, section149_eq, section150_eq, section151_eq, section152_eq, section153_eq, section154_eq, section155_eq, section156_eq, section157_eq, section158_eq, section159_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk144_159
