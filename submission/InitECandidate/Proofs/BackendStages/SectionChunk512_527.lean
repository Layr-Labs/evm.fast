import InitECandidate.Proofs.BackendStages.NamedChunk512_527
import InitECandidate.Proofs.BackendStages.Section512
import InitECandidate.Proofs.BackendStages.Section513
import InitECandidate.Proofs.BackendStages.Section514
import InitECandidate.Proofs.BackendStages.Section515
import InitECandidate.Proofs.BackendStages.Section516
import InitECandidate.Proofs.BackendStages.Section517
import InitECandidate.Proofs.BackendStages.Section518
import InitECandidate.Proofs.BackendStages.Section519
import InitECandidate.Proofs.BackendStages.Section520
import InitECandidate.Proofs.BackendStages.Section521
import InitECandidate.Proofs.BackendStages.Section522
import InitECandidate.Proofs.BackendStages.Section523
import InitECandidate.Proofs.BackendStages.Section524
import InitECandidate.Proofs.BackendStages.Section525
import InitECandidate.Proofs.BackendStages.Section526
import InitECandidate.Proofs.BackendStages.Section527
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.SectionChunk512_527
def sections : LabSem.LabProgHOL 64 := [section512, section513, section514, section515, section516, section517, section518, section519, section520, section521, section522, section523, section524, section525, section526, section527]
theorem compiled_eq : NamedChunk512_527.bodies.map StackToLab.progToSectionHOL = sections := by
  change [StackToLab.progToSectionHOL Named512, StackToLab.progToSectionHOL Named513, StackToLab.progToSectionHOL Named514, StackToLab.progToSectionHOL Named515, StackToLab.progToSectionHOL Named516, StackToLab.progToSectionHOL Named517, StackToLab.progToSectionHOL Named518, StackToLab.progToSectionHOL Named519, StackToLab.progToSectionHOL Named520, StackToLab.progToSectionHOL Named521, StackToLab.progToSectionHOL Named522, StackToLab.progToSectionHOL Named523, StackToLab.progToSectionHOL Named524, StackToLab.progToSectionHOL Named525, StackToLab.progToSectionHOL Named526, StackToLab.progToSectionHOL Named527] = sections
  rw [section512_eq, section513_eq, section514_eq, section515_eq, section516_eq, section517_eq, section518_eq, section519_eq, section520_eq, section521_eq, section522_eq, section523_eq, section524_eq, section525_eq, section526_eq, section527_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.SectionChunk512_527
