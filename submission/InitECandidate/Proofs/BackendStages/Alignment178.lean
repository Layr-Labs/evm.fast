import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_178
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def Alignment178 : LabSem.LabSectionHOL 64 :=
{ sectionId := 178,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 178 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
        [51#8, 230#8, 181#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 192#64)))
        [147#8, 101#8, 0#8, 12#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 174 0))
        18446744073709550168#64 [111#8, 240#8, 159#8, 165#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 178 2 0] }
theorem Alignment178_eq : LabToTarget.linesUpdLabLen 97356 TargetChecks.Reencode1_178.lines [] = (Alignment178.lines, 97368) := by
  kernel_rfl
#print axioms Alignment178_eq
end InitECandidate.Proofs.BackendStages
