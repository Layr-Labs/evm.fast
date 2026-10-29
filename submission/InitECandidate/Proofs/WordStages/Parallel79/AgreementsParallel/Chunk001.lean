import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel79.Data2
import InitECandidate.Proofs.WordStages.Parallel79.Data3
import InitECandidate.Proofs.DeadStages79.Parallel.Data.Chunk001
import InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel.Chunk000

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel
theorem input256_eq : InitECandidate.Proofs.DeadStages79.Parallel.input256 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1426 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input256_def]
  simp only [input255_eq, input248_eq]
  kernel_rfl

theorem output256_eq : InitECandidate.Proofs.DeadStages79.Parallel.output256 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_864 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output256_def]
  simp only [output255_eq, output248_eq]
  kernel_rfl

theorem input257_eq : InitECandidate.Proofs.DeadStages79.Parallel.input257 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1429 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input257_def]
  simp only [input256_eq, input245_eq]
  kernel_rfl

theorem output257_eq : InitECandidate.Proofs.DeadStages79.Parallel.output257 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_864 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output257_def]
  simp only [output256_eq]

theorem input258_eq : InitECandidate.Proofs.DeadStages79.Parallel.input258 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input258_def]
  kernel_rfl

theorem output258_eq : InitECandidate.Proofs.DeadStages79.Parallel.output258 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output258_def]
  kernel_rfl

theorem input259_eq : InitECandidate.Proofs.DeadStages79.Parallel.input259 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1430 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input259_def]
  kernel_rfl

theorem input260_eq : InitECandidate.Proofs.DeadStages79.Parallel.input260 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1431 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input260_def]
  simp only [input259_eq, input258_eq]
  kernel_rfl

theorem output260_eq : InitECandidate.Proofs.DeadStages79.Parallel.output260 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output260_def]
  simp only [output258_eq]

theorem input261_eq : InitECandidate.Proofs.DeadStages79.Parallel.input261 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input261_def]
  kernel_rfl

theorem input262_eq : InitECandidate.Proofs.DeadStages79.Parallel.input262 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1432 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input262_def]
  simp only [input261_eq, input260_eq]
  kernel_rfl

theorem output262_eq : InitECandidate.Proofs.DeadStages79.Parallel.output262 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output262_def]
  simp only [output260_eq]

theorem input263_eq : InitECandidate.Proofs.DeadStages79.Parallel.input263 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1433 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input263_def]
  simp only [input257_eq, input262_eq]
  kernel_rfl

theorem output263_eq : InitECandidate.Proofs.DeadStages79.Parallel.output263 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_865 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output263_def]
  simp only [output257_eq, output262_eq]
  kernel_rfl

theorem input264_eq : InitECandidate.Proofs.DeadStages79.Parallel.input264 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1438 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input264_def]
  simp only [input263_eq, input242_eq]
  kernel_rfl

theorem output264_eq : InitECandidate.Proofs.DeadStages79.Parallel.output264 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_866 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output264_def]
  simp only [output263_eq, output242_eq]
  kernel_rfl

theorem input265_eq : InitECandidate.Proofs.DeadStages79.Parallel.input265 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1416 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input265_def]
  kernel_rfl

theorem output265_eq : InitECandidate.Proofs.DeadStages79.Parallel.output265 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_858 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output265_def]
  kernel_rfl

theorem input266_eq : InitECandidate.Proofs.DeadStages79.Parallel.input266 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1414 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input266_def]
  kernel_rfl

theorem output266_eq : InitECandidate.Proofs.DeadStages79.Parallel.output266 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_856 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output266_def]
  kernel_rfl

theorem input267_eq : InitECandidate.Proofs.DeadStages79.Parallel.input267 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1412 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input267_def]
  kernel_rfl

theorem output267_eq : InitECandidate.Proofs.DeadStages79.Parallel.output267 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_854 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output267_def]
  kernel_rfl

theorem input268_eq : InitECandidate.Proofs.DeadStages79.Parallel.input268 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1409 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input268_def]
  kernel_rfl

theorem output268_eq : InitECandidate.Proofs.DeadStages79.Parallel.output268 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_851 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output268_def]
  kernel_rfl

theorem input269_eq : InitECandidate.Proofs.DeadStages79.Parallel.input269 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1406 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input269_def]
  kernel_rfl

theorem output269_eq : InitECandidate.Proofs.DeadStages79.Parallel.output269 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_848 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output269_def]
  kernel_rfl

theorem input270_eq : InitECandidate.Proofs.DeadStages79.Parallel.input270 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1405 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input270_def]
  kernel_rfl

theorem output270_eq : InitECandidate.Proofs.DeadStages79.Parallel.output270 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_847 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output270_def]
  kernel_rfl

theorem input271_eq : InitECandidate.Proofs.DeadStages79.Parallel.input271 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1407 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input271_def]
  simp only [input270_eq, input269_eq]
  kernel_rfl

theorem output271_eq : InitECandidate.Proofs.DeadStages79.Parallel.output271 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_849 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output271_def]
  simp only [output270_eq, output269_eq]
  kernel_rfl

theorem input272_eq : InitECandidate.Proofs.DeadStages79.Parallel.input272 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1404 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input272_def]
  kernel_rfl

theorem output272_eq : InitECandidate.Proofs.DeadStages79.Parallel.output272 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_846 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output272_def]
  kernel_rfl

theorem input273_eq : InitECandidate.Proofs.DeadStages79.Parallel.input273 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1408 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input273_def]
  simp only [input272_eq, input271_eq]
  kernel_rfl

theorem output273_eq : InitECandidate.Proofs.DeadStages79.Parallel.output273 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_850 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output273_def]
  simp only [output272_eq, output271_eq]
  kernel_rfl

theorem input274_eq : InitECandidate.Proofs.DeadStages79.Parallel.input274 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1410 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input274_def]
  simp only [input273_eq, input268_eq]
  kernel_rfl

theorem output274_eq : InitECandidate.Proofs.DeadStages79.Parallel.output274 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_852 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output274_def]
  simp only [output273_eq, output268_eq]
  kernel_rfl

theorem input275_eq : InitECandidate.Proofs.DeadStages79.Parallel.input275 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1402 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input275_def]
  kernel_rfl

theorem output275_eq : InitECandidate.Proofs.DeadStages79.Parallel.output275 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_844 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output275_def]
  kernel_rfl

theorem input276_eq : InitECandidate.Proofs.DeadStages79.Parallel.input276 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1399 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input276_def]
  kernel_rfl

theorem output276_eq : InitECandidate.Proofs.DeadStages79.Parallel.output276 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_841 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output276_def]
  kernel_rfl

theorem input277_eq : InitECandidate.Proofs.DeadStages79.Parallel.input277 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1396 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input277_def]
  kernel_rfl

theorem output277_eq : InitECandidate.Proofs.DeadStages79.Parallel.output277 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_838 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output277_def]
  kernel_rfl

theorem input278_eq : InitECandidate.Proofs.DeadStages79.Parallel.input278 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1395 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input278_def]
  kernel_rfl

theorem output278_eq : InitECandidate.Proofs.DeadStages79.Parallel.output278 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_837 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output278_def]
  kernel_rfl

theorem input279_eq : InitECandidate.Proofs.DeadStages79.Parallel.input279 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1397 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input279_def]
  simp only [input278_eq, input277_eq]
  kernel_rfl

theorem output279_eq : InitECandidate.Proofs.DeadStages79.Parallel.output279 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_839 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output279_def]
  simp only [output278_eq, output277_eq]
  kernel_rfl

theorem input280_eq : InitECandidate.Proofs.DeadStages79.Parallel.input280 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1394 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input280_def]
  kernel_rfl

theorem output280_eq : InitECandidate.Proofs.DeadStages79.Parallel.output280 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_836 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output280_def]
  kernel_rfl

theorem input281_eq : InitECandidate.Proofs.DeadStages79.Parallel.input281 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1398 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input281_def]
  simp only [input280_eq, input279_eq]
  kernel_rfl

theorem output281_eq : InitECandidate.Proofs.DeadStages79.Parallel.output281 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_840 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output281_def]
  simp only [output280_eq, output279_eq]
  kernel_rfl

theorem input282_eq : InitECandidate.Proofs.DeadStages79.Parallel.input282 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1400 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input282_def]
  simp only [input281_eq, input276_eq]
  kernel_rfl

theorem output282_eq : InitECandidate.Proofs.DeadStages79.Parallel.output282 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_842 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output282_def]
  simp only [output281_eq, output276_eq]
  kernel_rfl

theorem input283_eq : InitECandidate.Proofs.DeadStages79.Parallel.input283 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input283_def]
  kernel_rfl

theorem output283_eq : InitECandidate.Proofs.DeadStages79.Parallel.output283 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output283_def]
  kernel_rfl

theorem input284_eq : InitECandidate.Proofs.DeadStages79.Parallel.input284 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1389 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input284_def]
  kernel_rfl

