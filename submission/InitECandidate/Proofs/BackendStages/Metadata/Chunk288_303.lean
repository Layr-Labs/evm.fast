import InitECandidate.Proofs.BackendStages.Metadata.Ffi288
import InitECandidate.Proofs.BackendStages.Metadata.Shmem288
import InitECandidate.Proofs.BackendStages.Metadata.Ffi289
import InitECandidate.Proofs.BackendStages.Metadata.Shmem289
import InitECandidate.Proofs.BackendStages.Metadata.Ffi290
import InitECandidate.Proofs.BackendStages.Metadata.Shmem290
import InitECandidate.Proofs.BackendStages.Metadata.Ffi291
import InitECandidate.Proofs.BackendStages.Metadata.Shmem291
import InitECandidate.Proofs.BackendStages.Metadata.Ffi292
import InitECandidate.Proofs.BackendStages.Metadata.Shmem292
import InitECandidate.Proofs.BackendStages.Metadata.Ffi293
import InitECandidate.Proofs.BackendStages.Metadata.Shmem293
import InitECandidate.Proofs.BackendStages.Metadata.Ffi294
import InitECandidate.Proofs.BackendStages.Metadata.Shmem294
import InitECandidate.Proofs.BackendStages.Metadata.Ffi295
import InitECandidate.Proofs.BackendStages.Metadata.Shmem295
import InitECandidate.Proofs.BackendStages.Metadata.Ffi296
import InitECandidate.Proofs.BackendStages.Metadata.Shmem296
import InitECandidate.Proofs.BackendStages.Metadata.Ffi297
import InitECandidate.Proofs.BackendStages.Metadata.Shmem297
import InitECandidate.Proofs.BackendStages.Metadata.Ffi298
import InitECandidate.Proofs.BackendStages.Metadata.Shmem298
import InitECandidate.Proofs.BackendStages.Metadata.Ffi299
import InitECandidate.Proofs.BackendStages.Metadata.Shmem299
import InitECandidate.Proofs.BackendStages.Metadata.Ffi300
import InitECandidate.Proofs.BackendStages.Metadata.Shmem300
import InitECandidate.Proofs.BackendStages.Metadata.Ffi301
import InitECandidate.Proofs.BackendStages.Metadata.Shmem301
import InitECandidate.Proofs.BackendStages.Metadata.Ffi302
import InitECandidate.Proofs.BackendStages.Metadata.Shmem302
import InitECandidate.Proofs.BackendStages.Metadata.Ffi303
import InitECandidate.Proofs.BackendStages.Metadata.Shmem303
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk288_303 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis303) : LabToTarget.findFfiNames ([Filtered288, Filtered289, Filtered290, Filtered291, Filtered292, Filtered293, Filtered294, Filtered295, Filtered296, Filtered297, Filtered298, Filtered299, Filtered300, Filtered301, Filtered302, Filtered303] ++ rest) = suffixFfis288 := by
  exact ffiStep288 _ ( ffiStep289 _ ( ffiStep290 _ ( ffiStep291 _ ( ffiStep292 _ ( ffiStep293 _ ( ffiStep294 _ ( ffiStep295 _ ( ffiStep296 _ ( ffiStep297 _ ( ffiStep298 _ ( ffiStep299 _ ( ffiStep300 _ ( ffiStep301 _ ( ffiStep302 _ ( ffiStep303 _ (h))))))))))))))))
theorem shmemChunk288_303 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded288, Padded289, Padded290, Padded291, Padded292, Padded293, Padded294, Padded295, Padded296, Padded297, Padded298, Padded299, Padded300, Padded301, Padded302, Padded303] ++ rest) 230160 beforeFfis288 beforeShmem288 = LabToTarget.getShmemInfo rest 239620 afterFfis303 afterShmem303 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 230160 beforeFfis288 beforeShmem288 = _
  rw [shmemStep288]
  change LabToTarget.getShmemInfo _ 230384 beforeFfis289 beforeShmem289 = _
  rw [shmemStep289]
  change LabToTarget.getShmemInfo _ 230964 beforeFfis290 beforeShmem290 = _
  rw [shmemStep290]
  change LabToTarget.getShmemInfo _ 231088 beforeFfis291 beforeShmem291 = _
  rw [shmemStep291]
  change LabToTarget.getShmemInfo _ 231344 beforeFfis292 beforeShmem292 = _
  rw [shmemStep292]
  change LabToTarget.getShmemInfo _ 231788 beforeFfis293 beforeShmem293 = _
  rw [shmemStep293]
  change LabToTarget.getShmemInfo _ 232432 beforeFfis294 beforeShmem294 = _
  rw [shmemStep294]
  change LabToTarget.getShmemInfo _ 232616 beforeFfis295 beforeShmem295 = _
  rw [shmemStep295]
  change LabToTarget.getShmemInfo _ 232820 beforeFfis296 beforeShmem296 = _
  rw [shmemStep296]
  change LabToTarget.getShmemInfo _ 233096 beforeFfis297 beforeShmem297 = _
  rw [shmemStep297]
  change LabToTarget.getShmemInfo _ 233352 beforeFfis298 beforeShmem298 = _
  rw [shmemStep298]
  change LabToTarget.getShmemInfo _ 233628 beforeFfis299 beforeShmem299 = _
  rw [shmemStep299]
  change LabToTarget.getShmemInfo _ 233672 beforeFfis300 beforeShmem300 = _
  rw [shmemStep300]
  change LabToTarget.getShmemInfo _ 234612 beforeFfis301 beforeShmem301 = _
  rw [shmemStep301]
  change LabToTarget.getShmemInfo _ 236964 beforeFfis302 beforeShmem302 = _
  rw [shmemStep302]
  change LabToTarget.getShmemInfo _ 239328 beforeFfis303 beforeShmem303 = _
  rw [shmemStep303]
theorem symbolsChunk288_303 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 230160 ([Padded288, Padded289, Padded290, Padded291, Padded292, Padded293, Padded294, Padded295, Padded296, Padded297, Padded298, Padded299, Padded300, Padded301, Padded302, Padded303] ++ rest) = [(288, 230160, 224), (289, 230384, 580), (290, 230964, 124), (291, 231088, 256), (292, 231344, 444), (293, 231788, 644), (294, 232432, 184), (295, 232616, 204), (296, 232820, 276), (297, 233096, 256), (298, 233352, 276), (299, 233628, 44), (300, 233672, 940), (301, 234612, 2352), (302, 236964, 2364), (303, 239328, 292)] ++ LabToTarget.getSymbols 239620 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength288, symbolLength289, symbolLength290, symbolLength291, symbolLength292, symbolLength293, symbolLength294, symbolLength295, symbolLength296, symbolLength297, symbolLength298, symbolLength299, symbolLength300, symbolLength301, symbolLength302, symbolLength303]
  rfl
#print axioms ffiChunk288_303
#print axioms shmemChunk288_303
#print axioms symbolsChunk288_303
end InitECandidate.Proofs.BackendStages.Metadata
