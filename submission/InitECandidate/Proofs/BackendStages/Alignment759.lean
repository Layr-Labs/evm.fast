import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_759
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def Alignment759 : LabSem.LabSectionHOL 64 :=
{ sectionId := 759,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 759 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
        [51#8, 230#8, 181#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 758 0))
        18446744073709549608#64 [111#8, 240#8, 159#8, 130#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 759 2 0] }
theorem Alignment759_eq : LabToTarget.linesUpdLabLen 758016 TargetChecks.Correct.Reencode1_759.lines [] = (Alignment759.lines, 758024) := by
  kernel_rfl
#print axioms Alignment759_eq
end InitECandidate.Proofs.BackendStages
