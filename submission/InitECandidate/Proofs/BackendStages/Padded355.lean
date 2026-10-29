import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode355
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded355 : LabSem.LabSectionHOL 64 :=
{ sectionId := 355,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 355 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 264#64))))
        [3#8, 53#8, 133#8, 16#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1))
        [103#8, 128#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 355 2 0] }
theorem Padded355_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode355.lines [] = Padded355.lines := by
  kernel_rfl
theorem Padded355_valid : LabToTarget.secOkLight riscvConfig Padded355 = true := by
  kernel_rfl
#print axioms Padded355_eq
#print axioms Padded355_valid
end InitECandidate.Proofs.BackendStages
