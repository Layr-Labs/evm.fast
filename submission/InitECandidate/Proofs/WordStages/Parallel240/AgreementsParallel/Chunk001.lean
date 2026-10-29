import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel240.Data2
import InitECandidate.Proofs.WordStages.Parallel240.Data3
import InitECandidate.Proofs.DeadStages240.Parallel.Data.Chunk001
import InitECandidate.Proofs.WordStages.Parallel240.AgreementsParallel.Chunk000

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel240.AgreementsParallel
theorem input256_eq : InitECandidate.Proofs.DeadStages240.Parallel.input256 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4469 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input256_def]
  kernel_rfl

theorem output256_eq : InitECandidate.Proofs.DeadStages240.Parallel.output256 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3937 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output256_def]
  kernel_rfl

theorem input257_eq : InitECandidate.Proofs.DeadStages240.Parallel.input257 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4468 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input257_def]
  kernel_rfl

theorem output257_eq : InitECandidate.Proofs.DeadStages240.Parallel.output257 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3936 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output257_def]
  kernel_rfl

theorem input258_eq : InitECandidate.Proofs.DeadStages240.Parallel.input258 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4470 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input258_def]
  simp only [input257_eq, input256_eq]
  kernel_rfl

theorem output258_eq : InitECandidate.Proofs.DeadStages240.Parallel.output258 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3938 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output258_def]
  simp only [output257_eq, output256_eq]
  kernel_rfl

theorem input259_eq : InitECandidate.Proofs.DeadStages240.Parallel.input259 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4466 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input259_def]
  kernel_rfl

theorem output259_eq : InitECandidate.Proofs.DeadStages240.Parallel.output259 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3934 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output259_def]
  kernel_rfl

theorem input260_eq : InitECandidate.Proofs.DeadStages240.Parallel.input260 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4464 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input260_def]
  kernel_rfl

theorem output260_eq : InitECandidate.Proofs.DeadStages240.Parallel.output260 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output260_def]
  kernel_rfl

theorem input261_eq : InitECandidate.Proofs.DeadStages240.Parallel.input261 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4461 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input261_def]
  kernel_rfl

theorem output261_eq : InitECandidate.Proofs.DeadStages240.Parallel.output261 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3931 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output261_def]
  kernel_rfl

theorem input262_eq : InitECandidate.Proofs.DeadStages240.Parallel.input262 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4459 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input262_def]
  kernel_rfl

theorem output262_eq : InitECandidate.Proofs.DeadStages240.Parallel.output262 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3929 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output262_def]
  kernel_rfl

theorem input263_eq : InitECandidate.Proofs.DeadStages240.Parallel.input263 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4457 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input263_def]
  kernel_rfl

theorem output263_eq : InitECandidate.Proofs.DeadStages240.Parallel.output263 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3927 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output263_def]
  kernel_rfl

theorem input264_eq : InitECandidate.Proofs.DeadStages240.Parallel.input264 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4455 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input264_def]
  kernel_rfl

theorem output264_eq : InitECandidate.Proofs.DeadStages240.Parallel.output264 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3925 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output264_def]
  kernel_rfl

theorem input265_eq : InitECandidate.Proofs.DeadStages240.Parallel.input265 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4454 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input265_def]
  kernel_rfl

theorem output265_eq : InitECandidate.Proofs.DeadStages240.Parallel.output265 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3924 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output265_def]
  kernel_rfl

theorem input266_eq : InitECandidate.Proofs.DeadStages240.Parallel.input266 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4456 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input266_def]
  simp only [input265_eq, input264_eq]
  kernel_rfl

theorem output266_eq : InitECandidate.Proofs.DeadStages240.Parallel.output266 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3926 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output266_def]
  simp only [output265_eq, output264_eq]
  kernel_rfl

theorem input267_eq : InitECandidate.Proofs.DeadStages240.Parallel.input267 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4458 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input267_def]
  simp only [input266_eq, input263_eq]
  kernel_rfl

theorem output267_eq : InitECandidate.Proofs.DeadStages240.Parallel.output267 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3928 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output267_def]
  simp only [output266_eq, output263_eq]
  kernel_rfl

theorem input268_eq : InitECandidate.Proofs.DeadStages240.Parallel.input268 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4460 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input268_def]
  simp only [input267_eq, input262_eq]
  kernel_rfl

theorem output268_eq : InitECandidate.Proofs.DeadStages240.Parallel.output268 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3930 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output268_def]
  simp only [output267_eq, output262_eq]
  kernel_rfl

theorem input269_eq : InitECandidate.Proofs.DeadStages240.Parallel.input269 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4462 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input269_def]
  simp only [input268_eq, input261_eq]
  kernel_rfl

theorem output269_eq : InitECandidate.Proofs.DeadStages240.Parallel.output269 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3932 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output269_def]
  simp only [output268_eq, output261_eq]
  kernel_rfl

theorem input270_eq : InitECandidate.Proofs.DeadStages240.Parallel.input270 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4451 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input270_def]
  kernel_rfl

theorem output270_eq : InitECandidate.Proofs.DeadStages240.Parallel.output270 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3921 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output270_def]
  kernel_rfl

theorem input271_eq : InitECandidate.Proofs.DeadStages240.Parallel.input271 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4450 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input271_def]
  kernel_rfl

theorem output271_eq : InitECandidate.Proofs.DeadStages240.Parallel.output271 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3920 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output271_def]
  kernel_rfl

theorem input272_eq : InitECandidate.Proofs.DeadStages240.Parallel.input272 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4452 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input272_def]
  simp only [input271_eq, input270_eq]
  kernel_rfl

theorem output272_eq : InitECandidate.Proofs.DeadStages240.Parallel.output272 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3922 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output272_def]
  simp only [output271_eq, output270_eq]
  kernel_rfl

theorem input273_eq : InitECandidate.Proofs.DeadStages240.Parallel.input273 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4448 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input273_def]
  kernel_rfl

theorem output273_eq : InitECandidate.Proofs.DeadStages240.Parallel.output273 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3918 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output273_def]
  kernel_rfl

theorem input274_eq : InitECandidate.Proofs.DeadStages240.Parallel.input274 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4446 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input274_def]
  kernel_rfl

theorem output274_eq : InitECandidate.Proofs.DeadStages240.Parallel.output274 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output274_def]
  kernel_rfl

theorem input275_eq : InitECandidate.Proofs.DeadStages240.Parallel.input275 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4443 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input275_def]
  kernel_rfl

theorem output275_eq : InitECandidate.Proofs.DeadStages240.Parallel.output275 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3915 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output275_def]
  kernel_rfl

theorem input276_eq : InitECandidate.Proofs.DeadStages240.Parallel.input276 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4441 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input276_def]
  kernel_rfl

theorem output276_eq : InitECandidate.Proofs.DeadStages240.Parallel.output276 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3913 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output276_def]
  kernel_rfl

theorem input277_eq : InitECandidate.Proofs.DeadStages240.Parallel.input277 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4439 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input277_def]
  kernel_rfl

theorem output277_eq : InitECandidate.Proofs.DeadStages240.Parallel.output277 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3911 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output277_def]
  kernel_rfl

theorem input278_eq : InitECandidate.Proofs.DeadStages240.Parallel.input278 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4437 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input278_def]
  kernel_rfl

theorem output278_eq : InitECandidate.Proofs.DeadStages240.Parallel.output278 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3909 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output278_def]
  kernel_rfl

theorem input279_eq : InitECandidate.Proofs.DeadStages240.Parallel.input279 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4436 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input279_def]
  kernel_rfl

theorem output279_eq : InitECandidate.Proofs.DeadStages240.Parallel.output279 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3908 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output279_def]
  kernel_rfl

theorem input280_eq : InitECandidate.Proofs.DeadStages240.Parallel.input280 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4438 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input280_def]
  simp only [input279_eq, input278_eq]
  kernel_rfl

theorem output280_eq : InitECandidate.Proofs.DeadStages240.Parallel.output280 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3910 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output280_def]
  simp only [output279_eq, output278_eq]
  kernel_rfl

theorem input281_eq : InitECandidate.Proofs.DeadStages240.Parallel.input281 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4440 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input281_def]
  simp only [input280_eq, input277_eq]
  kernel_rfl

theorem output281_eq : InitECandidate.Proofs.DeadStages240.Parallel.output281 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3912 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output281_def]
  simp only [output280_eq, output277_eq]
  kernel_rfl

theorem input282_eq : InitECandidate.Proofs.DeadStages240.Parallel.input282 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4442 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input282_def]
  simp only [input281_eq, input276_eq]
  kernel_rfl

theorem output282_eq : InitECandidate.Proofs.DeadStages240.Parallel.output282 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3914 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output282_def]
  simp only [output281_eq, output276_eq]
  kernel_rfl

theorem input283_eq : InitECandidate.Proofs.DeadStages240.Parallel.input283 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4444 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input283_def]
  simp only [input282_eq, input275_eq]
  kernel_rfl

theorem output283_eq : InitECandidate.Proofs.DeadStages240.Parallel.output283 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3916 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output283_def]
  simp only [output282_eq, output275_eq]
  kernel_rfl

theorem input284_eq : InitECandidate.Proofs.DeadStages240.Parallel.input284 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4433 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input284_def]
  kernel_rfl

theorem output284_eq : InitECandidate.Proofs.DeadStages240.Parallel.output284 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3905 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output284_def]
  kernel_rfl

theorem input285_eq : InitECandidate.Proofs.DeadStages240.Parallel.input285 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4432 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input285_def]
  kernel_rfl

theorem output285_eq : InitECandidate.Proofs.DeadStages240.Parallel.output285 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3904 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output285_def]
  kernel_rfl

theorem input286_eq : InitECandidate.Proofs.DeadStages240.Parallel.input286 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4434 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input286_def]
  simp only [input285_eq, input284_eq]
  kernel_rfl

theorem output286_eq : InitECandidate.Proofs.DeadStages240.Parallel.output286 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3906 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output286_def]
  simp only [output285_eq, output284_eq]
  kernel_rfl

