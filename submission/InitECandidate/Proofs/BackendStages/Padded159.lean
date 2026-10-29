import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded159 : LabSem.LabSectionHOL 64 :=
{ sectionId := 159,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 159 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))))
        [35#8, 188#8, 172#8, 246#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)))
        [19#8, 101#8, 16#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 5 0))
        18446744073709464840#64 [111#8, 160#8, 158#8, 208#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 159 2 0] }
theorem Padded159_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode159.lines [] = Padded159.lines := by
  kernel_rfl
theorem Padded159_valid : LabToTarget.secOkLight riscvConfig Padded159 = true := by
  kernel_rfl
#print axioms Padded159_eq
#print axioms Padded159_valid
end InitECandidate.Proofs.BackendStages
