import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Section759
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Filtered759 : LabSem.LabSectionHOL 64 :=
{ sectionId := 759,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 759 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
        [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 758 0)) 0#64 [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 759 2 0] }
theorem Filtered759_eq : { section759 with lines := section759.lines.filter LabFilter.notSkip } = Filtered759 := by
  kernel_rfl
#print axioms Filtered759_eq
end InitECandidate.Proofs.BackendStages
