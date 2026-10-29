import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge730
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge731
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge732
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge733
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge734
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge735
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge736
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge737
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge738
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge739
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge740
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge741
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge742
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge743
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge744
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge745
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge746
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge747
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge748
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge749
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge750
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge751
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge752
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge753
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge754
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge755
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge756
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge757
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge758
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge759
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge760
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge761
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk21
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded730, InitECandidate.Proofs.BackendStages.Encoded731, InitECandidate.Proofs.BackendStages.Encoded732, InitECandidate.Proofs.BackendStages.Encoded733, InitECandidate.Proofs.BackendStages.Encoded734, InitECandidate.Proofs.BackendStages.Encoded735, InitECandidate.Proofs.BackendStages.Encoded736, InitECandidate.Proofs.BackendStages.Encoded737, InitECandidate.Proofs.BackendStages.Encoded738, InitECandidate.Proofs.BackendStages.Encoded739, InitECandidate.Proofs.BackendStages.Encoded740, InitECandidate.Proofs.BackendStages.Encoded741, InitECandidate.Proofs.BackendStages.Encoded742, InitECandidate.Proofs.BackendStages.Encoded743, InitECandidate.Proofs.BackendStages.Encoded744, InitECandidate.Proofs.BackendStages.Encoded745, InitECandidate.Proofs.BackendStages.Encoded746, InitECandidate.Proofs.BackendStages.Encoded747, InitECandidate.Proofs.BackendStages.Encoded748, InitECandidate.Proofs.BackendStages.Encoded749, InitECandidate.Proofs.BackendStages.Encoded750, InitECandidate.Proofs.BackendStages.Encoded751, InitECandidate.Proofs.BackendStages.Encoded752, InitECandidate.Proofs.BackendStages.Encoded753, InitECandidate.Proofs.BackendStages.Encoded754, InitECandidate.Proofs.BackendStages.Encoded755, InitECandidate.Proofs.BackendStages.Encoded756, InitECandidate.Proofs.BackendStages.Encoded757, InitECandidate.Proofs.BackendStages.Encoded758, InitECandidate.Proofs.BackendStages.Encoded759, InitECandidate.Proofs.BackendStages.Encoded760, InitECandidate.Proofs.BackendStages.Encoded761]
def output : LabSem.LabProgHOL 64 := [Initial730, Initial731, Initial732, Initial733, Initial734, Initial735, Initial736, Initial737, Initial738, Initial739, Initial740, Initial741, Initial742, Initial743, Initial744, Initial745, Initial746, Initial747, Initial748, Initial749, Initial750, Initial751, Initial752, Initial753, Initial754, Initial755, Initial756, Initial757, Initial758, Initial759, Initial760, Initial761]
theorem origin_eq : input = output := by
  simp only [input, output, Initial730_eq, Initial731_eq, Initial732_eq, Initial733_eq, Initial734_eq, Initial735_eq, Initial736_eq, Initial737_eq, Initial738_eq, Initial739_eq, Initial740_eq, Initial741_eq, Initial742_eq, Initial743_eq, Initial744_eq, Initial745_eq, Initial746_eq, Initial747_eq, Initial748_eq, Initial749_eq, Initial750_eq, Initial751_eq, Initial752_eq, Initial753_eq, Initial754_eq, Initial755_eq, Initial756_eq, Initial757_eq, Initial758_eq, Initial759_eq, Initial760_eq, Initial761_eq]
#print axioms origin_eq
end OriginChunk21
end InitECandidate.Proofs.BackendStages.TargetChecks
