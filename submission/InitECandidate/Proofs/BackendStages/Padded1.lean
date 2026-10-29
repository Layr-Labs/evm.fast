import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode1
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded1 : LabSem.LabSectionHOL 64 :=
{ sectionId := 1,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)))
        [19#8, 101#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 1 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm Flapjack.Compiler.Backend.LabLang.AsmWithLab.halt
        18446744073709550840#64 [111#8, 240#8, 159#8, 207#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 1 2 0] }
theorem Padded1_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode1.lines [] = Padded1.lines := by
  kernel_rfl
theorem Padded1_valid : LabToTarget.secOkLight riscvConfig Padded1 = true := by
  kernel_rfl
#print axioms Padded1_eq
#print axioms Padded1_valid
end InitECandidate.Proofs.BackendStages
