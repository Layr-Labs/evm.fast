import InitECandidate.Proofs.BackendStages.SectionStubs
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def section1 : LabSem.LabSectionHOL 64 :=
{ sectionId := 1,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)))
        [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 1 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm Flapjack.Compiler.Backend.LabLang.AsmWithLab.halt 0#64 [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 1 2 0] }
theorem section1_eq : SectionStubs[1]? = some section1 := by
  with_unfolding_all rfl
#print axioms section1_eq
end InitECandidate.Proofs.BackendStages
