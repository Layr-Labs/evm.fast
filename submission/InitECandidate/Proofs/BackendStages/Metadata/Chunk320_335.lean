import InitECandidate.Proofs.BackendStages.Metadata.Ffi320
import InitECandidate.Proofs.BackendStages.Metadata.Shmem320
import InitECandidate.Proofs.BackendStages.Metadata.Ffi321
import InitECandidate.Proofs.BackendStages.Metadata.Shmem321
import InitECandidate.Proofs.BackendStages.Metadata.Ffi322
import InitECandidate.Proofs.BackendStages.Metadata.Shmem322
import InitECandidate.Proofs.BackendStages.Metadata.Ffi323
import InitECandidate.Proofs.BackendStages.Metadata.Shmem323
import InitECandidate.Proofs.BackendStages.Metadata.Ffi324
import InitECandidate.Proofs.BackendStages.Metadata.Shmem324
import InitECandidate.Proofs.BackendStages.Metadata.Ffi325
import InitECandidate.Proofs.BackendStages.Metadata.Shmem325
import InitECandidate.Proofs.BackendStages.Metadata.Ffi326
import InitECandidate.Proofs.BackendStages.Metadata.Shmem326
import InitECandidate.Proofs.BackendStages.Metadata.Ffi327
import InitECandidate.Proofs.BackendStages.Metadata.Shmem327
import InitECandidate.Proofs.BackendStages.Metadata.Ffi328
import InitECandidate.Proofs.BackendStages.Metadata.Shmem328
import InitECandidate.Proofs.BackendStages.Metadata.Ffi329
import InitECandidate.Proofs.BackendStages.Metadata.Shmem329
import InitECandidate.Proofs.BackendStages.Metadata.Ffi330
import InitECandidate.Proofs.BackendStages.Metadata.Shmem330
import InitECandidate.Proofs.BackendStages.Metadata.Ffi331
import InitECandidate.Proofs.BackendStages.Metadata.Shmem331
import InitECandidate.Proofs.BackendStages.Metadata.Ffi332
import InitECandidate.Proofs.BackendStages.Metadata.Shmem332
import InitECandidate.Proofs.BackendStages.Metadata.Ffi333
import InitECandidate.Proofs.BackendStages.Metadata.Shmem333
import InitECandidate.Proofs.BackendStages.Metadata.Ffi334
import InitECandidate.Proofs.BackendStages.Metadata.Shmem334
import InitECandidate.Proofs.BackendStages.Metadata.Ffi335
import InitECandidate.Proofs.BackendStages.Metadata.Shmem335
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.Metadata

theorem ffiChunk320_335 (rest : LabSem.LabProgHOL 64) (h : LabToTarget.findFfiNames rest = nextFfis335) : LabToTarget.findFfiNames ([Filtered320, Filtered321, Filtered322, Filtered323, Filtered324, Filtered325, Filtered326, Filtered327, Filtered328, Filtered329, Filtered330, Filtered331, Filtered332, Filtered333, Filtered334, Filtered335] ++ rest) = suffixFfis320 := by
  exact ffiStep320 _ ( ffiStep321 _ ( ffiStep322 _ ( ffiStep323 _ ( ffiStep324 _ ( ffiStep325 _ ( ffiStep326 _ ( ffiStep327 _ ( ffiStep328 _ ( ffiStep329 _ ( ffiStep330 _ ( ffiStep331 _ ( ffiStep332 _ ( ffiStep333 _ ( ffiStep334 _ ( ffiStep335 _ (h))))))))))))))))
theorem shmemChunk320_335 (rest : LabSem.LabProgHOL 64) : LabToTarget.getShmemInfo ([Padded320, Padded321, Padded322, Padded323, Padded324, Padded325, Padded326, Padded327, Padded328, Padded329, Padded330, Padded331, Padded332, Padded333, Padded334, Padded335] ++ rest) 252648 beforeFfis320 beforeShmem320 = LabToTarget.getShmemInfo rest 266148 afterFfis335 afterShmem335 := by
  simp only [List.cons_append, List.nil_append]
  change LabToTarget.getShmemInfo _ 252648 beforeFfis320 beforeShmem320 = _
  rw [shmemStep320]
  change LabToTarget.getShmemInfo _ 253156 beforeFfis321 beforeShmem321 = _
  rw [shmemStep321]
  change LabToTarget.getShmemInfo _ 253888 beforeFfis322 beforeShmem322 = _
  rw [shmemStep322]
  change LabToTarget.getShmemInfo _ 256028 beforeFfis323 beforeShmem323 = _
  rw [shmemStep323]
  change LabToTarget.getShmemInfo _ 256096 beforeFfis324 beforeShmem324 = _
  rw [shmemStep324]
  change LabToTarget.getShmemInfo _ 257808 beforeFfis325 beforeShmem325 = _
  rw [shmemStep325]
  change LabToTarget.getShmemInfo _ 258136 beforeFfis326 beforeShmem326 = _
  rw [shmemStep326]
  change LabToTarget.getShmemInfo _ 258164 beforeFfis327 beforeShmem327 = _
  rw [shmemStep327]
  change LabToTarget.getShmemInfo _ 258404 beforeFfis328 beforeShmem328 = _
  rw [shmemStep328]
  change LabToTarget.getShmemInfo _ 258856 beforeFfis329 beforeShmem329 = _
  rw [shmemStep329]
  change LabToTarget.getShmemInfo _ 259616 beforeFfis330 beforeShmem330 = _
  rw [shmemStep330]
  change LabToTarget.getShmemInfo _ 260072 beforeFfis331 beforeShmem331 = _
  rw [shmemStep331]
  change LabToTarget.getShmemInfo _ 260500 beforeFfis332 beforeShmem332 = _
  rw [shmemStep332]
  change LabToTarget.getShmemInfo _ 261456 beforeFfis333 beforeShmem333 = _
  rw [shmemStep333]
  change LabToTarget.getShmemInfo _ 264484 beforeFfis334 beforeShmem334 = _
  rw [shmemStep334]
  change LabToTarget.getShmemInfo _ 265876 beforeFfis335 beforeShmem335 = _
  rw [shmemStep335]
theorem symbolsChunk320_335 (rest : LabSem.LabProgHOL 64) : LabToTarget.getSymbols 252648 ([Padded320, Padded321, Padded322, Padded323, Padded324, Padded325, Padded326, Padded327, Padded328, Padded329, Padded330, Padded331, Padded332, Padded333, Padded334, Padded335] ++ rest) = [(320, 252648, 508), (321, 253156, 732), (322, 253888, 2140), (323, 256028, 68), (324, 256096, 1712), (325, 257808, 328), (326, 258136, 28), (327, 258164, 240), (328, 258404, 452), (329, 258856, 760), (330, 259616, 456), (331, 260072, 428), (332, 260500, 956), (333, 261456, 3028), (334, 264484, 1392), (335, 265876, 272)] ++ LabToTarget.getSymbols 266148 rest := by
  simp only [List.cons_append, List.nil_append, LabToTarget.getSymbols, symbolLength320, symbolLength321, symbolLength322, symbolLength323, symbolLength324, symbolLength325, symbolLength326, symbolLength327, symbolLength328, symbolLength329, symbolLength330, symbolLength331, symbolLength332, symbolLength333, symbolLength334, symbolLength335]
  rfl
#print axioms ffiChunk320_335
#print axioms shmemChunk320_335
#print axioms symbolsChunk320_335
end InitECandidate.Proofs.BackendStages.Metadata
