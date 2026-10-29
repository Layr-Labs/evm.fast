import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode100
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded100 : LabSem.LabSectionHOL 64 :=
{ sectionId := 100,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 100 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1))
        [103#8, 128#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 100 2 0] }
theorem Padded100_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode100.lines [] = Padded100.lines := by
  kernel_rfl
theorem Padded100_valid : LabToTarget.secOkLight riscvConfig Padded100 = true := by
  kernel_rfl
#print axioms Padded100_eq
#print axioms Padded100_valid
end InitECandidate.Proofs.BackendStages
