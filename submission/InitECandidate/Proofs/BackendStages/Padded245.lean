import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode245
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded245 : LabSem.LabSectionHOL 64 :=
{ sectionId := 245,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 245 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))))
        [35#8, 188#8, 172#8, 246#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)))
        [19#8, 101#8, 32#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 5 0))
        18446744073709373296#64 [111#8, 64#8, 13#8, 247#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 245 2 0] }
theorem Padded245_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode245.lines [] = Padded245.lines := by
  kernel_rfl
theorem Padded245_valid : LabToTarget.secOkLight riscvConfig Padded245 = true := by
  kernel_rfl
#print axioms Padded245_eq
#print axioms Padded245_valid
end InitECandidate.Proofs.BackendStages
