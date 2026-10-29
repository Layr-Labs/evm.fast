import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode376
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded376 : LabSem.LabSectionHOL 64 :=
{ sectionId := 376,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 376 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 11
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
        [179#8, 230#8, 181#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)))
        [19#8, 102#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)))
        [147#8, 101#8, 16#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 370 0))
        18446744073709550988#64 [111#8, 240#8, 223#8, 216#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 376 2 0] }
theorem Padded376_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode376.lines [] = Padded376.lines := by
  kernel_rfl
theorem Padded376_valid : LabToTarget.secOkLight riscvConfig Padded376 = true := by
  kernel_rfl
#print axioms Padded376_eq
#print axioms Padded376_valid
end InitECandidate.Proofs.BackendStages
