import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alignment215
import InitECandidate.Proofs.BackendStages.TargetLabelsFinal
import InitECandidate.Proofs.BackendStages.TargetFfis
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def FinalReencode215 : LabSem.LabSectionHOL 64 :=
{ sectionId := 215,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 215 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 29 18446744073709551615#64)))
        [147#8, 110#8, 240#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 28 18446744073709551614#64)))
        [19#8, 110#8, 224#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 13451932020343611451#64)))
        [183#8, 175#8, 72#8, 175#8, 147#8, 143#8, 191#8, 3#8, 183#8, 45#8, 81#8, 69#8, 147#8, 141#8, 157#8, 49#8, 147#8,
          157#8, 13#8, 2#8, 179#8, 205#8, 253#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 13822214165235122497#64)))
        [183#8, 79#8, 54#8, 208#8, 147#8, 143#8, 31#8, 20#8, 183#8, 164#8, 45#8, 64#8, 147#8, 132#8, 52#8, 23#8, 147#8,
          148#8, 4#8, 2#8, 179#8, 196#8, 244#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 136 0))
        18446744073709452844#64 [111#8, 112#8, 222#8, 226#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 215 2 0] }
theorem FinalReencode215_eq : LabToTarget.encLinesAgain Target.labelsFinal Target.ffis 123944 riscvConfig.encode Alignment215.lines [] true = (FinalReencode215.lines, 124004, true) := by
  kernel_rfl
#print axioms FinalReencode215_eq
end InitECandidate.Proofs.BackendStages
