import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Filtered178
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Encoded178 : LabSem.LabSectionHOL 64 :=
{ sectionId := 178,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 178 1 4,
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
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 174 0)) 0#64
        [111#8, 0#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 178 2 4] }
theorem Encoded178_eq : LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered178 = Encoded178 := by
  kernel_rfl
#print axioms Encoded178_eq
end InitECandidate.Proofs.BackendStages
