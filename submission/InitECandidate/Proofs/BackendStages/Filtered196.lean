import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Section196
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Filtered196 : LabSem.LabSectionHOL 64 :=
{ sectionId := 196,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 196 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))))
        [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1)) [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 196 2 0] }
theorem Filtered196_eq : { section196 with lines := section196.lines.filter LabFilter.notSkip } = Filtered196 := by
  kernel_rfl
#print axioms Filtered196_eq
end InitECandidate.Proofs.BackendStages
