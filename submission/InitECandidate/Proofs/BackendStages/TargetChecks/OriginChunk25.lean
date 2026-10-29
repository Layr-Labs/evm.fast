import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge858
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge859
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge860
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge861
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge862
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge863
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge864
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge865
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge866
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge867
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge868
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge869
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge870
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge871
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge872
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge873
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge874
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge875
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge876
import InitECandidate.Proofs.BackendStages.TargetChecks.InitialBridge877
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
namespace OriginChunk25
def input : LabSem.LabProgHOL 64 := [InitECandidate.Proofs.BackendStages.Encoded858, InitECandidate.Proofs.BackendStages.Encoded859, InitECandidate.Proofs.BackendStages.Encoded860, InitECandidate.Proofs.BackendStages.Encoded861, InitECandidate.Proofs.BackendStages.Encoded862, InitECandidate.Proofs.BackendStages.Encoded863, InitECandidate.Proofs.BackendStages.Encoded864, InitECandidate.Proofs.BackendStages.Encoded865, InitECandidate.Proofs.BackendStages.Encoded866, InitECandidate.Proofs.BackendStages.Encoded867, InitECandidate.Proofs.BackendStages.Encoded868, InitECandidate.Proofs.BackendStages.Encoded869, InitECandidate.Proofs.BackendStages.Encoded870, InitECandidate.Proofs.BackendStages.Encoded871, InitECandidate.Proofs.BackendStages.Encoded872, InitECandidate.Proofs.BackendStages.Encoded873, InitECandidate.Proofs.BackendStages.Encoded874, InitECandidate.Proofs.BackendStages.Encoded875, InitECandidate.Proofs.BackendStages.Encoded876, InitECandidate.Proofs.BackendStages.Encoded877]
def output : LabSem.LabProgHOL 64 := [Initial858, Initial859, Initial860, Initial861, Initial862, Initial863, Initial864, Initial865, Initial866, Initial867, Initial868, Initial869, Initial870, Initial871, Initial872, Initial873, Initial874, Initial875, Initial876, Initial877]
theorem origin_eq : input = output := by
  simp only [input, output, Initial858_eq, Initial859_eq, Initial860_eq, Initial861_eq, Initial862_eq, Initial863_eq, Initial864_eq, Initial865_eq, Initial866_eq, Initial867_eq, Initial868_eq, Initial869_eq, Initial870_eq, Initial871_eq, Initial872_eq, Initial873_eq, Initial874_eq, Initial875_eq, Initial876_eq, Initial877_eq]
#print axioms origin_eq
end OriginChunk25
end InitECandidate.Proofs.BackendStages.TargetChecks
