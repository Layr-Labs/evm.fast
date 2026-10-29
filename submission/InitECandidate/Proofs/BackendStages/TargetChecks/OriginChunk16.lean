import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge570
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge571
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge572
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge573
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge574
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge575
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge576
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge577
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge578
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge579
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge580
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge581
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge582
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge583
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge584
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge585
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge586
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge587
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge588
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge589
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge590
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge591
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge592
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge593
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge594
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge595
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge596
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge597
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge598
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge599
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge600
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge601
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk16
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded570, InitECandidate.Proofs.BackendStages.Encoded571, InitECandidate.Proofs.BackendStages.Encoded572, InitECandidate.Proofs.BackendStages.Encoded573, InitECandidate.Proofs.BackendStages.Encoded574, InitECandidate.Proofs.BackendStages.Encoded575, InitECandidate.Proofs.BackendStages.Encoded576, InitECandidate.Proofs.BackendStages.Encoded577, InitECandidate.Proofs.BackendStages.Encoded578, InitECandidate.Proofs.BackendStages.Encoded579, InitECandidate.Proofs.BackendStages.Encoded580, InitECandidate.Proofs.BackendStages.Encoded581, InitECandidate.Proofs.BackendStages.Encoded582, InitECandidate.Proofs.BackendStages.Encoded583, InitECandidate.Proofs.BackendStages.Encoded584, InitECandidate.Proofs.BackendStages.Encoded585, InitECandidate.Proofs.BackendStages.Encoded586, InitECandidate.Proofs.BackendStages.Encoded587, InitECandidate.Proofs.BackendStages.Encoded588, InitECandidate.Proofs.BackendStages.Encoded589, InitECandidate.Proofs.BackendStages.Encoded590, InitECandidate.Proofs.BackendStages.Encoded591, InitECandidate.Proofs.BackendStages.Encoded592, InitECandidate.Proofs.BackendStages.Encoded593, InitECandidate.Proofs.BackendStages.Encoded594, InitECandidate.Proofs.BackendStages.Encoded595, InitECandidate.Proofs.BackendStages.Encoded596, InitECandidate.Proofs.BackendStages.Encoded597, InitECandidate.Proofs.BackendStages.Encoded598, InitECandidate.Proofs.BackendStages.Encoded599, InitECandidate.Proofs.BackendStages.Encoded600, InitECandidate.Proofs.BackendStages.Encoded601]
def output : LabSem.LabProgHOL 64 := [Initial570, Initial571, Initial572, Initial573, Initial574, Initial575, Initial576, Initial577, Initial578, Initial579, Initial580, Initial581, Initial582, Initial583, Initial584, Initial585, Initial586, Initial587, Initial588, Initial589, Initial590, Initial591, Initial592, Initial593, Initial594, Initial595, Initial596, Initial597, Initial598, Initial599, Initial600, Initial601]
theorem origin_eq : input = output := by
  simp only [input, output, Initial570_eq, Initial571_eq, Initial572_eq, Initial573_eq, Initial574_eq, Initial575_eq, Initial576_eq, Initial577_eq, Initial578_eq, Initial579_eq, Initial580_eq, Initial581_eq, Initial582_eq, Initial583_eq, Initial584_eq, Initial585_eq, Initial586_eq, Initial587_eq, Initial588_eq, Initial589_eq, Initial590_eq, Initial591_eq, Initial592_eq, Initial593_eq, Initial594_eq, Initial595_eq, Initial596_eq, Initial597_eq, Initial598_eq, Initial599_eq, Initial600_eq, Initial601_eq]
#print axioms origin_eq
end OriginChunk16
end InitECandidate.Proofs.BackendStages.TargetChecks
