import InitECandidate.Proofs.BackendStages.Metadata.Ffi240
import InitECandidate.Proofs.BackendStages.Metadata.Shmem240
import InitECandidate.Proofs.BackendStages.Metadata.Ffi241
import InitECandidate.Proofs.BackendStages.Metadata.Shmem241
import InitECandidate.Proofs.BackendStages.Metadata.Ffi242
import InitECandidate.Proofs.BackendStages.Metadata.Shmem242
import InitECandidate.Proofs.BackendStages.Metadata.Ffi243
import InitECandidate.Proofs.BackendStages.Metadata.Shmem243
import InitECandidate.Proofs.BackendStages.Metadata.Ffi244
import InitECandidate.Proofs.BackendStages.Metadata.Shmem244
import InitECandidate.Proofs.BackendStages.Metadata.Ffi245
import InitECandidate.Proofs.BackendStages.Metadata.Shmem245
import InitECandidate.Proofs.BackendStages.Metadata.Ffi246
import InitECandidate.Proofs.BackendStages.Metadata.Shmem246
import InitECandidate.Proofs.BackendStages.Metadata.Ffi247
import InitECandidate.Proofs.BackendStages.Metadata.Shmem247
import InitECandidate.Proofs.BackendStages.Metadata.Ffi248
import InitECandidate.Proofs.BackendStages.Metadata.Shmem248
import InitECandidate.Proofs.BackendStages.Metadata.Ffi249
import InitECandidate.Proofs.BackendStages.Metadata.Shmem249
import InitECandidate.Proofs.BackendStages.Metadata.Ffi250
import InitECandidate.Proofs.BackendStages.Metadata.Shmem250
import InitECandidate.Proofs.BackendStages.Metadata.Ffi251
import InitECandidate.Proofs.BackendStages.Metadata.Shmem251
import InitECandidate.Proofs.BackendStages.Metadata.Ffi252
import InitECandidate.Proofs.BackendStages.Metadata.Shmem252
import InitECandidate.Proofs.BackendStages.Metadata.Ffi253
import InitECandidate.Proofs.BackendStages.Metadata.Shmem253
import InitECandidate.Proofs.BackendStages.Metadata.Ffi254
import InitECandidate.Proofs.BackendStages.Metadata.Shmem254
import InitECandidate.Proofs.BackendStages.Metadata.Ffi255
import InitECandidate.Proofs.BackendStages.Metadata.Shmem255
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk240_255 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis255) : LabToTarget.findFfiNames ([Filtered240, Filtered241, Filtered242, Filtered243, Filtered244, Filtered245, Filtered246, Filtered247, Filtered248, Filtered249, Filtered250, Filtered251, Filtered252, Filtered253, Filtered254, Filtered255] ++ rest) = suffixFfis240 := by
  exact ffiStep240 _ ( ffiStep241 _ ( ffiStep242 _ ( ffiStep243 _ ( ffiStep244 _ ( ffiStep245 _ ( ffiStep246 _ ( ffiStep247 _ ( ffiStep248 _ ( ffiStep249 _ ( ffiStep250 _ ( ffiStep251 _ ( ffiStep252 _ ( ffiStep253 _ ( ffiStep254 _ ( ffiStep255 _ (h))))))))))))))))
theorem shmemChunk240_255 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded240, Padded241, Padded242, Padded243, Padded244, Padded245, Padded246, Padded247, Padded248, Padded249, Padded250, Padded251, Padded252, Padded253, Padded254, Padded255] ++ rest) 176064 beforeFfis240 beforeShmem240 = LabToTarget.getShmemInfo rest 189488 afterFfis255 afterShmem255 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 176064 beforeFfis240 beforeShmem240 = _
  rw [shmemStep240]
  change LabToTarget.getShmemInfo _ 176916 beforeFfis241 beforeShmem241 = _
  rw [shmemStep241]
  change LabToTarget.getShmemInfo _ 177376 beforeFfis242 beforeShmem242 = _
  rw [shmemStep242]
  change LabToTarget.getShmemInfo _ 178192 beforeFfis243 beforeShmem243 = _
  rw [shmemStep243]
  change LabToTarget.getShmemInfo _ 178840 beforeFfis244 beforeShmem244 = _
  rw [shmemStep244]
  change LabToTarget.getShmemInfo _ 179124 beforeFfis245 beforeShmem245 = _
  rw [shmemStep245]
  change LabToTarget.getShmemInfo _ 179136 beforeFfis246 beforeShmem246 = _
  rw [shmemStep246]
  change LabToTarget.getShmemInfo _ 179176 beforeFfis247 beforeShmem247 = _
  rw [shmemStep247]
  change LabToTarget.getShmemInfo _ 179736 beforeFfis248 beforeShmem248 = _
  rw [shmemStep248]
  change LabToTarget.getShmemInfo _ 182412 beforeFfis249 beforeShmem249 = _
  rw [shmemStep249]
  change LabToTarget.getShmemInfo _ 182668 beforeFfis250 beforeShmem250 = _
  rw [shmemStep250]
  change LabToTarget.getShmemInfo _ 183328 beforeFfis251 beforeShmem251 = _
  rw [shmemStep251]
  change LabToTarget.getShmemInfo _ 184644 beforeFfis252 beforeShmem252 = _
  rw [shmemStep252]
  change LabToTarget.getShmemInfo _ 185060 beforeFfis253 beforeShmem253 = _
  rw [shmemStep253]
  change LabToTarget.getShmemInfo _ 187360 beforeFfis254 beforeShmem254 = _
  rw [shmemStep254]
  change LabToTarget.getShmemInfo _ 189000 beforeFfis255 beforeShmem255 = _
  rw [shmemStep255]
theorem symbolsChunk240_255 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 176064 ([Padded240, Padded241, Padded242, Padded243, Padded244, Padded245, Padded246, Padded247, Padded248, Padded249, Padded250, Padded251, Padded252, Padded253, Padded254, Padded255] ++ rest) = [(240, 176064, 852), (241, 176916, 460), (242, 177376, 816), (243, 178192, 648), (244, 178840, 284), (245, 179124, 12), (246, 179136, 40), (247, 179176, 560), (248, 179736, 2676), (249, 182412, 256), (250, 182668, 660), (251, 183328, 1316), (252, 184644, 416), (253, 185060, 2300), (254, 187360, 1640), (255, 189000, 488)] ++ LabToTarget.getSymbols 189488 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength240, symbolLength241, symbolLength242, symbolLength243, symbolLength244, symbolLength245, symbolLength246, symbolLength247, symbolLength248, symbolLength249, symbolLength250, symbolLength251, symbolLength252, symbolLength253, symbolLength254, symbolLength255]
  rfl
#print axioms ffiChunk240_255
#print axioms shmemChunk240_255
#print axioms symbolsChunk240_255
end InitECandidate.Proofs.BackendStages.Metadata