theorem input287_eq : InitECandidate.Proofs.DeadStages240.Parallel.input287 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4430 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input287_def]
  kernel_rfl

theorem output287_eq : InitECandidate.Proofs.DeadStages240.Parallel.output287 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3902 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output287_def]
  kernel_rfl

theorem input288_eq : InitECandidate.Proofs.DeadStages240.Parallel.input288 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4428 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input288_def]
  kernel_rfl

theorem output288_eq : InitECandidate.Proofs.DeadStages240.Parallel.output288 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output288_def]
  kernel_rfl

theorem input289_eq : InitECandidate.Proofs.DeadStages240.Parallel.input289 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4425 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input289_def]
  kernel_rfl

theorem output289_eq : InitECandidate.Proofs.DeadStages240.Parallel.output289 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3899 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output289_def]
  kernel_rfl

theorem input290_eq : InitECandidate.Proofs.DeadStages240.Parallel.input290 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4423 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input290_def]
  kernel_rfl

theorem output290_eq : InitECandidate.Proofs.DeadStages240.Parallel.output290 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3897 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output290_def]
  kernel_rfl

theorem input291_eq : InitECandidate.Proofs.DeadStages240.Parallel.input291 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4421 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input291_def]
  kernel_rfl

theorem output291_eq : InitECandidate.Proofs.DeadStages240.Parallel.output291 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3895 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output291_def]
  kernel_rfl

theorem input292_eq : InitECandidate.Proofs.DeadStages240.Parallel.input292 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4419 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input292_def]
  kernel_rfl

theorem output292_eq : InitECandidate.Proofs.DeadStages240.Parallel.output292 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3893 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output292_def]
  kernel_rfl

theorem input293_eq : InitECandidate.Proofs.DeadStages240.Parallel.input293 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4418 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input293_def]
  kernel_rfl

theorem output293_eq : InitECandidate.Proofs.DeadStages240.Parallel.output293 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3892 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output293_def]
  kernel_rfl

theorem input294_eq : InitECandidate.Proofs.DeadStages240.Parallel.input294 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4420 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input294_def]
  simp only [input293_eq, input292_eq]
  kernel_rfl

theorem output294_eq : InitECandidate.Proofs.DeadStages240.Parallel.output294 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3894 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output294_def]
  simp only [output293_eq, output292_eq]
  kernel_rfl

theorem input295_eq : InitECandidate.Proofs.DeadStages240.Parallel.input295 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4422 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input295_def]
  simp only [input294_eq, input291_eq]
  kernel_rfl

theorem output295_eq : InitECandidate.Proofs.DeadStages240.Parallel.output295 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3896 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output295_def]
  simp only [output294_eq, output291_eq]
  kernel_rfl

theorem input296_eq : InitECandidate.Proofs.DeadStages240.Parallel.input296 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4424 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input296_def]
  simp only [input295_eq, input290_eq]
  kernel_rfl

theorem output296_eq : InitECandidate.Proofs.DeadStages240.Parallel.output296 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3898 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output296_def]
  simp only [output295_eq, output290_eq]
  kernel_rfl

theorem input297_eq : InitECandidate.Proofs.DeadStages240.Parallel.input297 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4426 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input297_def]
  simp only [input296_eq, input289_eq]
  kernel_rfl

theorem output297_eq : InitECandidate.Proofs.DeadStages240.Parallel.output297 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3900 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output297_def]
  simp only [output296_eq, output289_eq]
  kernel_rfl

theorem input298_eq : InitECandidate.Proofs.DeadStages240.Parallel.input298 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4415 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input298_def]
  kernel_rfl

theorem output298_eq : InitECandidate.Proofs.DeadStages240.Parallel.output298 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3889 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output298_def]
  kernel_rfl

theorem input299_eq : InitECandidate.Proofs.DeadStages240.Parallel.input299 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4414 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input299_def]
  kernel_rfl

theorem output299_eq : InitECandidate.Proofs.DeadStages240.Parallel.output299 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3888 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output299_def]
  kernel_rfl

theorem input300_eq : InitECandidate.Proofs.DeadStages240.Parallel.input300 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4416 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input300_def]
  simp only [input299_eq, input298_eq]
  kernel_rfl

theorem output300_eq : InitECandidate.Proofs.DeadStages240.Parallel.output300 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3890 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output300_def]
  simp only [output299_eq, output298_eq]
  kernel_rfl

theorem input301_eq : InitECandidate.Proofs.DeadStages240.Parallel.input301 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4412 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input301_def]
  kernel_rfl

theorem output301_eq : InitECandidate.Proofs.DeadStages240.Parallel.output301 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3886 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output301_def]
  kernel_rfl

theorem input302_eq : InitECandidate.Proofs.DeadStages240.Parallel.input302 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4410 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input302_def]
  kernel_rfl

theorem output302_eq : InitECandidate.Proofs.DeadStages240.Parallel.output302 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output302_def]
  kernel_rfl

theorem input303_eq : InitECandidate.Proofs.DeadStages240.Parallel.input303 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4407 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input303_def]
  kernel_rfl

theorem output303_eq : InitECandidate.Proofs.DeadStages240.Parallel.output303 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3883 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output303_def]
  kernel_rfl

theorem input304_eq : InitECandidate.Proofs.DeadStages240.Parallel.input304 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4405 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input304_def]
  kernel_rfl

theorem output304_eq : InitECandidate.Proofs.DeadStages240.Parallel.output304 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3881 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output304_def]
  kernel_rfl

theorem input305_eq : InitECandidate.Proofs.DeadStages240.Parallel.input305 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4403 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input305_def]
  kernel_rfl

theorem output305_eq : InitECandidate.Proofs.DeadStages240.Parallel.output305 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3879 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output305_def]
  kernel_rfl

theorem input306_eq : InitECandidate.Proofs.DeadStages240.Parallel.input306 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4401 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input306_def]
  kernel_rfl

theorem output306_eq : InitECandidate.Proofs.DeadStages240.Parallel.output306 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3877 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output306_def]
  kernel_rfl

theorem input307_eq : InitECandidate.Proofs.DeadStages240.Parallel.input307 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4400 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input307_def]
  kernel_rfl

theorem output307_eq : InitECandidate.Proofs.DeadStages240.Parallel.output307 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3876 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output307_def]
  kernel_rfl

theorem input308_eq : InitECandidate.Proofs.DeadStages240.Parallel.input308 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4402 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input308_def]
  simp only [input307_eq, input306_eq]
  kernel_rfl

theorem output308_eq : InitECandidate.Proofs.DeadStages240.Parallel.output308 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3878 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output308_def]
  simp only [output307_eq, output306_eq]
  kernel_rfl

theorem input309_eq : InitECandidate.Proofs.DeadStages240.Parallel.input309 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4404 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input309_def]
  simp only [input308_eq, input305_eq]
  kernel_rfl

theorem output309_eq : InitECandidate.Proofs.DeadStages240.Parallel.output309 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3880 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output309_def]
  simp only [output308_eq, output305_eq]
  kernel_rfl

theorem input310_eq : InitECandidate.Proofs.DeadStages240.Parallel.input310 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4406 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input310_def]
  simp only [input309_eq, input304_eq]
  kernel_rfl

theorem output310_eq : InitECandidate.Proofs.DeadStages240.Parallel.output310 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3882 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output310_def]
  simp only [output309_eq, output304_eq]
  kernel_rfl

theorem input311_eq : InitECandidate.Proofs.DeadStages240.Parallel.input311 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4408 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input311_def]
  simp only [input310_eq, input303_eq]
  kernel_rfl

theorem output311_eq : InitECandidate.Proofs.DeadStages240.Parallel.output311 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3884 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output311_def]
  simp only [output310_eq, output303_eq]
  kernel_rfl

theorem input312_eq : InitECandidate.Proofs.DeadStages240.Parallel.input312 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4397 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input312_def]
  kernel_rfl

theorem output312_eq : InitECandidate.Proofs.DeadStages240.Parallel.output312 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3873 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output312_def]
  kernel_rfl

theorem input313_eq : InitECandidate.Proofs.DeadStages240.Parallel.input313 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4396 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input313_def]
  kernel_rfl

theorem output313_eq : InitECandidate.Proofs.DeadStages240.Parallel.output313 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3872 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output313_def]
  kernel_rfl

theorem input314_eq : InitECandidate.Proofs.DeadStages240.Parallel.input314 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4398 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input314_def]
  simp only [input313_eq, input312_eq]
  kernel_rfl

theorem output314_eq : InitECandidate.Proofs.DeadStages240.Parallel.output314 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3874 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output314_def]
  simp only [output313_eq, output312_eq]
  kernel_rfl

theorem input315_eq : InitECandidate.Proofs.DeadStages240.Parallel.input315 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4394 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input315_def]
  kernel_rfl

theorem output315_eq : InitECandidate.Proofs.DeadStages240.Parallel.output315 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3870 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output315_def]
  kernel_rfl

theorem input316_eq : InitECandidate.Proofs.DeadStages240.Parallel.input316 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4392 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input316_def]
  kernel_rfl

theorem output316_eq : InitECandidate.Proofs.DeadStages240.Parallel.output316 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output316_def]
  kernel_rfl

theorem input317_eq : InitECandidate.Proofs.DeadStages240.Parallel.input317 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4389 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input317_def]
  kernel_rfl

theorem output317_eq : InitECandidate.Proofs.DeadStages240.Parallel.output317 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3867 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output317_def]
  kernel_rfl

theorem input318_eq : InitECandidate.Proofs.DeadStages240.Parallel.input318 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4387 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input318_def]
  kernel_rfl

theorem output318_eq : InitECandidate.Proofs.DeadStages240.Parallel.output318 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3865 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output318_def]
  kernel_rfl

theorem input319_eq : InitECandidate.Proofs.DeadStages240.Parallel.input319 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4385 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input319_def]
  kernel_rfl

