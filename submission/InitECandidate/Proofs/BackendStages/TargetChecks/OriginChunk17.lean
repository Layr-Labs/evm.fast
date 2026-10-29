import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge602
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge603
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge604
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge605
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge606
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge607
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge608
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge609
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge610
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge611
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge612
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge613
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge614
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge615
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge616
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge617
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge618
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge619
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge620
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge621
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge622
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge623
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge624
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge625
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge626
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge627
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge628
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge629
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge630
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge631
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge632
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge633
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk17
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded602, InitECandidate.Proofs.BackendStages.Encoded603, InitECandidate.Proofs.BackendStages.Encoded604, InitECandidate.Proofs.BackendStages.Encoded605, InitECandidate.Proofs.BackendStages.Encoded606, InitECandidate.Proofs.BackendStages.Encoded607, InitECandidate.Proofs.BackendStages.Encoded608, InitECandidate.Proofs.BackendStages.Encoded609, InitECandidate.Proofs.BackendStages.Encoded610, InitECandidate.Proofs.BackendStages.Encoded611, InitECandidate.Proofs.BackendStages.Encoded612, InitECandidate.Proofs.BackendStages.Encoded613, InitECandidate.Proofs.BackendStages.Encoded614, InitECandidate.Proofs.BackendStages.Encoded615, InitECandidate.Proofs.BackendStages.Encoded616, InitECandidate.Proofs.BackendStages.Encoded617, InitECandidate.Proofs.BackendStages.Encoded618, InitECandidate.Proofs.BackendStages.Encoded619, InitECandidate.Proofs.BackendStages.Encoded620, InitECandidate.Proofs.BackendStages.Encoded621, InitECandidate.Proofs.BackendStages.Encoded622, InitECandidate.Proofs.BackendStages.Encoded623, InitECandidate.Proofs.BackendStages.Encoded624, InitECandidate.Proofs.BackendStages.Encoded625, InitECandidate.Proofs.BackendStages.Encoded626, InitECandidate.Proofs.BackendStages.Encoded627, InitECandidate.Proofs.BackendStages.Encoded628, InitECandidate.Proofs.BackendStages.Encoded629, InitECandidate.Proofs.BackendStages.Encoded630, InitECandidate.Proofs.BackendStages.Encoded631, InitECandidate.Proofs.BackendStages.Encoded632, InitECandidate.Proofs.BackendStages.Encoded633]
def output : LabSem.LabProgHOL 64 := [Initial602, Initial603, Initial604, Initial605, Initial606, Initial607, Initial608, Initial609, Initial610, Initial611, Initial612, Initial613, Initial614, Initial615, Initial616, Initial617, Initial618, Initial619, Initial620, Initial621, Initial622, Initial623, Initial624, Initial625, Initial626, Initial627, Initial628, Initial629, Initial630, Initial631, Initial632, Initial633]
theorem origin_eq : input = output := by
  simp only [input, output, Initial602_eq, Initial603_eq, Initial604_eq, Initial605_eq, Initial606_eq, Initial607_eq, Initial608_eq, Initial609_eq, Initial610_eq, Initial611_eq, Initial612_eq, Initial613_eq, Initial614_eq, Initial615_eq, Initial616_eq, Initial617_eq, Initial618_eq, Initial619_eq, Initial620_eq, Initial621_eq, Initial622_eq, Initial623_eq, Initial624_eq, Initial625_eq, Initial626_eq, Initial627_eq, Initial628_eq, Initial629_eq, Initial630_eq, Initial631_eq, Initial632_eq, Initial633_eq]
#print axioms origin_eq
end OriginChunk17
end InitECandidate.Proofs.BackendStages.TargetChecks
