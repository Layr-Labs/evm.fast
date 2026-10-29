import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode180
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded180 : LabSem.LabSectionHOL 64 :=
{ sectionId := 180,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 180 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 175 0))
        18446744073709550476#64 [111#8, 240#8, 223#8, 184#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 180 2 0] }
theorem Padded180_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode180.lines [] = Padded180.lines := by
  kernel_rfl
theorem Padded180_valid : LabToTarget.secOkLight riscvConfig Padded180 = true := by
  kernel_rfl
#print axioms Padded180_eq
#print axioms Padded180_valid
end InitECandidate.Proofs.BackendStages
