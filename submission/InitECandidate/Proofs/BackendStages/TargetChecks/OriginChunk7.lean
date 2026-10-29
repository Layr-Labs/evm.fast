import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge282
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge283
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge284
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge285
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge286
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge287
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge288
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge289
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge290
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge291
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge292
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge293
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge294
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge295
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge296
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge297
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge298
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge299
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge300
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge301
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge302
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge303
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge304
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge305
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge306
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge307
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge308
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge309
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge310
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge311
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge312
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge313
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk7
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded282, InitECandidate.Proofs.BackendStages.Encoded283, InitECandidate.Proofs.BackendStages.Encoded284, InitECandidate.Proofs.BackendStages.Encoded285, InitECandidate.Proofs.BackendStages.Encoded286, InitECandidate.Proofs.BackendStages.Encoded287, InitECandidate.Proofs.BackendStages.Encoded288, InitECandidate.Proofs.BackendStages.Encoded289, InitECandidate.Proofs.BackendStages.Encoded290, InitECandidate.Proofs.BackendStages.Encoded291, InitECandidate.Proofs.BackendStages.Encoded292, InitECandidate.Proofs.BackendStages.Encoded293, InitECandidate.Proofs.BackendStages.Encoded294, InitECandidate.Proofs.BackendStages.Encoded295, InitECandidate.Proofs.BackendStages.Encoded296, InitECandidate.Proofs.BackendStages.Encoded297, InitECandidate.Proofs.BackendStages.Encoded298, InitECandidate.Proofs.BackendStages.Encoded299, InitECandidate.Proofs.BackendStages.Encoded300, InitECandidate.Proofs.BackendStages.Encoded301, InitECandidate.Proofs.BackendStages.Encoded302, InitECandidate.Proofs.BackendStages.Encoded303, InitECandidate.Proofs.BackendStages.Encoded304, InitECandidate.Proofs.BackendStages.Encoded305, InitECandidate.Proofs.BackendStages.Encoded306, InitECandidate.Proofs.BackendStages.Encoded307, InitECandidate.Proofs.BackendStages.Encoded308, InitECandidate.Proofs.BackendStages.Encoded309, InitECandidate.Proofs.BackendStages.Encoded310, InitECandidate.Proofs.BackendStages.Encoded311, InitECandidate.Proofs.BackendStages.Encoded312, InitECandidate.Proofs.BackendStages.Encoded313]
def output : LabSem.LabProgHOL 64 := [Initial282, Initial283, Initial284, Initial285, Initial286, Initial287, Initial288, Initial289, Initial290, Initial291, Initial292, Initial293, Initial294, Initial295, Initial296, Initial297, Initial298, Initial299, Initial300, Initial301, Initial302, Initial303, Initial304, Initial305, Initial306, Initial307, Initial308, Initial309, Initial310, Initial311, Initial312, Initial313]
theorem origin_eq : input = output := by
  simp only [input, output, Initial282_eq, Initial283_eq, Initial284_eq, Initial285_eq, Initial286_eq, Initial287_eq, Initial288_eq, Initial289_eq, Initial290_eq, Initial291_eq, Initial292_eq, Initial293_eq, Initial294_eq, Initial295_eq, Initial296_eq, Initial297_eq, Initial298_eq, Initial299_eq, Initial300_eq, Initial301_eq, Initial302_eq, Initial303_eq, Initial304_eq, Initial305_eq, Initial306_eq, Initial307_eq, Initial308_eq, Initial309_eq, Initial310_eq, Initial311_eq, Initial312_eq, Initial313_eq]
#print axioms origin_eq
end OriginChunk7
end InitECandidate.Proofs.BackendStages.TargetChecks