theorem output319_eq : InitECandidate.Proofs.DeadStages240.Parallel.output319 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3863 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output319_def]
  kernel_rfl

theorem input320_eq : InitECandidate.Proofs.DeadStages240.Parallel.input320 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4383 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input320_def]
  kernel_rfl

theorem output320_eq : InitECandidate.Proofs.DeadStages240.Parallel.output320 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3861 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output320_def]
  kernel_rfl

theorem input321_eq : InitECandidate.Proofs.DeadStages240.Parallel.input321 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4382 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input321_def]
  kernel_rfl

theorem output321_eq : InitECandidate.Proofs.DeadStages240.Parallel.output321 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3860 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output321_def]
  kernel_rfl

theorem input322_eq : InitECandidate.Proofs.DeadStages240.Parallel.input322 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4384 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input322_def]
  simp only [input321_eq, input320_eq]
  kernel_rfl

theorem output322_eq : InitECandidate.Proofs.DeadStages240.Parallel.output322 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3862 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output322_def]
  simp only [output321_eq, output320_eq]
  kernel_rfl

theorem input323_eq : InitECandidate.Proofs.DeadStages240.Parallel.input323 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4386 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input323_def]
  simp only [input322_eq, input319_eq]
  kernel_rfl

theorem output323_eq : InitECandidate.Proofs.DeadStages240.Parallel.output323 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3864 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output323_def]
  simp only [output322_eq, output319_eq]
  kernel_rfl

theorem input324_eq : InitECandidate.Proofs.DeadStages240.Parallel.input324 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4388 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input324_def]
  simp only [input323_eq, input318_eq]
  kernel_rfl

theorem output324_eq : InitECandidate.Proofs.DeadStages240.Parallel.output324 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3866 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output324_def]
  simp only [output323_eq, output318_eq]
  kernel_rfl

theorem input325_eq : InitECandidate.Proofs.DeadStages240.Parallel.input325 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4390 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input325_def]
  simp only [input324_eq, input317_eq]
  kernel_rfl

theorem output325_eq : InitECandidate.Proofs.DeadStages240.Parallel.output325 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3868 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output325_def]
  simp only [output324_eq, output317_eq]
  kernel_rfl

theorem input326_eq : InitECandidate.Proofs.DeadStages240.Parallel.input326 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4379 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input326_def]
  kernel_rfl

theorem output326_eq : InitECandidate.Proofs.DeadStages240.Parallel.output326 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3857 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output326_def]
  kernel_rfl

theorem input327_eq : InitECandidate.Proofs.DeadStages240.Parallel.input327 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4378 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input327_def]
  kernel_rfl

theorem output327_eq : InitECandidate.Proofs.DeadStages240.Parallel.output327 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3856 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output327_def]
  kernel_rfl

theorem input328_eq : InitECandidate.Proofs.DeadStages240.Parallel.input328 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4380 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input328_def]
  simp only [input327_eq, input326_eq]
  kernel_rfl

theorem output328_eq : InitECandidate.Proofs.DeadStages240.Parallel.output328 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3858 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output328_def]
  simp only [output327_eq, output326_eq]
  kernel_rfl

theorem input329_eq : InitECandidate.Proofs.DeadStages240.Parallel.input329 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4376 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input329_def]
  kernel_rfl

theorem output329_eq : InitECandidate.Proofs.DeadStages240.Parallel.output329 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3854 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output329_def]
  kernel_rfl

theorem input330_eq : InitECandidate.Proofs.DeadStages240.Parallel.input330 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4374 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input330_def]
  kernel_rfl

theorem output330_eq : InitECandidate.Proofs.DeadStages240.Parallel.output330 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output330_def]
  kernel_rfl

theorem input331_eq : InitECandidate.Proofs.DeadStages240.Parallel.input331 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4371 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input331_def]
  kernel_rfl

theorem output331_eq : InitECandidate.Proofs.DeadStages240.Parallel.output331 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3851 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output331_def]
  kernel_rfl

theorem input332_eq : InitECandidate.Proofs.DeadStages240.Parallel.input332 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4369 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input332_def]
  kernel_rfl

theorem output332_eq : InitECandidate.Proofs.DeadStages240.Parallel.output332 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3849 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output332_def]
  kernel_rfl

theorem input333_eq : InitECandidate.Proofs.DeadStages240.Parallel.input333 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4367 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input333_def]
  kernel_rfl

theorem output333_eq : InitECandidate.Proofs.DeadStages240.Parallel.output333 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3847 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output333_def]
  kernel_rfl

theorem input334_eq : InitECandidate.Proofs.DeadStages240.Parallel.input334 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4365 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input334_def]
  kernel_rfl

theorem output334_eq : InitECandidate.Proofs.DeadStages240.Parallel.output334 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3845 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output334_def]
  kernel_rfl

theorem input335_eq : InitECandidate.Proofs.DeadStages240.Parallel.input335 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4364 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input335_def]
  kernel_rfl

theorem output335_eq : InitECandidate.Proofs.DeadStages240.Parallel.output335 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3844 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output335_def]
  kernel_rfl

theorem input336_eq : InitECandidate.Proofs.DeadStages240.Parallel.input336 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4366 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input336_def]
  simp only [input335_eq, input334_eq]
  kernel_rfl

theorem output336_eq : InitECandidate.Proofs.DeadStages240.Parallel.output336 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3846 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output336_def]
  simp only [output335_eq, output334_eq]
  kernel_rfl

theorem input337_eq : InitECandidate.Proofs.DeadStages240.Parallel.input337 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4368 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input337_def]
  simp only [input336_eq, input333_eq]
  kernel_rfl

theorem output337_eq : InitECandidate.Proofs.DeadStages240.Parallel.output337 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3848 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output337_def]
  simp only [output336_eq, output333_eq]
  kernel_rfl

theorem input338_eq : InitECandidate.Proofs.DeadStages240.Parallel.input338 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4370 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input338_def]
  simp only [input337_eq, input332_eq]
  kernel_rfl

theorem output338_eq : InitECandidate.Proofs.DeadStages240.Parallel.output338 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3850 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output338_def]
  simp only [output337_eq, output332_eq]
  kernel_rfl

theorem input339_eq : InitECandidate.Proofs.DeadStages240.Parallel.input339 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4372 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input339_def]
  simp only [input338_eq, input331_eq]
  kernel_rfl

theorem output339_eq : InitECandidate.Proofs.DeadStages240.Parallel.output339 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3852 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output339_def]
  simp only [output338_eq, output331_eq]
  kernel_rfl

theorem input340_eq : InitECandidate.Proofs.DeadStages240.Parallel.input340 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4361 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input340_def]
  kernel_rfl

theorem output340_eq : InitECandidate.Proofs.DeadStages240.Parallel.output340 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3841 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output340_def]
  kernel_rfl

theorem input341_eq : InitECandidate.Proofs.DeadStages240.Parallel.input341 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4360 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input341_def]
  kernel_rfl

theorem output341_eq : InitECandidate.Proofs.DeadStages240.Parallel.output341 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3840 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output341_def]
  kernel_rfl

theorem input342_eq : InitECandidate.Proofs.DeadStages240.Parallel.input342 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4362 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input342_def]
  simp only [input341_eq, input340_eq]
  kernel_rfl

theorem output342_eq : InitECandidate.Proofs.DeadStages240.Parallel.output342 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3842 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output342_def]
  simp only [output341_eq, output340_eq]
  kernel_rfl

theorem input343_eq : InitECandidate.Proofs.DeadStages240.Parallel.input343 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4358 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input343_def]
  kernel_rfl

theorem output343_eq : InitECandidate.Proofs.DeadStages240.Parallel.output343 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3838 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output343_def]
  kernel_rfl

theorem input344_eq : InitECandidate.Proofs.DeadStages240.Parallel.input344 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4356 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input344_def]
  kernel_rfl

theorem output344_eq : InitECandidate.Proofs.DeadStages240.Parallel.output344 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output344_def]
  kernel_rfl

theorem input345_eq : InitECandidate.Proofs.DeadStages240.Parallel.input345 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4353 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input345_def]
  kernel_rfl

theorem output345_eq : InitECandidate.Proofs.DeadStages240.Parallel.output345 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3835 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output345_def]
  kernel_rfl

theorem input346_eq : InitECandidate.Proofs.DeadStages240.Parallel.input346 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4351 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input346_def]
  kernel_rfl

theorem output346_eq : InitECandidate.Proofs.DeadStages240.Parallel.output346 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3833 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output346_def]
  kernel_rfl

theorem input347_eq : InitECandidate.Proofs.DeadStages240.Parallel.input347 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4349 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input347_def]
  kernel_rfl

theorem output347_eq : InitECandidate.Proofs.DeadStages240.Parallel.output347 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3831 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output347_def]
  kernel_rfl

theorem input348_eq : InitECandidate.Proofs.DeadStages240.Parallel.input348 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4347 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input348_def]
  kernel_rfl

theorem output348_eq : InitECandidate.Proofs.DeadStages240.Parallel.output348 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3829 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output348_def]
  kernel_rfl

theorem input349_eq : InitECandidate.Proofs.DeadStages240.Parallel.input349 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4346 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input349_def]
  kernel_rfl

theorem output349_eq : InitECandidate.Proofs.DeadStages240.Parallel.output349 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3828 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output349_def]
  kernel_rfl

theorem input350_eq : InitECandidate.Proofs.DeadStages240.Parallel.input350 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4348 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input350_def]
  simp only [input349_eq, input348_eq]
  kernel_rfl

theorem output350_eq : InitECandidate.Proofs.DeadStages240.Parallel.output350 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3830 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output350_def]
  simp only [output349_eq, output348_eq]
  kernel_rfl

theorem input351_eq : InitECandidate.Proofs.DeadStages240.Parallel.input351 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4350 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input351_def]
  simp only [input350_eq, input347_eq]
  kernel_rfl

