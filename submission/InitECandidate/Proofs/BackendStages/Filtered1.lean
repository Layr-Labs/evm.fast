import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Section1
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Filtered1 : LabSem.LabSectionHOL 64 :=
{ sectionId := 1,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)))
        [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 1 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm Flapjack.Compiler.Backend.LabLang.AsmWithLab.halt 0#64 [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 1 2 0] }
theorem Filtered1_eq : { section1 with lines := section1.lines.filter LabFilter.notSkip } = Filtered1 := by
  kernel_rfl
#print axioms Filtered1_eq
end InitECandidate.Proofs.BackendStages
