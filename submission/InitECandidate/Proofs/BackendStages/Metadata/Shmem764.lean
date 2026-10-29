import InitECandidate.Proofs.BackendStages.Metadata.Data764
import InitECandidate.Proofs.BackendStages.Padded764
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep764 : walkShmemLines Padded764.lines 762892 beforeFfis764 beforeShmem764 = (763156, afterFfis764, afterShmem764) := by
  kernel_rfl
theorem shmemStep764 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded764 :: rest) 762892 beforeFfis764 beforeShmem764 = LabToTarget.getShmemInfo rest 763156 afterFfis764 afterShmem764 := by
  rw [getShmemInfo_section, walkStep764]
theorem symbolLength764 : LabToTarget.secLength Padded764.lines 0 = 264 := by
  kernel_rfl
#print axioms shmemStep764
#print axioms symbolLength764
end InitECandidate.Proofs.BackendStages.Metadata