theorem output351_eq : InitECandidate.Proofs.DeadStages240.Parallel.output351 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3832 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output351_def]
  simp only [output350_eq, output347_eq]
  kernel_rfl

theorem input352_eq : InitECandidate.Proofs.DeadStages240.Parallel.input352 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4352 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input352_def]
  simp only [input351_eq, input346_eq]
  kernel_rfl

theorem output352_eq : InitECandidate.Proofs.DeadStages240.Parallel.output352 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3834 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output352_def]
  simp only [output351_eq, output346_eq]
  kernel_rfl

theorem input353_eq : InitECandidate.Proofs.DeadStages240.Parallel.input353 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4354 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input353_def]
  simp only [input352_eq, input345_eq]
  kernel_rfl

theorem output353_eq : InitECandidate.Proofs.DeadStages240.Parallel.output353 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3836 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output353_def]
  simp only [output352_eq, output345_eq]
  kernel_rfl

theorem input354_eq : InitECandidate.Proofs.DeadStages240.Parallel.input354 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4343 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input354_def]
  kernel_rfl

theorem output354_eq : InitECandidate.Proofs.DeadStages240.Parallel.output354 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3825 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output354_def]
  kernel_rfl

theorem input355_eq : InitECandidate.Proofs.DeadStages240.Parallel.input355 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4342 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input355_def]
  kernel_rfl

theorem output355_eq : InitECandidate.Proofs.DeadStages240.Parallel.output355 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3824 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output355_def]
  kernel_rfl

theorem input356_eq : InitECandidate.Proofs.DeadStages240.Parallel.input356 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4344 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input356_def]
  simp only [input355_eq, input354_eq]
  kernel_rfl

theorem output356_eq : InitECandidate.Proofs.DeadStages240.Parallel.output356 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3826 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output356_def]
  simp only [output355_eq, output354_eq]
  kernel_rfl

theorem input357_eq : InitECandidate.Proofs.DeadStages240.Parallel.input357 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4340 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input357_def]
  kernel_rfl

theorem output357_eq : InitECandidate.Proofs.DeadStages240.Parallel.output357 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3822 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output357_def]
  kernel_rfl

theorem input358_eq : InitECandidate.Proofs.DeadStages240.Parallel.input358 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4338 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input358_def]
  kernel_rfl

theorem output358_eq : InitECandidate.Proofs.DeadStages240.Parallel.output358 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output358_def]
  kernel_rfl

theorem input359_eq : InitECandidate.Proofs.DeadStages240.Parallel.input359 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4335 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input359_def]
  kernel_rfl

theorem output359_eq : InitECandidate.Proofs.DeadStages240.Parallel.output359 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3819 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output359_def]
  kernel_rfl

theorem input360_eq : InitECandidate.Proofs.DeadStages240.Parallel.input360 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4333 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input360_def]
  kernel_rfl

theorem output360_eq : InitECandidate.Proofs.DeadStages240.Parallel.output360 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3817 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output360_def]
  kernel_rfl

theorem input361_eq : InitECandidate.Proofs.DeadStages240.Parallel.input361 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4331 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input361_def]
  kernel_rfl

theorem output361_eq : InitECandidate.Proofs.DeadStages240.Parallel.output361 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3815 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output361_def]
  kernel_rfl

theorem input362_eq : InitECandidate.Proofs.DeadStages240.Parallel.input362 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4329 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input362_def]
  kernel_rfl

theorem output362_eq : InitECandidate.Proofs.DeadStages240.Parallel.output362 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3813 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output362_def]
  kernel_rfl

theorem input363_eq : InitECandidate.Proofs.DeadStages240.Parallel.input363 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4328 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input363_def]
  kernel_rfl

theorem output363_eq : InitECandidate.Proofs.DeadStages240.Parallel.output363 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3812 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output363_def]
  kernel_rfl

theorem input364_eq : InitECandidate.Proofs.DeadStages240.Parallel.input364 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4330 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input364_def]
  simp only [input363_eq, input362_eq]
  kernel_rfl

theorem output364_eq : InitECandidate.Proofs.DeadStages240.Parallel.output364 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3814 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output364_def]
  simp only [output363_eq, output362_eq]
  kernel_rfl

theorem input365_eq : InitECandidate.Proofs.DeadStages240.Parallel.input365 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4332 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input365_def]
  simp only [input364_eq, input361_eq]
  kernel_rfl

theorem output365_eq : InitECandidate.Proofs.DeadStages240.Parallel.output365 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3816 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output365_def]
  simp only [output364_eq, output361_eq]
  kernel_rfl

theorem input366_eq : InitECandidate.Proofs.DeadStages240.Parallel.input366 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4334 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input366_def]
  simp only [input365_eq, input360_eq]
  kernel_rfl

theorem output366_eq : InitECandidate.Proofs.DeadStages240.Parallel.output366 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3818 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output366_def]
  simp only [output365_eq, output360_eq]
  kernel_rfl

theorem input367_eq : InitECandidate.Proofs.DeadStages240.Parallel.input367 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4336 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input367_def]
  simp only [input366_eq, input359_eq]
  kernel_rfl

theorem output367_eq : InitECandidate.Proofs.DeadStages240.Parallel.output367 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3820 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output367_def]
  simp only [output366_eq, output359_eq]
  kernel_rfl

theorem input368_eq : InitECandidate.Proofs.DeadStages240.Parallel.input368 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4325 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input368_def]
  kernel_rfl

theorem output368_eq : InitECandidate.Proofs.DeadStages240.Parallel.output368 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3809 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output368_def]
  kernel_rfl

theorem input369_eq : InitECandidate.Proofs.DeadStages240.Parallel.input369 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4324 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input369_def]
  kernel_rfl

theorem output369_eq : InitECandidate.Proofs.DeadStages240.Parallel.output369 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3808 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output369_def]
  kernel_rfl

theorem input370_eq : InitECandidate.Proofs.DeadStages240.Parallel.input370 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4326 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input370_def]
  simp only [input369_eq, input368_eq]
  kernel_rfl

theorem output370_eq : InitECandidate.Proofs.DeadStages240.Parallel.output370 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3810 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output370_def]
  simp only [output369_eq, output368_eq]
  kernel_rfl

theorem input371_eq : InitECandidate.Proofs.DeadStages240.Parallel.input371 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4322 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input371_def]
  kernel_rfl

theorem output371_eq : InitECandidate.Proofs.DeadStages240.Parallel.output371 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3806 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output371_def]
  kernel_rfl

theorem input372_eq : InitECandidate.Proofs.DeadStages240.Parallel.input372 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4320 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input372_def]
  kernel_rfl

theorem output372_eq : InitECandidate.Proofs.DeadStages240.Parallel.output372 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output372_def]
  kernel_rfl

theorem input373_eq : InitECandidate.Proofs.DeadStages240.Parallel.input373 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4317 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input373_def]
  kernel_rfl

theorem output373_eq : InitECandidate.Proofs.DeadStages240.Parallel.output373 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3803 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output373_def]
  kernel_rfl

theorem input374_eq : InitECandidate.Proofs.DeadStages240.Parallel.input374 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4315 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input374_def]
  kernel_rfl

theorem output374_eq : InitECandidate.Proofs.DeadStages240.Parallel.output374 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3801 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output374_def]
  kernel_rfl

theorem input375_eq : InitECandidate.Proofs.DeadStages240.Parallel.input375 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4313 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input375_def]
  kernel_rfl

theorem output375_eq : InitECandidate.Proofs.DeadStages240.Parallel.output375 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3799 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output375_def]
  kernel_rfl

theorem input376_eq : InitECandidate.Proofs.DeadStages240.Parallel.input376 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4311 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input376_def]
  kernel_rfl

theorem output376_eq : InitECandidate.Proofs.DeadStages240.Parallel.output376 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3797 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output376_def]
  kernel_rfl

theorem input377_eq : InitECandidate.Proofs.DeadStages240.Parallel.input377 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4310 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input377_def]
  kernel_rfl

theorem output377_eq : InitECandidate.Proofs.DeadStages240.Parallel.output377 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3796 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output377_def]
  kernel_rfl

theorem input378_eq : InitECandidate.Proofs.DeadStages240.Parallel.input378 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4312 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input378_def]
  simp only [input377_eq, input376_eq]
  kernel_rfl

theorem output378_eq : InitECandidate.Proofs.DeadStages240.Parallel.output378 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3798 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output378_def]
  simp only [output377_eq, output376_eq]
  kernel_rfl

theorem input379_eq : InitECandidate.Proofs.DeadStages240.Parallel.input379 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4314 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input379_def]
  simp only [input378_eq, input375_eq]
  kernel_rfl

theorem output379_eq : InitECandidate.Proofs.DeadStages240.Parallel.output379 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3800 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output379_def]
  simp only [output378_eq, output375_eq]
  kernel_rfl

theorem input380_eq : InitECandidate.Proofs.DeadStages240.Parallel.input380 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4316 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input380_def]
  simp only [input379_eq, input374_eq]
  kernel_rfl

theorem output380_eq : InitECandidate.Proofs.DeadStages240.Parallel.output380 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3802 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output380_def]
  simp only [output379_eq, output374_eq]
  kernel_rfl

theorem input381_eq : InitECandidate.Proofs.DeadStages240.Parallel.input381 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4318 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input381_def]
  simp only [input380_eq, input373_eq]
  kernel_rfl

theorem output381_eq : InitECandidate.Proofs.DeadStages240.Parallel.output381 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3804 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output381_def]
  simp only [output380_eq, output373_eq]
  kernel_rfl

theorem input382_eq : InitECandidate.Proofs.DeadStages240.Parallel.input382 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4307 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input382_def]
  kernel_rfl

theorem output382_eq : InitECandidate.Proofs.DeadStages240.Parallel.output382 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3793 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output382_def]
  kernel_rfl

theorem input383_eq : InitECandidate.Proofs.DeadStages240.Parallel.input383 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4306 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input383_def]
  kernel_rfl

theorem output383_eq : InitECandidate.Proofs.DeadStages240.Parallel.output383 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3792 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output383_def]
  kernel_rfl

