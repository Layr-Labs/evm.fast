import InitECandidate.Proofs.BackendStages.Metadata.Data64
import InitECandidate.Proofs.BackendStages.Padded64
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep64 : walkShmemLines Padded64.lines 1000 beforeFfis64 beforeShmem64 = (1820, afterFfis64, afterShmem64) := by
  kernel_rfl
theorem shmemStep64 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded64 :: rest) 1000 beforeFfis64 beforeShmem64 = LabToTarget.getShmemInfo rest 1820 afterFfis64 afterShmem64 := by
  rw [getShmemInfo_section, walkStep64]
theorem symbolLength64 : LabToTarget.secLength Padded64.lines 0 = 820 := by
  kernel_rfl
#print axioms shmemStep64
#print axioms symbolLength64
end InitECandidate.Proofs.BackendStages.Metadata
