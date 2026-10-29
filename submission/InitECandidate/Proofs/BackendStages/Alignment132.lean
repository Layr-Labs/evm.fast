import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_132
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def Alignment132 : LabSem.LabSectionHOL 64 :=
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
        12#64 [99#8, 150#8, 98#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 118 0))
        18446744073709539312#64 [111#8, 192#8, 31#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 132 2 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1))
        [103#8, 128#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 132 3 0] }
theorem Alignment132_eq : LabToTarget.linesUpdLabLen 23472 TargetChecks.Reencode1_132.lines [] = (Alignment132.lines, 23492) := by
  kernel_rfl
#print axioms Alignment132_eq
end InitECandidate.Proofs.BackendStages
