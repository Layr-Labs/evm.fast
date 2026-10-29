import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge0
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge1
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge2
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge4
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge5
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge6
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge64
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge65
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge66
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge67
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge68
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge69
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge70
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge71
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge72
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge73
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge74
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge75
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge76
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge77
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge78
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge79
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge80
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge81
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge82
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge83
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge84
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge85
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge86
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge87
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge88
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge89
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk0
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded0, InitECandidate.Proofs.BackendStages.Encoded1, InitECandidate.Proofs.BackendStages.Encoded2, InitECandidate.Proofs.BackendStages.Encoded4, InitECandidate.Proofs.BackendStages.Encoded5, InitECandidate.Proofs.BackendStages.Encoded6, InitECandidate.Proofs.BackendStages.Encoded64, InitECandidate.Proofs.BackendStages.Encoded65, InitECandidate.Proofs.BackendStages.Encoded66, InitECandidate.Proofs.BackendStages.Encoded67, InitECandidate.Proofs.BackendStages.Encoded68, InitECandidate.Proofs.BackendStages.Encoded69, InitECandidate.Proofs.BackendStages.Encoded70, InitECandidate.Proofs.BackendStages.Encoded71, InitECandidate.Proofs.BackendStages.Encoded72, InitECandidate.Proofs.BackendStages.Encoded73, InitECandidate.Proofs.BackendStages.Encoded74, InitECandidate.Proofs.BackendStages.Encoded75, InitECandidate.Proofs.BackendStages.Encoded76, InitECandidate.Proofs.BackendStages.Encoded77, InitECandidate.Proofs.BackendStages.Encoded78, InitECandidate.Proofs.BackendStages.Encoded79, InitECandidate.Proofs.BackendStages.Encoded80, InitECandidate.Proofs.BackendStages.Encoded81, InitECandidate.Proofs.BackendStages.Encoded82, InitECandidate.Proofs.BackendStages.Encoded83, InitECandidate.Proofs.BackendStages.Encoded84, InitECandidate.Proofs.BackendStages.Encoded85, InitECandidate.Proofs.BackendStages.Encoded86, InitECandidate.Proofs.BackendStages.Encoded87, InitECandidate.Proofs.BackendStages.Encoded88, InitECandidate.Proofs.BackendStages.Encoded89]
def output : LabSem.LabProgHOL 64 := [Initial0, Initial1, Initial2, Initial4, Initial5, Initial6, Initial64, Initial65, Initial66, Initial67, Initial68, Initial69, Initial70, Initial71, Initial72, Initial73, Initial74, Initial75, Initial76, Initial77, Initial78, Initial79, Initial80, Initial81, Initial82, Initial83, Initial84, Initial85, Initial86, Initial87, Initial88, Initial89]
theorem origin_eq : input = output := by
  simp only [input, output, Initial0_eq, Initial1_eq, Initial2_eq, Initial4_eq, Initial5_eq, Initial6_eq, Initial64_eq, Initial65_eq, Initial66_eq, Initial67_eq, Initial68_eq, Initial69_eq, Initial70_eq, Initial71_eq, Initial72_eq, Initial73_eq, Initial74_eq, Initial75_eq, Initial76_eq, Initial77_eq, Initial78_eq, Initial79_eq, Initial80_eq, Initial81_eq, Initial82_eq, Initial83_eq, Initial84_eq, Initial85_eq, Initial86_eq, Initial87_eq, Initial88_eq, Initial89_eq]
#print axioms origin_eq
end OriginChunk0
end InitECandidate.Proofs.BackendStages.TargetChecks
