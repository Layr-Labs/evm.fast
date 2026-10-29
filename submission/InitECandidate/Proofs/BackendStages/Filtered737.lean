import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Section737
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Filtered737 : LabSem.LabSectionHOL 64 :=
{ sectionId := 737,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 737 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
        [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 734 0)) 0#64 [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 737 2 0] }
theorem Filtered737_eq : { section737 with lines := section737.lines.filter LabFilter.notSkip } = Filtered737 := by
  kernel_rfl
#print axioms Filtered737_eq
end InitECandidate.Proofs.BackendStages
