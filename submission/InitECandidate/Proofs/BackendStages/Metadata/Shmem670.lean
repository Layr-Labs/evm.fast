import InitECandidate.Proofs.BackendStages.Metadata.Data670
import InitECandidate.Proofs.BackendStages.Padded670
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep670 : walkShmemLines Padded670.lines 602020 beforeFfis670 beforeShmem670 = (602544, afterFfis670, afterShmem670) := by
  kernel_rfl
theorem shmemStep670 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded670 :: rest) 602020 beforeFfis670 beforeShmem670 = LabToTarget.getShmemInfo rest 602544 afterFfis670 afterShmem670 := by
  rw [getShmemInfo_section, walkStep670]
theorem symbolLength670 : LabToTarget.secLength Padded670.lines 0 = 524 := by
  kernel_rfl
#print axioms shmemStep670
#print axioms symbolLength670
end InitECandidate.Proofs.BackendStages.Metadata
