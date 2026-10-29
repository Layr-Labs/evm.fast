import InitECandidate.Proofs.BackendStages.NamedChunk128_143
import InitECandidate.Proofs.BackendStages.Section128
import InitECandidate.Proofs.BackendStages.Section129
import InitECandidate.Proofs.BackendStages.Section130
import InitECandidate.Proofs.BackendStages.Section131
import InitECandidate.Proofs.BackendStages.Section132
import InitECandidate.Proofs.BackendStages.Section133
import InitECandidate.Proofs.BackendStages.Section134
import InitECandidate.Proofs.BackendStages.Section135
import InitECandidate.Proofs.BackendStages.Section136
import InitECandidate.Proofs.BackendStages.Section137
import InitECandidate.Proofs.BackendStages.Section138
import InitECandidate.Proofs.BackendStages.Section139
import InitECandidate.Proofs.BackendStages.Section140
import InitECandidate.Proofs.BackendStages.Section141
import InitECandidate.Proofs.BackendStages.Section142
import InitECandidate.Proofs.BackendStages.Section143
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk128_143
def sections : LabSem.LabProgHOL 64 := [section128, section129, section130, section131, section132, section133, section134, section135, section136, section137, section138, section139, section140, section141, section142, section143]
theorem compiled_eq : NamedChunk128_143.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named128, StackToLab.progToSectionHOL Named129, StackToLab.progToSectionHOL Named130, StackToLab.progToSectionHOL Named131, StackToLab.progToSectionHOL Named132, StackToLab.progToSectionHOL Named133, StackToLab.progToSectionHOL Named134, StackToLab.progToSectionHOL Named135, StackToLab.progToSectionHOL Named136, StackToLab.progToSectionHOL Named137, StackToLab.progToSectionHOL Named138, StackToLab.progToSectionHOL Named139, StackToLab.progToSectionHOL Named140, StackToLab.progToSectionHOL Named141, StackToLab.progToSectionHOL Named142, StackToLab.progToSectionHOL Named143] = sections
  rw [section128_eq, section129_eq, section130_eq, section131_eq, section132_eq, section133_eq, section134_eq, section135_eq, section136_eq, section137_eq, section138_eq, section139_eq, section140_eq, section141_eq, section142_eq, section143_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk128_143
