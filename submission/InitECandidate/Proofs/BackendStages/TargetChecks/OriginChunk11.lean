import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge410
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge411
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge412
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge413
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge414
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge415
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge416
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge417
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge418
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge419
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge420
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge421
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge422
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge423
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge424
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge425
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge426
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge427
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge428
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge429
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge430
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge431
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge432
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge433
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge434
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge435
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge436
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge437
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge438
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge439
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge440
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge441
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk11
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded410, InitECandidate.Proofs.BackendStages.Encoded411, InitECandidate.Proofs.BackendStages.Encoded412, InitECandidate.Proofs.BackendStages.Encoded413, InitECandidate.Proofs.BackendStages.Encoded414, InitECandidate.Proofs.BackendStages.Encoded415, InitECandidate.Proofs.BackendStages.Encoded416, InitECandidate.Proofs.BackendStages.Encoded417, InitECandidate.Proofs.BackendStages.Encoded418, InitECandidate.Proofs.BackendStages.Encoded419, InitECandidate.Proofs.BackendStages.Encoded420, InitECandidate.Proofs.BackendStages.Encoded421, InitECandidate.Proofs.BackendStages.Encoded422, InitECandidate.Proofs.BackendStages.Encoded423, InitECandidate.Proofs.BackendStages.Encoded424, InitECandidate.Proofs.BackendStages.Encoded425, InitECandidate.Proofs.BackendStages.Encoded426, InitECandidate.Proofs.BackendStages.Encoded427, InitECandidate.Proofs.BackendStages.Encoded428, InitECandidate.Proofs.BackendStages.Encoded429, InitECandidate.Proofs.BackendStages.Encoded430, InitECandidate.Proofs.BackendStages.Encoded431, InitECandidate.Proofs.BackendStages.Encoded432, InitECandidate.Proofs.BackendStages.Encoded433, InitECandidate.Proofs.BackendStages.Encoded434, InitECandidate.Proofs.BackendStages.Encoded435, InitECandidate.Proofs.BackendStages.Encoded436, InitECandidate.Proofs.BackendStages.Encoded437, InitECandidate.Proofs.BackendStages.Encoded438, InitECandidate.Proofs.BackendStages.Encoded439, InitECandidate.Proofs.BackendStages.Encoded440, InitECandidate.Proofs.BackendStages.Encoded441]
def output : LabSem.LabProgHOL 64 := [Initial410, Initial411, Initial412, Initial413, Initial414, Initial415, Initial416, Initial417, Initial418, Initial419, Initial420, Initial421, Initial422, Initial423, Initial424, Initial425, Initial426, Initial427, Initial428, Initial429, Initial430, Initial431, Initial432, Initial433, Initial434, Initial435, Initial436, Initial437, Initial438, Initial439, Initial440, Initial441]
theorem origin_eq : input = output := by
  simp only [input, output, Initial410_eq, Initial411_eq, Initial412_eq, Initial413_eq, Initial414_eq, Initial415_eq, Initial416_eq, Initial417_eq, Initial418_eq, Initial419_eq, Initial420_eq, Initial421_eq, Initial422_eq, Initial423_eq, Initial424_eq, Initial425_eq, Initial426_eq, Initial427_eq, Initial428_eq, Initial429_eq, Initial430_eq, Initial431_eq, Initial432_eq, Initial433_eq, Initial434_eq, Initial435_eq, Initial436_eq, Initial437_eq, Initial438_eq, Initial439_eq, Initial440_eq, Initial441_eq]
#print axioms origin_eq
end OriginChunk11
end InitECandidate.Proofs.BackendStages.TargetChecks
