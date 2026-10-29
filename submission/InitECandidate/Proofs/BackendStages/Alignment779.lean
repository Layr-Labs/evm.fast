import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_779
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def Alignment779 : LabSem.LabSectionHOL 64 :=
{ sectionId := 779,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 779 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))))
        [19#8, 5#8, 5#8, 12#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 732 0))
        18446744073709488992#64 [111#8, 0#8, 31#8, 182#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 779 2 0] }
theorem Alignment779_eq : LabToTarget.linesUpdLabLen 791084 TargetChecks.Correct.Reencode1_779.lines [] = (Alignment779.lines, 791092) := by
  kernel_rfl
#print axioms Alignment779_eq
end InitECandidate.Proofs.BackendStages
