import InitECandidate.Proofs.BackendStages.Metadata.Data761
import InitECandidate.Proofs.BackendStages.Padded761
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep761 : walkShmemLines Padded761.lines 758304 beforeFfis761 beforeShmem761 = (759836, afterFfis761, afterShmem761) := by
  kernel_rfl
theorem shmemStep761 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded761 :: rest) 758304 beforeFfis761 beforeShmem761 = LabToTarget.getShmemInfo rest 759836 afterFfis761 afterShmem761 := by
  rw [getShmemInfo_section, walkStep761]
theorem symbolLength761 : LabToTarget.secLength Padded761.lines 0 = 1532 := by
  kernel_rfl
#print axioms shmemStep761
#print axioms symbolLength761
end InitECandidate.Proofs.BackendStages.Metadata
