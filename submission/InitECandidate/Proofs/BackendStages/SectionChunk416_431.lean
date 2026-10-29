import InitECandidate.Proofs.BackendStages.NamedChunk416_431
import InitECandidate.Proofs.BackendStages.Section416
import InitECandidate.Proofs.BackendStages.Section417
import InitECandidate.Proofs.BackendStages.Section418
import InitECandidate.Proofs.BackendStages.Section419
import InitECandidate.Proofs.BackendStages.Section420
import InitECandidate.Proofs.BackendStages.Section421
import InitECandidate.Proofs.BackendStages.Section422
import InitECandidate.Proofs.BackendStages.Section423
import InitECandidate.Proofs.BackendStages.Section424
import InitECandidate.Proofs.BackendStages.Section425
import InitECandidate.Proofs.BackendStages.Section426
import InitECandidate.Proofs.BackendStages.Section427
import InitECandidate.Proofs.BackendStages.Section428
import InitECandidate.Proofs.BackendStages.Section429
import InitECandidate.Proofs.BackendStages.Section430
import InitECandidate.Proofs.BackendStages.Section431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk416_431
def sections : LabSem.LabProgHOL 64 := [section416, section417, section418, section419, section420, section421, section422, section423, section424, section425, section426, section427, section428, section429, section430, section431]
theorem compiled_eq : NamedChunk416_431.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named416, StackToLab.progToSectionHOL Named417, StackToLab.progToSectionHOL Named418, StackToLab.progToSectionHOL Named419, StackToLab.progToSectionHOL Named420, StackToLab.progToSectionHOL Named421, StackToLab.progToSectionHOL Named422, StackToLab.progToSectionHOL Named423, StackToLab.progToSectionHOL Named424, StackToLab.progToSectionHOL Named425, StackToLab.progToSectionHOL Named426, StackToLab.progToSectionHOL Named427, StackToLab.progToSectionHOL Named428, StackToLab.progToSectionHOL Named429, StackToLab.progToSectionHOL Named430, StackToLab.progToSectionHOL Named431] = sections
  rw [section416_eq, section417_eq, section418_eq, section419_eq, section420_eq, section421_eq, section422_eq, section423_eq, section424_eq, section425_eq, section426_eq, section427_eq, section428_eq, section429_eq, section430_eq, section431_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk416_431
