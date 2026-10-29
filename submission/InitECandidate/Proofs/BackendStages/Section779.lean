import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Named779
import Flapjack.Compiler.Backend.StackToLab.Native
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def section779 : LabSem.LabSectionHOL 64 :=
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
theorem section779_eq : StackToLab.progToSectionHOL Named779 = section779 := by
  kernel_rfl
#print axioms section779_eq
end InitECandidate.Proofs.BackendStages