theorem input285_eq : InitECandidate.Proofs.DeadStages79.Parallel.input285 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input285_def]
  kernel_rfl

theorem output285_eq : InitECandidate.Proofs.DeadStages79.Parallel.output285 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output285_def]
  kernel_rfl

theorem input286_eq : InitECandidate.Proofs.DeadStages79.Parallel.input286 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1387 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input286_def]
  kernel_rfl

theorem input287_eq : InitECandidate.Proofs.DeadStages79.Parallel.input287 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1388 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input287_def]
  simp only [input286_eq, input285_eq]
  kernel_rfl

theorem output287_eq : InitECandidate.Proofs.DeadStages79.Parallel.output287 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output287_def]
  simp only [output285_eq]

theorem input288_eq : InitECandidate.Proofs.DeadStages79.Parallel.input288 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1390 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input288_def]
  simp only [input287_eq, input284_eq]
  kernel_rfl

theorem output288_eq : InitECandidate.Proofs.DeadStages79.Parallel.output288 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output288_def]
  simp only [output287_eq]

theorem input289_eq : InitECandidate.Proofs.DeadStages79.Parallel.input289 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input289_def]
  kernel_rfl

theorem input290_eq : InitECandidate.Proofs.DeadStages79.Parallel.input290 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1380 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input290_def]
  kernel_rfl

theorem input291_eq : InitECandidate.Proofs.DeadStages79.Parallel.input291 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1381 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input291_def]
  simp only [input290_eq, input289_eq]
  kernel_rfl

theorem input292_eq : InitECandidate.Proofs.DeadStages79.Parallel.input292 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1185 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input292_def]
  kernel_rfl

theorem output292_eq : InitECandidate.Proofs.DeadStages79.Parallel.output292 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_697 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output292_def]
  kernel_rfl

theorem input293_eq : InitECandidate.Proofs.DeadStages79.Parallel.input293 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1377 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input293_def]
  kernel_rfl

theorem output293_eq : InitECandidate.Proofs.DeadStages79.Parallel.output293 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_829 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output293_def]
  kernel_rfl

theorem input294_eq : InitECandidate.Proofs.DeadStages79.Parallel.input294 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1378 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input294_def]
  simp only [input293_eq, input292_eq]
  kernel_rfl

theorem output294_eq : InitECandidate.Proofs.DeadStages79.Parallel.output294 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_830 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output294_def]
  simp only [output293_eq, output292_eq]
  kernel_rfl

theorem input295_eq : InitECandidate.Proofs.DeadStages79.Parallel.input295 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1375 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input295_def]
  kernel_rfl

theorem output295_eq : InitECandidate.Proofs.DeadStages79.Parallel.output295 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_827 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output295_def]
  kernel_rfl

theorem input296_eq : InitECandidate.Proofs.DeadStages79.Parallel.input296 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1373 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input296_def]
  kernel_rfl

theorem input297_eq : InitECandidate.Proofs.DeadStages79.Parallel.input297 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input297_def]
  kernel_rfl

theorem output297_eq : InitECandidate.Proofs.DeadStages79.Parallel.output297 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output297_def]
  kernel_rfl

theorem input298_eq : InitECandidate.Proofs.DeadStages79.Parallel.input298 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1371 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input298_def]
  kernel_rfl

theorem input299_eq : InitECandidate.Proofs.DeadStages79.Parallel.input299 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1372 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input299_def]
  simp only [input298_eq, input297_eq]
  kernel_rfl

theorem output299_eq : InitECandidate.Proofs.DeadStages79.Parallel.output299 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output299_def]
  simp only [output297_eq]

theorem input300_eq : InitECandidate.Proofs.DeadStages79.Parallel.input300 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1374 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input300_def]
  simp only [input299_eq, input296_eq]
  kernel_rfl

theorem output300_eq : InitECandidate.Proofs.DeadStages79.Parallel.output300 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output300_def]
  simp only [output299_eq]

theorem input301_eq : InitECandidate.Proofs.DeadStages79.Parallel.input301 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1376 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input301_def]
  simp only [input300_eq, input295_eq]
  kernel_rfl

theorem output301_eq : InitECandidate.Proofs.DeadStages79.Parallel.output301 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_828 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output301_def]
  simp only [output300_eq, output295_eq]
  kernel_rfl

theorem input302_eq : InitECandidate.Proofs.DeadStages79.Parallel.input302 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1379 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input302_def]
  simp only [input301_eq, input294_eq]
  kernel_rfl

theorem output302_eq : InitECandidate.Proofs.DeadStages79.Parallel.output302 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_831 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output302_def]
  simp only [output301_eq, output294_eq]
  kernel_rfl

theorem input303_eq : InitECandidate.Proofs.DeadStages79.Parallel.input303 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1382 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input303_def]
  simp only [input302_eq, input291_eq]
  kernel_rfl

theorem output303_eq : InitECandidate.Proofs.DeadStages79.Parallel.output303 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_831 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output303_def]
  simp only [output302_eq]

theorem input304_eq : InitECandidate.Proofs.DeadStages79.Parallel.input304 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input304_def]
  kernel_rfl

theorem output304_eq : InitECandidate.Proofs.DeadStages79.Parallel.output304 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output304_def]
  kernel_rfl

theorem input305_eq : InitECandidate.Proofs.DeadStages79.Parallel.input305 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1383 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input305_def]
  kernel_rfl

theorem input306_eq : InitECandidate.Proofs.DeadStages79.Parallel.input306 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1384 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input306_def]
  simp only [input305_eq, input304_eq]
  kernel_rfl

theorem output306_eq : InitECandidate.Proofs.DeadStages79.Parallel.output306 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output306_def]
  simp only [output304_eq]

theorem input307_eq : InitECandidate.Proofs.DeadStages79.Parallel.input307 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input307_def]
  kernel_rfl

theorem input308_eq : InitECandidate.Proofs.DeadStages79.Parallel.input308 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1385 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input308_def]
  simp only [input307_eq, input306_eq]
  kernel_rfl

theorem output308_eq : InitECandidate.Proofs.DeadStages79.Parallel.output308 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output308_def]
  simp only [output306_eq]

theorem input309_eq : InitECandidate.Proofs.DeadStages79.Parallel.input309 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1386 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input309_def]
  simp only [input303_eq, input308_eq]
  kernel_rfl

theorem output309_eq : InitECandidate.Proofs.DeadStages79.Parallel.output309 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_832 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output309_def]
  simp only [output303_eq, output308_eq]
  kernel_rfl

theorem input310_eq : InitECandidate.Proofs.DeadStages79.Parallel.input310 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1391 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input310_def]
  simp only [input309_eq, input288_eq]
  kernel_rfl

theorem output310_eq : InitECandidate.Proofs.DeadStages79.Parallel.output310 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_833 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output310_def]
  simp only [output309_eq, output288_eq]
  kernel_rfl

theorem input311_eq : InitECandidate.Proofs.DeadStages79.Parallel.input311 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1369 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input311_def]
  kernel_rfl

theorem output311_eq : InitECandidate.Proofs.DeadStages79.Parallel.output311 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_825 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output311_def]
  kernel_rfl

theorem input312_eq : InitECandidate.Proofs.DeadStages79.Parallel.input312 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1367 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input312_def]
  kernel_rfl

theorem output312_eq : InitECandidate.Proofs.DeadStages79.Parallel.output312 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_823 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output312_def]
  kernel_rfl

theorem input313_eq : InitECandidate.Proofs.DeadStages79.Parallel.input313 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1365 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input313_def]
  kernel_rfl

theorem output313_eq : InitECandidate.Proofs.DeadStages79.Parallel.output313 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_821 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output313_def]
  kernel_rfl

theorem input314_eq : InitECandidate.Proofs.DeadStages79.Parallel.input314 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1362 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input314_def]
  kernel_rfl

theorem output314_eq : InitECandidate.Proofs.DeadStages79.Parallel.output314 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_818 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output314_def]
  kernel_rfl

theorem input315_eq : InitECandidate.Proofs.DeadStages79.Parallel.input315 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1359 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input315_def]
  kernel_rfl

theorem output315_eq : InitECandidate.Proofs.DeadStages79.Parallel.output315 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_815 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output315_def]
  kernel_rfl

theorem input316_eq : InitECandidate.Proofs.DeadStages79.Parallel.input316 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1358 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input316_def]
  kernel_rfl

theorem output316_eq : InitECandidate.Proofs.DeadStages79.Parallel.output316 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_814 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output316_def]
  kernel_rfl

theorem input317_eq : InitECandidate.Proofs.DeadStages79.Parallel.input317 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1360 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input317_def]
  simp only [input316_eq, input315_eq]
  kernel_rfl

theorem output317_eq : InitECandidate.Proofs.DeadStages79.Parallel.output317 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_816 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output317_def]
  simp only [output316_eq, output315_eq]
  kernel_rfl

theorem input318_eq : InitECandidate.Proofs.DeadStages79.Parallel.input318 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1357 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input318_def]
  kernel_rfl

