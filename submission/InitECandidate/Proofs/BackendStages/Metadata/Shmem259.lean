import InitECandidate.Proofs.BackendStages.Metadata.Data259
import InitECandidate.Proofs.BackendStages.Padded259
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep259 : walkShmemLines Padded259.lines 194140 beforeFfis259 beforeShmem259 = (198844, afterFfis259, afterShmem259) := by
  kernel_rfl
theorem shmemStep259 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded259 :: rest) 194140 beforeFfis259 beforeShmem259 = LabToTarget.getShmemInfo rest 198844 afterFfis259 afterShmem259 := by
  rw [getShmemInfo_section, walkStep259]
theorem symbolLength259 : LabToTarget.secLength Padded259.lines 0 = 4704 := by
  kernel_rfl
#print axioms shmemStep259
#print axioms symbolLength259
end InitECandidate.Proofs.BackendStages.Metadata