theorem input384_eq : InitECandidate.Proofs.DeadStages240.Parallel.input384 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4308 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input384_def]
  simp only [input383_eq, input382_eq]
  kernel_rfl

theorem output384_eq : InitECandidate.Proofs.DeadStages240.Parallel.output384 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3794 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output384_def]
  simp only [output383_eq, output382_eq]
  kernel_rfl

theorem input385_eq : InitECandidate.Proofs.DeadStages240.Parallel.input385 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4304 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input385_def]
  kernel_rfl

theorem output385_eq : InitECandidate.Proofs.DeadStages240.Parallel.output385 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3790 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output385_def]
  kernel_rfl

theorem input386_eq : InitECandidate.Proofs.DeadStages240.Parallel.input386 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4302 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input386_def]
  kernel_rfl

theorem output386_eq : InitECandidate.Proofs.DeadStages240.Parallel.output386 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output386_def]
  kernel_rfl

theorem input387_eq : InitECandidate.Proofs.DeadStages240.Parallel.input387 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4299 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input387_def]
  kernel_rfl

theorem output387_eq : InitECandidate.Proofs.DeadStages240.Parallel.output387 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3787 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output387_def]
  kernel_rfl

theorem input388_eq : InitECandidate.Proofs.DeadStages240.Parallel.input388 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4297 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input388_def]
  kernel_rfl

theorem output388_eq : InitECandidate.Proofs.DeadStages240.Parallel.output388 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3785 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output388_def]
  kernel_rfl

theorem input389_eq : InitECandidate.Proofs.DeadStages240.Parallel.input389 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4295 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input389_def]
  kernel_rfl

theorem output389_eq : InitECandidate.Proofs.DeadStages240.Parallel.output389 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3783 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output389_def]
  kernel_rfl

theorem input390_eq : InitECandidate.Proofs.DeadStages240.Parallel.input390 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4293 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input390_def]
  kernel_rfl

theorem output390_eq : InitECandidate.Proofs.DeadStages240.Parallel.output390 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3781 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output390_def]
  kernel_rfl

theorem input391_eq : InitECandidate.Proofs.DeadStages240.Parallel.input391 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4292 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input391_def]
  kernel_rfl

theorem output391_eq : InitECandidate.Proofs.DeadStages240.Parallel.output391 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3780 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output391_def]
  kernel_rfl

theorem input392_eq : InitECandidate.Proofs.DeadStages240.Parallel.input392 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4294 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input392_def]
  simp only [input391_eq, input390_eq]
  kernel_rfl

theorem output392_eq : InitECandidate.Proofs.DeadStages240.Parallel.output392 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3782 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output392_def]
  simp only [output391_eq, output390_eq]
  kernel_rfl

theorem input393_eq : InitECandidate.Proofs.DeadStages240.Parallel.input393 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4296 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input393_def]
  simp only [input392_eq, input389_eq]
  kernel_rfl

theorem output393_eq : InitECandidate.Proofs.DeadStages240.Parallel.output393 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3784 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output393_def]
  simp only [output392_eq, output389_eq]
  kernel_rfl

theorem input394_eq : InitECandidate.Proofs.DeadStages240.Parallel.input394 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4298 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input394_def]
  simp only [input393_eq, input388_eq]
  kernel_rfl

theorem output394_eq : InitECandidate.Proofs.DeadStages240.Parallel.output394 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3786 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output394_def]
  simp only [output393_eq, output388_eq]
  kernel_rfl

theorem input395_eq : InitECandidate.Proofs.DeadStages240.Parallel.input395 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4300 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input395_def]
  simp only [input394_eq, input387_eq]
  kernel_rfl

theorem output395_eq : InitECandidate.Proofs.DeadStages240.Parallel.output395 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3788 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output395_def]
  simp only [output394_eq, output387_eq]
  kernel_rfl

theorem input396_eq : InitECandidate.Proofs.DeadStages240.Parallel.input396 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4289 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input396_def]
  kernel_rfl

theorem output396_eq : InitECandidate.Proofs.DeadStages240.Parallel.output396 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3777 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output396_def]
  kernel_rfl

theorem input397_eq : InitECandidate.Proofs.DeadStages240.Parallel.input397 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4288 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input397_def]
  kernel_rfl

theorem output397_eq : InitECandidate.Proofs.DeadStages240.Parallel.output397 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3776 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output397_def]
  kernel_rfl

theorem input398_eq : InitECandidate.Proofs.DeadStages240.Parallel.input398 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4290 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input398_def]
  simp only [input397_eq, input396_eq]
  kernel_rfl

theorem output398_eq : InitECandidate.Proofs.DeadStages240.Parallel.output398 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3778 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output398_def]
  simp only [output397_eq, output396_eq]
  kernel_rfl

theorem input399_eq : InitECandidate.Proofs.DeadStages240.Parallel.input399 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4286 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input399_def]
  kernel_rfl

theorem output399_eq : InitECandidate.Proofs.DeadStages240.Parallel.output399 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3774 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output399_def]
  kernel_rfl

theorem input400_eq : InitECandidate.Proofs.DeadStages240.Parallel.input400 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4284 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input400_def]
  kernel_rfl

theorem output400_eq : InitECandidate.Proofs.DeadStages240.Parallel.output400 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output400_def]
  kernel_rfl

theorem input401_eq : InitECandidate.Proofs.DeadStages240.Parallel.input401 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4281 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input401_def]
  kernel_rfl

theorem output401_eq : InitECandidate.Proofs.DeadStages240.Parallel.output401 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3771 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output401_def]
  kernel_rfl

theorem input402_eq : InitECandidate.Proofs.DeadStages240.Parallel.input402 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4279 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input402_def]
  kernel_rfl

theorem output402_eq : InitECandidate.Proofs.DeadStages240.Parallel.output402 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3769 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output402_def]
  kernel_rfl

theorem input403_eq : InitECandidate.Proofs.DeadStages240.Parallel.input403 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4277 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input403_def]
  kernel_rfl

theorem output403_eq : InitECandidate.Proofs.DeadStages240.Parallel.output403 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3767 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output403_def]
  kernel_rfl

theorem input404_eq : InitECandidate.Proofs.DeadStages240.Parallel.input404 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4275 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input404_def]
  kernel_rfl

theorem output404_eq : InitECandidate.Proofs.DeadStages240.Parallel.output404 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3765 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output404_def]
  kernel_rfl

theorem input405_eq : InitECandidate.Proofs.DeadStages240.Parallel.input405 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4274 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input405_def]
  kernel_rfl

theorem output405_eq : InitECandidate.Proofs.DeadStages240.Parallel.output405 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3764 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output405_def]
  kernel_rfl

theorem input406_eq : InitECandidate.Proofs.DeadStages240.Parallel.input406 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4276 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input406_def]
  simp only [input405_eq, input404_eq]
  kernel_rfl

theorem output406_eq : InitECandidate.Proofs.DeadStages240.Parallel.output406 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3766 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output406_def]
  simp only [output405_eq, output404_eq]
  kernel_rfl

theorem input407_eq : InitECandidate.Proofs.DeadStages240.Parallel.input407 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4278 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input407_def]
  simp only [input406_eq, input403_eq]
  kernel_rfl

theorem output407_eq : InitECandidate.Proofs.DeadStages240.Parallel.output407 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3768 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output407_def]
  simp only [output406_eq, output403_eq]
  kernel_rfl

theorem input408_eq : InitECandidate.Proofs.DeadStages240.Parallel.input408 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4280 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input408_def]
  simp only [input407_eq, input402_eq]
  kernel_rfl

theorem output408_eq : InitECandidate.Proofs.DeadStages240.Parallel.output408 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3770 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output408_def]
  simp only [output407_eq, output402_eq]
  kernel_rfl

theorem input409_eq : InitECandidate.Proofs.DeadStages240.Parallel.input409 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4282 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input409_def]
  simp only [input408_eq, input401_eq]
  kernel_rfl

theorem output409_eq : InitECandidate.Proofs.DeadStages240.Parallel.output409 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3772 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output409_def]
  simp only [output408_eq, output401_eq]
  kernel_rfl

theorem input410_eq : InitECandidate.Proofs.DeadStages240.Parallel.input410 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4271 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input410_def]
  kernel_rfl

theorem output410_eq : InitECandidate.Proofs.DeadStages240.Parallel.output410 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3761 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output410_def]
  kernel_rfl

theorem input411_eq : InitECandidate.Proofs.DeadStages240.Parallel.input411 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4270 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input411_def]
  kernel_rfl

theorem output411_eq : InitECandidate.Proofs.DeadStages240.Parallel.output411 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3760 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output411_def]
  kernel_rfl

theorem input412_eq : InitECandidate.Proofs.DeadStages240.Parallel.input412 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4272 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input412_def]
  simp only [input411_eq, input410_eq]
  kernel_rfl

theorem output412_eq : InitECandidate.Proofs.DeadStages240.Parallel.output412 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3762 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output412_def]
  simp only [output411_eq, output410_eq]
  kernel_rfl

theorem input413_eq : InitECandidate.Proofs.DeadStages240.Parallel.input413 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4268 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input413_def]
  kernel_rfl

theorem output413_eq : InitECandidate.Proofs.DeadStages240.Parallel.output413 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3758 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output413_def]
  kernel_rfl

theorem input414_eq : InitECandidate.Proofs.DeadStages240.Parallel.input414 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4266 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input414_def]
  kernel_rfl

theorem output414_eq : InitECandidate.Proofs.DeadStages240.Parallel.output414 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output414_def]
  kernel_rfl

theorem input415_eq : InitECandidate.Proofs.DeadStages240.Parallel.input415 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4263 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input415_def]
  kernel_rfl

theorem output415_eq : InitECandidate.Proofs.DeadStages240.Parallel.output415 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3755 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output415_def]
  kernel_rfl

theorem input416_eq : InitECandidate.Proofs.DeadStages240.Parallel.input416 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4261 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input416_def]
  kernel_rfl

