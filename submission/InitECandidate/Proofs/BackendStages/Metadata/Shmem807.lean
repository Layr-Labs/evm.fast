import InitECandidate.Proofs.BackendStages.Metadata.Data807
import InitECandidate.Proofs.BackendStages.Padded807
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep807 : walkShmemLines Padded807.lines 866132 beforeFfis807 beforeShmem807 = (866760, afterFfis807, afterShmem807) := by
  kernel_rfl
theorem shmemStep807 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded807 :: rest) 866132 beforeFfis807 beforeShmem807 = LabToTarget.getShmemInfo rest 866760 afterFfis807 afterShmem807 := by
  rw [getShmemInfo_section, walkStep807]
theorem symbolLength807 : LabToTarget.secLength Padded807.lines 0 = 628 := by
  kernel_rfl
#print axioms shmemStep807
#print axioms symbolLength807
end InitECandidate.Proofs.BackendStages.Metadata
