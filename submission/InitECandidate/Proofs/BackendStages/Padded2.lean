import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode2
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded2 : LabSem.LabSectionHOL 64 :=
{ sectionId := 2,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)))
        [19#8, 101#8, 32#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 2 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm Flapjack.Compiler.Backend.LabLang.AsmWithLab.halt
        18446744073709550832#64 [111#8, 240#8, 31#8, 207#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 2 2 0] }
theorem Padded2_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode2.lines [] = Padded2.lines := by
  kernel_rfl
theorem Padded2_valid : LabToTarget.secOkLight riscvConfig Padded2 = true := by
  kernel_rfl
#print axioms Padded2_eq
#print axioms Padded2_valid
end InitECandidate.Proofs.BackendStages
