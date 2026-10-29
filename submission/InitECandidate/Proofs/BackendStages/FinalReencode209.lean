import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alignment209
import InitECandidate.Proofs.BackendStages.TargetLabelsFinal
import InitECandidate.Proofs.BackendStages.TargetFfis
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def FinalReencode209 : LabSem.LabSectionHOL 64 :=
{ sectionId := 209,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 209 1 0,
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
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583341#64)))
        [183#8, 15#8, 0#8, 0#8, 147#8, 207#8, 223#8, 194#8, 183#8, 2#8, 0#8, 0#8, 147#8, 130#8, 18#8, 0#8, 147#8, 146#8,
          2#8, 2#8, 179#8, 194#8, 242#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 208 0))
        18446744073709550536#64 [111#8, 240#8, 159#8, 188#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 209 2 0] }
theorem FinalReencode209_eq : LabToTarget.encLinesAgain Target.labelsFinal Target.ffis 119448 riscvConfig.encode Alignment209.lines [] true = (FinalReencode209.lines, 119488, true) := by
  kernel_rfl
#print axioms FinalReencode209_eq
end InitECandidate.Proofs.BackendStages
