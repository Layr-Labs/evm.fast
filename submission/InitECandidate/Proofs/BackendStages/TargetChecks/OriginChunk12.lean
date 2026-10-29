import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge442
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge443
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge444
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge445
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge446
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge447
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge448
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge449
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge450
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge451
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge452
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge453
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge454
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge455
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge456
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge457
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge458
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge459
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge460
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge461
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge462
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge463
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge464
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge465
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge466
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge467
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge468
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge469
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge470
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge471
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge472
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge473
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk12
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded442, InitECandidate.Proofs.BackendStages.Encoded443, InitECandidate.Proofs.BackendStages.Encoded444, InitECandidate.Proofs.BackendStages.Encoded445, InitECandidate.Proofs.BackendStages.Encoded446, InitECandidate.Proofs.BackendStages.Encoded447, InitECandidate.Proofs.BackendStages.Encoded448, InitECandidate.Proofs.BackendStages.Encoded449, InitECandidate.Proofs.BackendStages.Encoded450, InitECandidate.Proofs.BackendStages.Encoded451, InitECandidate.Proofs.BackendStages.Encoded452, InitECandidate.Proofs.BackendStages.Encoded453, InitECandidate.Proofs.BackendStages.Encoded454, InitECandidate.Proofs.BackendStages.Encoded455, InitECandidate.Proofs.BackendStages.Encoded456, InitECandidate.Proofs.BackendStages.Encoded457, InitECandidate.Proofs.BackendStages.Encoded458, InitECandidate.Proofs.BackendStages.Encoded459, InitECandidate.Proofs.BackendStages.Encoded460, InitECandidate.Proofs.BackendStages.Encoded461, InitECandidate.Proofs.BackendStages.Encoded462, InitECandidate.Proofs.BackendStages.Encoded463, InitECandidate.Proofs.BackendStages.Encoded464, InitECandidate.Proofs.BackendStages.Encoded465, InitECandidate.Proofs.BackendStages.Encoded466, InitECandidate.Proofs.BackendStages.Encoded467, InitECandidate.Proofs.BackendStages.Encoded468, InitECandidate.Proofs.BackendStages.Encoded469, InitECandidate.Proofs.BackendStages.Encoded470, InitECandidate.Proofs.BackendStages.Encoded471, InitECandidate.Proofs.BackendStages.Encoded472, InitECandidate.Proofs.BackendStages.Encoded473]
def output : LabSem.LabProgHOL 64 := [Initial442, Initial443, Initial444, Initial445, Initial446, Initial447, Initial448, Initial449, Initial450, Initial451, Initial452, Initial453, Initial454, Initial455, Initial456, Initial457, Initial458, Initial459, Initial460, Initial461, Initial462, Initial463, Initial464, Initial465, Initial466, Initial467, Initial468, Initial469, Initial470, Initial471, Initial472, Initial473]
theorem origin_eq : input = output := by
  simp only [input, output, Initial442_eq, Initial443_eq, Initial444_eq, Initial445_eq, Initial446_eq, Initial447_eq, Initial448_eq, Initial449_eq, Initial450_eq, Initial451_eq, Initial452_eq, Initial453_eq, Initial454_eq, Initial455_eq, Initial456_eq, Initial457_eq, Initial458_eq, Initial459_eq, Initial460_eq, Initial461_eq, Initial462_eq, Initial463_eq, Initial464_eq, Initial465_eq, Initial466_eq, Initial467_eq, Initial468_eq, Initial469_eq, Initial470_eq, Initial471_eq, Initial472_eq, Initial473_eq]
#print axioms origin_eq
end OriginChunk12
end InitECandidate.Proofs.BackendStages.TargetChecks
