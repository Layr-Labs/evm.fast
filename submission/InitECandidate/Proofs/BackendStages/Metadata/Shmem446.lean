import InitECandidate.Proofs.BackendStages.Metadata.Data446
import InitECandidate.Proofs.BackendStages.Padded446
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep446 : walkShmemLines Padded446.lines 328300 beforeFfis446 beforeShmem446 = (328440, afterFfis446, afterShmem446) := by
  kernel_rfl
theorem shmemStep446 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded446 :: rest) 328300 beforeFfis446 beforeShmem446 = LabToTarget.getShmemInfo rest 328440 afterFfis446 afterShmem446 := by
  rw [getShmemInfo_section, walkStep446]
theorem symbolLength446 : LabToTarget.secLength Padded446.lines 0 = 140 := by
  kernel_rfl
#print axioms shmemStep446
#print axioms symbolLength446
end InitECandidate.Proofs.BackendStages.Metadata