theorem output416_eq : InitECandidate.Proofs.DeadStages240.Parallel.output416 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3753 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output416_def]
  kernel_rfl

theorem input417_eq : InitECandidate.Proofs.DeadStages240.Parallel.input417 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4259 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input417_def]
  kernel_rfl

theorem output417_eq : InitECandidate.Proofs.DeadStages240.Parallel.output417 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3751 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output417_def]
  kernel_rfl

theorem input418_eq : InitECandidate.Proofs.DeadStages240.Parallel.input418 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4257 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input418_def]
  kernel_rfl

theorem output418_eq : InitECandidate.Proofs.DeadStages240.Parallel.output418 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3749 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output418_def]
  kernel_rfl

theorem input419_eq : InitECandidate.Proofs.DeadStages240.Parallel.input419 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4256 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input419_def]
  kernel_rfl

theorem output419_eq : InitECandidate.Proofs.DeadStages240.Parallel.output419 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3748 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output419_def]
  kernel_rfl

theorem input420_eq : InitECandidate.Proofs.DeadStages240.Parallel.input420 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4258 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input420_def]
  simp only [input419_eq, input418_eq]
  kernel_rfl

theorem output420_eq : InitECandidate.Proofs.DeadStages240.Parallel.output420 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3750 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output420_def]
  simp only [output419_eq, output418_eq]
  kernel_rfl

theorem input421_eq : InitECandidate.Proofs.DeadStages240.Parallel.input421 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4260 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input421_def]
  simp only [input420_eq, input417_eq]
  kernel_rfl

theorem output421_eq : InitECandidate.Proofs.DeadStages240.Parallel.output421 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3752 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output421_def]
  simp only [output420_eq, output417_eq]
  kernel_rfl

theorem input422_eq : InitECandidate.Proofs.DeadStages240.Parallel.input422 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4262 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input422_def]
  simp only [input421_eq, input416_eq]
  kernel_rfl

theorem output422_eq : InitECandidate.Proofs.DeadStages240.Parallel.output422 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3754 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output422_def]
  simp only [output421_eq, output416_eq]
  kernel_rfl

theorem input423_eq : InitECandidate.Proofs.DeadStages240.Parallel.input423 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4264 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input423_def]
  simp only [input422_eq, input415_eq]
  kernel_rfl

theorem output423_eq : InitECandidate.Proofs.DeadStages240.Parallel.output423 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3756 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output423_def]
  simp only [output422_eq, output415_eq]
  kernel_rfl

theorem input424_eq : InitECandidate.Proofs.DeadStages240.Parallel.input424 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4253 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input424_def]
  kernel_rfl

theorem output424_eq : InitECandidate.Proofs.DeadStages240.Parallel.output424 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3745 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output424_def]
  kernel_rfl

theorem input425_eq : InitECandidate.Proofs.DeadStages240.Parallel.input425 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4252 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input425_def]
  kernel_rfl

theorem output425_eq : InitECandidate.Proofs.DeadStages240.Parallel.output425 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3744 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output425_def]
  kernel_rfl

theorem input426_eq : InitECandidate.Proofs.DeadStages240.Parallel.input426 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4254 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input426_def]
  simp only [input425_eq, input424_eq]
  kernel_rfl

theorem output426_eq : InitECandidate.Proofs.DeadStages240.Parallel.output426 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3746 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output426_def]
  simp only [output425_eq, output424_eq]
  kernel_rfl

theorem input427_eq : InitECandidate.Proofs.DeadStages240.Parallel.input427 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4250 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input427_def]
  kernel_rfl

theorem output427_eq : InitECandidate.Proofs.DeadStages240.Parallel.output427 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3742 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output427_def]
  kernel_rfl

theorem input428_eq : InitECandidate.Proofs.DeadStages240.Parallel.input428 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4248 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input428_def]
  kernel_rfl

theorem output428_eq : InitECandidate.Proofs.DeadStages240.Parallel.output428 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output428_def]
  kernel_rfl

theorem input429_eq : InitECandidate.Proofs.DeadStages240.Parallel.input429 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4245 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input429_def]
  kernel_rfl

theorem output429_eq : InitECandidate.Proofs.DeadStages240.Parallel.output429 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3739 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output429_def]
  kernel_rfl

theorem input430_eq : InitECandidate.Proofs.DeadStages240.Parallel.input430 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4243 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input430_def]
  kernel_rfl

theorem output430_eq : InitECandidate.Proofs.DeadStages240.Parallel.output430 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3737 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output430_def]
  kernel_rfl

theorem input431_eq : InitECandidate.Proofs.DeadStages240.Parallel.input431 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4241 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input431_def]
  kernel_rfl

theorem output431_eq : InitECandidate.Proofs.DeadStages240.Parallel.output431 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3735 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output431_def]
  kernel_rfl

theorem input432_eq : InitECandidate.Proofs.DeadStages240.Parallel.input432 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4239 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input432_def]
  kernel_rfl

theorem output432_eq : InitECandidate.Proofs.DeadStages240.Parallel.output432 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3733 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output432_def]
  kernel_rfl

theorem input433_eq : InitECandidate.Proofs.DeadStages240.Parallel.input433 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4238 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input433_def]
  kernel_rfl

theorem output433_eq : InitECandidate.Proofs.DeadStages240.Parallel.output433 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3732 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output433_def]
  kernel_rfl

theorem input434_eq : InitECandidate.Proofs.DeadStages240.Parallel.input434 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4240 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input434_def]
  simp only [input433_eq, input432_eq]
  kernel_rfl

theorem output434_eq : InitECandidate.Proofs.DeadStages240.Parallel.output434 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3734 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output434_def]
  simp only [output433_eq, output432_eq]
  kernel_rfl

theorem input435_eq : InitECandidate.Proofs.DeadStages240.Parallel.input435 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4242 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input435_def]
  simp only [input434_eq, input431_eq]
  kernel_rfl

theorem output435_eq : InitECandidate.Proofs.DeadStages240.Parallel.output435 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3736 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output435_def]
  simp only [output434_eq, output431_eq]
  kernel_rfl

theorem input436_eq : InitECandidate.Proofs.DeadStages240.Parallel.input436 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4244 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input436_def]
  simp only [input435_eq, input430_eq]
  kernel_rfl

theorem output436_eq : InitECandidate.Proofs.DeadStages240.Parallel.output436 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3738 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output436_def]
  simp only [output435_eq, output430_eq]
  kernel_rfl

theorem input437_eq : InitECandidate.Proofs.DeadStages240.Parallel.input437 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4246 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input437_def]
  simp only [input436_eq, input429_eq]
  kernel_rfl

theorem output437_eq : InitECandidate.Proofs.DeadStages240.Parallel.output437 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3740 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output437_def]
  simp only [output436_eq, output429_eq]
  kernel_rfl

theorem input438_eq : InitECandidate.Proofs.DeadStages240.Parallel.input438 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4235 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input438_def]
  kernel_rfl

theorem output438_eq : InitECandidate.Proofs.DeadStages240.Parallel.output438 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3729 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output438_def]
  kernel_rfl

theorem input439_eq : InitECandidate.Proofs.DeadStages240.Parallel.input439 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4234 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input439_def]
  kernel_rfl

theorem output439_eq : InitECandidate.Proofs.DeadStages240.Parallel.output439 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3728 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output439_def]
  kernel_rfl

theorem input440_eq : InitECandidate.Proofs.DeadStages240.Parallel.input440 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4236 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input440_def]
  simp only [input439_eq, input438_eq]
  kernel_rfl

theorem output440_eq : InitECandidate.Proofs.DeadStages240.Parallel.output440 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3730 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output440_def]
  simp only [output439_eq, output438_eq]
  kernel_rfl

theorem input441_eq : InitECandidate.Proofs.DeadStages240.Parallel.input441 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4232 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input441_def]
  kernel_rfl

theorem output441_eq : InitECandidate.Proofs.DeadStages240.Parallel.output441 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3726 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output441_def]
  kernel_rfl

theorem input442_eq : InitECandidate.Proofs.DeadStages240.Parallel.input442 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4230 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input442_def]
  kernel_rfl

theorem output442_eq : InitECandidate.Proofs.DeadStages240.Parallel.output442 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output442_def]
  kernel_rfl

theorem input443_eq : InitECandidate.Proofs.DeadStages240.Parallel.input443 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4227 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input443_def]
  kernel_rfl

theorem output443_eq : InitECandidate.Proofs.DeadStages240.Parallel.output443 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3723 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output443_def]
  kernel_rfl

theorem input444_eq : InitECandidate.Proofs.DeadStages240.Parallel.input444 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4225 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input444_def]
  kernel_rfl

theorem output444_eq : InitECandidate.Proofs.DeadStages240.Parallel.output444 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3721 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output444_def]
  kernel_rfl

theorem input445_eq : InitECandidate.Proofs.DeadStages240.Parallel.input445 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4223 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input445_def]
  kernel_rfl

theorem output445_eq : InitECandidate.Proofs.DeadStages240.Parallel.output445 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3719 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output445_def]
  kernel_rfl

theorem input446_eq : InitECandidate.Proofs.DeadStages240.Parallel.input446 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4221 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input446_def]
  kernel_rfl

theorem output446_eq : InitECandidate.Proofs.DeadStages240.Parallel.output446 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3717 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output446_def]
  kernel_rfl

theorem input447_eq : InitECandidate.Proofs.DeadStages240.Parallel.input447 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4220 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input447_def]
  kernel_rfl

theorem output447_eq : InitECandidate.Proofs.DeadStages240.Parallel.output447 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3716 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output447_def]
  kernel_rfl

theorem input448_eq : InitECandidate.Proofs.DeadStages240.Parallel.input448 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4222 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input448_def]
  simp only [input447_eq, input446_eq]
  kernel_rfl

theorem output448_eq : InitECandidate.Proofs.DeadStages240.Parallel.output448 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3718 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output448_def]
  simp only [output447_eq, output446_eq]
  kernel_rfl

