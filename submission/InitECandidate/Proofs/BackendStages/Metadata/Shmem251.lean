import InitECandidate.Proofs.BackendStages.Metadata.Data251
import InitECandidate.Proofs.BackendStages.Padded251
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata
theorem walkStep251 : walkShmemLines Padded251.lines 183328 beforeFfis251 beforeShmem251 = (184644, afterFfis251, afterShmem251) := by
  kernel_rfl
theorem shmemStep251 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo (Padded251 :: rest) 183328 beforeFfis251 beforeShmem251 = LabToTarget.getShmemInfo rest 184644 afterFfis251 afterShmem251 := by
  rw [getShmemInfo_section, walkStep251]
theorem symbolLength251 : LabToTarget.secLength Padded251.lines 0 = 1316 := by
  kernel_rfl
#print axioms shmemStep251
#print axioms symbolLength251
end InitECandidate.Proofs.BackendStages.Metadata
