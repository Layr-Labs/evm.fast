import InitECandidate.Proofs.BackendStages.Metadata.Data704
import InitECandidate.Proofs.BackendStages.Padded704
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep704 : walkShmemLines Padded704.lines 666848 beforeFfis704 beforeShmem704 = (702456, afterFfis704, afterShmem704) := by
  kernel_rfl
theorem shmemStep704 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded704 :: rest) 666848 beforeFfis704 beforeShmem704 = LabToTarget.getShmemInfo rest 702456 afterFfis704 afterShmem704 := by
  rw [getShmemInfo_section, walkStep704]
theorem symbolLength704 : LabToTarget.secLength Padded704.lines 0 = 35608 := by
  kernel_rfl
#print axioms shmemStep704
#print axioms symbolLength704
end InitECandidate.Proofs.BackendStages.Metadata
