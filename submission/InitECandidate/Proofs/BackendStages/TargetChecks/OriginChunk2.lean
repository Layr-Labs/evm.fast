import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge122
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge123
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge124
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge125
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge126
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge127
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge128
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge129
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge130
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge131
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge132
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge133
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge134
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge135
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge136
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge137
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge138
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge139
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge140
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge141
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge142
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge143
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge144
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge145
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge146
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge147
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge148
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge149
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge150
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge151
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge152
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge153
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk2
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded122, InitECandidate.Proofs.BackendStages.Encoded123, InitECandidate.Proofs.BackendStages.Encoded124, InitECandidate.Proofs.BackendStages.Encoded125, InitECandidate.Proofs.BackendStages.Encoded126, InitECandidate.Proofs.BackendStages.Encoded127, InitECandidate.Proofs.BackendStages.Encoded128, InitECandidate.Proofs.BackendStages.Encoded129, InitECandidate.Proofs.BackendStages.Encoded130, InitECandidate.Proofs.BackendStages.Encoded131, InitECandidate.Proofs.BackendStages.Encoded132, InitECandidate.Proofs.BackendStages.Encoded133, InitECandidate.Proofs.BackendStages.Encoded134, InitECandidate.Proofs.BackendStages.Encoded135, InitECandidate.Proofs.BackendStages.Encoded136, InitECandidate.Proofs.BackendStages.Encoded137, InitECandidate.Proofs.BackendStages.Encoded138, InitECandidate.Proofs.BackendStages.Encoded139, InitECandidate.Proofs.BackendStages.Encoded140, InitECandidate.Proofs.BackendStages.Encoded141, InitECandidate.Proofs.BackendStages.Encoded142, InitECandidate.Proofs.BackendStages.Encoded143, InitECandidate.Proofs.BackendStages.Encoded144, InitECandidate.Proofs.BackendStages.Encoded145, InitECandidate.Proofs.BackendStages.Encoded146, InitECandidate.Proofs.BackendStages.Encoded147, InitECandidate.Proofs.BackendStages.Encoded148, InitECandidate.Proofs.BackendStages.Encoded149, InitECandidate.Proofs.BackendStages.Encoded150, InitECandidate.Proofs.BackendStages.Encoded151, InitECandidate.Proofs.BackendStages.Encoded152, InitECandidate.Proofs.BackendStages.Encoded153]
def output : LabSem.LabProgHOL 64 := [Initial122, Initial123, Initial124, Initial125, Initial126, Initial127, Initial128, Initial129, Initial130, Initial131, Initial132, Initial133, Initial134, Initial135, Initial136, Initial137, Initial138, Initial139, Initial140, Initial141, Initial142, Initial143, Initial144, Initial145, Initial146, Initial147, Initial148, Initial149, Initial150, Initial151, Initial152, Initial153]
theorem origin_eq : input = output := by
  simp only [input, output, Initial122_eq, Initial123_eq, Initial124_eq, Initial125_eq, Initial126_eq, Initial127_eq, Initial128_eq, Initial129_eq, Initial130_eq, Initial131_eq, Initial132_eq, Initial133_eq, Initial134_eq, Initial135_eq, Initial136_eq, Initial137_eq, Initial138_eq, Initial139_eq, Initial140_eq, Initial141_eq, Initial142_eq, Initial143_eq, Initial144_eq, Initial145_eq, Initial146_eq, Initial147_eq, Initial148_eq, Initial149_eq, Initial150_eq, Initial151_eq, Initial152_eq, Initial153_eq]
#print axioms origin_eq
end OriginChunk2
end InitECandidate.Proofs.BackendStages.TargetChecks