theorem output318_eq : InitECandidate.Proofs.DeadStages79.Parallel.output318 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_813 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output318_def]
  kernel_rfl

theorem input319_eq : InitECandidate.Proofs.DeadStages79.Parallel.input319 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1361 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input319_def]
  simp only [input318_eq, input317_eq]
  kernel_rfl

theorem output319_eq : InitECandidate.Proofs.DeadStages79.Parallel.output319 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_817 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output319_def]
  simp only [output318_eq, output317_eq]
  kernel_rfl

theorem input320_eq : InitECandidate.Proofs.DeadStages79.Parallel.input320 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1363 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input320_def]
  simp only [input319_eq, input314_eq]
  kernel_rfl

theorem output320_eq : InitECandidate.Proofs.DeadStages79.Parallel.output320 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_819 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output320_def]
  simp only [output319_eq, output314_eq]
  kernel_rfl

theorem input321_eq : InitECandidate.Proofs.DeadStages79.Parallel.input321 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1355 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input321_def]
  kernel_rfl

theorem output321_eq : InitECandidate.Proofs.DeadStages79.Parallel.output321 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_811 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output321_def]
  kernel_rfl

theorem input322_eq : InitECandidate.Proofs.DeadStages79.Parallel.input322 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1352 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input322_def]
  kernel_rfl

theorem output322_eq : InitECandidate.Proofs.DeadStages79.Parallel.output322 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_808 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output322_def]
  kernel_rfl

theorem input323_eq : InitECandidate.Proofs.DeadStages79.Parallel.input323 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1349 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input323_def]
  kernel_rfl

theorem output323_eq : InitECandidate.Proofs.DeadStages79.Parallel.output323 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_805 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output323_def]
  kernel_rfl

theorem input324_eq : InitECandidate.Proofs.DeadStages79.Parallel.input324 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1348 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input324_def]
  kernel_rfl

theorem output324_eq : InitECandidate.Proofs.DeadStages79.Parallel.output324 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_804 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output324_def]
  kernel_rfl

theorem input325_eq : InitECandidate.Proofs.DeadStages79.Parallel.input325 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1350 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input325_def]
  simp only [input324_eq, input323_eq]
  kernel_rfl

theorem output325_eq : InitECandidate.Proofs.DeadStages79.Parallel.output325 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_806 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output325_def]
  simp only [output324_eq, output323_eq]
  kernel_rfl

theorem input326_eq : InitECandidate.Proofs.DeadStages79.Parallel.input326 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1347 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input326_def]
  kernel_rfl

theorem output326_eq : InitECandidate.Proofs.DeadStages79.Parallel.output326 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_803 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output326_def]
  kernel_rfl

theorem input327_eq : InitECandidate.Proofs.DeadStages79.Parallel.input327 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1351 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input327_def]
  simp only [input326_eq, input325_eq]
  kernel_rfl

theorem output327_eq : InitECandidate.Proofs.DeadStages79.Parallel.output327 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_807 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output327_def]
  simp only [output326_eq, output325_eq]
  kernel_rfl

theorem input328_eq : InitECandidate.Proofs.DeadStages79.Parallel.input328 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1353 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input328_def]
  simp only [input327_eq, input322_eq]
  kernel_rfl

theorem output328_eq : InitECandidate.Proofs.DeadStages79.Parallel.output328 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_809 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output328_def]
  simp only [output327_eq, output322_eq]
  kernel_rfl

theorem input329_eq : InitECandidate.Proofs.DeadStages79.Parallel.input329 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input329_def]
  kernel_rfl

theorem output329_eq : InitECandidate.Proofs.DeadStages79.Parallel.output329 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output329_def]
  kernel_rfl

theorem input330_eq : InitECandidate.Proofs.DeadStages79.Parallel.input330 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1342 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input330_def]
  kernel_rfl

theorem input331_eq : InitECandidate.Proofs.DeadStages79.Parallel.input331 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input331_def]
  kernel_rfl

theorem output331_eq : InitECandidate.Proofs.DeadStages79.Parallel.output331 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output331_def]
  kernel_rfl

theorem input332_eq : InitECandidate.Proofs.DeadStages79.Parallel.input332 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1340 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input332_def]
  kernel_rfl

theorem input333_eq : InitECandidate.Proofs.DeadStages79.Parallel.input333 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1341 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input333_def]
  simp only [input332_eq, input331_eq]
  kernel_rfl

theorem output333_eq : InitECandidate.Proofs.DeadStages79.Parallel.output333 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output333_def]
  simp only [output331_eq]

theorem input334_eq : InitECandidate.Proofs.DeadStages79.Parallel.input334 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1343 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input334_def]
  simp only [input333_eq, input330_eq]
  kernel_rfl

theorem output334_eq : InitECandidate.Proofs.DeadStages79.Parallel.output334 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output334_def]
  simp only [output333_eq]

theorem input335_eq : InitECandidate.Proofs.DeadStages79.Parallel.input335 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input335_def]
  kernel_rfl

theorem input336_eq : InitECandidate.Proofs.DeadStages79.Parallel.input336 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1333 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input336_def]
  kernel_rfl

theorem input337_eq : InitECandidate.Proofs.DeadStages79.Parallel.input337 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1334 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input337_def]
  simp only [input336_eq, input335_eq]
  kernel_rfl

theorem input338_eq : InitECandidate.Proofs.DeadStages79.Parallel.input338 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1185 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input338_def]
  kernel_rfl

theorem output338_eq : InitECandidate.Proofs.DeadStages79.Parallel.output338 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_697 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output338_def]
  kernel_rfl

theorem input339_eq : InitECandidate.Proofs.DeadStages79.Parallel.input339 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1330 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input339_def]
  kernel_rfl

theorem output339_eq : InitECandidate.Proofs.DeadStages79.Parallel.output339 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_796 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output339_def]
  kernel_rfl

theorem input340_eq : InitECandidate.Proofs.DeadStages79.Parallel.input340 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1331 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input340_def]
  simp only [input339_eq, input338_eq]
  kernel_rfl

theorem output340_eq : InitECandidate.Proofs.DeadStages79.Parallel.output340 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_797 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output340_def]
  simp only [output339_eq, output338_eq]
  kernel_rfl

theorem input341_eq : InitECandidate.Proofs.DeadStages79.Parallel.input341 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1328 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input341_def]
  kernel_rfl

theorem output341_eq : InitECandidate.Proofs.DeadStages79.Parallel.output341 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_794 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output341_def]
  kernel_rfl

theorem input342_eq : InitECandidate.Proofs.DeadStages79.Parallel.input342 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1326 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input342_def]
  kernel_rfl

theorem input343_eq : InitECandidate.Proofs.DeadStages79.Parallel.input343 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input343_def]
  kernel_rfl

theorem output343_eq : InitECandidate.Proofs.DeadStages79.Parallel.output343 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output343_def]
  kernel_rfl

theorem input344_eq : InitECandidate.Proofs.DeadStages79.Parallel.input344 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1324 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input344_def]
  kernel_rfl

theorem input345_eq : InitECandidate.Proofs.DeadStages79.Parallel.input345 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1325 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input345_def]
  simp only [input344_eq, input343_eq]
  kernel_rfl

theorem output345_eq : InitECandidate.Proofs.DeadStages79.Parallel.output345 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output345_def]
  simp only [output343_eq]

theorem input346_eq : InitECandidate.Proofs.DeadStages79.Parallel.input346 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1327 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input346_def]
  simp only [input345_eq, input342_eq]
  kernel_rfl

theorem output346_eq : InitECandidate.Proofs.DeadStages79.Parallel.output346 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output346_def]
  simp only [output345_eq]

theorem input347_eq : InitECandidate.Proofs.DeadStages79.Parallel.input347 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1329 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input347_def]
  simp only [input346_eq, input341_eq]
  kernel_rfl

theorem output347_eq : InitECandidate.Proofs.DeadStages79.Parallel.output347 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_795 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output347_def]
  simp only [output346_eq, output341_eq]
  kernel_rfl

theorem input348_eq : InitECandidate.Proofs.DeadStages79.Parallel.input348 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1332 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input348_def]
  simp only [input347_eq, input340_eq]
  kernel_rfl

theorem output348_eq : InitECandidate.Proofs.DeadStages79.Parallel.output348 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_798 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output348_def]
  simp only [output347_eq, output340_eq]
  kernel_rfl

theorem input349_eq : InitECandidate.Proofs.DeadStages79.Parallel.input349 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1335 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input349_def]
  simp only [input348_eq, input337_eq]
  kernel_rfl

theorem output349_eq : InitECandidate.Proofs.DeadStages79.Parallel.output349 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_798 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output349_def]
  simp only [output348_eq]

theorem input350_eq : InitECandidate.Proofs.DeadStages79.Parallel.input350 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input350_def]
  kernel_rfl

theorem output350_eq : InitECandidate.Proofs.DeadStages79.Parallel.output350 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output350_def]
  kernel_rfl

