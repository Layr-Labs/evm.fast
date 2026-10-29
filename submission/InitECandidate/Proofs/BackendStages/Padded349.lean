import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode349
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded349 : LabSem.LabSectionHOL 64 :=
{ sectionId := 349,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 349 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 152#64))))
        [3#8, 53#8, 133#8, 9#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1))
        [103#8, 128#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 349 2 0] }
theorem Padded349_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode349.lines [] = Padded349.lines := by
  kernel_rfl
theorem Padded349_valid : LabToTarget.secOkLight riscvConfig Padded349 = true := by
  kernel_rfl
#print axioms Padded349_eq
#print axioms Padded349_valid
end InitECandidate.Proofs.BackendStages
