import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_662
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def Alignment662 : LabSem.LabSectionHOL 64 :=
{ sectionId := 662,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 662 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 493319470278259999#64)))
        [183#8, 63#8, 184#8, 202#8, 147#8, 143#8, 255#8, 81#8, 55#8, 100#8, 39#8, 249#8, 19#8, 4#8, 228#8, 8#8, 19#8,
          20#8, 4#8, 2#8, 51#8, 68#8, 244#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 5164255478447964150#64)))
        [183#8, 143#8, 190#8, 245#8, 147#8, 207#8, 111#8, 255#8, 183#8, 227#8, 84#8, 184#8, 147#8, 195#8, 243#8, 239#8,
          147#8, 147#8, 3#8, 2#8, 179#8, 227#8, 243#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 13107472804851548667#64)))
        [183#8, 15#8, 69#8, 212#8, 147#8, 143#8, 191#8, 31#8, 55#8, 227#8, 24#8, 74#8, 19#8, 3#8, 227#8, 110#8, 19#8,
          19#8, 3#8, 2#8, 51#8, 67#8, 243#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 17522657719365597833#64)))
        [183#8, 15#8, 117#8, 172#8, 147#8, 207#8, 159#8, 168#8, 183#8, 2#8, 211#8, 12#8, 147#8, 194#8, 178#8, 197#8,
          147#8, 146#8, 2#8, 2#8, 179#8, 226#8, 242#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 661 0))
        18446744073709541400#64 [111#8, 208#8, 159#8, 129#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 662 2 0] }
theorem Alignment662_eq : LabToTarget.linesUpdLabLen 594860 TargetChecks.Correct.Reencode1_662.lines [] = (Alignment662.lines, 594960) := by
  kernel_rfl
#print axioms Alignment662_eq
end InitECandidate.Proofs.BackendStages
