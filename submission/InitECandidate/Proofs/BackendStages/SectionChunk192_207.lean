import InitECandidate.Proofs.BackendStages.NamedChunk192_207
import InitECandidate.Proofs.BackendStages.Section192
import InitECandidate.Proofs.BackendStages.Section193
import InitECandidate.Proofs.BackendStages.Section194
import InitECandidate.Proofs.BackendStages.Section195
import InitECandidate.Proofs.BackendStages.Section196
import InitECandidate.Proofs.BackendStages.Section197
import InitECandidate.Proofs.BackendStages.Section198
import InitECandidate.Proofs.BackendStages.Section199
import InitECandidate.Proofs.BackendStages.Section200
import InitECandidate.Proofs.BackendStages.Section201
import InitECandidate.Proofs.BackendStages.Section202
import InitECandidate.Proofs.BackendStages.Section203
import InitECandidate.Proofs.BackendStages.Section204
import InitECandidate.Proofs.BackendStages.Section205
import InitECandidate.Proofs.BackendStages.Section206
import InitECandidate.Proofs.BackendStages.Section207
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk192_207
def sections : LabSem.LabProgHOL 64 := [section192, section193, section194, section195, section196, section197, section198, section199, section200, section201, section202, section203, section204, section205, section206, section207]
theorem compiled_eq : NamedChunk192_207.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named192, StackToLab.progToSectionHOL Named193, StackToLab.progToSectionHOL Named194, StackToLab.progToSectionHOL Named195, StackToLab.progToSectionHOL Named196, StackToLab.progToSectionHOL Named197, StackToLab.progToSectionHOL Named198, StackToLab.progToSectionHOL Named199, StackToLab.progToSectionHOL Named200, StackToLab.progToSectionHOL Named201, StackToLab.progToSectionHOL Named202, StackToLab.progToSectionHOL Named203, StackToLab.progToSectionHOL Named204, StackToLab.progToSectionHOL Named205, StackToLab.progToSectionHOL Named206, StackToLab.progToSectionHOL Named207] = sections
  rw [section192_eq, section193_eq, section194_eq, section195_eq, section196_eq, section197_eq, section198_eq, section199_eq, section200_eq, section201_eq, section202_eq, section203_eq, section204_eq, section205_eq, section206_eq, section207_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk192_207
