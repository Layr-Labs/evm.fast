import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge762
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge763
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge764
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge765
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge766
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge767
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge768
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge769
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge770
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge771
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge772
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge773
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge774
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge775
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge776
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge777
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge778
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge779
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge780
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge781
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge782
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge783
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge784
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge785
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge786
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge787
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge788
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge789
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge790
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge791
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge792
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge793
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk22
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded762, InitECandidate.Proofs.BackendStages.Encoded763, InitECandidate.Proofs.BackendStages.Encoded764, InitECandidate.Proofs.BackendStages.Encoded765, InitECandidate.Proofs.BackendStages.Encoded766, InitECandidate.Proofs.BackendStages.Encoded767, InitECandidate.Proofs.BackendStages.Encoded768, InitECandidate.Proofs.BackendStages.Encoded769, InitECandidate.Proofs.BackendStages.Encoded770, InitECandidate.Proofs.BackendStages.Encoded771, InitECandidate.Proofs.BackendStages.Encoded772, InitECandidate.Proofs.BackendStages.Encoded773, InitECandidate.Proofs.BackendStages.Encoded774, InitECandidate.Proofs.BackendStages.Encoded775, InitECandidate.Proofs.BackendStages.Encoded776, InitECandidate.Proofs.BackendStages.Encoded777, InitECandidate.Proofs.BackendStages.Encoded778, InitECandidate.Proofs.BackendStages.Encoded779, InitECandidate.Proofs.BackendStages.Encoded780, InitECandidate.Proofs.BackendStages.Encoded781, InitECandidate.Proofs.BackendStages.Encoded782, InitECandidate.Proofs.BackendStages.Encoded783, InitECandidate.Proofs.BackendStages.Encoded784, InitECandidate.Proofs.BackendStages.Encoded785, InitECandidate.Proofs.BackendStages.Encoded786, InitECandidate.Proofs.BackendStages.Encoded787, InitECandidate.Proofs.BackendStages.Encoded788, InitECandidate.Proofs.BackendStages.Encoded789, InitECandidate.Proofs.BackendStages.Encoded790, InitECandidate.Proofs.BackendStages.Encoded791, InitECandidate.Proofs.BackendStages.Encoded792, InitECandidate.Proofs.BackendStages.Encoded793]
def output : LabSem.LabProgHOL 64 := [Initial762, Initial763, Initial764, Initial765, Initial766, Initial767, Initial768, Initial769, Initial770, Initial771, Initial772, Initial773, Initial774, Initial775, Initial776, Initial777, Initial778, Initial779, Initial780, Initial781, Initial782, Initial783, Initial784, Initial785, Initial786, Initial787, Initial788, Initial789, Initial790, Initial791, Initial792, Initial793]
theorem origin_eq : input = output := by
  simp only [input, output, Initial762_eq, Initial763_eq, Initial764_eq, Initial765_eq, Initial766_eq, Initial767_eq, Initial768_eq, Initial769_eq, Initial770_eq, Initial771_eq, Initial772_eq, Initial773_eq, Initial774_eq, Initial775_eq, Initial776_eq, Initial777_eq, Initial778_eq, Initial779_eq, Initial780_eq, Initial781_eq, Initial782_eq, Initial783_eq, Initial784_eq, Initial785_eq, Initial786_eq, Initial787_eq, Initial788_eq, Initial789_eq, Initial790_eq, Initial791_eq, Initial792_eq, Initial793_eq]
#print axioms origin_eq
end OriginChunk22
end InitECandidate.Proofs.BackendStages.TargetChecks
