import InitECandidate.Proofs.BackendStages.Metadata.Data732
import InitECandidate.Proofs.BackendStages.Padded732
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep732 : walkShmemLines Padded732.lines 733692 beforeFfis732 beforeShmem732 = (733808, afterFfis732, afterShmem732) := by
  kernel_rfl
theorem shmemStep732 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded732 :: rest) 733692 beforeFfis732 beforeShmem732 = LabToTarget.getShmemInfo rest 733808 afterFfis732 afterShmem732 := by
  rw [getShmemInfo_section, walkStep732]
theorem symbolLength732 : LabToTarget.secLength Padded732.lines 0 = 116 := by
  kernel_rfl
#print axioms shmemStep732
#print axioms symbolLength732
end InitECandidate.Proofs.BackendStages.Metadata