theorem input351_eq : InitECandidate.Proofs.DeadStages79.Parallel.input351 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1336 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input351_def]
  kernel_rfl

theorem input352_eq : InitECandidate.Proofs.DeadStages79.Parallel.input352 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1337 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input352_def]
  simp only [input351_eq, input350_eq]
  kernel_rfl

theorem output352_eq : InitECandidate.Proofs.DeadStages79.Parallel.output352 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output352_def]
  simp only [output350_eq]

theorem input353_eq : InitECandidate.Proofs.DeadStages79.Parallel.input353 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input353_def]
  kernel_rfl

theorem input354_eq : InitECandidate.Proofs.DeadStages79.Parallel.input354 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1338 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input354_def]
  simp only [input353_eq, input352_eq]
  kernel_rfl

theorem output354_eq : InitECandidate.Proofs.DeadStages79.Parallel.output354 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output354_def]
  simp only [output352_eq]

theorem input355_eq : InitECandidate.Proofs.DeadStages79.Parallel.input355 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1339 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input355_def]
  simp only [input349_eq, input354_eq]
  kernel_rfl

theorem output355_eq : InitECandidate.Proofs.DeadStages79.Parallel.output355 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_799 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output355_def]
  simp only [output349_eq, output354_eq]
  kernel_rfl

theorem input356_eq : InitECandidate.Proofs.DeadStages79.Parallel.input356 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1344 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input356_def]
  simp only [input355_eq, input334_eq]
  kernel_rfl

theorem output356_eq : InitECandidate.Proofs.DeadStages79.Parallel.output356 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_800 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output356_def]
  simp only [output355_eq, output334_eq]
  kernel_rfl

theorem input357_eq : InitECandidate.Proofs.DeadStages79.Parallel.input357 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1322 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input357_def]
  kernel_rfl

theorem output357_eq : InitECandidate.Proofs.DeadStages79.Parallel.output357 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_792 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output357_def]
  kernel_rfl

theorem input358_eq : InitECandidate.Proofs.DeadStages79.Parallel.input358 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1320 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input358_def]
  kernel_rfl

theorem output358_eq : InitECandidate.Proofs.DeadStages79.Parallel.output358 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_790 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output358_def]
  kernel_rfl

theorem input359_eq : InitECandidate.Proofs.DeadStages79.Parallel.input359 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1318 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input359_def]
  kernel_rfl

theorem output359_eq : InitECandidate.Proofs.DeadStages79.Parallel.output359 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_788 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output359_def]
  kernel_rfl

theorem input360_eq : InitECandidate.Proofs.DeadStages79.Parallel.input360 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1315 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input360_def]
  kernel_rfl

theorem output360_eq : InitECandidate.Proofs.DeadStages79.Parallel.output360 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_785 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output360_def]
  kernel_rfl

theorem input361_eq : InitECandidate.Proofs.DeadStages79.Parallel.input361 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1312 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input361_def]
  kernel_rfl

theorem output361_eq : InitECandidate.Proofs.DeadStages79.Parallel.output361 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_782 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output361_def]
  kernel_rfl

theorem input362_eq : InitECandidate.Proofs.DeadStages79.Parallel.input362 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1311 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input362_def]
  kernel_rfl

theorem output362_eq : InitECandidate.Proofs.DeadStages79.Parallel.output362 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_781 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output362_def]
  kernel_rfl

theorem input363_eq : InitECandidate.Proofs.DeadStages79.Parallel.input363 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1313 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input363_def]
  simp only [input362_eq, input361_eq]
  kernel_rfl

theorem output363_eq : InitECandidate.Proofs.DeadStages79.Parallel.output363 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_783 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output363_def]
  simp only [output362_eq, output361_eq]
  kernel_rfl

theorem input364_eq : InitECandidate.Proofs.DeadStages79.Parallel.input364 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1310 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input364_def]
  kernel_rfl

theorem output364_eq : InitECandidate.Proofs.DeadStages79.Parallel.output364 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_780 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output364_def]
  kernel_rfl

theorem input365_eq : InitECandidate.Proofs.DeadStages79.Parallel.input365 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1314 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input365_def]
  simp only [input364_eq, input363_eq]
  kernel_rfl

theorem output365_eq : InitECandidate.Proofs.DeadStages79.Parallel.output365 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_784 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output365_def]
  simp only [output364_eq, output363_eq]
  kernel_rfl

theorem input366_eq : InitECandidate.Proofs.DeadStages79.Parallel.input366 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1316 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input366_def]
  simp only [input365_eq, input360_eq]
  kernel_rfl

theorem output366_eq : InitECandidate.Proofs.DeadStages79.Parallel.output366 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_786 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output366_def]
  simp only [output365_eq, output360_eq]
  kernel_rfl

theorem input367_eq : InitECandidate.Proofs.DeadStages79.Parallel.input367 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1308 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input367_def]
  kernel_rfl

theorem output367_eq : InitECandidate.Proofs.DeadStages79.Parallel.output367 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_778 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output367_def]
  kernel_rfl

theorem input368_eq : InitECandidate.Proofs.DeadStages79.Parallel.input368 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1305 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input368_def]
  kernel_rfl

theorem output368_eq : InitECandidate.Proofs.DeadStages79.Parallel.output368 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_775 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output368_def]
  kernel_rfl

theorem input369_eq : InitECandidate.Proofs.DeadStages79.Parallel.input369 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1302 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input369_def]
  kernel_rfl

theorem output369_eq : InitECandidate.Proofs.DeadStages79.Parallel.output369 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_772 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output369_def]
  kernel_rfl

theorem input370_eq : InitECandidate.Proofs.DeadStages79.Parallel.input370 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1301 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input370_def]
  kernel_rfl

theorem output370_eq : InitECandidate.Proofs.DeadStages79.Parallel.output370 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_771 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output370_def]
  kernel_rfl

theorem input371_eq : InitECandidate.Proofs.DeadStages79.Parallel.input371 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1303 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input371_def]
  simp only [input370_eq, input369_eq]
  kernel_rfl

theorem output371_eq : InitECandidate.Proofs.DeadStages79.Parallel.output371 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_773 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output371_def]
  simp only [output370_eq, output369_eq]
  kernel_rfl

theorem input372_eq : InitECandidate.Proofs.DeadStages79.Parallel.input372 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1300 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input372_def]
  kernel_rfl

theorem output372_eq : InitECandidate.Proofs.DeadStages79.Parallel.output372 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_770 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output372_def]
  kernel_rfl

theorem input373_eq : InitECandidate.Proofs.DeadStages79.Parallel.input373 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1304 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input373_def]
  simp only [input372_eq, input371_eq]
  kernel_rfl

theorem output373_eq : InitECandidate.Proofs.DeadStages79.Parallel.output373 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_774 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output373_def]
  simp only [output372_eq, output371_eq]
  kernel_rfl

theorem input374_eq : InitECandidate.Proofs.DeadStages79.Parallel.input374 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1306 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input374_def]
  simp only [input373_eq, input368_eq]
  kernel_rfl

theorem output374_eq : InitECandidate.Proofs.DeadStages79.Parallel.output374 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_776 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output374_def]
  simp only [output373_eq, output368_eq]
  kernel_rfl

theorem input375_eq : InitECandidate.Proofs.DeadStages79.Parallel.input375 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input375_def]
  kernel_rfl

theorem output375_eq : InitECandidate.Proofs.DeadStages79.Parallel.output375 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output375_def]
  kernel_rfl

theorem input376_eq : InitECandidate.Proofs.DeadStages79.Parallel.input376 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1295 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input376_def]
  kernel_rfl

theorem input377_eq : InitECandidate.Proofs.DeadStages79.Parallel.input377 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input377_def]
  kernel_rfl

theorem output377_eq : InitECandidate.Proofs.DeadStages79.Parallel.output377 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output377_def]
  kernel_rfl

theorem input378_eq : InitECandidate.Proofs.DeadStages79.Parallel.input378 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1293 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input378_def]
  kernel_rfl

theorem input379_eq : InitECandidate.Proofs.DeadStages79.Parallel.input379 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1294 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input379_def]
  simp only [input378_eq, input377_eq]
  kernel_rfl

theorem output379_eq : InitECandidate.Proofs.DeadStages79.Parallel.output379 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output379_def]
  simp only [output377_eq]

theorem input380_eq : InitECandidate.Proofs.DeadStages79.Parallel.input380 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1296 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input380_def]
  simp only [input379_eq, input376_eq]
  kernel_rfl

theorem output380_eq : InitECandidate.Proofs.DeadStages79.Parallel.output380 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output380_def]
  simp only [output379_eq]

theorem input381_eq : InitECandidate.Proofs.DeadStages79.Parallel.input381 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input381_def]
  kernel_rfl

theorem input382_eq : InitECandidate.Proofs.DeadStages79.Parallel.input382 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1286 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input382_def]
  kernel_rfl

theorem input383_eq : InitECandidate.Proofs.DeadStages79.Parallel.input383 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1287 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input383_def]
  simp only [input382_eq, input381_eq]
  kernel_rfl

