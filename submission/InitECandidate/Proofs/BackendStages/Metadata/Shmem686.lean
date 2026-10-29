import InitECandidate.Proofs.BackendStages.Metadata.Data686
import InitECandidate.Proofs.BackendStages.Padded686
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep686 : walkShmemLines Padded686.lines 626276 beforeFfis686 beforeShmem686 = (627128, afterFfis686, afterShmem686) := by
  kernel_rfl
theorem shmemStep686 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded686 :: rest) 626276 beforeFfis686 beforeShmem686 = LabToTarget.getShmemInfo rest 627128 afterFfis686 afterShmem686 := by
  rw [getShmemInfo_section, walkStep686]
theorem symbolLength686 : LabToTarget.secLength Padded686.lines 0 = 852 := by
  kernel_rfl
#print axioms shmemStep686
#print axioms symbolLength686
end InitECandidate.Proofs.BackendStages.Metadata
