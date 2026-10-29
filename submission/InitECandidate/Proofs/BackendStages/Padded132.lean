import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode132
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded132 : LabSem.LabSectionHOL 64 :=
{ sectionId := 132,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 132 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 13
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))))
        [147#8, 210#8, 246#8, 3#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)))
        [19#8, 99#8, 16#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jumpCmp Flapjack.Cmp.notEqual 5
          (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) (Flapjack.Compiler.Backend.LabLang.Lab.lab 132 2))
        8#64 [99#8, 148#8, 98#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 118 0))
        18446744073709540312#64 [111#8, 208#8, 143#8, 189#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 132 2 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1))
        [103#8, 128#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 132 3 0] }
theorem Padded132_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode132.lines [] = Padded132.lines := by
  kernel_rfl
theorem Padded132_valid : LabToTarget.secOkLight riscvConfig Padded132 = true := by
  kernel_rfl
#print axioms Padded132_eq
#print axioms Padded132_valid
end InitECandidate.Proofs.BackendStages
