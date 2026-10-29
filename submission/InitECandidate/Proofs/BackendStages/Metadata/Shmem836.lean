import InitECandidate.Proofs.BackendStages.Metadata.Data836
import InitECandidate.Proofs.BackendStages.Padded836
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep836 : walkShmemLines Padded836.lines 902768 beforeFfis836 beforeShmem836 = (906272, afterFfis836, afterShmem836) := by
  kernel_rfl
theorem shmemStep836 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded836 :: rest) 902768 beforeFfis836 beforeShmem836 = LabToTarget.getShmemInfo rest 906272 afterFfis836 afterShmem836 := by
  rw [getShmemInfo_section, walkStep836]
theorem symbolLength836 : LabToTarget.secLength Padded836.lines 0 = 3504 := by
  kernel_rfl
#print axioms shmemStep836
#print axioms symbolLength836
end InitECandidate.Proofs.BackendStages.Metadata
