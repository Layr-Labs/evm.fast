import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.FinalReencode213
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Padded213 : LabSem.LabSectionHOL 64 :=
{ sectionId := 213,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 213 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)))
        [19#8, 100#8, 240#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)))
        [147#8, 99#8, 240#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)))
        [19#8, 99#8, 240#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)))
        [183#8, 15#8, 0#8, 0#8, 147#8, 207#8, 255#8, 194#8, 183#8, 2#8, 0#8, 0#8, 147#8, 130#8, 18#8, 0#8, 147#8, 146#8,
          2#8, 2#8, 179#8, 194#8, 242#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 210 0))
        18446744073709547208#64 [111#8, 224#8, 159#8, 236#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 213 2 0] }
theorem Padded213_eq : LabToTarget.padSection (riscvConfig.encode (.inst .skip)) FinalReencode213.lines [] = Padded213.lines := by
  kernel_rfl
theorem Padded213_valid : LabToTarget.secOkLight riscvConfig Padded213 = true := by
  kernel_rfl
#print axioms Padded213_eq
#print axioms Padded213_valid
end InitECandidate.Proofs.BackendStages
