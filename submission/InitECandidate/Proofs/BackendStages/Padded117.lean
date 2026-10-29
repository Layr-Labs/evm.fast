import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode117
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded117 : LabSem.LabSectionHOL 64 :=
{ sectionId := 117,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 117 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))))
        [179#8, 228#8, 16#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 5
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))))
        [147#8, 194#8, 242#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)))
        [147#8, 96#8, 16#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 10 10 5 1))))
        [179#8, 63#8, 16#8, 0#8, 51#8, 5#8, 85#8, 0#8, 179#8, 48#8, 85#8, 0#8, 51#8, 5#8, 245#8, 1#8, 179#8, 63#8,
          245#8, 1#8, 179#8, 224#8, 240#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 6
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))))
        [147#8, 66#8, 243#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 11 11 5 1))))
        [179#8, 63#8, 16#8, 0#8, 179#8, 133#8, 85#8, 0#8, 179#8, 176#8, 85#8, 0#8, 179#8, 133#8, 245#8, 1#8, 179#8,
          191#8, 245#8, 1#8, 179#8, 224#8, 240#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 7
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))))
        [147#8, 194#8, 243#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 12 12 5 1))))
        [179#8, 63#8, 16#8, 0#8, 51#8, 6#8, 86#8, 0#8, 179#8, 48#8, 86#8, 0#8, 51#8, 6#8, 246#8, 1#8, 179#8, 63#8,
          246#8, 1#8, 179#8, 224#8, 240#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.xor 5 8
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))))
        [147#8, 66#8, 244#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 13 13 5 1))))
        [179#8, 63#8, 16#8, 0#8, 179#8, 134#8, 86#8, 0#8, 179#8, 176#8, 86#8, 0#8, 179#8, 134#8, 246#8, 1#8, 179#8,
          191#8, 246#8, 1#8, 179#8, 224#8, 240#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 9))
        [103#8, 128#8, 4#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 117 2 0] }
theorem Padded117_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode117.lines [] = Padded117.lines := by
  kernel_rfl
theorem Padded117_valid : LabToTarget.secOkLight riscvConfig Padded117 = true := by
  kernel_rfl
#print axioms Padded117_eq
#print axioms Padded117_valid
end InitECandidate.Proofs.BackendStages
