import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge826
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge827
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge828
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge829
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge830
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge831
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge832
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge833
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge834
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge835
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge836
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge837
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge838
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge839
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge840
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge841
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge842
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge843
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge844
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge845
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge846
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge847
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge848
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge849
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge850
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge851
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge852
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge853
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge854
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge855
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge856
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge857
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk24
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded826, InitECandidate.Proofs.BackendStages.Encoded827, InitECandidate.Proofs.BackendStages.Encoded828, InitECandidate.Proofs.BackendStages.Encoded829, InitECandidate.Proofs.BackendStages.Encoded830, InitECandidate.Proofs.BackendStages.Encoded831, InitECandidate.Proofs.BackendStages.Encoded832, InitECandidate.Proofs.BackendStages.Encoded833, InitECandidate.Proofs.BackendStages.Encoded834, InitECandidate.Proofs.BackendStages.Encoded835, InitECandidate.Proofs.BackendStages.Encoded836, InitECandidate.Proofs.BackendStages.Encoded837, InitECandidate.Proofs.BackendStages.Encoded838, InitECandidate.Proofs.BackendStages.Encoded839, InitECandidate.Proofs.BackendStages.Encoded840, InitECandidate.Proofs.BackendStages.Encoded841, InitECandidate.Proofs.BackendStages.Encoded842, InitECandidate.Proofs.BackendStages.Encoded843, InitECandidate.Proofs.BackendStages.Encoded844, InitECandidate.Proofs.BackendStages.Encoded845, InitECandidate.Proofs.BackendStages.Encoded846, InitECandidate.Proofs.BackendStages.Encoded847, InitECandidate.Proofs.BackendStages.Encoded848, InitECandidate.Proofs.BackendStages.Encoded849, InitECandidate.Proofs.BackendStages.Encoded850, InitECandidate.Proofs.BackendStages.Encoded851, InitECandidate.Proofs.BackendStages.Encoded852, InitECandidate.Proofs.BackendStages.Encoded853, InitECandidate.Proofs.BackendStages.Encoded854, InitECandidate.Proofs.BackendStages.Encoded855, InitECandidate.Proofs.BackendStages.Encoded856, InitECandidate.Proofs.BackendStages.Encoded857]
def output : LabSem.LabProgHOL 64 := [Initial826, Initial827, Initial828, Initial829, Initial830, Initial831, Initial832, Initial833, Initial834, Initial835, Initial836, Initial837, Initial838, Initial839, Initial840, Initial841, Initial842, Initial843, Initial844, Initial845, Initial846, Initial847, Initial848, Initial849, Initial850, Initial851, Initial852, Initial853, Initial854, Initial855, Initial856, Initial857]
theorem origin_eq : input = output := by
  simp only [input, output, Initial826_eq, Initial827_eq, Initial828_eq, Initial829_eq, Initial830_eq, Initial831_eq, Initial832_eq, Initial833_eq, Initial834_eq, Initial835_eq, Initial836_eq, Initial837_eq, Initial838_eq, Initial839_eq, Initial840_eq, Initial841_eq, Initial842_eq, Initial843_eq, Initial844_eq, Initial845_eq, Initial846_eq, Initial847_eq, Initial848_eq, Initial849_eq, Initial850_eq, Initial851_eq, Initial852_eq, Initial853_eq, Initial854_eq, Initial855_eq, Initial856_eq, Initial857_eq]
#print axioms origin_eq
end OriginChunk24
end InitECandidate.Proofs.BackendStages.TargetChecks
