import InitECandidate.Proofs.BackendStages.Metadata.Data430
import InitECandidate.Proofs.BackendStages.Padded430
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep430 : walkShmemLines Padded430.lines 319456 beforeFfis430 beforeShmem430 = (319836, afterFfis430, afterShmem430) := by
  kernel_rfl
theorem shmemStep430 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded430 :: rest) 319456 beforeFfis430 beforeShmem430 = LabToTarget.getShmemInfo rest 319836 afterFfis430 afterShmem430 := by
  rw [getShmemInfo_section, walkStep430]
theorem symbolLength430 : LabToTarget.secLength Padded430.lines 0 = 380 := by
  kernel_rfl
#print axioms shmemStep430
#print axioms symbolLength430
end InitECandidate.Proofs.BackendStages.Metadata
