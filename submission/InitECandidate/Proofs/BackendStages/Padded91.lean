import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode91
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded91 : LabSem.LabSectionHOL 64 :=
{ sectionId := 91,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 91 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)))
        [19#8, 102#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 91 2 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jumpCmp Flapjack.Cmp.notLower 12
          (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) (Flapjack.Compiler.Backend.LabLang.Lab.lab 91 4))
        52#64 [99#8, 122#8, 182#8, 2#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 12
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))))
        [179#8, 6#8, 166#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 13
              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))))
        [131#8, 198#8, 6#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 2688614400#64)))
        [183#8, 15#8, 65#8, 160#8, 147#8, 143#8, 15#8, 0#8, 183#8, 2#8, 0#8, 0#8, 147#8, 194#8, 242#8, 255#8, 147#8,
          146#8, 2#8, 2#8, 179#8, 194#8, 242#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 12
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))))
        [179#8, 2#8, 86#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.shareMem Flapjack.WordMemOp.store8 13
          (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))
        [35#8, 128#8, 210#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))))
        [19#8, 6#8, 22#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 91 2))
        18446744073709551568#64 [111#8, 240#8, 31#8, 253#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 91 4 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 91 3)) 8#64
        [111#8, 0#8, 128#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 91 2))
        18446744073709551560#64 [111#8, 240#8, 159#8, 252#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 91 3 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)))
        [19#8, 101#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1))
        [103#8, 128#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 91 5 0] }
theorem Padded91_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode91.lines [] = Padded91.lines := by
  kernel_rfl
theorem Padded91_valid : LabToTarget.secOkLight riscvConfig Padded91 = true := by
  kernel_rfl
#print axioms Padded91_eq
#print axioms Padded91_valid
end InitECandidate.Proofs.BackendStages
