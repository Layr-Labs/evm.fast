import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode759
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded759 : LabSem.LabSectionHOL 64 :=
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
        18446744073709549816#64 [111#8, 240#8, 159#8, 143#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 759 2 0] }
theorem Padded759_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode759.lines [] = Padded759.lines := by
  kernel_rfl
theorem Padded759_valid : LabToTarget.secOkLight riscvConfig Padded759 = true := by
  kernel_rfl
#print axioms Padded759_eq
#print axioms Padded759_valid
end InitECandidate.Proofs.BackendStages
