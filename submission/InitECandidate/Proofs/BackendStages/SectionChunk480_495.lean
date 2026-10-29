import InitECandidate.Proofs.BackendStages.NamedChunk480_495
import InitECandidate.Proofs.BackendStages.Section480
import InitECandidate.Proofs.BackendStages.Section481
import InitECandidate.Proofs.BackendStages.Section482
import InitECandidate.Proofs.BackendStages.Section483
import InitECandidate.Proofs.BackendStages.Section484
import InitECandidate.Proofs.BackendStages.Section485
import InitECandidate.Proofs.BackendStages.Section486
import InitECandidate.Proofs.BackendStages.Section487
import InitECandidate.Proofs.BackendStages.Section488
import InitECandidate.Proofs.BackendStages.Section489
import InitECandidate.Proofs.BackendStages.Section490
import InitECandidate.Proofs.BackendStages.Section491
import InitECandidate.Proofs.BackendStages.Section492
import InitECandidate.Proofs.BackendStages.Section493
import InitECandidate.Proofs.BackendStages.Section494
import InitECandidate.Proofs.BackendStages.Section495
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk480_495
def sections : LabSem.LabProgHOL 64 := [section480, section481, section482, section483, section484, section485, section486, section487, section488, section489, section490, section491, section492, section493, section494, section495]
theorem compiled_eq : NamedChunk480_495.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named480, StackToLab.progToSectionHOL Named481, StackToLab.progToSectionHOL Named482, StackToLab.progToSectionHOL Named483, StackToLab.progToSectionHOL Named484, StackToLab.progToSectionHOL Named485, StackToLab.progToSectionHOL Named486, StackToLab.progToSectionHOL Named487, StackToLab.progToSectionHOL Named488, StackToLab.progToSectionHOL Named489, StackToLab.progToSectionHOL Named490, StackToLab.progToSectionHOL Named491, StackToLab.progToSectionHOL Named492, StackToLab.progToSectionHOL Named493, StackToLab.progToSectionHOL Named494, StackToLab.progToSectionHOL Named495] = sections
  rw [section480_eq, section481_eq, section482_eq, section483_eq, section484_eq, section485_eq, section486_eq, section487_eq, section488_eq, section489_eq, section490_eq, section491_eq, section492_eq, section493_eq, section494_eq, section495_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk480_495
