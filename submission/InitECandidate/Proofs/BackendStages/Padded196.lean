import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode196
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded196 : LabSem.LabSectionHOL 64 :=
{ sectionId := 196,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 196 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))))
        [3#8, 53#8, 5#8, 1#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1))
        [103#8, 128#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 196 2 0] }
theorem Padded196_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode196.lines [] = Padded196.lines := by
  kernel_rfl
theorem Padded196_valid : LabToTarget.secOkLight riscvConfig Padded196 = true := by
  kernel_rfl
#print axioms Padded196_eq
#print axioms Padded196_valid
end InitECandidate.Proofs.BackendStages