theorem input384_eq : InitECandidate.Proofs.DeadStages79.Parallel.input384 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1185 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input384_def]
  kernel_rfl

theorem output384_eq : InitECandidate.Proofs.DeadStages79.Parallel.output384 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_697 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output384_def]
  kernel_rfl

theorem input385_eq : InitECandidate.Proofs.DeadStages79.Parallel.input385 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1283 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input385_def]
  kernel_rfl

theorem output385_eq : InitECandidate.Proofs.DeadStages79.Parallel.output385 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_763 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output385_def]
  kernel_rfl

theorem input386_eq : InitECandidate.Proofs.DeadStages79.Parallel.input386 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1284 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input386_def]
  simp only [input385_eq, input384_eq]
  kernel_rfl

theorem output386_eq : InitECandidate.Proofs.DeadStages79.Parallel.output386 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_764 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output386_def]
  simp only [output385_eq, output384_eq]
  kernel_rfl

theorem input387_eq : InitECandidate.Proofs.DeadStages79.Parallel.input387 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1281 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input387_def]
  kernel_rfl

theorem output387_eq : InitECandidate.Proofs.DeadStages79.Parallel.output387 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_761 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output387_def]
  kernel_rfl

theorem input388_eq : InitECandidate.Proofs.DeadStages79.Parallel.input388 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1279 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input388_def]
  kernel_rfl

theorem input389_eq : InitECandidate.Proofs.DeadStages79.Parallel.input389 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input389_def]
  kernel_rfl

theorem output389_eq : InitECandidate.Proofs.DeadStages79.Parallel.output389 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output389_def]
  kernel_rfl

theorem input390_eq : InitECandidate.Proofs.DeadStages79.Parallel.input390 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1277 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input390_def]
  kernel_rfl

theorem input391_eq : InitECandidate.Proofs.DeadStages79.Parallel.input391 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1278 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input391_def]
  simp only [input390_eq, input389_eq]
  kernel_rfl

theorem output391_eq : InitECandidate.Proofs.DeadStages79.Parallel.output391 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output391_def]
  simp only [output389_eq]

theorem input392_eq : InitECandidate.Proofs.DeadStages79.Parallel.input392 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1280 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input392_def]
  simp only [input391_eq, input388_eq]
  kernel_rfl

theorem output392_eq : InitECandidate.Proofs.DeadStages79.Parallel.output392 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output392_def]
  simp only [output391_eq]

theorem input393_eq : InitECandidate.Proofs.DeadStages79.Parallel.input393 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1282 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input393_def]
  simp only [input392_eq, input387_eq]
  kernel_rfl

theorem output393_eq : InitECandidate.Proofs.DeadStages79.Parallel.output393 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_762 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output393_def]
  simp only [output392_eq, output387_eq]
  kernel_rfl

theorem input394_eq : InitECandidate.Proofs.DeadStages79.Parallel.input394 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1285 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input394_def]
  simp only [input393_eq, input386_eq]
  kernel_rfl

theorem output394_eq : InitECandidate.Proofs.DeadStages79.Parallel.output394 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_765 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output394_def]
  simp only [output393_eq, output386_eq]
  kernel_rfl

theorem input395_eq : InitECandidate.Proofs.DeadStages79.Parallel.input395 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1288 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input395_def]
  simp only [input394_eq, input383_eq]
  kernel_rfl

theorem output395_eq : InitECandidate.Proofs.DeadStages79.Parallel.output395 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_765 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output395_def]
  simp only [output394_eq]

theorem input396_eq : InitECandidate.Proofs.DeadStages79.Parallel.input396 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input396_def]
  kernel_rfl

theorem output396_eq : InitECandidate.Proofs.DeadStages79.Parallel.output396 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output396_def]
  kernel_rfl

theorem input397_eq : InitECandidate.Proofs.DeadStages79.Parallel.input397 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1289 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input397_def]
  kernel_rfl

theorem input398_eq : InitECandidate.Proofs.DeadStages79.Parallel.input398 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1290 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input398_def]
  simp only [input397_eq, input396_eq]
  kernel_rfl

theorem output398_eq : InitECandidate.Proofs.DeadStages79.Parallel.output398 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output398_def]
  simp only [output396_eq]

theorem input399_eq : InitECandidate.Proofs.DeadStages79.Parallel.input399 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input399_def]
  kernel_rfl

theorem input400_eq : InitECandidate.Proofs.DeadStages79.Parallel.input400 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1291 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input400_def]
  simp only [input399_eq, input398_eq]
  kernel_rfl

theorem output400_eq : InitECandidate.Proofs.DeadStages79.Parallel.output400 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output400_def]
  simp only [output398_eq]

theorem input401_eq : InitECandidate.Proofs.DeadStages79.Parallel.input401 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1292 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input401_def]
  simp only [input395_eq, input400_eq]
  kernel_rfl

theorem output401_eq : InitECandidate.Proofs.DeadStages79.Parallel.output401 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_766 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output401_def]
  simp only [output395_eq, output400_eq]
  kernel_rfl

theorem input402_eq : InitECandidate.Proofs.DeadStages79.Parallel.input402 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1297 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input402_def]
  simp only [input401_eq, input380_eq]
  kernel_rfl

theorem output402_eq : InitECandidate.Proofs.DeadStages79.Parallel.output402 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_767 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output402_def]
  simp only [output401_eq, output380_eq]
  kernel_rfl

theorem input403_eq : InitECandidate.Proofs.DeadStages79.Parallel.input403 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1275 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input403_def]
  kernel_rfl

theorem output403_eq : InitECandidate.Proofs.DeadStages79.Parallel.output403 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_759 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output403_def]
  kernel_rfl

theorem input404_eq : InitECandidate.Proofs.DeadStages79.Parallel.input404 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1273 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input404_def]
  kernel_rfl

theorem output404_eq : InitECandidate.Proofs.DeadStages79.Parallel.output404 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_757 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output404_def]
  kernel_rfl

theorem input405_eq : InitECandidate.Proofs.DeadStages79.Parallel.input405 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1271 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input405_def]
  kernel_rfl

theorem output405_eq : InitECandidate.Proofs.DeadStages79.Parallel.output405 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_755 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output405_def]
  kernel_rfl

theorem input406_eq : InitECandidate.Proofs.DeadStages79.Parallel.input406 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1268 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input406_def]
  kernel_rfl

theorem output406_eq : InitECandidate.Proofs.DeadStages79.Parallel.output406 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_752 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output406_def]
  kernel_rfl

theorem input407_eq : InitECandidate.Proofs.DeadStages79.Parallel.input407 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1265 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input407_def]
  kernel_rfl

theorem output407_eq : InitECandidate.Proofs.DeadStages79.Parallel.output407 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_749 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output407_def]
  kernel_rfl

theorem input408_eq : InitECandidate.Proofs.DeadStages79.Parallel.input408 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1264 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input408_def]
  kernel_rfl

theorem output408_eq : InitECandidate.Proofs.DeadStages79.Parallel.output408 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_748 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output408_def]
  kernel_rfl

theorem input409_eq : InitECandidate.Proofs.DeadStages79.Parallel.input409 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1266 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input409_def]
  simp only [input408_eq, input407_eq]
  kernel_rfl

theorem output409_eq : InitECandidate.Proofs.DeadStages79.Parallel.output409 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_750 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output409_def]
  simp only [output408_eq, output407_eq]
  kernel_rfl

theorem input410_eq : InitECandidate.Proofs.DeadStages79.Parallel.input410 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1263 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input410_def]
  kernel_rfl

theorem output410_eq : InitECandidate.Proofs.DeadStages79.Parallel.output410 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_747 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output410_def]
  kernel_rfl

theorem input411_eq : InitECandidate.Proofs.DeadStages79.Parallel.input411 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1267 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input411_def]
  simp only [input410_eq, input409_eq]
  kernel_rfl

theorem output411_eq : InitECandidate.Proofs.DeadStages79.Parallel.output411 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_751 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output411_def]
  simp only [output410_eq, output409_eq]
  kernel_rfl

theorem input412_eq : InitECandidate.Proofs.DeadStages79.Parallel.input412 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1269 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input412_def]
  simp only [input411_eq, input406_eq]
  kernel_rfl

theorem output412_eq : InitECandidate.Proofs.DeadStages79.Parallel.output412 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_753 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output412_def]
  simp only [output411_eq, output406_eq]
  kernel_rfl

theorem input413_eq : InitECandidate.Proofs.DeadStages79.Parallel.input413 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1261 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input413_def]
  kernel_rfl

theorem output413_eq : InitECandidate.Proofs.DeadStages79.Parallel.output413 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_745 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output413_def]
  kernel_rfl

theorem input414_eq : InitECandidate.Proofs.DeadStages79.Parallel.input414 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1258 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input414_def]
  kernel_rfl

theorem output414_eq : InitECandidate.Proofs.DeadStages79.Parallel.output414 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_742 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output414_def]
  kernel_rfl

