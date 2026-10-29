import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode201
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded201 : LabSem.LabSectionHOL 64 :=
{ sectionId := 201,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 201 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)))
        [19#8, 101#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1))
        [103#8, 128#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 201 2 0] }
theorem Padded201_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode201.lines [] = Padded201.lines := by
  kernel_rfl
theorem Padded201_valid : LabToTarget.secOkLight riscvConfig Padded201 = true := by
  kernel_rfl
#print axioms Padded201_eq
#print axioms Padded201_valid
end InitECandidate.Proofs.BackendStages
