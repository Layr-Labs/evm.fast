import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alignment218
import InitECandidate.Proofs.BackendStages.TargetLabelsFinal
import InitECandidate.Proofs.BackendStages.TargetFfis
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def FinalReencode218 : LabSem.LabSectionHOL 64 :=
{ sectionId := 218,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 218 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)))
        [19#8, 100#8, 240#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551614#64)))
        [147#8, 99#8, 224#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13451932020343611451#64)))
        [183#8, 175#8, 72#8, 175#8, 147#8, 143#8, 191#8, 3#8, 55#8, 35#8, 81#8, 69#8, 19#8, 3#8, 147#8, 49#8, 19#8,
          19#8, 3#8, 2#8, 51#8, 67#8, 243#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 13822214165235122495#64)))
        [183#8, 79#8, 54#8, 208#8, 147#8, 143#8, 255#8, 19#8, 183#8, 162#8, 45#8, 64#8, 147#8, 130#8, 50#8, 23#8, 147#8,
          146#8, 2#8, 2#8, 179#8, 194#8, 242#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 217 0))
        18446744073709550500#64 [111#8, 240#8, 95#8, 186#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 218 2 0] }
theorem FinalReencode218_eq : LabToTarget.encLinesAgain Target.labelsFinal Target.ffis 125124 riscvConfig.encode Alignment218.lines [] true = (FinalReencode218.lines, 125184, true) := by
  kernel_rfl
#print axioms FinalReencode218_eq
end InitECandidate.Proofs.BackendStages