theorem input415_eq : InitECandidate.Proofs.DeadStages79.Parallel.input415 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1255 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input415_def]
  kernel_rfl

theorem output415_eq : InitECandidate.Proofs.DeadStages79.Parallel.output415 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_739 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output415_def]
  kernel_rfl

theorem input416_eq : InitECandidate.Proofs.DeadStages79.Parallel.input416 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1254 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input416_def]
  kernel_rfl

theorem output416_eq : InitECandidate.Proofs.DeadStages79.Parallel.output416 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_738 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output416_def]
  kernel_rfl

theorem input417_eq : InitECandidate.Proofs.DeadStages79.Parallel.input417 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1256 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input417_def]
  simp only [input416_eq, input415_eq]
  kernel_rfl

theorem output417_eq : InitECandidate.Proofs.DeadStages79.Parallel.output417 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_740 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output417_def]
  simp only [output416_eq, output415_eq]
  kernel_rfl

theorem input418_eq : InitECandidate.Proofs.DeadStages79.Parallel.input418 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1253 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input418_def]
  kernel_rfl

theorem output418_eq : InitECandidate.Proofs.DeadStages79.Parallel.output418 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_737 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output418_def]
  kernel_rfl

theorem input419_eq : InitECandidate.Proofs.DeadStages79.Parallel.input419 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1257 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input419_def]
  simp only [input418_eq, input417_eq]
  kernel_rfl

theorem output419_eq : InitECandidate.Proofs.DeadStages79.Parallel.output419 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_741 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output419_def]
  simp only [output418_eq, output417_eq]
  kernel_rfl

theorem input420_eq : InitECandidate.Proofs.DeadStages79.Parallel.input420 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1259 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input420_def]
  simp only [input419_eq, input414_eq]
  kernel_rfl

theorem output420_eq : InitECandidate.Proofs.DeadStages79.Parallel.output420 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_743 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output420_def]
  simp only [output419_eq, output414_eq]
  kernel_rfl

theorem input421_eq : InitECandidate.Proofs.DeadStages79.Parallel.input421 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input421_def]
  kernel_rfl

theorem output421_eq : InitECandidate.Proofs.DeadStages79.Parallel.output421 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output421_def]
  kernel_rfl

theorem input422_eq : InitECandidate.Proofs.DeadStages79.Parallel.input422 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1248 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input422_def]
  kernel_rfl

theorem input423_eq : InitECandidate.Proofs.DeadStages79.Parallel.input423 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input423_def]
  kernel_rfl

theorem output423_eq : InitECandidate.Proofs.DeadStages79.Parallel.output423 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output423_def]
  kernel_rfl

theorem input424_eq : InitECandidate.Proofs.DeadStages79.Parallel.input424 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1246 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input424_def]
  kernel_rfl

theorem input425_eq : InitECandidate.Proofs.DeadStages79.Parallel.input425 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1247 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input425_def]
  simp only [input424_eq, input423_eq]
  kernel_rfl

theorem output425_eq : InitECandidate.Proofs.DeadStages79.Parallel.output425 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output425_def]
  simp only [output423_eq]

theorem input426_eq : InitECandidate.Proofs.DeadStages79.Parallel.input426 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1249 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input426_def]
  simp only [input425_eq, input422_eq]
  kernel_rfl

theorem output426_eq : InitECandidate.Proofs.DeadStages79.Parallel.output426 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output426_def]
  simp only [output425_eq]

theorem input427_eq : InitECandidate.Proofs.DeadStages79.Parallel.input427 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input427_def]
  kernel_rfl

theorem input428_eq : InitECandidate.Proofs.DeadStages79.Parallel.input428 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1239 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input428_def]
  kernel_rfl

theorem input429_eq : InitECandidate.Proofs.DeadStages79.Parallel.input429 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1240 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input429_def]
  simp only [input428_eq, input427_eq]
  kernel_rfl

theorem input430_eq : InitECandidate.Proofs.DeadStages79.Parallel.input430 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1185 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input430_def]
  kernel_rfl

theorem output430_eq : InitECandidate.Proofs.DeadStages79.Parallel.output430 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_697 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output430_def]
  kernel_rfl

theorem input431_eq : InitECandidate.Proofs.DeadStages79.Parallel.input431 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1236 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input431_def]
  kernel_rfl

theorem output431_eq : InitECandidate.Proofs.DeadStages79.Parallel.output431 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_730 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output431_def]
  kernel_rfl

theorem input432_eq : InitECandidate.Proofs.DeadStages79.Parallel.input432 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1237 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input432_def]
  simp only [input431_eq, input430_eq]
  kernel_rfl

theorem output432_eq : InitECandidate.Proofs.DeadStages79.Parallel.output432 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_731 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output432_def]
  simp only [output431_eq, output430_eq]
  kernel_rfl

theorem input433_eq : InitECandidate.Proofs.DeadStages79.Parallel.input433 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1234 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input433_def]
  kernel_rfl

theorem output433_eq : InitECandidate.Proofs.DeadStages79.Parallel.output433 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_728 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output433_def]
  kernel_rfl

theorem input434_eq : InitECandidate.Proofs.DeadStages79.Parallel.input434 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1232 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input434_def]
  kernel_rfl

theorem input435_eq : InitECandidate.Proofs.DeadStages79.Parallel.input435 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input435_def]
  kernel_rfl

theorem output435_eq : InitECandidate.Proofs.DeadStages79.Parallel.output435 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output435_def]
  kernel_rfl

theorem input436_eq : InitECandidate.Proofs.DeadStages79.Parallel.input436 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1230 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input436_def]
  kernel_rfl

theorem input437_eq : InitECandidate.Proofs.DeadStages79.Parallel.input437 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1231 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input437_def]
  simp only [input436_eq, input435_eq]
  kernel_rfl

theorem output437_eq : InitECandidate.Proofs.DeadStages79.Parallel.output437 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output437_def]
  simp only [output435_eq]

theorem input438_eq : InitECandidate.Proofs.DeadStages79.Parallel.input438 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1233 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input438_def]
  simp only [input437_eq, input434_eq]
  kernel_rfl

theorem output438_eq : InitECandidate.Proofs.DeadStages79.Parallel.output438 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output438_def]
  simp only [output437_eq]

theorem input439_eq : InitECandidate.Proofs.DeadStages79.Parallel.input439 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1235 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input439_def]
  simp only [input438_eq, input433_eq]
  kernel_rfl

theorem output439_eq : InitECandidate.Proofs.DeadStages79.Parallel.output439 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_729 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output439_def]
  simp only [output438_eq, output433_eq]
  kernel_rfl

theorem input440_eq : InitECandidate.Proofs.DeadStages79.Parallel.input440 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1238 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input440_def]
  simp only [input439_eq, input432_eq]
  kernel_rfl

theorem output440_eq : InitECandidate.Proofs.DeadStages79.Parallel.output440 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_732 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output440_def]
  simp only [output439_eq, output432_eq]
  kernel_rfl

theorem input441_eq : InitECandidate.Proofs.DeadStages79.Parallel.input441 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1241 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input441_def]
  simp only [input440_eq, input429_eq]
  kernel_rfl

theorem output441_eq : InitECandidate.Proofs.DeadStages79.Parallel.output441 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_732 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output441_def]
  simp only [output440_eq]

theorem input442_eq : InitECandidate.Proofs.DeadStages79.Parallel.input442 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input442_def]
  kernel_rfl

theorem output442_eq : InitECandidate.Proofs.DeadStages79.Parallel.output442 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output442_def]
  kernel_rfl

theorem input443_eq : InitECandidate.Proofs.DeadStages79.Parallel.input443 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1242 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input443_def]
  kernel_rfl

theorem input444_eq : InitECandidate.Proofs.DeadStages79.Parallel.input444 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1243 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input444_def]
  simp only [input443_eq, input442_eq]
  kernel_rfl

theorem output444_eq : InitECandidate.Proofs.DeadStages79.Parallel.output444 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output444_def]
  simp only [output442_eq]

theorem input445_eq : InitECandidate.Proofs.DeadStages79.Parallel.input445 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input445_def]
  kernel_rfl

theorem input446_eq : InitECandidate.Proofs.DeadStages79.Parallel.input446 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1244 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input446_def]
  simp only [input445_eq, input444_eq]
  kernel_rfl

theorem output446_eq : InitECandidate.Proofs.DeadStages79.Parallel.output446 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output446_def]
  simp only [output444_eq]

theorem input447_eq : InitECandidate.Proofs.DeadStages79.Parallel.input447 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1245 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input447_def]
  simp only [input441_eq, input446_eq]
  kernel_rfl

theorem output447_eq : InitECandidate.Proofs.DeadStages79.Parallel.output447 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_733 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output447_def]
  simp only [output441_eq, output446_eq]
  kernel_rfl

theorem input448_eq : InitECandidate.Proofs.DeadStages79.Parallel.input448 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1250 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input448_def]
  simp only [input447_eq, input426_eq]
  kernel_rfl

