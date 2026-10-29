import InitECandidate.Proofs.BackendStages.Metadata.Data865
import InitECandidate.Proofs.BackendStages.Padded865
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep865 : walkShmemLines Padded865.lines 964000 beforeFfis865 beforeShmem865 = (964896, afterFfis865, afterShmem865) := by
  kernel_rfl
theorem shmemStep865 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded865 :: rest) 964000 beforeFfis865 beforeShmem865 = LabToTarget.getShmemInfo rest 964896 afterFfis865 afterShmem865 := by
  rw [getShmemInfo_section, walkStep865]
theorem symbolLength865 : LabToTarget.secLength Padded865.lines 0 = 896 := by
  kernel_rfl
#print axioms shmemStep865
#print axioms symbolLength865
end InitECandidate.Proofs.BackendStages.Metadata
