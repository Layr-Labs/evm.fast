import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_245
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def Alignment245 : LabSem.LabSectionHOL 64 :=
{ sectionId := 245,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 245 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))))
        [35#8, 188#8, 172#8, 246#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)))
        [19#8, 101#8, 32#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 5 0))
        18446744073709361172#64 [111#8, 16#8, 93#8, 129#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 245 2 0] }
theorem Alignment245_eq : LabToTarget.linesUpdLabLen 179124 TargetChecks.Reencode1_245.lines [] = (Alignment245.lines, 179136) := by
  kernel_rfl
#print axioms Alignment245_eq
end InitECandidate.Proofs.BackendStages
