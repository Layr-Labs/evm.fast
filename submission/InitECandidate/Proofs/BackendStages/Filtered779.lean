import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Section779
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Filtered779 : LabSem.LabSectionHOL 64 :=
{ sectionId := 779,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 779 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))))
        [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 732 0)) 0#64 [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 779 2 0] }
theorem Filtered779_eq : { section779 with lines := section779.lines.filter LabFilter.notSkip } = Filtered779 := by
  kernel_rfl
#print axioms Filtered779_eq
end InitECandidate.Proofs.BackendStages
