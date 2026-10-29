import InitECandidate.Proofs.BackendStages.Metadata.Data844
import InitECandidate.Proofs.BackendStages.Padded844
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep844 : walkShmemLines Padded844.lines 913376 beforeFfis844 beforeShmem844 = (914296, afterFfis844, afterShmem844) := by
  kernel_rfl
theorem shmemStep844 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded844 :: rest) 913376 beforeFfis844 beforeShmem844 = LabToTarget.getShmemInfo rest 914296 afterFfis844 afterShmem844 := by
  rw [getShmemInfo_section, walkStep844]
theorem symbolLength844 : LabToTarget.secLength Padded844.lines 0 = 920 := by
  kernel_rfl
#print axioms shmemStep844
#print axioms symbolLength844
end InitECandidate.Proofs.BackendStages.Metadata
