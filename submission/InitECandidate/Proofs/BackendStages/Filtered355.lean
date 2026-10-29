import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Section355
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Filtered355 : LabSem.LabSectionHOL 64 :=
{ sectionId := 355,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 355 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 264#64))))
        [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1)) [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 355 2 0] }
theorem Filtered355_eq : { section355 with lines := section355.lines.filter LabFilter.notSkip } = Filtered355 := by
  kernel_rfl
#print axioms Filtered355_eq
end InitECandidate.Proofs.BackendStages
