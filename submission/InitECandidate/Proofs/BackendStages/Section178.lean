import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Named178
import Flapjack.Compiler.Backend.StackToLab.Native
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def section178 : LabSem.LabSectionHOL 64 :=
{ sectionId := 178,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 178 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
        [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 192#64)))
        [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 174 0)) 0#64 [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 178 2 0] }
theorem section178_eq : StackToLab.progToSectionHOL Named178 = section178 := by
  kernel_rfl
#print axioms section178_eq
end InitECandidate.Proofs.BackendStages
