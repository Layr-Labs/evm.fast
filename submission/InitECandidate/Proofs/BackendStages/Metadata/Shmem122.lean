import InitECandidate.Proofs.BackendStages.Metadata.Data122
import InitECandidate.Proofs.BackendStages.Padded122
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep122 : walkShmemLines Padded122.lines 17980 beforeFfis122 beforeShmem122 = (18228, afterFfis122, afterShmem122) := by
  kernel_rfl
theorem shmemStep122 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded122 :: rest) 17980 beforeFfis122 beforeShmem122 = LabToTarget.getShmemInfo rest 18228 afterFfis122 afterShmem122 := by
  rw [getShmemInfo_section, walkStep122]
theorem symbolLength122 : LabToTarget.secLength Padded122.lines 0 = 248 := by
  kernel_rfl
#print axioms shmemStep122
#print axioms symbolLength122
end InitECandidate.Proofs.BackendStages.Metadata