theorem input449_eq : InitECandidate.Proofs.DeadStages240.Parallel.input449 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4224 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input449_def]
  simp only [input448_eq, input445_eq]
  kernel_rfl

theorem output449_eq : InitECandidate.Proofs.DeadStages240.Parallel.output449 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3720 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output449_def]
  simp only [output448_eq, output445_eq]
  kernel_rfl

theorem input450_eq : InitECandidate.Proofs.DeadStages240.Parallel.input450 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4226 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input450_def]
  simp only [input449_eq, input444_eq]
  kernel_rfl

theorem output450_eq : InitECandidate.Proofs.DeadStages240.Parallel.output450 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3722 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output450_def]
  simp only [output449_eq, output444_eq]
  kernel_rfl

theorem input451_eq : InitECandidate.Proofs.DeadStages240.Parallel.input451 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4228 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input451_def]
  simp only [input450_eq, input443_eq]
  kernel_rfl

theorem output451_eq : InitECandidate.Proofs.DeadStages240.Parallel.output451 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3724 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output451_def]
  simp only [output450_eq, output443_eq]
  kernel_rfl

theorem input452_eq : InitECandidate.Proofs.DeadStages240.Parallel.input452 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4217 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input452_def]
  kernel_rfl

theorem output452_eq : InitECandidate.Proofs.DeadStages240.Parallel.output452 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3713 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output452_def]
  kernel_rfl

theorem input453_eq : InitECandidate.Proofs.DeadStages240.Parallel.input453 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4216 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input453_def]
  kernel_rfl

theorem output453_eq : InitECandidate.Proofs.DeadStages240.Parallel.output453 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3712 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output453_def]
  kernel_rfl

theorem input454_eq : InitECandidate.Proofs.DeadStages240.Parallel.input454 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4218 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input454_def]
  simp only [input453_eq, input452_eq]
  kernel_rfl

theorem output454_eq : InitECandidate.Proofs.DeadStages240.Parallel.output454 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3714 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output454_def]
  simp only [output453_eq, output452_eq]
  kernel_rfl

theorem input455_eq : InitECandidate.Proofs.DeadStages240.Parallel.input455 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4214 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input455_def]
  kernel_rfl

theorem output455_eq : InitECandidate.Proofs.DeadStages240.Parallel.output455 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3710 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output455_def]
  kernel_rfl

theorem input456_eq : InitECandidate.Proofs.DeadStages240.Parallel.input456 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4212 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input456_def]
  kernel_rfl

theorem output456_eq : InitECandidate.Proofs.DeadStages240.Parallel.output456 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output456_def]
  kernel_rfl

theorem input457_eq : InitECandidate.Proofs.DeadStages240.Parallel.input457 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4209 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input457_def]
  kernel_rfl

theorem output457_eq : InitECandidate.Proofs.DeadStages240.Parallel.output457 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3707 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output457_def]
  kernel_rfl

theorem input458_eq : InitECandidate.Proofs.DeadStages240.Parallel.input458 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4207 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input458_def]
  kernel_rfl

theorem output458_eq : InitECandidate.Proofs.DeadStages240.Parallel.output458 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3705 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output458_def]
  kernel_rfl

theorem input459_eq : InitECandidate.Proofs.DeadStages240.Parallel.input459 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4205 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input459_def]
  kernel_rfl

theorem output459_eq : InitECandidate.Proofs.DeadStages240.Parallel.output459 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3703 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output459_def]
  kernel_rfl

theorem input460_eq : InitECandidate.Proofs.DeadStages240.Parallel.input460 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4203 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input460_def]
  kernel_rfl

theorem output460_eq : InitECandidate.Proofs.DeadStages240.Parallel.output460 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3701 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output460_def]
  kernel_rfl

theorem input461_eq : InitECandidate.Proofs.DeadStages240.Parallel.input461 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4202 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input461_def]
  kernel_rfl

theorem output461_eq : InitECandidate.Proofs.DeadStages240.Parallel.output461 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3700 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output461_def]
  kernel_rfl

theorem input462_eq : InitECandidate.Proofs.DeadStages240.Parallel.input462 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4204 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input462_def]
  simp only [input461_eq, input460_eq]
  kernel_rfl

theorem output462_eq : InitECandidate.Proofs.DeadStages240.Parallel.output462 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3702 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output462_def]
  simp only [output461_eq, output460_eq]
  kernel_rfl

theorem input463_eq : InitECandidate.Proofs.DeadStages240.Parallel.input463 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4206 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input463_def]
  simp only [input462_eq, input459_eq]
  kernel_rfl

theorem output463_eq : InitECandidate.Proofs.DeadStages240.Parallel.output463 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3704 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output463_def]
  simp only [output462_eq, output459_eq]
  kernel_rfl

theorem input464_eq : InitECandidate.Proofs.DeadStages240.Parallel.input464 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4208 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input464_def]
  simp only [input463_eq, input458_eq]
  kernel_rfl

theorem output464_eq : InitECandidate.Proofs.DeadStages240.Parallel.output464 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3706 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output464_def]
  simp only [output463_eq, output458_eq]
  kernel_rfl

theorem input465_eq : InitECandidate.Proofs.DeadStages240.Parallel.input465 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4210 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input465_def]
  simp only [input464_eq, input457_eq]
  kernel_rfl

theorem output465_eq : InitECandidate.Proofs.DeadStages240.Parallel.output465 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3708 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output465_def]
  simp only [output464_eq, output457_eq]
  kernel_rfl

theorem input466_eq : InitECandidate.Proofs.DeadStages240.Parallel.input466 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4199 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input466_def]
  kernel_rfl

theorem output466_eq : InitECandidate.Proofs.DeadStages240.Parallel.output466 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3697 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output466_def]
  kernel_rfl

theorem input467_eq : InitECandidate.Proofs.DeadStages240.Parallel.input467 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4198 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input467_def]
  kernel_rfl

theorem output467_eq : InitECandidate.Proofs.DeadStages240.Parallel.output467 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3696 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output467_def]
  kernel_rfl

theorem input468_eq : InitECandidate.Proofs.DeadStages240.Parallel.input468 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4200 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input468_def]
  simp only [input467_eq, input466_eq]
  kernel_rfl

theorem output468_eq : InitECandidate.Proofs.DeadStages240.Parallel.output468 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3698 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output468_def]
  simp only [output467_eq, output466_eq]
  kernel_rfl

theorem input469_eq : InitECandidate.Proofs.DeadStages240.Parallel.input469 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4196 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input469_def]
  kernel_rfl

theorem output469_eq : InitECandidate.Proofs.DeadStages240.Parallel.output469 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3694 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output469_def]
  kernel_rfl

theorem input470_eq : InitECandidate.Proofs.DeadStages240.Parallel.input470 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4194 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input470_def]
  kernel_rfl

theorem output470_eq : InitECandidate.Proofs.DeadStages240.Parallel.output470 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output470_def]
  kernel_rfl

theorem input471_eq : InitECandidate.Proofs.DeadStages240.Parallel.input471 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4191 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input471_def]
  kernel_rfl

theorem output471_eq : InitECandidate.Proofs.DeadStages240.Parallel.output471 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3691 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output471_def]
  kernel_rfl

theorem input472_eq : InitECandidate.Proofs.DeadStages240.Parallel.input472 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4189 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input472_def]
  kernel_rfl

theorem output472_eq : InitECandidate.Proofs.DeadStages240.Parallel.output472 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3689 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output472_def]
  kernel_rfl

theorem input473_eq : InitECandidate.Proofs.DeadStages240.Parallel.input473 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4187 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input473_def]
  kernel_rfl

theorem output473_eq : InitECandidate.Proofs.DeadStages240.Parallel.output473 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3687 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output473_def]
  kernel_rfl

theorem input474_eq : InitECandidate.Proofs.DeadStages240.Parallel.input474 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4185 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input474_def]
  kernel_rfl

theorem output474_eq : InitECandidate.Proofs.DeadStages240.Parallel.output474 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3685 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output474_def]
  kernel_rfl

theorem input475_eq : InitECandidate.Proofs.DeadStages240.Parallel.input475 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4184 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input475_def]
  kernel_rfl

theorem output475_eq : InitECandidate.Proofs.DeadStages240.Parallel.output475 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3684 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output475_def]
  kernel_rfl

theorem input476_eq : InitECandidate.Proofs.DeadStages240.Parallel.input476 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4186 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input476_def]
  simp only [input475_eq, input474_eq]
  kernel_rfl

theorem output476_eq : InitECandidate.Proofs.DeadStages240.Parallel.output476 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3686 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output476_def]
  simp only [output475_eq, output474_eq]
  kernel_rfl

theorem input477_eq : InitECandidate.Proofs.DeadStages240.Parallel.input477 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4188 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input477_def]
  simp only [input476_eq, input473_eq]
  kernel_rfl

theorem output477_eq : InitECandidate.Proofs.DeadStages240.Parallel.output477 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3688 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output477_def]
  simp only [output476_eq, output473_eq]
  kernel_rfl

theorem input478_eq : InitECandidate.Proofs.DeadStages240.Parallel.input478 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4190 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input478_def]
  simp only [input477_eq, input472_eq]
  kernel_rfl

theorem output478_eq : InitECandidate.Proofs.DeadStages240.Parallel.output478 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3690 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output478_def]
  simp only [output477_eq, output472_eq]
  kernel_rfl

theorem input479_eq : InitECandidate.Proofs.DeadStages240.Parallel.input479 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4192 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input479_def]
  simp only [input478_eq, input471_eq]
  kernel_rfl

theorem output479_eq : InitECandidate.Proofs.DeadStages240.Parallel.output479 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3692 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output479_def]
  simp only [output478_eq, output471_eq]
  kernel_rfl

theorem input480_eq : InitECandidate.Proofs.DeadStages240.Parallel.input480 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4181 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input480_def]
  kernel_rfl

