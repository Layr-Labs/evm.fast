import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alignment647
import InitECandidate.Proofs.BackendStages.TargetLabelsFinal
import InitECandidate.Proofs.BackendStages.TargetFfis
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def FinalReencode647 : LabSem.LabSectionHOL 64 :=
{ sectionId := 647,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 647 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)))
        [183#8, 15#8, 0#8, 0#8, 147#8, 143#8, 31#8, 0#8, 55#8, 4#8, 0#8, 0#8, 19#8, 68#8, 244#8, 255#8, 19#8, 20#8, 4#8,
          2#8, 51#8, 100#8, 244#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)))
        [147#8, 99#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)))
        [183#8, 15#8, 0#8, 0#8, 147#8, 207#8, 255#8, 255#8, 55#8, 3#8, 0#8, 0#8, 19#8, 67#8, 243#8, 255#8, 19#8, 19#8,
          3#8, 2#8, 51#8, 67#8, 243#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)))
        [147#8, 98#8, 240#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 210 0))
        18446744073709116716#64 [111#8, 80#8, 217#8, 210#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 647 2 0] }
theorem FinalReencode647_eq : LabToTarget.encLinesAgain Target.labelsFinal Target.ffis 554332 riscvConfig.encode Alignment647.lines [] true = (FinalReencode647.lines, 554392, true) := by
  kernel_rfl
#print axioms FinalReencode647_eq
end InitECandidate.Proofs.BackendStages
