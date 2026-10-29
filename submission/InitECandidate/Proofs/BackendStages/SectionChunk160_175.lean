import InitECandidate.Proofs.BackendStages.NamedChunk160_175
import InitECandidate.Proofs.BackendStages.Section160
import InitECandidate.Proofs.BackendStages.Section161
import InitECandidate.Proofs.BackendStages.Section162
import InitECandidate.Proofs.BackendStages.Section163
import InitECandidate.Proofs.BackendStages.Section164
import InitECandidate.Proofs.BackendStages.Section165
import InitECandidate.Proofs.BackendStages.Section166
import InitECandidate.Proofs.BackendStages.Section167
import InitECandidate.Proofs.BackendStages.Section168
import InitECandidate.Proofs.BackendStages.Section169
import InitECandidate.Proofs.BackendStages.Section170
import InitECandidate.Proofs.BackendStages.Section171
import InitECandidate.Proofs.BackendStages.Section172
import InitECandidate.Proofs.BackendStages.Section173
import InitECandidate.Proofs.BackendStages.Section174
import InitECandidate.Proofs.BackendStages.Section175
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk160_175
def sections : LabSem.LabProgHOL 64 := [section160, section161, section162, section163, section164, section165, section166, section167, section168, section169, section170, section171, section172, section173, section174, section175]
theorem compiled_eq : NamedChunk160_175.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named160, StackToLab.progToSectionHOL Named161, StackToLab.progToSectionHOL Named162, StackToLab.progToSectionHOL Named163, StackToLab.progToSectionHOL Named164, StackToLab.progToSectionHOL Named165, StackToLab.progToSectionHOL Named166, StackToLab.progToSectionHOL Named167, StackToLab.progToSectionHOL Named168, StackToLab.progToSectionHOL Named169, StackToLab.progToSectionHOL Named170, StackToLab.progToSectionHOL Named171, StackToLab.progToSectionHOL Named172, StackToLab.progToSectionHOL Named173, StackToLab.progToSectionHOL Named174, StackToLab.progToSectionHOL Named175] = sections
  rw [section160_eq, section161_eq, section162_eq, section163_eq, section164_eq, section165_eq, section166_eq, section167_eq, section168_eq, section169_eq, section170_eq, section171_eq, section172_eq, section173_eq, section174_eq, section175_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk160_175
