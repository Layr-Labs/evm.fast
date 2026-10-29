import InitECandidate.Proofs.BackendStages.Metadata.Data180
import InitECandidate.Proofs.BackendStages.Padded180
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep180 : walkShmemLines Padded180.lines 97592 beforeFfis180 beforeShmem180 = (97596, afterFfis180, afterShmem180) := by
  kernel_rfl
theorem shmemStep180 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded180 :: rest) 97592 beforeFfis180 beforeShmem180 = LabToTarget.getShmemInfo rest 97596 afterFfis180 afterShmem180 := by
  rw [getShmemInfo_section, walkStep180]
theorem symbolLength180 : LabToTarget.secLength Padded180.lines 0 = 4 := by
  kernel_rfl
#print axioms shmemStep180
#print axioms symbolLength180
end InitECandidate.Proofs.BackendStages.Metadata