theorem output480_eq : InitECandidate.Proofs.DeadStages240.Parallel.output480 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3681 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output480_def]
  kernel_rfl

theorem input481_eq : InitECandidate.Proofs.DeadStages240.Parallel.input481 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4180 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input481_def]
  kernel_rfl

theorem output481_eq : InitECandidate.Proofs.DeadStages240.Parallel.output481 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3680 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output481_def]
  kernel_rfl

theorem input482_eq : InitECandidate.Proofs.DeadStages240.Parallel.input482 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4182 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input482_def]
  simp only [input481_eq, input480_eq]
  kernel_rfl

theorem output482_eq : InitECandidate.Proofs.DeadStages240.Parallel.output482 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3682 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output482_def]
  simp only [output481_eq, output480_eq]
  kernel_rfl

theorem input483_eq : InitECandidate.Proofs.DeadStages240.Parallel.input483 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4178 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input483_def]
  kernel_rfl

theorem output483_eq : InitECandidate.Proofs.DeadStages240.Parallel.output483 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3678 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output483_def]
  kernel_rfl

theorem input484_eq : InitECandidate.Proofs.DeadStages240.Parallel.input484 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4176 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input484_def]
  kernel_rfl

theorem output484_eq : InitECandidate.Proofs.DeadStages240.Parallel.output484 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output484_def]
  kernel_rfl

theorem input485_eq : InitECandidate.Proofs.DeadStages240.Parallel.input485 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4173 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input485_def]
  kernel_rfl

theorem output485_eq : InitECandidate.Proofs.DeadStages240.Parallel.output485 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3675 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output485_def]
  kernel_rfl

theorem input486_eq : InitECandidate.Proofs.DeadStages240.Parallel.input486 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4171 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input486_def]
  kernel_rfl

theorem output486_eq : InitECandidate.Proofs.DeadStages240.Parallel.output486 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3673 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output486_def]
  kernel_rfl

theorem input487_eq : InitECandidate.Proofs.DeadStages240.Parallel.input487 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4169 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input487_def]
  kernel_rfl

theorem output487_eq : InitECandidate.Proofs.DeadStages240.Parallel.output487 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3671 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output487_def]
  kernel_rfl

theorem input488_eq : InitECandidate.Proofs.DeadStages240.Parallel.input488 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4167 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input488_def]
  kernel_rfl

theorem output488_eq : InitECandidate.Proofs.DeadStages240.Parallel.output488 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3669 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output488_def]
  kernel_rfl

theorem input489_eq : InitECandidate.Proofs.DeadStages240.Parallel.input489 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4166 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input489_def]
  kernel_rfl

theorem output489_eq : InitECandidate.Proofs.DeadStages240.Parallel.output489 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3668 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output489_def]
  kernel_rfl

theorem input490_eq : InitECandidate.Proofs.DeadStages240.Parallel.input490 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4168 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input490_def]
  simp only [input489_eq, input488_eq]
  kernel_rfl

theorem output490_eq : InitECandidate.Proofs.DeadStages240.Parallel.output490 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3670 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output490_def]
  simp only [output489_eq, output488_eq]
  kernel_rfl

theorem input491_eq : InitECandidate.Proofs.DeadStages240.Parallel.input491 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4170 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input491_def]
  simp only [input490_eq, input487_eq]
  kernel_rfl

theorem output491_eq : InitECandidate.Proofs.DeadStages240.Parallel.output491 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3672 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output491_def]
  simp only [output490_eq, output487_eq]
  kernel_rfl

theorem input492_eq : InitECandidate.Proofs.DeadStages240.Parallel.input492 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4172 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input492_def]
  simp only [input491_eq, input486_eq]
  kernel_rfl

theorem output492_eq : InitECandidate.Proofs.DeadStages240.Parallel.output492 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3674 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output492_def]
  simp only [output491_eq, output486_eq]
  kernel_rfl

theorem input493_eq : InitECandidate.Proofs.DeadStages240.Parallel.input493 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4174 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input493_def]
  simp only [input492_eq, input485_eq]
  kernel_rfl

theorem output493_eq : InitECandidate.Proofs.DeadStages240.Parallel.output493 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3676 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output493_def]
  simp only [output492_eq, output485_eq]
  kernel_rfl

theorem input494_eq : InitECandidate.Proofs.DeadStages240.Parallel.input494 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4163 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input494_def]
  kernel_rfl

theorem output494_eq : InitECandidate.Proofs.DeadStages240.Parallel.output494 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3665 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output494_def]
  kernel_rfl

theorem input495_eq : InitECandidate.Proofs.DeadStages240.Parallel.input495 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4162 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input495_def]
  kernel_rfl

theorem output495_eq : InitECandidate.Proofs.DeadStages240.Parallel.output495 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3664 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output495_def]
  kernel_rfl

theorem input496_eq : InitECandidate.Proofs.DeadStages240.Parallel.input496 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4164 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input496_def]
  simp only [input495_eq, input494_eq]
  kernel_rfl

theorem output496_eq : InitECandidate.Proofs.DeadStages240.Parallel.output496 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3666 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output496_def]
  simp only [output495_eq, output494_eq]
  kernel_rfl

theorem input497_eq : InitECandidate.Proofs.DeadStages240.Parallel.input497 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4160 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input497_def]
  kernel_rfl

theorem output497_eq : InitECandidate.Proofs.DeadStages240.Parallel.output497 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3662 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output497_def]
  kernel_rfl

theorem input498_eq : InitECandidate.Proofs.DeadStages240.Parallel.input498 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4158 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input498_def]
  kernel_rfl

theorem output498_eq : InitECandidate.Proofs.DeadStages240.Parallel.output498 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_17 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output498_def]
  kernel_rfl

theorem input499_eq : InitECandidate.Proofs.DeadStages240.Parallel.input499 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4155 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input499_def]
  kernel_rfl

theorem output499_eq : InitECandidate.Proofs.DeadStages240.Parallel.output499 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3659 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output499_def]
  kernel_rfl

theorem input500_eq : InitECandidate.Proofs.DeadStages240.Parallel.input500 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4153 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input500_def]
  kernel_rfl

theorem output500_eq : InitECandidate.Proofs.DeadStages240.Parallel.output500 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3657 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output500_def]
  kernel_rfl

theorem input501_eq : InitECandidate.Proofs.DeadStages240.Parallel.input501 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4151 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input501_def]
  kernel_rfl

theorem output501_eq : InitECandidate.Proofs.DeadStages240.Parallel.output501 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3655 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output501_def]
  kernel_rfl

theorem input502_eq : InitECandidate.Proofs.DeadStages240.Parallel.input502 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4149 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input502_def]
  kernel_rfl

theorem output502_eq : InitECandidate.Proofs.DeadStages240.Parallel.output502 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3653 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output502_def]
  kernel_rfl

theorem input503_eq : InitECandidate.Proofs.DeadStages240.Parallel.input503 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4148 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input503_def]
  kernel_rfl

theorem output503_eq : InitECandidate.Proofs.DeadStages240.Parallel.output503 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3652 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output503_def]
  kernel_rfl

theorem input504_eq : InitECandidate.Proofs.DeadStages240.Parallel.input504 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4150 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input504_def]
  simp only [input503_eq, input502_eq]
  kernel_rfl

theorem output504_eq : InitECandidate.Proofs.DeadStages240.Parallel.output504 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3654 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output504_def]
  simp only [output503_eq, output502_eq]
  kernel_rfl

theorem input505_eq : InitECandidate.Proofs.DeadStages240.Parallel.input505 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4152 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input505_def]
  simp only [input504_eq, input501_eq]
  kernel_rfl

theorem output505_eq : InitECandidate.Proofs.DeadStages240.Parallel.output505 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3656 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output505_def]
  simp only [output504_eq, output501_eq]
  kernel_rfl

theorem input506_eq : InitECandidate.Proofs.DeadStages240.Parallel.input506 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4154 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input506_def]
  simp only [input505_eq, input500_eq]
  kernel_rfl

theorem output506_eq : InitECandidate.Proofs.DeadStages240.Parallel.output506 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3658 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output506_def]
  simp only [output505_eq, output500_eq]
  kernel_rfl

theorem input507_eq : InitECandidate.Proofs.DeadStages240.Parallel.input507 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4156 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input507_def]
  simp only [input506_eq, input499_eq]
  kernel_rfl

theorem output507_eq : InitECandidate.Proofs.DeadStages240.Parallel.output507 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3660 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output507_def]
  simp only [output506_eq, output499_eq]
  kernel_rfl

theorem input508_eq : InitECandidate.Proofs.DeadStages240.Parallel.input508 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4145 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input508_def]
  kernel_rfl

theorem output508_eq : InitECandidate.Proofs.DeadStages240.Parallel.output508 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3649 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output508_def]
  kernel_rfl

theorem input509_eq : InitECandidate.Proofs.DeadStages240.Parallel.input509 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4144 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input509_def]
  kernel_rfl

theorem output509_eq : InitECandidate.Proofs.DeadStages240.Parallel.output509 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3648 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output509_def]
  kernel_rfl

theorem input510_eq : InitECandidate.Proofs.DeadStages240.Parallel.input510 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4146 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input510_def]
  simp only [input509_eq, input508_eq]
  kernel_rfl

theorem output510_eq : InitECandidate.Proofs.DeadStages240.Parallel.output510 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3650 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output510_def]
  simp only [output509_eq, output508_eq]
  kernel_rfl

theorem input511_eq : InitECandidate.Proofs.DeadStages240.Parallel.input511 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_2_4142 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.input511_def]
  kernel_rfl

theorem output511_eq : InitECandidate.Proofs.DeadStages240.Parallel.output511 =
    InitECandidate.Proofs.WordStages.Parallel240.word240_3_3646 := by
  rw [InitECandidate.Proofs.DeadStages240.Parallel.output511_def]
  kernel_rfl

#print axioms output511_eq
end InitECandidate.Proofs.WordStages.Parallel240.AgreementsParallel
