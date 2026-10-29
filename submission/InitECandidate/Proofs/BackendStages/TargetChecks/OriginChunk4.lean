import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge186
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge187
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge188
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge189
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge190
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge191
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge192
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge193
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge194
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge195
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge196
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge197
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge198
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge199
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge200
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge201
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge202
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge203
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge204
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge205
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge206
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge207
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge208
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge209
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge210
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge211
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge212
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge213
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge214
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge215
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge216
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge217
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk4
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded186, InitECandidate.Proofs.BackendStages.Encoded187, InitECandidate.Proofs.BackendStages.Encoded188, InitECandidate.Proofs.BackendStages.Encoded189, InitECandidate.Proofs.BackendStages.Encoded190, InitECandidate.Proofs.BackendStages.Encoded191, InitECandidate.Proofs.BackendStages.Encoded192, InitECandidate.Proofs.BackendStages.Encoded193, InitECandidate.Proofs.BackendStages.Encoded194, InitECandidate.Proofs.BackendStages.Encoded195, InitECandidate.Proofs.BackendStages.Encoded196, InitECandidate.Proofs.BackendStages.Encoded197, InitECandidate.Proofs.BackendStages.Encoded198, InitECandidate.Proofs.BackendStages.Encoded199, InitECandidate.Proofs.BackendStages.Encoded200, InitECandidate.Proofs.BackendStages.Encoded201, InitECandidate.Proofs.BackendStages.Encoded202, InitECandidate.Proofs.BackendStages.Encoded203, InitECandidate.Proofs.BackendStages.Encoded204, InitECandidate.Proofs.BackendStages.Encoded205, InitECandidate.Proofs.BackendStages.Encoded206, InitECandidate.Proofs.BackendStages.Encoded207, InitECandidate.Proofs.BackendStages.Encoded208, InitECandidate.Proofs.BackendStages.Encoded209, InitECandidate.Proofs.BackendStages.Encoded210, InitECandidate.Proofs.BackendStages.Encoded211, InitECandidate.Proofs.BackendStages.Encoded212, InitECandidate.Proofs.BackendStages.Encoded213, InitECandidate.Proofs.BackendStages.Encoded214, InitECandidate.Proofs.BackendStages.Encoded215, InitECandidate.Proofs.BackendStages.Encoded216, InitECandidate.Proofs.BackendStages.Encoded217]
def output : LabSem.LabProgHOL 64 := [Initial186, Initial187, Initial188, Initial189, Initial190, Initial191, Initial192, Initial193, Initial194, Initial195, Initial196, Initial197, Initial198, Initial199, Initial200, Initial201, Initial202, Initial203, Initial204, Initial205, Initial206, Initial207, Initial208, Initial209, Initial210, Initial211, Initial212, Initial213, Initial214, Initial215, Initial216, Initial217]
theorem origin_eq : input = output := by
  simp only [input, output, Initial186_eq, Initial187_eq, Initial188_eq, Initial189_eq, Initial190_eq, Initial191_eq, Initial192_eq, Initial193_eq, Initial194_eq, Initial195_eq, Initial196_eq, Initial197_eq, Initial198_eq, Initial199_eq, Initial200_eq, Initial201_eq, Initial202_eq, Initial203_eq, Initial204_eq, Initial205_eq, Initial206_eq, Initial207_eq, Initial208_eq, Initial209_eq, Initial210_eq, Initial211_eq, Initial212_eq, Initial213_eq, Initial214_eq, Initial215_eq, Initial216_eq, Initial217_eq]
#print axioms origin_eq
end OriginChunk4
end InitECandidate.Proofs.BackendStages.TargetChecks
