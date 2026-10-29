import InitECandidate.Proofs.BackendStages.Metadata.Data223
import InitECandidate.Proofs.BackendStages.Padded223
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep223 : walkShmemLines Padded223.lines 125460 beforeFfis223 beforeShmem223 = (129580, afterFfis223, afterShmem223) := by
  kernel_rfl
theorem shmemStep223 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded223 :: rest) 125460 beforeFfis223 beforeShmem223 = LabToTarget.getShmemInfo rest 129580 afterFfis223 afterShmem223 := by
  rw [getShmemInfo_section, walkStep223]
theorem symbolLength223 : LabToTarget.secLength Padded223.lines 0 = 4120 := by
  kernel_rfl
#print axioms shmemStep223
#print axioms symbolLength223
end InitECandidate.Proofs.BackendStages.Metadata
