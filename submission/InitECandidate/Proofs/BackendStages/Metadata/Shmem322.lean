import InitECandidate.Proofs.BackendStages.Metadata.Data322
import InitECandidate.Proofs.BackendStages.Padded322
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep322 : walkShmemLines Padded322.lines 253888 beforeFfis322 beforeShmem322 = (256028, afterFfis322, afterShmem322) := by
  kernel_rfl
theorem shmemStep322 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded322 :: rest) 253888 beforeFfis322 beforeShmem322 = LabToTarget.getShmemInfo rest 256028 afterFfis322 afterShmem322 := by
  rw [getShmemInfo_section, walkStep322]
theorem symbolLength322 : LabToTarget.secLength Padded322.lines 0 = 2140 := by
  kernel_rfl
#print axioms shmemStep322
#print axioms symbolLength322
end InitECandidate.Proofs.BackendStages.Metadata