theorem output448_eq : InitECandidate.Proofs.DeadStages79.Parallel.output448 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_734 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output448_def]
  simp only [output447_eq, output426_eq]
  kernel_rfl

theorem input449_eq : InitECandidate.Proofs.DeadStages79.Parallel.input449 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1228 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input449_def]
  kernel_rfl

theorem output449_eq : InitECandidate.Proofs.DeadStages79.Parallel.output449 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_726 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output449_def]
  kernel_rfl

theorem input450_eq : InitECandidate.Proofs.DeadStages79.Parallel.input450 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1226 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input450_def]
  kernel_rfl

theorem output450_eq : InitECandidate.Proofs.DeadStages79.Parallel.output450 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_724 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output450_def]
  kernel_rfl

theorem input451_eq : InitECandidate.Proofs.DeadStages79.Parallel.input451 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1224 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input451_def]
  kernel_rfl

theorem output451_eq : InitECandidate.Proofs.DeadStages79.Parallel.output451 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_722 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output451_def]
  kernel_rfl

theorem input452_eq : InitECandidate.Proofs.DeadStages79.Parallel.input452 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1221 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input452_def]
  kernel_rfl

theorem output452_eq : InitECandidate.Proofs.DeadStages79.Parallel.output452 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_719 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output452_def]
  kernel_rfl

theorem input453_eq : InitECandidate.Proofs.DeadStages79.Parallel.input453 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1218 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input453_def]
  kernel_rfl

theorem output453_eq : InitECandidate.Proofs.DeadStages79.Parallel.output453 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_716 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output453_def]
  kernel_rfl

theorem input454_eq : InitECandidate.Proofs.DeadStages79.Parallel.input454 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1217 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input454_def]
  kernel_rfl

theorem output454_eq : InitECandidate.Proofs.DeadStages79.Parallel.output454 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_715 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output454_def]
  kernel_rfl

theorem input455_eq : InitECandidate.Proofs.DeadStages79.Parallel.input455 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1219 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input455_def]
  simp only [input454_eq, input453_eq]
  kernel_rfl

theorem output455_eq : InitECandidate.Proofs.DeadStages79.Parallel.output455 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_717 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output455_def]
  simp only [output454_eq, output453_eq]
  kernel_rfl

theorem input456_eq : InitECandidate.Proofs.DeadStages79.Parallel.input456 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1216 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input456_def]
  kernel_rfl

theorem output456_eq : InitECandidate.Proofs.DeadStages79.Parallel.output456 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_714 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output456_def]
  kernel_rfl

theorem input457_eq : InitECandidate.Proofs.DeadStages79.Parallel.input457 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1220 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input457_def]
  simp only [input456_eq, input455_eq]
  kernel_rfl

theorem output457_eq : InitECandidate.Proofs.DeadStages79.Parallel.output457 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_718 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output457_def]
  simp only [output456_eq, output455_eq]
  kernel_rfl

theorem input458_eq : InitECandidate.Proofs.DeadStages79.Parallel.input458 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1222 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input458_def]
  simp only [input457_eq, input452_eq]
  kernel_rfl

theorem output458_eq : InitECandidate.Proofs.DeadStages79.Parallel.output458 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_720 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output458_def]
  simp only [output457_eq, output452_eq]
  kernel_rfl

theorem input459_eq : InitECandidate.Proofs.DeadStages79.Parallel.input459 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1214 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input459_def]
  kernel_rfl

theorem output459_eq : InitECandidate.Proofs.DeadStages79.Parallel.output459 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_712 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output459_def]
  kernel_rfl

theorem input460_eq : InitECandidate.Proofs.DeadStages79.Parallel.input460 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1211 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input460_def]
  kernel_rfl

theorem output460_eq : InitECandidate.Proofs.DeadStages79.Parallel.output460 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_709 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output460_def]
  kernel_rfl

theorem input461_eq : InitECandidate.Proofs.DeadStages79.Parallel.input461 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1208 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input461_def]
  kernel_rfl

theorem output461_eq : InitECandidate.Proofs.DeadStages79.Parallel.output461 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_706 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output461_def]
  kernel_rfl

theorem input462_eq : InitECandidate.Proofs.DeadStages79.Parallel.input462 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1207 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input462_def]
  kernel_rfl

theorem output462_eq : InitECandidate.Proofs.DeadStages79.Parallel.output462 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_705 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output462_def]
  kernel_rfl

theorem input463_eq : InitECandidate.Proofs.DeadStages79.Parallel.input463 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1209 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input463_def]
  simp only [input462_eq, input461_eq]
  kernel_rfl

theorem output463_eq : InitECandidate.Proofs.DeadStages79.Parallel.output463 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_707 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output463_def]
  simp only [output462_eq, output461_eq]
  kernel_rfl

theorem input464_eq : InitECandidate.Proofs.DeadStages79.Parallel.input464 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1206 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input464_def]
  kernel_rfl

theorem output464_eq : InitECandidate.Proofs.DeadStages79.Parallel.output464 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_704 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output464_def]
  kernel_rfl

theorem input465_eq : InitECandidate.Proofs.DeadStages79.Parallel.input465 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1210 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input465_def]
  simp only [input464_eq, input463_eq]
  kernel_rfl

theorem output465_eq : InitECandidate.Proofs.DeadStages79.Parallel.output465 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_708 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output465_def]
  simp only [output464_eq, output463_eq]
  kernel_rfl

theorem input466_eq : InitECandidate.Proofs.DeadStages79.Parallel.input466 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1212 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input466_def]
  simp only [input465_eq, input460_eq]
  kernel_rfl

theorem output466_eq : InitECandidate.Proofs.DeadStages79.Parallel.output466 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_710 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output466_def]
  simp only [output465_eq, output460_eq]
  kernel_rfl

theorem input467_eq : InitECandidate.Proofs.DeadStages79.Parallel.input467 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input467_def]
  kernel_rfl

theorem output467_eq : InitECandidate.Proofs.DeadStages79.Parallel.output467 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output467_def]
  kernel_rfl

theorem input468_eq : InitECandidate.Proofs.DeadStages79.Parallel.input468 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1201 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input468_def]
  kernel_rfl

theorem input469_eq : InitECandidate.Proofs.DeadStages79.Parallel.input469 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input469_def]
  kernel_rfl

theorem output469_eq : InitECandidate.Proofs.DeadStages79.Parallel.output469 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output469_def]
  kernel_rfl

theorem input470_eq : InitECandidate.Proofs.DeadStages79.Parallel.input470 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1199 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input470_def]
  kernel_rfl

theorem input471_eq : InitECandidate.Proofs.DeadStages79.Parallel.input471 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1200 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input471_def]
  simp only [input470_eq, input469_eq]
  kernel_rfl

theorem output471_eq : InitECandidate.Proofs.DeadStages79.Parallel.output471 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output471_def]
  simp only [output469_eq]

theorem input472_eq : InitECandidate.Proofs.DeadStages79.Parallel.input472 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1202 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input472_def]
  simp only [input471_eq, input468_eq]
  kernel_rfl

theorem output472_eq : InitECandidate.Proofs.DeadStages79.Parallel.output472 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output472_def]
  simp only [output471_eq]

theorem input473_eq : InitECandidate.Proofs.DeadStages79.Parallel.input473 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1189 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input473_def]
  kernel_rfl

theorem input474_eq : InitECandidate.Proofs.DeadStages79.Parallel.input474 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input474_def]
  kernel_rfl

theorem input475_eq : InitECandidate.Proofs.DeadStages79.Parallel.input475 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1190 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input475_def]
  simp only [input474_eq, input473_eq]
  kernel_rfl

theorem input476_eq : InitECandidate.Proofs.DeadStages79.Parallel.input476 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1188 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input476_def]
  kernel_rfl

theorem input477_eq : InitECandidate.Proofs.DeadStages79.Parallel.input477 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1191 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input477_def]
  simp only [input476_eq, input475_eq]
  kernel_rfl

theorem input478_eq : InitECandidate.Proofs.DeadStages79.Parallel.input478 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1185 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input478_def]
  kernel_rfl

theorem output478_eq : InitECandidate.Proofs.DeadStages79.Parallel.output478 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_697 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output478_def]
  kernel_rfl

theorem input479_eq : InitECandidate.Proofs.DeadStages79.Parallel.input479 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1184 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input479_def]
  kernel_rfl

theorem output479_eq : InitECandidate.Proofs.DeadStages79.Parallel.output479 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_696 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output479_def]
  kernel_rfl

theorem input480_eq : InitECandidate.Proofs.DeadStages79.Parallel.input480 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1186 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input480_def]
  simp only [input479_eq, input478_eq]
  kernel_rfl

theorem output480_eq : InitECandidate.Proofs.DeadStages79.Parallel.output480 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_698 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output480_def]
  simp only [output479_eq, output478_eq]
  kernel_rfl

theorem input481_eq : InitECandidate.Proofs.DeadStages79.Parallel.input481 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1182 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input481_def]
  kernel_rfl

