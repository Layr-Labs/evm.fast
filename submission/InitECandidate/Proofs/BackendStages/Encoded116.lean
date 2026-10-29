import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Filtered116
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Encoded116 : LabSem.LabSectionHOL 64 :=
{ sectionId := 116,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 116 1 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))))
        [179#8, 228#8, 16#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)))
        [147#8, 96#8, 0#8, 0#8] 4,
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
              (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 11 11 6 1))))
        [179#8, 63#8, 16#8, 0#8, 179#8, 133#8, 101#8, 0#8, 179#8, 176#8, 101#8, 0#8, 179#8, 133#8, 245#8, 1#8, 179#8,
          191#8, 245#8, 1#8, 179#8, 224#8, 240#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 12 12 7 1))))
        [179#8, 63#8, 16#8, 0#8, 51#8, 6#8, 118#8, 0#8, 179#8, 48#8, 118#8, 0#8, 51#8, 6#8, 246#8, 1#8, 179#8, 63#8,
          246#8, 1#8, 179#8, 224#8, 240#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.addCarry 13 13 8 1))))
        [179#8, 63#8, 16#8, 0#8, 179#8, 134#8, 134#8, 0#8, 179#8, 176#8, 134#8, 0#8, 179#8, 134#8, 246#8, 1#8, 179#8,
          191#8, 246#8, 1#8, 179#8, 224#8, 240#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 9))
        [103#8, 128#8, 4#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 116 2 4] }
theorem Encoded116_eq : LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered116 = Encoded116 := by
  kernel_rfl
#print axioms Encoded116_eq
end InitECandidate.Proofs.BackendStages
