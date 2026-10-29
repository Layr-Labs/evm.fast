import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode737
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded737 : LabSem.LabSectionHOL 64 :=
{ sectionId := 737,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 737 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
        [51#8, 230#8, 181#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 734 0))
        18446744073709549684#64 [111#8, 240#8, 95#8, 135#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 737 2 0] }
theorem Padded737_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode737.lines [] = Padded737.lines := by
  kernel_rfl
theorem Padded737_valid : LabToTarget.secOkLight riscvConfig Padded737 = true := by
  kernel_rfl
#print axioms Padded737_eq
#print axioms Padded737_valid
end InitECandidate.Proofs.BackendStages
