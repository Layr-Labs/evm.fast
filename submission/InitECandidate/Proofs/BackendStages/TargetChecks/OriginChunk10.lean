import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge378
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge379
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge380
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge381
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge382
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge383
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge384
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge385
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge386
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge387
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge388
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge389
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge390
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge391
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge392
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge393
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge394
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge395
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge396
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge397
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge398
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge399
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge400
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge401
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge402
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge403
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge404
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge405
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge406
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge407
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge408
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge409
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk10
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded378, InitECandidate.Proofs.BackendStages.Encoded379, InitECandidate.Proofs.BackendStages.Encoded380, InitECandidate.Proofs.BackendStages.Encoded381, InitECandidate.Proofs.BackendStages.Encoded382, InitECandidate.Proofs.BackendStages.Encoded383, InitECandidate.Proofs.BackendStages.Encoded384, InitECandidate.Proofs.BackendStages.Encoded385, InitECandidate.Proofs.BackendStages.Encoded386, InitECandidate.Proofs.BackendStages.Encoded387, InitECandidate.Proofs.BackendStages.Encoded388, InitECandidate.Proofs.BackendStages.Encoded389, InitECandidate.Proofs.BackendStages.Encoded390, InitECandidate.Proofs.BackendStages.Encoded391, InitECandidate.Proofs.BackendStages.Encoded392, InitECandidate.Proofs.BackendStages.Encoded393, InitECandidate.Proofs.BackendStages.Encoded394, InitECandidate.Proofs.BackendStages.Encoded395, InitECandidate.Proofs.BackendStages.Encoded396, InitECandidate.Proofs.BackendStages.Encoded397, InitECandidate.Proofs.BackendStages.Encoded398, InitECandidate.Proofs.BackendStages.Encoded399, InitECandidate.Proofs.BackendStages.Encoded400, InitECandidate.Proofs.BackendStages.Encoded401, InitECandidate.Proofs.BackendStages.Encoded402, InitECandidate.Proofs.BackendStages.Encoded403, InitECandidate.Proofs.BackendStages.Encoded404, InitECandidate.Proofs.BackendStages.Encoded405, InitECandidate.Proofs.BackendStages.Encoded406, InitECandidate.Proofs.BackendStages.Encoded407, InitECandidate.Proofs.BackendStages.Encoded408, InitECandidate.Proofs.BackendStages.Encoded409]
def output : LabSem.LabProgHOL 64 := [Initial378, Initial379, Initial380, Initial381, Initial382, Initial383, Initial384, Initial385, Initial386, Initial387, Initial388, Initial389, Initial390, Initial391, Initial392, Initial393, Initial394, Initial395, Initial396, Initial397, Initial398, Initial399, Initial400, Initial401, Initial402, Initial403, Initial404, Initial405, Initial406, Initial407, Initial408, Initial409]
theorem origin_eq : input = output := by
  simp only [input, output, Initial378_eq, Initial379_eq, Initial380_eq, Initial381_eq, Initial382_eq, Initial383_eq, Initial384_eq, Initial385_eq, Initial386_eq, Initial387_eq, Initial388_eq, Initial389_eq, Initial390_eq, Initial391_eq, Initial392_eq, Initial393_eq, Initial394_eq, Initial395_eq, Initial396_eq, Initial397_eq, Initial398_eq, Initial399_eq, Initial400_eq, Initial401_eq, Initial402_eq, Initial403_eq, Initial404_eq, Initial405_eq, Initial406_eq, Initial407_eq, Initial408_eq, Initial409_eq]
#print axioms origin_eq
end OriginChunk10
end InitECandidate.Proofs.BackendStages.TargetChecks