theorem output481_eq : InitECandidate.Proofs.DeadStages79.Parallel.output481 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_694 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output481_def]
  kernel_rfl

theorem input482_eq : InitECandidate.Proofs.DeadStages79.Parallel.input482 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1180 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input482_def]
  kernel_rfl

theorem input483_eq : InitECandidate.Proofs.DeadStages79.Parallel.input483 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_13 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input483_def]
  kernel_rfl

theorem output483_eq : InitECandidate.Proofs.DeadStages79.Parallel.output483 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output483_def]
  kernel_rfl

theorem input484_eq : InitECandidate.Proofs.DeadStages79.Parallel.input484 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1178 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input484_def]
  kernel_rfl

theorem input485_eq : InitECandidate.Proofs.DeadStages79.Parallel.input485 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1179 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input485_def]
  simp only [input484_eq, input483_eq]
  kernel_rfl

theorem output485_eq : InitECandidate.Proofs.DeadStages79.Parallel.output485 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output485_def]
  simp only [output483_eq]

theorem input486_eq : InitECandidate.Proofs.DeadStages79.Parallel.input486 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1181 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input486_def]
  simp only [input485_eq, input482_eq]
  kernel_rfl

theorem output486_eq : InitECandidate.Proofs.DeadStages79.Parallel.output486 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_12 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output486_def]
  simp only [output485_eq]

theorem input487_eq : InitECandidate.Proofs.DeadStages79.Parallel.input487 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1183 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input487_def]
  simp only [input486_eq, input481_eq]
  kernel_rfl

theorem output487_eq : InitECandidate.Proofs.DeadStages79.Parallel.output487 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_695 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output487_def]
  simp only [output486_eq, output481_eq]
  kernel_rfl

theorem input488_eq : InitECandidate.Proofs.DeadStages79.Parallel.input488 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1187 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input488_def]
  simp only [input487_eq, input480_eq]
  kernel_rfl

theorem output488_eq : InitECandidate.Proofs.DeadStages79.Parallel.output488 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_699 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output488_def]
  simp only [output487_eq, output480_eq]
  kernel_rfl

theorem input489_eq : InitECandidate.Proofs.DeadStages79.Parallel.input489 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1192 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input489_def]
  simp only [input488_eq, input477_eq]
  kernel_rfl

theorem output489_eq : InitECandidate.Proofs.DeadStages79.Parallel.output489 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_699 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output489_def]
  simp only [output488_eq]

theorem input490_eq : InitECandidate.Proofs.DeadStages79.Parallel.input490 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1194 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input490_def]
  kernel_rfl

theorem output490_eq : InitECandidate.Proofs.DeadStages79.Parallel.output490 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output490_def]
  kernel_rfl

theorem input491_eq : InitECandidate.Proofs.DeadStages79.Parallel.input491 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input491_def]
  kernel_rfl

theorem input492_eq : InitECandidate.Proofs.DeadStages79.Parallel.input492 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1195 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input492_def]
  simp only [input491_eq, input490_eq]
  kernel_rfl

theorem output492_eq : InitECandidate.Proofs.DeadStages79.Parallel.output492 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output492_def]
  simp only [output490_eq]

theorem input493_eq : InitECandidate.Proofs.DeadStages79.Parallel.input493 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1193 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input493_def]
  kernel_rfl

theorem input494_eq : InitECandidate.Proofs.DeadStages79.Parallel.input494 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1196 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input494_def]
  simp only [input493_eq, input492_eq]
  kernel_rfl

theorem output494_eq : InitECandidate.Proofs.DeadStages79.Parallel.output494 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output494_def]
  simp only [output492_eq]

theorem input495_eq : InitECandidate.Proofs.DeadStages79.Parallel.input495 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_44 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input495_def]
  kernel_rfl

theorem input496_eq : InitECandidate.Proofs.DeadStages79.Parallel.input496 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1197 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input496_def]
  simp only [input495_eq, input494_eq]
  kernel_rfl

theorem output496_eq : InitECandidate.Proofs.DeadStages79.Parallel.output496 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_31 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output496_def]
  simp only [output494_eq]

theorem input497_eq : InitECandidate.Proofs.DeadStages79.Parallel.input497 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1198 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input497_def]
  simp only [input489_eq, input496_eq]
  kernel_rfl

theorem output497_eq : InitECandidate.Proofs.DeadStages79.Parallel.output497 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_700 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output497_def]
  simp only [output489_eq, output496_eq]
  kernel_rfl

theorem input498_eq : InitECandidate.Proofs.DeadStages79.Parallel.input498 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1203 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input498_def]
  simp only [input497_eq, input472_eq]
  kernel_rfl

theorem output498_eq : InitECandidate.Proofs.DeadStages79.Parallel.output498 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_701 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output498_def]
  simp only [output497_eq, output472_eq]
  kernel_rfl

theorem input499_eq : InitECandidate.Proofs.DeadStages79.Parallel.input499 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1176 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input499_def]
  kernel_rfl

theorem output499_eq : InitECandidate.Proofs.DeadStages79.Parallel.output499 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_692 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output499_def]
  kernel_rfl

theorem input500_eq : InitECandidate.Proofs.DeadStages79.Parallel.input500 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1174 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input500_def]
  kernel_rfl

theorem output500_eq : InitECandidate.Proofs.DeadStages79.Parallel.output500 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_690 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output500_def]
  kernel_rfl

theorem input501_eq : InitECandidate.Proofs.DeadStages79.Parallel.input501 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1172 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input501_def]
  kernel_rfl

theorem output501_eq : InitECandidate.Proofs.DeadStages79.Parallel.output501 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_688 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output501_def]
  kernel_rfl

theorem input502_eq : InitECandidate.Proofs.DeadStages79.Parallel.input502 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1168 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input502_def]
  kernel_rfl

theorem output502_eq : InitECandidate.Proofs.DeadStages79.Parallel.output502 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_684 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output502_def]
  kernel_rfl

theorem input503_eq : InitECandidate.Proofs.DeadStages79.Parallel.input503 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1167 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input503_def]
  kernel_rfl

theorem output503_eq : InitECandidate.Proofs.DeadStages79.Parallel.output503 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_683 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output503_def]
  kernel_rfl

theorem input504_eq : InitECandidate.Proofs.DeadStages79.Parallel.input504 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1169 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input504_def]
  simp only [input503_eq, input502_eq]
  kernel_rfl

theorem output504_eq : InitECandidate.Proofs.DeadStages79.Parallel.output504 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_685 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output504_def]
  simp only [output503_eq, output502_eq]
  kernel_rfl

theorem input505_eq : InitECandidate.Proofs.DeadStages79.Parallel.input505 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1166 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input505_def]
  kernel_rfl

theorem output505_eq : InitECandidate.Proofs.DeadStages79.Parallel.output505 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_682 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output505_def]
  kernel_rfl

theorem input506_eq : InitECandidate.Proofs.DeadStages79.Parallel.input506 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1170 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input506_def]
  simp only [input505_eq, input504_eq]
  kernel_rfl

theorem output506_eq : InitECandidate.Proofs.DeadStages79.Parallel.output506 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_686 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output506_def]
  simp only [output505_eq, output504_eq]
  kernel_rfl

theorem input507_eq : InitECandidate.Proofs.DeadStages79.Parallel.input507 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1164 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input507_def]
  kernel_rfl

theorem output507_eq : InitECandidate.Proofs.DeadStages79.Parallel.output507 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_680 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output507_def]
  kernel_rfl

theorem input508_eq : InitECandidate.Proofs.DeadStages79.Parallel.input508 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1160 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input508_def]
  kernel_rfl

theorem output508_eq : InitECandidate.Proofs.DeadStages79.Parallel.output508 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_676 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output508_def]
  kernel_rfl

theorem input509_eq : InitECandidate.Proofs.DeadStages79.Parallel.input509 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1159 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input509_def]
  kernel_rfl

theorem output509_eq : InitECandidate.Proofs.DeadStages79.Parallel.output509 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_675 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output509_def]
  kernel_rfl

theorem input510_eq : InitECandidate.Proofs.DeadStages79.Parallel.input510 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1161 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input510_def]
  simp only [input509_eq, input508_eq]
  kernel_rfl

theorem output510_eq : InitECandidate.Proofs.DeadStages79.Parallel.output510 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_677 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output510_def]
  simp only [output509_eq, output508_eq]
  kernel_rfl

theorem input511_eq : InitECandidate.Proofs.DeadStages79.Parallel.input511 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_2_1158 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.input511_def]
  kernel_rfl

theorem output511_eq : InitECandidate.Proofs.DeadStages79.Parallel.output511 =
    InitECandidate.Proofs.WordStages.Parallel79.word79_3_674 := by
  rw [InitECandidate.Proofs.DeadStages79.Parallel.output511_def]
  kernel_rfl

#print axioms output511_eq
end InitECandidate.Proofs.WordStages.Parallel79.AgreementsParallel
