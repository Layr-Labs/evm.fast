import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge314
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge315
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge316
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge317
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge318
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge319
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge320
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge321
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge322
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge323
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge324
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge325
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge326
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge327
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge328
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge329
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge330
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge331
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge332
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge333
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge334
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge335
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge336
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge337
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge338
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge339
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge340
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge341
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge342
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge343
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge344
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge345
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk8
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded314, InitECandidate.Proofs.BackendStages.Encoded315, InitECandidate.Proofs.BackendStages.Encoded316, InitECandidate.Proofs.BackendStages.Encoded317, InitECandidate.Proofs.BackendStages.Encoded318, InitECandidate.Proofs.BackendStages.Encoded319, InitECandidate.Proofs.BackendStages.Encoded320, InitECandidate.Proofs.BackendStages.Encoded321, InitECandidate.Proofs.BackendStages.Encoded322, InitECandidate.Proofs.BackendStages.Encoded323, InitECandidate.Proofs.BackendStages.Encoded324, InitECandidate.Proofs.BackendStages.Encoded325, InitECandidate.Proofs.BackendStages.Encoded326, InitECandidate.Proofs.BackendStages.Encoded327, InitECandidate.Proofs.BackendStages.Encoded328, InitECandidate.Proofs.BackendStages.Encoded329, InitECandidate.Proofs.BackendStages.Encoded330, InitECandidate.Proofs.BackendStages.Encoded331, InitECandidate.Proofs.BackendStages.Encoded332, InitECandidate.Proofs.BackendStages.Encoded333, InitECandidate.Proofs.BackendStages.Encoded334, InitECandidate.Proofs.BackendStages.Encoded335, InitECandidate.Proofs.BackendStages.Encoded336, InitECandidate.Proofs.BackendStages.Encoded337, InitECandidate.Proofs.BackendStages.Encoded338, InitECandidate.Proofs.BackendStages.Encoded339, InitECandidate.Proofs.BackendStages.Encoded340, InitECandidate.Proofs.BackendStages.Encoded341, InitECandidate.Proofs.BackendStages.Encoded342, InitECandidate.Proofs.BackendStages.Encoded343, InitECandidate.Proofs.BackendStages.Encoded344, InitECandidate.Proofs.BackendStages.Encoded345]
def output : LabSem.LabProgHOL 64 := [Initial314, Initial315, Initial316, Initial317, Initial318, Initial319, Initial320, Initial321, Initial322, Initial323, Initial324, Initial325, Initial326, Initial327, Initial328, Initial329, Initial330, Initial331, Initial332, Initial333, Initial334, Initial335, Initial336, Initial337, Initial338, Initial339, Initial340, Initial341, Initial342, Initial343, Initial344, Initial345]
theorem origin_eq : input = output := by
  simp only [input, output, Initial314_eq, Initial315_eq, Initial316_eq, Initial317_eq, Initial318_eq, Initial319_eq, Initial320_eq, Initial321_eq, Initial322_eq, Initial323_eq, Initial324_eq, Initial325_eq, Initial326_eq, Initial327_eq, Initial328_eq, Initial329_eq, Initial330_eq, Initial331_eq, Initial332_eq, Initial333_eq, Initial334_eq, Initial335_eq, Initial336_eq, Initial337_eq, Initial338_eq, Initial339_eq, Initial340_eq, Initial341_eq, Initial342_eq, Initial343_eq, Initial344_eq, Initial345_eq]
#print axioms origin_eq
end OriginChunk8
end InitECandidate.Proofs.BackendStages.TargetChecks
