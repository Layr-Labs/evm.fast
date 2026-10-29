import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_180
import InitECandidate.Proofs.BackendStages.TargetLabels1
import InitECandidate.Proofs.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
def localLabels1_180 : List (Nat × Nat) :=
[(2, 103864), (1, 103856)]
def Reencode1_180 : LabSem.LabSectionHOL 64 :=
{ sectionId := 180,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 180 1 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 175 0))
        18446744073709550276#64 [111#8, 240#8, 95#8, 172#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 180 2 4] }
end InitECandidate.Proofs.BackendStages.TargetChecks
