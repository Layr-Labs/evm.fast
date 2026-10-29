import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode779
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded779 : LabSem.LabSectionHOL 64 :=
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
        18446744073709494220#64 [111#8, 16#8, 223#8, 252#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 779 2 0] }
theorem Padded779_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode779.lines [] = Padded779.lines := by
  kernel_rfl
theorem Padded779_valid : LabToTarget.secOkLight riscvConfig Padded779 = true := by
  kernel_rfl
#print axioms Padded779_eq
#print axioms Padded779_valid
end InitECandidate.Proofs.BackendStages
