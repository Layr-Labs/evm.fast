import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Parallel866.Data2
import InitECandidate.Proofs.WordStages.Parallel866.Data3
import InitECandidate.Proofs.DeadStages866.Parallel.Data.Chunk001
import InitECandidate.Proofs.WordStages.Parallel866.AgreementsParallel.Chunk000

set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Proofs.WordStages.Parallel866.AgreementsParallel
theorem input256_eq : InitECandidate.Proofs.DeadStages866.Parallel.input256 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1179 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input256_def]
  simp only [input255_eq, input238_eq]
  kernel_rfl

theorem output256_eq : InitECandidate.Proofs.DeadStages866.Parallel.output256 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1008 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output256_def]
  simp only [output255_eq]

theorem input257_eq : InitECandidate.Proofs.DeadStages866.Parallel.input257 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1183 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input257_def]
  kernel_rfl

theorem output257_eq : InitECandidate.Proofs.DeadStages866.Parallel.output257 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1009 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output257_def]
  kernel_rfl

theorem input258_eq : InitECandidate.Proofs.DeadStages866.Parallel.input258 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1181 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input258_def]
  kernel_rfl

theorem input259_eq : InitECandidate.Proofs.DeadStages866.Parallel.input259 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_16 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input259_def]
  kernel_rfl

theorem input260_eq : InitECandidate.Proofs.DeadStages866.Parallel.input260 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1182 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input260_def]
  simp only [input259_eq, input258_eq]
  kernel_rfl

theorem input261_eq : InitECandidate.Proofs.DeadStages866.Parallel.input261 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1184 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input261_def]
  simp only [input260_eq, input257_eq]
  kernel_rfl

theorem output261_eq : InitECandidate.Proofs.DeadStages866.Parallel.output261 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1009 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output261_def]
  simp only [output257_eq]

theorem input262_eq : InitECandidate.Proofs.DeadStages866.Parallel.input262 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1180 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input262_def]
  kernel_rfl

theorem input263_eq : InitECandidate.Proofs.DeadStages866.Parallel.input263 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1185 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input263_def]
  simp only [input262_eq, input261_eq]
  kernel_rfl

theorem output263_eq : InitECandidate.Proofs.DeadStages866.Parallel.output263 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1009 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output263_def]
  simp only [output261_eq]

theorem input264_eq : InitECandidate.Proofs.DeadStages866.Parallel.input264 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_16 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input264_def]
  kernel_rfl

theorem input265_eq : InitECandidate.Proofs.DeadStages866.Parallel.input265 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1186 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input265_def]
  simp only [input264_eq, input263_eq]
  kernel_rfl

theorem output265_eq : InitECandidate.Proofs.DeadStages866.Parallel.output265 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1009 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output265_def]
  simp only [output263_eq]

theorem input266_eq : InitECandidate.Proofs.DeadStages866.Parallel.input266 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1187 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input266_def]
  simp only [input256_eq, input265_eq]
  kernel_rfl

theorem output266_eq : InitECandidate.Proofs.DeadStages866.Parallel.output266 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1010 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output266_def]
  simp only [output256_eq, output265_eq]
  kernel_rfl

theorem input267_eq : InitECandidate.Proofs.DeadStages866.Parallel.input267 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1192 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input267_def]
  simp only [input266_eq, input231_eq]
  kernel_rfl

theorem output267_eq : InitECandidate.Proofs.DeadStages866.Parallel.output267 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_1011 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output267_def]
  simp only [output266_eq, output231_eq]
  kernel_rfl

theorem input268_eq : InitECandidate.Proofs.DeadStages866.Parallel.input268 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1156 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input268_def]
  kernel_rfl

theorem output268_eq : InitECandidate.Proofs.DeadStages866.Parallel.output268 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_996 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output268_def]
  kernel_rfl

theorem input269_eq : InitECandidate.Proofs.DeadStages866.Parallel.input269 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1154 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input269_def]
  kernel_rfl

theorem output269_eq : InitECandidate.Proofs.DeadStages866.Parallel.output269 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_994 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output269_def]
  kernel_rfl

theorem input270_eq : InitECandidate.Proofs.DeadStages866.Parallel.input270 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input270_def]
  kernel_rfl

theorem output270_eq : InitECandidate.Proofs.DeadStages866.Parallel.output270 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output270_def]
  kernel_rfl

theorem input271_eq : InitECandidate.Proofs.DeadStages866.Parallel.input271 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1149 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input271_def]
  kernel_rfl

theorem output271_eq : InitECandidate.Proofs.DeadStages866.Parallel.output271 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_989 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output271_def]
  kernel_rfl

theorem input272_eq : InitECandidate.Proofs.DeadStages866.Parallel.input272 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1127 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input272_def]
  kernel_rfl

theorem output272_eq : InitECandidate.Proofs.DeadStages866.Parallel.output272 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_976 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output272_def]
  kernel_rfl

theorem input273_eq : InitECandidate.Proofs.DeadStages866.Parallel.input273 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1150 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input273_def]
  simp only [input272_eq, input271_eq]
  kernel_rfl

theorem output273_eq : InitECandidate.Proofs.DeadStages866.Parallel.output273 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_990 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output273_def]
  simp only [output272_eq, output271_eq]
  kernel_rfl

theorem input274_eq : InitECandidate.Proofs.DeadStages866.Parallel.input274 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1126 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input274_def]
  kernel_rfl

theorem output274_eq : InitECandidate.Proofs.DeadStages866.Parallel.output274 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_975 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output274_def]
  kernel_rfl

theorem input275_eq : InitECandidate.Proofs.DeadStages866.Parallel.input275 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1151 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input275_def]
  simp only [input274_eq, input273_eq]
  kernel_rfl

theorem output275_eq : InitECandidate.Proofs.DeadStages866.Parallel.output275 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_991 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output275_def]
  simp only [output274_eq, output273_eq]
  kernel_rfl

theorem input276_eq : InitECandidate.Proofs.DeadStages866.Parallel.input276 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1124 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input276_def]
  kernel_rfl

theorem output276_eq : InitECandidate.Proofs.DeadStages866.Parallel.output276 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_973 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output276_def]
  kernel_rfl

theorem input277_eq : InitECandidate.Proofs.DeadStages866.Parallel.input277 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1122 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input277_def]
  kernel_rfl

theorem output277_eq : InitECandidate.Proofs.DeadStages866.Parallel.output277 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_971 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output277_def]
  kernel_rfl

theorem input278_eq : InitECandidate.Proofs.DeadStages866.Parallel.input278 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1119 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input278_def]
  kernel_rfl

theorem output278_eq : InitECandidate.Proofs.DeadStages866.Parallel.output278 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_968 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output278_def]
  kernel_rfl

theorem input279_eq : InitECandidate.Proofs.DeadStages866.Parallel.input279 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1118 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input279_def]
  kernel_rfl

theorem output279_eq : InitECandidate.Proofs.DeadStages866.Parallel.output279 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_967 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output279_def]
  kernel_rfl

theorem input280_eq : InitECandidate.Proofs.DeadStages866.Parallel.input280 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1120 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input280_def]
  simp only [input279_eq, input278_eq]
  kernel_rfl

theorem output280_eq : InitECandidate.Proofs.DeadStages866.Parallel.output280 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_969 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output280_def]
  simp only [output279_eq, output278_eq]
  kernel_rfl

theorem input281_eq : InitECandidate.Proofs.DeadStages866.Parallel.input281 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1116 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input281_def]
  kernel_rfl

theorem output281_eq : InitECandidate.Proofs.DeadStages866.Parallel.output281 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_965 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output281_def]
  kernel_rfl

theorem input282_eq : InitECandidate.Proofs.DeadStages866.Parallel.input282 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1113 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input282_def]
  kernel_rfl

theorem output282_eq : InitECandidate.Proofs.DeadStages866.Parallel.output282 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_962 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output282_def]
  kernel_rfl

theorem input283_eq : InitECandidate.Proofs.DeadStages866.Parallel.input283 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1112 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input283_def]
  kernel_rfl

theorem output283_eq : InitECandidate.Proofs.DeadStages866.Parallel.output283 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_961 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output283_def]
  kernel_rfl

theorem input284_eq : InitECandidate.Proofs.DeadStages866.Parallel.input284 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1114 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input284_def]
  simp only [input283_eq, input282_eq]
  kernel_rfl

theorem output284_eq : InitECandidate.Proofs.DeadStages866.Parallel.output284 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_963 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output284_def]
  simp only [output283_eq, output282_eq]
  kernel_rfl

theorem input285_eq : InitECandidate.Proofs.DeadStages866.Parallel.input285 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1109 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input285_def]
  kernel_rfl

theorem output285_eq : InitECandidate.Proofs.DeadStages866.Parallel.output285 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_958 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output285_def]
  kernel_rfl

theorem input286_eq : InitECandidate.Proofs.DeadStages866.Parallel.input286 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1108 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input286_def]
  kernel_rfl

theorem output286_eq : InitECandidate.Proofs.DeadStages866.Parallel.output286 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_957 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output286_def]
  kernel_rfl

theorem input287_eq : InitECandidate.Proofs.DeadStages866.Parallel.input287 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1110 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input287_def]
  simp only [input286_eq, input285_eq]
  kernel_rfl

theorem output287_eq : InitECandidate.Proofs.DeadStages866.Parallel.output287 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_959 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output287_def]
  simp only [output286_eq, output285_eq]
  kernel_rfl

theorem input288_eq : InitECandidate.Proofs.DeadStages866.Parallel.input288 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1105 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input288_def]
  kernel_rfl

theorem output288_eq : InitECandidate.Proofs.DeadStages866.Parallel.output288 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_954 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output288_def]
  kernel_rfl

theorem input289_eq : InitECandidate.Proofs.DeadStages866.Parallel.input289 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1104 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input289_def]
  kernel_rfl

theorem output289_eq : InitECandidate.Proofs.DeadStages866.Parallel.output289 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_953 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output289_def]
  kernel_rfl

theorem input290_eq : InitECandidate.Proofs.DeadStages866.Parallel.input290 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1106 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input290_def]
  simp only [input289_eq, input288_eq]
  kernel_rfl

theorem output290_eq : InitECandidate.Proofs.DeadStages866.Parallel.output290 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_955 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output290_def]
  simp only [output289_eq, output288_eq]
  kernel_rfl

theorem input291_eq : InitECandidate.Proofs.DeadStages866.Parallel.input291 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1102 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input291_def]
  kernel_rfl

theorem output291_eq : InitECandidate.Proofs.DeadStages866.Parallel.output291 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_951 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output291_def]
  kernel_rfl

theorem input292_eq : InitECandidate.Proofs.DeadStages866.Parallel.input292 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1100 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input292_def]
  kernel_rfl

theorem output292_eq : InitECandidate.Proofs.DeadStages866.Parallel.output292 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_949 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output292_def]
  kernel_rfl

theorem input293_eq : InitECandidate.Proofs.DeadStages866.Parallel.input293 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1097 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input293_def]
  kernel_rfl

theorem output293_eq : InitECandidate.Proofs.DeadStages866.Parallel.output293 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_946 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output293_def]
  kernel_rfl

theorem input294_eq : InitECandidate.Proofs.DeadStages866.Parallel.input294 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1096 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input294_def]
  kernel_rfl

theorem output294_eq : InitECandidate.Proofs.DeadStages866.Parallel.output294 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_945 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output294_def]
  kernel_rfl

theorem input295_eq : InitECandidate.Proofs.DeadStages866.Parallel.input295 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1098 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input295_def]
  simp only [input294_eq, input293_eq]
  kernel_rfl

theorem output295_eq : InitECandidate.Proofs.DeadStages866.Parallel.output295 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_947 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output295_def]
  simp only [output294_eq, output293_eq]
  kernel_rfl

theorem input296_eq : InitECandidate.Proofs.DeadStages866.Parallel.input296 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input296_def]
  kernel_rfl

theorem output296_eq : InitECandidate.Proofs.DeadStages866.Parallel.output296 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output296_def]
  kernel_rfl

theorem input297_eq : InitECandidate.Proofs.DeadStages866.Parallel.input297 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1091 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input297_def]
  kernel_rfl

theorem output297_eq : InitECandidate.Proofs.DeadStages866.Parallel.output297 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_940 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output297_def]
  kernel_rfl

theorem input298_eq : InitECandidate.Proofs.DeadStages866.Parallel.input298 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1069 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input298_def]
  kernel_rfl

theorem output298_eq : InitECandidate.Proofs.DeadStages866.Parallel.output298 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_927 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output298_def]
  kernel_rfl

theorem input299_eq : InitECandidate.Proofs.DeadStages866.Parallel.input299 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1092 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input299_def]
  simp only [input298_eq, input297_eq]
  kernel_rfl

theorem output299_eq : InitECandidate.Proofs.DeadStages866.Parallel.output299 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_941 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output299_def]
  simp only [output298_eq, output297_eq]
  kernel_rfl

theorem input300_eq : InitECandidate.Proofs.DeadStages866.Parallel.input300 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1068 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input300_def]
  kernel_rfl

theorem output300_eq : InitECandidate.Proofs.DeadStages866.Parallel.output300 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_926 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output300_def]
  kernel_rfl

theorem input301_eq : InitECandidate.Proofs.DeadStages866.Parallel.input301 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1093 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input301_def]
  simp only [input300_eq, input299_eq]
  kernel_rfl

theorem output301_eq : InitECandidate.Proofs.DeadStages866.Parallel.output301 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_942 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output301_def]
  simp only [output300_eq, output299_eq]
  kernel_rfl

theorem input302_eq : InitECandidate.Proofs.DeadStages866.Parallel.input302 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1066 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input302_def]
  kernel_rfl

theorem output302_eq : InitECandidate.Proofs.DeadStages866.Parallel.output302 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_924 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output302_def]
  kernel_rfl

theorem input303_eq : InitECandidate.Proofs.DeadStages866.Parallel.input303 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1064 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input303_def]
  kernel_rfl

theorem input304_eq : InitECandidate.Proofs.DeadStages866.Parallel.input304 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1061 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input304_def]
  kernel_rfl

theorem output304_eq : InitECandidate.Proofs.DeadStages866.Parallel.output304 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_921 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output304_def]
  kernel_rfl

theorem input305_eq : InitECandidate.Proofs.DeadStages866.Parallel.input305 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1060 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input305_def]
  kernel_rfl

theorem output305_eq : InitECandidate.Proofs.DeadStages866.Parallel.output305 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_920 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output305_def]
  kernel_rfl

theorem input306_eq : InitECandidate.Proofs.DeadStages866.Parallel.input306 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1062 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input306_def]
  simp only [input305_eq, input304_eq]
  kernel_rfl

theorem output306_eq : InitECandidate.Proofs.DeadStages866.Parallel.output306 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_922 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output306_def]
  simp only [output305_eq, output304_eq]
  kernel_rfl

theorem input307_eq : InitECandidate.Proofs.DeadStages866.Parallel.input307 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1058 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input307_def]
  kernel_rfl

theorem output307_eq : InitECandidate.Proofs.DeadStages866.Parallel.output307 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_918 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output307_def]
  kernel_rfl

theorem input308_eq : InitECandidate.Proofs.DeadStages866.Parallel.input308 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1056 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input308_def]
  kernel_rfl

theorem output308_eq : InitECandidate.Proofs.DeadStages866.Parallel.output308 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_916 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output308_def]
  kernel_rfl

theorem input309_eq : InitECandidate.Proofs.DeadStages866.Parallel.input309 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1053 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input309_def]
  kernel_rfl

theorem output309_eq : InitECandidate.Proofs.DeadStages866.Parallel.output309 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_913 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output309_def]
  kernel_rfl

theorem input310_eq : InitECandidate.Proofs.DeadStages866.Parallel.input310 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1052 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input310_def]
  kernel_rfl

theorem output310_eq : InitECandidate.Proofs.DeadStages866.Parallel.output310 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_912 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output310_def]
  kernel_rfl

theorem input311_eq : InitECandidate.Proofs.DeadStages866.Parallel.input311 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1054 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input311_def]
  simp only [input310_eq, input309_eq]
  kernel_rfl

theorem output311_eq : InitECandidate.Proofs.DeadStages866.Parallel.output311 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_914 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output311_def]
  simp only [output310_eq, output309_eq]
  kernel_rfl

theorem input312_eq : InitECandidate.Proofs.DeadStages866.Parallel.input312 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input312_def]
  kernel_rfl

theorem output312_eq : InitECandidate.Proofs.DeadStages866.Parallel.output312 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output312_def]
  kernel_rfl

theorem input313_eq : InitECandidate.Proofs.DeadStages866.Parallel.input313 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1047 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input313_def]
  kernel_rfl

theorem output313_eq : InitECandidate.Proofs.DeadStages866.Parallel.output313 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_907 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output313_def]
  kernel_rfl

theorem input314_eq : InitECandidate.Proofs.DeadStages866.Parallel.input314 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1025 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input314_def]
  kernel_rfl

theorem output314_eq : InitECandidate.Proofs.DeadStages866.Parallel.output314 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_894 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output314_def]
  kernel_rfl

theorem input315_eq : InitECandidate.Proofs.DeadStages866.Parallel.input315 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1048 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input315_def]
  simp only [input314_eq, input313_eq]
  kernel_rfl

theorem output315_eq : InitECandidate.Proofs.DeadStages866.Parallel.output315 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_908 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output315_def]
  simp only [output314_eq, output313_eq]
  kernel_rfl

theorem input316_eq : InitECandidate.Proofs.DeadStages866.Parallel.input316 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1024 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input316_def]
  kernel_rfl

theorem output316_eq : InitECandidate.Proofs.DeadStages866.Parallel.output316 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_893 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output316_def]
  kernel_rfl

theorem input317_eq : InitECandidate.Proofs.DeadStages866.Parallel.input317 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1049 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input317_def]
  simp only [input316_eq, input315_eq]
  kernel_rfl

theorem output317_eq : InitECandidate.Proofs.DeadStages866.Parallel.output317 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_909 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output317_def]
  simp only [output316_eq, output315_eq]
  kernel_rfl

theorem input318_eq : InitECandidate.Proofs.DeadStages866.Parallel.input318 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1022 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input318_def]
  kernel_rfl

theorem output318_eq : InitECandidate.Proofs.DeadStages866.Parallel.output318 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_891 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output318_def]
  kernel_rfl

theorem input319_eq : InitECandidate.Proofs.DeadStages866.Parallel.input319 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1020 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input319_def]
  kernel_rfl

theorem input320_eq : InitECandidate.Proofs.DeadStages866.Parallel.input320 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1017 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input320_def]
  kernel_rfl

theorem output320_eq : InitECandidate.Proofs.DeadStages866.Parallel.output320 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_888 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output320_def]
  kernel_rfl

theorem input321_eq : InitECandidate.Proofs.DeadStages866.Parallel.input321 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1016 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input321_def]
  kernel_rfl

theorem output321_eq : InitECandidate.Proofs.DeadStages866.Parallel.output321 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_887 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output321_def]
  kernel_rfl

theorem input322_eq : InitECandidate.Proofs.DeadStages866.Parallel.input322 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1018 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input322_def]
  simp only [input321_eq, input320_eq]
  kernel_rfl

theorem output322_eq : InitECandidate.Proofs.DeadStages866.Parallel.output322 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_889 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output322_def]
  simp only [output321_eq, output320_eq]
  kernel_rfl

theorem input323_eq : InitECandidate.Proofs.DeadStages866.Parallel.input323 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1014 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input323_def]
  kernel_rfl

theorem output323_eq : InitECandidate.Proofs.DeadStages866.Parallel.output323 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_885 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output323_def]
  kernel_rfl

theorem input324_eq : InitECandidate.Proofs.DeadStages866.Parallel.input324 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1011 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input324_def]
  kernel_rfl

theorem output324_eq : InitECandidate.Proofs.DeadStages866.Parallel.output324 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_882 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output324_def]
  kernel_rfl

theorem input325_eq : InitECandidate.Proofs.DeadStages866.Parallel.input325 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1010 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input325_def]
  kernel_rfl

theorem output325_eq : InitECandidate.Proofs.DeadStages866.Parallel.output325 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_881 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output325_def]
  kernel_rfl

theorem input326_eq : InitECandidate.Proofs.DeadStages866.Parallel.input326 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1012 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input326_def]
  simp only [input325_eq, input324_eq]
  kernel_rfl

theorem output326_eq : InitECandidate.Proofs.DeadStages866.Parallel.output326 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_883 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output326_def]
  simp only [output325_eq, output324_eq]
  kernel_rfl

theorem input327_eq : InitECandidate.Proofs.DeadStages866.Parallel.input327 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1007 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input327_def]
  kernel_rfl

theorem output327_eq : InitECandidate.Proofs.DeadStages866.Parallel.output327 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_878 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output327_def]
  kernel_rfl

theorem input328_eq : InitECandidate.Proofs.DeadStages866.Parallel.input328 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1006 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input328_def]
  kernel_rfl

theorem output328_eq : InitECandidate.Proofs.DeadStages866.Parallel.output328 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_877 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output328_def]
  kernel_rfl

theorem input329_eq : InitECandidate.Proofs.DeadStages866.Parallel.input329 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1008 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input329_def]
  simp only [input328_eq, input327_eq]
  kernel_rfl

theorem output329_eq : InitECandidate.Proofs.DeadStages866.Parallel.output329 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_879 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output329_def]
  simp only [output328_eq, output327_eq]
  kernel_rfl

theorem input330_eq : InitECandidate.Proofs.DeadStages866.Parallel.input330 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1003 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input330_def]
  kernel_rfl

theorem output330_eq : InitECandidate.Proofs.DeadStages866.Parallel.output330 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_874 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output330_def]
  kernel_rfl

theorem input331_eq : InitECandidate.Proofs.DeadStages866.Parallel.input331 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1002 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input331_def]
  kernel_rfl

theorem output331_eq : InitECandidate.Proofs.DeadStages866.Parallel.output331 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_873 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output331_def]
  kernel_rfl

theorem input332_eq : InitECandidate.Proofs.DeadStages866.Parallel.input332 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1004 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input332_def]
  simp only [input331_eq, input330_eq]
  kernel_rfl

theorem output332_eq : InitECandidate.Proofs.DeadStages866.Parallel.output332 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_875 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output332_def]
  simp only [output331_eq, output330_eq]
  kernel_rfl

theorem input333_eq : InitECandidate.Proofs.DeadStages866.Parallel.input333 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_1000 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input333_def]
  kernel_rfl

theorem output333_eq : InitECandidate.Proofs.DeadStages866.Parallel.output333 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_871 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output333_def]
  kernel_rfl

theorem input334_eq : InitECandidate.Proofs.DeadStages866.Parallel.input334 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_997 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input334_def]
  kernel_rfl

theorem output334_eq : InitECandidate.Proofs.DeadStages866.Parallel.output334 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_868 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output334_def]
  kernel_rfl

theorem input335_eq : InitECandidate.Proofs.DeadStages866.Parallel.input335 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_996 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input335_def]
  kernel_rfl

theorem output335_eq : InitECandidate.Proofs.DeadStages866.Parallel.output335 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_867 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output335_def]
  kernel_rfl

theorem input336_eq : InitECandidate.Proofs.DeadStages866.Parallel.input336 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_998 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input336_def]
  simp only [input335_eq, input334_eq]
  kernel_rfl

theorem output336_eq : InitECandidate.Proofs.DeadStages866.Parallel.output336 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_869 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output336_def]
  simp only [output335_eq, output334_eq]
  kernel_rfl

theorem input337_eq : InitECandidate.Proofs.DeadStages866.Parallel.input337 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_993 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input337_def]
  kernel_rfl

theorem output337_eq : InitECandidate.Proofs.DeadStages866.Parallel.output337 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_864 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output337_def]
  kernel_rfl

theorem input338_eq : InitECandidate.Proofs.DeadStages866.Parallel.input338 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_992 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input338_def]
  kernel_rfl

theorem output338_eq : InitECandidate.Proofs.DeadStages866.Parallel.output338 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_863 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output338_def]
  kernel_rfl

theorem input339_eq : InitECandidate.Proofs.DeadStages866.Parallel.input339 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_994 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input339_def]
  simp only [input338_eq, input337_eq]
  kernel_rfl

theorem output339_eq : InitECandidate.Proofs.DeadStages866.Parallel.output339 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_865 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output339_def]
  simp only [output338_eq, output337_eq]
  kernel_rfl

theorem input340_eq : InitECandidate.Proofs.DeadStages866.Parallel.input340 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_989 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input340_def]
  kernel_rfl

theorem output340_eq : InitECandidate.Proofs.DeadStages866.Parallel.output340 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_860 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output340_def]
  kernel_rfl

theorem input341_eq : InitECandidate.Proofs.DeadStages866.Parallel.input341 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_988 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input341_def]
  kernel_rfl

theorem output341_eq : InitECandidate.Proofs.DeadStages866.Parallel.output341 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_859 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output341_def]
  kernel_rfl

theorem input342_eq : InitECandidate.Proofs.DeadStages866.Parallel.input342 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_990 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input342_def]
  simp only [input341_eq, input340_eq]
  kernel_rfl

theorem output342_eq : InitECandidate.Proofs.DeadStages866.Parallel.output342 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_861 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output342_def]
  simp only [output341_eq, output340_eq]
  kernel_rfl

theorem input343_eq : InitECandidate.Proofs.DeadStages866.Parallel.input343 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_986 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input343_def]
  kernel_rfl

theorem output343_eq : InitECandidate.Proofs.DeadStages866.Parallel.output343 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_857 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output343_def]
  kernel_rfl

theorem input344_eq : InitECandidate.Proofs.DeadStages866.Parallel.input344 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_983 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input344_def]
  kernel_rfl

theorem output344_eq : InitECandidate.Proofs.DeadStages866.Parallel.output344 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_854 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output344_def]
  kernel_rfl

theorem input345_eq : InitECandidate.Proofs.DeadStages866.Parallel.input345 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_982 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input345_def]
  kernel_rfl

theorem output345_eq : InitECandidate.Proofs.DeadStages866.Parallel.output345 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_853 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output345_def]
  kernel_rfl

theorem input346_eq : InitECandidate.Proofs.DeadStages866.Parallel.input346 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_984 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input346_def]
  simp only [input345_eq, input344_eq]
  kernel_rfl

theorem output346_eq : InitECandidate.Proofs.DeadStages866.Parallel.output346 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_855 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output346_def]
  simp only [output345_eq, output344_eq]
  kernel_rfl

theorem input347_eq : InitECandidate.Proofs.DeadStages866.Parallel.input347 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_979 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input347_def]
  kernel_rfl

theorem output347_eq : InitECandidate.Proofs.DeadStages866.Parallel.output347 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_850 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output347_def]
  kernel_rfl

theorem input348_eq : InitECandidate.Proofs.DeadStages866.Parallel.input348 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_978 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input348_def]
  kernel_rfl

theorem output348_eq : InitECandidate.Proofs.DeadStages866.Parallel.output348 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_849 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output348_def]
  kernel_rfl

theorem input349_eq : InitECandidate.Proofs.DeadStages866.Parallel.input349 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_980 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input349_def]
  simp only [input348_eq, input347_eq]
  kernel_rfl

theorem output349_eq : InitECandidate.Proofs.DeadStages866.Parallel.output349 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_851 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output349_def]
  simp only [output348_eq, output347_eq]
  kernel_rfl

theorem input350_eq : InitECandidate.Proofs.DeadStages866.Parallel.input350 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_975 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input350_def]
  kernel_rfl

theorem output350_eq : InitECandidate.Proofs.DeadStages866.Parallel.output350 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_846 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output350_def]
  kernel_rfl

theorem input351_eq : InitECandidate.Proofs.DeadStages866.Parallel.input351 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_974 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input351_def]
  kernel_rfl

theorem output351_eq : InitECandidate.Proofs.DeadStages866.Parallel.output351 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_845 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output351_def]
  kernel_rfl

theorem input352_eq : InitECandidate.Proofs.DeadStages866.Parallel.input352 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_976 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input352_def]
  simp only [input351_eq, input350_eq]
  kernel_rfl

theorem output352_eq : InitECandidate.Proofs.DeadStages866.Parallel.output352 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_847 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output352_def]
  simp only [output351_eq, output350_eq]
  kernel_rfl

theorem input353_eq : InitECandidate.Proofs.DeadStages866.Parallel.input353 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_972 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input353_def]
  kernel_rfl

theorem output353_eq : InitECandidate.Proofs.DeadStages866.Parallel.output353 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_843 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output353_def]
  kernel_rfl

theorem input354_eq : InitECandidate.Proofs.DeadStages866.Parallel.input354 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_970 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input354_def]
  kernel_rfl

theorem output354_eq : InitECandidate.Proofs.DeadStages866.Parallel.output354 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_841 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output354_def]
  kernel_rfl

theorem input355_eq : InitECandidate.Proofs.DeadStages866.Parallel.input355 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_967 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input355_def]
  kernel_rfl

theorem output355_eq : InitECandidate.Proofs.DeadStages866.Parallel.output355 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_838 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output355_def]
  kernel_rfl

theorem input356_eq : InitECandidate.Proofs.DeadStages866.Parallel.input356 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_966 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input356_def]
  kernel_rfl

theorem output356_eq : InitECandidate.Proofs.DeadStages866.Parallel.output356 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_837 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output356_def]
  kernel_rfl

theorem input357_eq : InitECandidate.Proofs.DeadStages866.Parallel.input357 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_968 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input357_def]
  simp only [input356_eq, input355_eq]
  kernel_rfl

theorem output357_eq : InitECandidate.Proofs.DeadStages866.Parallel.output357 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_839 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output357_def]
  simp only [output356_eq, output355_eq]
  kernel_rfl

theorem input358_eq : InitECandidate.Proofs.DeadStages866.Parallel.input358 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_42 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input358_def]
  kernel_rfl

theorem output358_eq : InitECandidate.Proofs.DeadStages866.Parallel.output358 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_29 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output358_def]
  kernel_rfl

theorem input359_eq : InitECandidate.Proofs.DeadStages866.Parallel.input359 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_961 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input359_def]
  kernel_rfl

theorem output359_eq : InitECandidate.Proofs.DeadStages866.Parallel.output359 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_832 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output359_def]
  kernel_rfl

theorem input360_eq : InitECandidate.Proofs.DeadStages866.Parallel.input360 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_939 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input360_def]
  kernel_rfl

theorem output360_eq : InitECandidate.Proofs.DeadStages866.Parallel.output360 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_819 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output360_def]
  kernel_rfl

theorem input361_eq : InitECandidate.Proofs.DeadStages866.Parallel.input361 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_962 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input361_def]
  simp only [input360_eq, input359_eq]
  kernel_rfl

theorem output361_eq : InitECandidate.Proofs.DeadStages866.Parallel.output361 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_833 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output361_def]
  simp only [output360_eq, output359_eq]
  kernel_rfl

theorem input362_eq : InitECandidate.Proofs.DeadStages866.Parallel.input362 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_938 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input362_def]
  kernel_rfl

theorem output362_eq : InitECandidate.Proofs.DeadStages866.Parallel.output362 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_818 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output362_def]
  kernel_rfl

theorem input363_eq : InitECandidate.Proofs.DeadStages866.Parallel.input363 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_963 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input363_def]
  simp only [input362_eq, input361_eq]
  kernel_rfl

theorem output363_eq : InitECandidate.Proofs.DeadStages866.Parallel.output363 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_834 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output363_def]
  simp only [output362_eq, output361_eq]
  kernel_rfl

theorem input364_eq : InitECandidate.Proofs.DeadStages866.Parallel.input364 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_936 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input364_def]
  kernel_rfl

theorem output364_eq : InitECandidate.Proofs.DeadStages866.Parallel.output364 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_816 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output364_def]
  kernel_rfl

theorem input365_eq : InitECandidate.Proofs.DeadStages866.Parallel.input365 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_934 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input365_def]
  kernel_rfl

theorem input366_eq : InitECandidate.Proofs.DeadStages866.Parallel.input366 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_931 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input366_def]
  kernel_rfl

theorem output366_eq : InitECandidate.Proofs.DeadStages866.Parallel.output366 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_813 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output366_def]
  kernel_rfl

theorem input367_eq : InitECandidate.Proofs.DeadStages866.Parallel.input367 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_930 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input367_def]
  kernel_rfl

theorem output367_eq : InitECandidate.Proofs.DeadStages866.Parallel.output367 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_812 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output367_def]
  kernel_rfl

theorem input368_eq : InitECandidate.Proofs.DeadStages866.Parallel.input368 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_932 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input368_def]
  simp only [input367_eq, input366_eq]
  kernel_rfl

theorem output368_eq : InitECandidate.Proofs.DeadStages866.Parallel.output368 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_814 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output368_def]
  simp only [output367_eq, output366_eq]
  kernel_rfl

theorem input369_eq : InitECandidate.Proofs.DeadStages866.Parallel.input369 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_928 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input369_def]
  kernel_rfl

theorem output369_eq : InitECandidate.Proofs.DeadStages866.Parallel.output369 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_810 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output369_def]
  kernel_rfl

theorem input370_eq : InitECandidate.Proofs.DeadStages866.Parallel.input370 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_925 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input370_def]
  kernel_rfl

theorem output370_eq : InitECandidate.Proofs.DeadStages866.Parallel.output370 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_807 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output370_def]
  kernel_rfl

theorem input371_eq : InitECandidate.Proofs.DeadStages866.Parallel.input371 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_924 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input371_def]
  kernel_rfl

theorem output371_eq : InitECandidate.Proofs.DeadStages866.Parallel.output371 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_806 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output371_def]
  kernel_rfl

theorem input372_eq : InitECandidate.Proofs.DeadStages866.Parallel.input372 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_926 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input372_def]
  simp only [input371_eq, input370_eq]
  kernel_rfl

theorem output372_eq : InitECandidate.Proofs.DeadStages866.Parallel.output372 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_808 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output372_def]
  simp only [output371_eq, output370_eq]
  kernel_rfl

theorem input373_eq : InitECandidate.Proofs.DeadStages866.Parallel.input373 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_922 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input373_def]
  kernel_rfl

theorem output373_eq : InitECandidate.Proofs.DeadStages866.Parallel.output373 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_804 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output373_def]
  kernel_rfl

theorem input374_eq : InitECandidate.Proofs.DeadStages866.Parallel.input374 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_919 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input374_def]
  kernel_rfl

theorem output374_eq : InitECandidate.Proofs.DeadStages866.Parallel.output374 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_801 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output374_def]
  kernel_rfl

theorem input375_eq : InitECandidate.Proofs.DeadStages866.Parallel.input375 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_918 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input375_def]
  kernel_rfl

theorem output375_eq : InitECandidate.Proofs.DeadStages866.Parallel.output375 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_800 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output375_def]
  kernel_rfl

theorem input376_eq : InitECandidate.Proofs.DeadStages866.Parallel.input376 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_920 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input376_def]
  simp only [input375_eq, input374_eq]
  kernel_rfl

theorem output376_eq : InitECandidate.Proofs.DeadStages866.Parallel.output376 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_802 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output376_def]
  simp only [output375_eq, output374_eq]
  kernel_rfl

theorem input377_eq : InitECandidate.Proofs.DeadStages866.Parallel.input377 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_916 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input377_def]
  kernel_rfl

theorem output377_eq : InitECandidate.Proofs.DeadStages866.Parallel.output377 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_798 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output377_def]
  kernel_rfl

theorem input378_eq : InitECandidate.Proofs.DeadStages866.Parallel.input378 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_913 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input378_def]
  kernel_rfl

theorem output378_eq : InitECandidate.Proofs.DeadStages866.Parallel.output378 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_795 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output378_def]
  kernel_rfl

theorem input379_eq : InitECandidate.Proofs.DeadStages866.Parallel.input379 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_912 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input379_def]
  kernel_rfl

theorem output379_eq : InitECandidate.Proofs.DeadStages866.Parallel.output379 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_794 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output379_def]
  kernel_rfl

theorem input380_eq : InitECandidate.Proofs.DeadStages866.Parallel.input380 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_914 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input380_def]
  simp only [input379_eq, input378_eq]
  kernel_rfl

theorem output380_eq : InitECandidate.Proofs.DeadStages866.Parallel.output380 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_796 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output380_def]
  simp only [output379_eq, output378_eq]
  kernel_rfl

theorem input381_eq : InitECandidate.Proofs.DeadStages866.Parallel.input381 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_910 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input381_def]
  kernel_rfl

theorem output381_eq : InitECandidate.Proofs.DeadStages866.Parallel.output381 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_792 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output381_def]
  kernel_rfl

theorem input382_eq : InitECandidate.Proofs.DeadStages866.Parallel.input382 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_908 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input382_def]
  kernel_rfl

theorem output382_eq : InitECandidate.Proofs.DeadStages866.Parallel.output382 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_790 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output382_def]
  kernel_rfl

theorem input383_eq : InitECandidate.Proofs.DeadStages866.Parallel.input383 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_906 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input383_def]
  kernel_rfl

theorem output383_eq : InitECandidate.Proofs.DeadStages866.Parallel.output383 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_788 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output383_def]
  kernel_rfl

theorem input384_eq : InitECandidate.Proofs.DeadStages866.Parallel.input384 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_904 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input384_def]
  kernel_rfl

theorem output384_eq : InitECandidate.Proofs.DeadStages866.Parallel.output384 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_786 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output384_def]
  kernel_rfl

theorem input385_eq : InitECandidate.Proofs.DeadStages866.Parallel.input385 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_902 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input385_def]
  kernel_rfl

theorem output385_eq : InitECandidate.Proofs.DeadStages866.Parallel.output385 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_784 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output385_def]
  kernel_rfl

theorem input386_eq : InitECandidate.Proofs.DeadStages866.Parallel.input386 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_899 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input386_def]
  kernel_rfl

theorem output386_eq : InitECandidate.Proofs.DeadStages866.Parallel.output386 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_781 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output386_def]
  kernel_rfl

theorem input387_eq : InitECandidate.Proofs.DeadStages866.Parallel.input387 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_898 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input387_def]
  kernel_rfl

theorem output387_eq : InitECandidate.Proofs.DeadStages866.Parallel.output387 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_780 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output387_def]
  kernel_rfl

theorem input388_eq : InitECandidate.Proofs.DeadStages866.Parallel.input388 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_900 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input388_def]
  simp only [input387_eq, input386_eq]
  kernel_rfl

theorem output388_eq : InitECandidate.Proofs.DeadStages866.Parallel.output388 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_782 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output388_def]
  simp only [output387_eq, output386_eq]
  kernel_rfl

theorem input389_eq : InitECandidate.Proofs.DeadStages866.Parallel.input389 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_894 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input389_def]
  kernel_rfl

theorem output389_eq : InitECandidate.Proofs.DeadStages866.Parallel.output389 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_776 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output389_def]
  kernel_rfl

theorem input390_eq : InitECandidate.Proofs.DeadStages866.Parallel.input390 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_893 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input390_def]
  kernel_rfl

theorem output390_eq : InitECandidate.Proofs.DeadStages866.Parallel.output390 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_775 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output390_def]
  kernel_rfl

theorem input391_eq : InitECandidate.Proofs.DeadStages866.Parallel.input391 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_895 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input391_def]
  simp only [input390_eq, input389_eq]
  kernel_rfl

theorem output391_eq : InitECandidate.Proofs.DeadStages866.Parallel.output391 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_777 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output391_def]
  simp only [output390_eq, output389_eq]
  kernel_rfl

theorem input392_eq : InitECandidate.Proofs.DeadStages866.Parallel.input392 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_890 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input392_def]
  kernel_rfl

theorem output392_eq : InitECandidate.Proofs.DeadStages866.Parallel.output392 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_772 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output392_def]
  kernel_rfl

theorem input393_eq : InitECandidate.Proofs.DeadStages866.Parallel.input393 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_888 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input393_def]
  kernel_rfl

theorem output393_eq : InitECandidate.Proofs.DeadStages866.Parallel.output393 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_770 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output393_def]
  kernel_rfl

theorem input394_eq : InitECandidate.Proofs.DeadStages866.Parallel.input394 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_887 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input394_def]
  kernel_rfl

theorem output394_eq : InitECandidate.Proofs.DeadStages866.Parallel.output394 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_769 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output394_def]
  kernel_rfl

theorem input395_eq : InitECandidate.Proofs.DeadStages866.Parallel.input395 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_889 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input395_def]
  simp only [input394_eq, input393_eq]
  kernel_rfl

theorem output395_eq : InitECandidate.Proofs.DeadStages866.Parallel.output395 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_771 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output395_def]
  simp only [output394_eq, output393_eq]
  kernel_rfl

theorem input396_eq : InitECandidate.Proofs.DeadStages866.Parallel.input396 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_891 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input396_def]
  simp only [input395_eq, input392_eq]
  kernel_rfl

theorem output396_eq : InitECandidate.Proofs.DeadStages866.Parallel.output396 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_773 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output396_def]
  simp only [output395_eq, output392_eq]
  kernel_rfl

theorem input397_eq : InitECandidate.Proofs.DeadStages866.Parallel.input397 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_884 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input397_def]
  kernel_rfl

theorem output397_eq : InitECandidate.Proofs.DeadStages866.Parallel.output397 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_766 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output397_def]
  kernel_rfl

theorem input398_eq : InitECandidate.Proofs.DeadStages866.Parallel.input398 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_882 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input398_def]
  kernel_rfl

theorem output398_eq : InitECandidate.Proofs.DeadStages866.Parallel.output398 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_764 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output398_def]
  kernel_rfl

theorem input399_eq : InitECandidate.Proofs.DeadStages866.Parallel.input399 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_881 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input399_def]
  kernel_rfl

theorem output399_eq : InitECandidate.Proofs.DeadStages866.Parallel.output399 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_763 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output399_def]
  kernel_rfl

theorem input400_eq : InitECandidate.Proofs.DeadStages866.Parallel.input400 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_883 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input400_def]
  simp only [input399_eq, input398_eq]
  kernel_rfl

theorem output400_eq : InitECandidate.Proofs.DeadStages866.Parallel.output400 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_765 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output400_def]
  simp only [output399_eq, output398_eq]
  kernel_rfl

theorem input401_eq : InitECandidate.Proofs.DeadStages866.Parallel.input401 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_885 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input401_def]
  simp only [input400_eq, input397_eq]
  kernel_rfl

theorem output401_eq : InitECandidate.Proofs.DeadStages866.Parallel.output401 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_767 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output401_def]
  simp only [output400_eq, output397_eq]
  kernel_rfl

theorem input402_eq : InitECandidate.Proofs.DeadStages866.Parallel.input402 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_878 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input402_def]
  kernel_rfl

theorem output402_eq : InitECandidate.Proofs.DeadStages866.Parallel.output402 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_760 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output402_def]
  kernel_rfl

theorem input403_eq : InitECandidate.Proofs.DeadStages866.Parallel.input403 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_876 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input403_def]
  kernel_rfl

theorem output403_eq : InitECandidate.Proofs.DeadStages866.Parallel.output403 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_758 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output403_def]
  kernel_rfl

theorem input404_eq : InitECandidate.Proofs.DeadStages866.Parallel.input404 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_875 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input404_def]
  kernel_rfl

theorem output404_eq : InitECandidate.Proofs.DeadStages866.Parallel.output404 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_757 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output404_def]
  kernel_rfl

theorem input405_eq : InitECandidate.Proofs.DeadStages866.Parallel.input405 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_877 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input405_def]
  simp only [input404_eq, input403_eq]
  kernel_rfl

theorem output405_eq : InitECandidate.Proofs.DeadStages866.Parallel.output405 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_759 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output405_def]
  simp only [output404_eq, output403_eq]
  kernel_rfl

theorem input406_eq : InitECandidate.Proofs.DeadStages866.Parallel.input406 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_879 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input406_def]
  simp only [input405_eq, input402_eq]
  kernel_rfl

theorem output406_eq : InitECandidate.Proofs.DeadStages866.Parallel.output406 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_761 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output406_def]
  simp only [output405_eq, output402_eq]
  kernel_rfl

theorem input407_eq : InitECandidate.Proofs.DeadStages866.Parallel.input407 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_873 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input407_def]
  kernel_rfl

theorem output407_eq : InitECandidate.Proofs.DeadStages866.Parallel.output407 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_755 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output407_def]
  kernel_rfl

theorem input408_eq : InitECandidate.Proofs.DeadStages866.Parallel.input408 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_870 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input408_def]
  kernel_rfl

theorem output408_eq : InitECandidate.Proofs.DeadStages866.Parallel.output408 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_752 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output408_def]
  kernel_rfl

theorem input409_eq : InitECandidate.Proofs.DeadStages866.Parallel.input409 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_869 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input409_def]
  kernel_rfl

theorem output409_eq : InitECandidate.Proofs.DeadStages866.Parallel.output409 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_751 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output409_def]
  kernel_rfl

theorem input410_eq : InitECandidate.Proofs.DeadStages866.Parallel.input410 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_871 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input410_def]
  simp only [input409_eq, input408_eq]
  kernel_rfl

theorem output410_eq : InitECandidate.Proofs.DeadStages866.Parallel.output410 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_753 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output410_def]
  simp only [output409_eq, output408_eq]
  kernel_rfl

theorem input411_eq : InitECandidate.Proofs.DeadStages866.Parallel.input411 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_866 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input411_def]
  kernel_rfl

theorem output411_eq : InitECandidate.Proofs.DeadStages866.Parallel.output411 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_748 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output411_def]
  kernel_rfl

theorem input412_eq : InitECandidate.Proofs.DeadStages866.Parallel.input412 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_864 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input412_def]
  kernel_rfl

theorem output412_eq : InitECandidate.Proofs.DeadStages866.Parallel.output412 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_746 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output412_def]
  kernel_rfl

theorem input413_eq : InitECandidate.Proofs.DeadStages866.Parallel.input413 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_863 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input413_def]
  kernel_rfl

theorem output413_eq : InitECandidate.Proofs.DeadStages866.Parallel.output413 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_745 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output413_def]
  kernel_rfl

theorem input414_eq : InitECandidate.Proofs.DeadStages866.Parallel.input414 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_865 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input414_def]
  simp only [input413_eq, input412_eq]
  kernel_rfl

theorem output414_eq : InitECandidate.Proofs.DeadStages866.Parallel.output414 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_747 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output414_def]
  simp only [output413_eq, output412_eq]
  kernel_rfl

theorem input415_eq : InitECandidate.Proofs.DeadStages866.Parallel.input415 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_867 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input415_def]
  simp only [input414_eq, input411_eq]
  kernel_rfl

theorem output415_eq : InitECandidate.Proofs.DeadStages866.Parallel.output415 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_749 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output415_def]
  simp only [output414_eq, output411_eq]
  kernel_rfl

theorem input416_eq : InitECandidate.Proofs.DeadStages866.Parallel.input416 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_860 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input416_def]
  kernel_rfl

theorem output416_eq : InitECandidate.Proofs.DeadStages866.Parallel.output416 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_742 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output416_def]
  kernel_rfl

theorem input417_eq : InitECandidate.Proofs.DeadStages866.Parallel.input417 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_858 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input417_def]
  kernel_rfl

theorem output417_eq : InitECandidate.Proofs.DeadStages866.Parallel.output417 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_740 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output417_def]
  kernel_rfl

theorem input418_eq : InitECandidate.Proofs.DeadStages866.Parallel.input418 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_857 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input418_def]
  kernel_rfl

theorem output418_eq : InitECandidate.Proofs.DeadStages866.Parallel.output418 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_739 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output418_def]
  kernel_rfl

theorem input419_eq : InitECandidate.Proofs.DeadStages866.Parallel.input419 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_859 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input419_def]
  simp only [input418_eq, input417_eq]
  kernel_rfl

theorem output419_eq : InitECandidate.Proofs.DeadStages866.Parallel.output419 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_741 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output419_def]
  simp only [output418_eq, output417_eq]
  kernel_rfl

theorem input420_eq : InitECandidate.Proofs.DeadStages866.Parallel.input420 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_861 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input420_def]
  simp only [input419_eq, input416_eq]
  kernel_rfl

theorem output420_eq : InitECandidate.Proofs.DeadStages866.Parallel.output420 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_743 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output420_def]
  simp only [output419_eq, output416_eq]
  kernel_rfl

theorem input421_eq : InitECandidate.Proofs.DeadStages866.Parallel.input421 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_855 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input421_def]
  kernel_rfl

theorem output421_eq : InitECandidate.Proofs.DeadStages866.Parallel.output421 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_737 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output421_def]
  kernel_rfl

theorem input422_eq : InitECandidate.Proofs.DeadStages866.Parallel.input422 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_854 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input422_def]
  kernel_rfl

theorem output422_eq : InitECandidate.Proofs.DeadStages866.Parallel.output422 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_736 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output422_def]
  kernel_rfl

theorem input423_eq : InitECandidate.Proofs.DeadStages866.Parallel.input423 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_856 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input423_def]
  simp only [input422_eq, input421_eq]
  kernel_rfl

theorem output423_eq : InitECandidate.Proofs.DeadStages866.Parallel.output423 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_738 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output423_def]
  simp only [output422_eq, output421_eq]
  kernel_rfl

theorem input424_eq : InitECandidate.Proofs.DeadStages866.Parallel.input424 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_862 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input424_def]
  simp only [input423_eq, input420_eq]
  kernel_rfl

theorem output424_eq : InitECandidate.Proofs.DeadStages866.Parallel.output424 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_744 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output424_def]
  simp only [output423_eq, output420_eq]
  kernel_rfl

theorem input425_eq : InitECandidate.Proofs.DeadStages866.Parallel.input425 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_868 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input425_def]
  simp only [input424_eq, input415_eq]
  kernel_rfl

theorem output425_eq : InitECandidate.Proofs.DeadStages866.Parallel.output425 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_750 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output425_def]
  simp only [output424_eq, output415_eq]
  kernel_rfl

theorem input426_eq : InitECandidate.Proofs.DeadStages866.Parallel.input426 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_872 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input426_def]
  simp only [input425_eq, input410_eq]
  kernel_rfl

theorem output426_eq : InitECandidate.Proofs.DeadStages866.Parallel.output426 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_754 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output426_def]
  simp only [output425_eq, output410_eq]
  kernel_rfl

theorem input427_eq : InitECandidate.Proofs.DeadStages866.Parallel.input427 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_874 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input427_def]
  simp only [input426_eq, input407_eq]
  kernel_rfl

theorem output427_eq : InitECandidate.Proofs.DeadStages866.Parallel.output427 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_756 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output427_def]
  simp only [output426_eq, output407_eq]
  kernel_rfl

theorem input428_eq : InitECandidate.Proofs.DeadStages866.Parallel.input428 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_880 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input428_def]
  simp only [input427_eq, input406_eq]
  kernel_rfl

theorem output428_eq : InitECandidate.Proofs.DeadStages866.Parallel.output428 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_762 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output428_def]
  simp only [output427_eq, output406_eq]
  kernel_rfl

theorem input429_eq : InitECandidate.Proofs.DeadStages866.Parallel.input429 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_886 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input429_def]
  simp only [input428_eq, input401_eq]
  kernel_rfl

theorem output429_eq : InitECandidate.Proofs.DeadStages866.Parallel.output429 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_768 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output429_def]
  simp only [output428_eq, output401_eq]
  kernel_rfl

theorem input430_eq : InitECandidate.Proofs.DeadStages866.Parallel.input430 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_892 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input430_def]
  simp only [input429_eq, input396_eq]
  kernel_rfl

theorem output430_eq : InitECandidate.Proofs.DeadStages866.Parallel.output430 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_774 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output430_def]
  simp only [output429_eq, output396_eq]
  kernel_rfl

theorem input431_eq : InitECandidate.Proofs.DeadStages866.Parallel.input431 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_896 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input431_def]
  simp only [input430_eq, input391_eq]
  kernel_rfl

theorem output431_eq : InitECandidate.Proofs.DeadStages866.Parallel.output431 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_778 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output431_def]
  simp only [output430_eq, output391_eq]
  kernel_rfl

theorem input432_eq : InitECandidate.Proofs.DeadStages866.Parallel.input432 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_852 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input432_def]
  kernel_rfl

theorem output432_eq : InitECandidate.Proofs.DeadStages866.Parallel.output432 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_734 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output432_def]
  kernel_rfl

theorem input433_eq : InitECandidate.Proofs.DeadStages866.Parallel.input433 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_849 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input433_def]
  kernel_rfl

theorem output433_eq : InitECandidate.Proofs.DeadStages866.Parallel.output433 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_731 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output433_def]
  kernel_rfl

theorem input434_eq : InitECandidate.Proofs.DeadStages866.Parallel.input434 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_848 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input434_def]
  kernel_rfl

theorem output434_eq : InitECandidate.Proofs.DeadStages866.Parallel.output434 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_730 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output434_def]
  kernel_rfl

theorem input435_eq : InitECandidate.Proofs.DeadStages866.Parallel.input435 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_850 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input435_def]
  simp only [input434_eq, input433_eq]
  kernel_rfl

theorem output435_eq : InitECandidate.Proofs.DeadStages866.Parallel.output435 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_732 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output435_def]
  simp only [output434_eq, output433_eq]
  kernel_rfl

theorem input436_eq : InitECandidate.Proofs.DeadStages866.Parallel.input436 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_846 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input436_def]
  kernel_rfl

theorem output436_eq : InitECandidate.Proofs.DeadStages866.Parallel.output436 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_728 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output436_def]
  kernel_rfl

theorem input437_eq : InitECandidate.Proofs.DeadStages866.Parallel.input437 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_843 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input437_def]
  kernel_rfl

theorem output437_eq : InitECandidate.Proofs.DeadStages866.Parallel.output437 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_725 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output437_def]
  kernel_rfl

theorem input438_eq : InitECandidate.Proofs.DeadStages866.Parallel.input438 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_842 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input438_def]
  kernel_rfl

theorem output438_eq : InitECandidate.Proofs.DeadStages866.Parallel.output438 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_724 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output438_def]
  kernel_rfl

theorem input439_eq : InitECandidate.Proofs.DeadStages866.Parallel.input439 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_844 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input439_def]
  simp only [input438_eq, input437_eq]
  kernel_rfl

theorem output439_eq : InitECandidate.Proofs.DeadStages866.Parallel.output439 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_726 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output439_def]
  simp only [output438_eq, output437_eq]
  kernel_rfl

theorem input440_eq : InitECandidate.Proofs.DeadStages866.Parallel.input440 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_840 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input440_def]
  kernel_rfl

theorem output440_eq : InitECandidate.Proofs.DeadStages866.Parallel.output440 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_722 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output440_def]
  kernel_rfl

theorem input441_eq : InitECandidate.Proofs.DeadStages866.Parallel.input441 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_837 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input441_def]
  kernel_rfl

theorem output441_eq : InitECandidate.Proofs.DeadStages866.Parallel.output441 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_719 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output441_def]
  kernel_rfl

theorem input442_eq : InitECandidate.Proofs.DeadStages866.Parallel.input442 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_836 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input442_def]
  kernel_rfl

theorem output442_eq : InitECandidate.Proofs.DeadStages866.Parallel.output442 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_718 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output442_def]
  kernel_rfl

theorem input443_eq : InitECandidate.Proofs.DeadStages866.Parallel.input443 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_838 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input443_def]
  simp only [input442_eq, input441_eq]
  kernel_rfl

theorem output443_eq : InitECandidate.Proofs.DeadStages866.Parallel.output443 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_720 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output443_def]
  simp only [output442_eq, output441_eq]
  kernel_rfl

theorem input444_eq : InitECandidate.Proofs.DeadStages866.Parallel.input444 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_834 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input444_def]
  kernel_rfl

theorem output444_eq : InitECandidate.Proofs.DeadStages866.Parallel.output444 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_716 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output444_def]
  kernel_rfl

theorem input445_eq : InitECandidate.Proofs.DeadStages866.Parallel.input445 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_831 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input445_def]
  kernel_rfl

theorem output445_eq : InitECandidate.Proofs.DeadStages866.Parallel.output445 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_713 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output445_def]
  kernel_rfl

theorem input446_eq : InitECandidate.Proofs.DeadStages866.Parallel.input446 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_830 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input446_def]
  kernel_rfl

theorem output446_eq : InitECandidate.Proofs.DeadStages866.Parallel.output446 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_712 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output446_def]
  kernel_rfl

theorem input447_eq : InitECandidate.Proofs.DeadStages866.Parallel.input447 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_832 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input447_def]
  simp only [input446_eq, input445_eq]
  kernel_rfl

theorem output447_eq : InitECandidate.Proofs.DeadStages866.Parallel.output447 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_714 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output447_def]
  simp only [output446_eq, output445_eq]
  kernel_rfl

theorem input448_eq : InitECandidate.Proofs.DeadStages866.Parallel.input448 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_828 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input448_def]
  kernel_rfl

theorem output448_eq : InitECandidate.Proofs.DeadStages866.Parallel.output448 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_710 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output448_def]
  kernel_rfl

theorem input449_eq : InitECandidate.Proofs.DeadStages866.Parallel.input449 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_825 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input449_def]
  kernel_rfl

theorem output449_eq : InitECandidate.Proofs.DeadStages866.Parallel.output449 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_707 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output449_def]
  kernel_rfl

theorem input450_eq : InitECandidate.Proofs.DeadStages866.Parallel.input450 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_824 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input450_def]
  kernel_rfl

theorem output450_eq : InitECandidate.Proofs.DeadStages866.Parallel.output450 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_706 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output450_def]
  kernel_rfl

theorem input451_eq : InitECandidate.Proofs.DeadStages866.Parallel.input451 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_826 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input451_def]
  simp only [input450_eq, input449_eq]
  kernel_rfl

theorem output451_eq : InitECandidate.Proofs.DeadStages866.Parallel.output451 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_708 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output451_def]
  simp only [output450_eq, output449_eq]
  kernel_rfl

theorem input452_eq : InitECandidate.Proofs.DeadStages866.Parallel.input452 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_822 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input452_def]
  kernel_rfl

theorem output452_eq : InitECandidate.Proofs.DeadStages866.Parallel.output452 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_704 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output452_def]
  kernel_rfl

theorem input453_eq : InitECandidate.Proofs.DeadStages866.Parallel.input453 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_819 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input453_def]
  kernel_rfl

theorem output453_eq : InitECandidate.Proofs.DeadStages866.Parallel.output453 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_701 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output453_def]
  kernel_rfl

theorem input454_eq : InitECandidate.Proofs.DeadStages866.Parallel.input454 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_818 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input454_def]
  kernel_rfl

theorem output454_eq : InitECandidate.Proofs.DeadStages866.Parallel.output454 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_700 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output454_def]
  kernel_rfl

theorem input455_eq : InitECandidate.Proofs.DeadStages866.Parallel.input455 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_820 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input455_def]
  simp only [input454_eq, input453_eq]
  kernel_rfl

theorem output455_eq : InitECandidate.Proofs.DeadStages866.Parallel.output455 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_702 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output455_def]
  simp only [output454_eq, output453_eq]
  kernel_rfl

theorem input456_eq : InitECandidate.Proofs.DeadStages866.Parallel.input456 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_816 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input456_def]
  kernel_rfl

theorem output456_eq : InitECandidate.Proofs.DeadStages866.Parallel.output456 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_698 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output456_def]
  kernel_rfl

theorem input457_eq : InitECandidate.Proofs.DeadStages866.Parallel.input457 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_813 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input457_def]
  kernel_rfl

theorem output457_eq : InitECandidate.Proofs.DeadStages866.Parallel.output457 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_695 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output457_def]
  kernel_rfl

theorem input458_eq : InitECandidate.Proofs.DeadStages866.Parallel.input458 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_812 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input458_def]
  kernel_rfl

theorem output458_eq : InitECandidate.Proofs.DeadStages866.Parallel.output458 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_694 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output458_def]
  kernel_rfl

theorem input459_eq : InitECandidate.Proofs.DeadStages866.Parallel.input459 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_814 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input459_def]
  simp only [input458_eq, input457_eq]
  kernel_rfl

theorem output459_eq : InitECandidate.Proofs.DeadStages866.Parallel.output459 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_696 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output459_def]
  simp only [output458_eq, output457_eq]
  kernel_rfl

theorem input460_eq : InitECandidate.Proofs.DeadStages866.Parallel.input460 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_810 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input460_def]
  kernel_rfl

theorem output460_eq : InitECandidate.Proofs.DeadStages866.Parallel.output460 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_692 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output460_def]
  kernel_rfl

theorem input461_eq : InitECandidate.Proofs.DeadStages866.Parallel.input461 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_807 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input461_def]
  kernel_rfl

theorem output461_eq : InitECandidate.Proofs.DeadStages866.Parallel.output461 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_689 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output461_def]
  kernel_rfl

theorem input462_eq : InitECandidate.Proofs.DeadStages866.Parallel.input462 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_806 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input462_def]
  kernel_rfl

theorem output462_eq : InitECandidate.Proofs.DeadStages866.Parallel.output462 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_688 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output462_def]
  kernel_rfl

theorem input463_eq : InitECandidate.Proofs.DeadStages866.Parallel.input463 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_808 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input463_def]
  simp only [input462_eq, input461_eq]
  kernel_rfl

theorem output463_eq : InitECandidate.Proofs.DeadStages866.Parallel.output463 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_690 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output463_def]
  simp only [output462_eq, output461_eq]
  kernel_rfl

theorem input464_eq : InitECandidate.Proofs.DeadStages866.Parallel.input464 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_802 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input464_def]
  kernel_rfl

theorem output464_eq : InitECandidate.Proofs.DeadStages866.Parallel.output464 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_684 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output464_def]
  kernel_rfl

theorem input465_eq : InitECandidate.Proofs.DeadStages866.Parallel.input465 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_801 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input465_def]
  kernel_rfl

theorem output465_eq : InitECandidate.Proofs.DeadStages866.Parallel.output465 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_683 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output465_def]
  kernel_rfl

theorem input466_eq : InitECandidate.Proofs.DeadStages866.Parallel.input466 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_803 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input466_def]
  simp only [input465_eq, input464_eq]
  kernel_rfl

theorem output466_eq : InitECandidate.Proofs.DeadStages866.Parallel.output466 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_685 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output466_def]
  simp only [output465_eq, output464_eq]
  kernel_rfl

theorem input467_eq : InitECandidate.Proofs.DeadStages866.Parallel.input467 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_798 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input467_def]
  kernel_rfl

theorem output467_eq : InitECandidate.Proofs.DeadStages866.Parallel.output467 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_680 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output467_def]
  kernel_rfl

theorem input468_eq : InitECandidate.Proofs.DeadStages866.Parallel.input468 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_796 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input468_def]
  kernel_rfl

theorem output468_eq : InitECandidate.Proofs.DeadStages866.Parallel.output468 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_678 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output468_def]
  kernel_rfl

theorem input469_eq : InitECandidate.Proofs.DeadStages866.Parallel.input469 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_795 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input469_def]
  kernel_rfl

theorem output469_eq : InitECandidate.Proofs.DeadStages866.Parallel.output469 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_677 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output469_def]
  kernel_rfl

theorem input470_eq : InitECandidate.Proofs.DeadStages866.Parallel.input470 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_797 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input470_def]
  simp only [input469_eq, input468_eq]
  kernel_rfl

theorem output470_eq : InitECandidate.Proofs.DeadStages866.Parallel.output470 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_679 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output470_def]
  simp only [output469_eq, output468_eq]
  kernel_rfl

theorem input471_eq : InitECandidate.Proofs.DeadStages866.Parallel.input471 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_799 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input471_def]
  simp only [input470_eq, input467_eq]
  kernel_rfl

theorem output471_eq : InitECandidate.Proofs.DeadStages866.Parallel.output471 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_681 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output471_def]
  simp only [output470_eq, output467_eq]
  kernel_rfl

theorem input472_eq : InitECandidate.Proofs.DeadStages866.Parallel.input472 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_792 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input472_def]
  kernel_rfl

theorem output472_eq : InitECandidate.Proofs.DeadStages866.Parallel.output472 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_674 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output472_def]
  kernel_rfl

theorem input473_eq : InitECandidate.Proofs.DeadStages866.Parallel.input473 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_790 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input473_def]
  kernel_rfl

theorem output473_eq : InitECandidate.Proofs.DeadStages866.Parallel.output473 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_672 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output473_def]
  kernel_rfl

theorem input474_eq : InitECandidate.Proofs.DeadStages866.Parallel.input474 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_789 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input474_def]
  kernel_rfl

theorem output474_eq : InitECandidate.Proofs.DeadStages866.Parallel.output474 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_671 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output474_def]
  kernel_rfl

theorem input475_eq : InitECandidate.Proofs.DeadStages866.Parallel.input475 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_791 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input475_def]
  simp only [input474_eq, input473_eq]
  kernel_rfl

theorem output475_eq : InitECandidate.Proofs.DeadStages866.Parallel.output475 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_673 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output475_def]
  simp only [output474_eq, output473_eq]
  kernel_rfl

theorem input476_eq : InitECandidate.Proofs.DeadStages866.Parallel.input476 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_793 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input476_def]
  simp only [input475_eq, input472_eq]
  kernel_rfl

theorem output476_eq : InitECandidate.Proofs.DeadStages866.Parallel.output476 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_675 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output476_def]
  simp only [output475_eq, output472_eq]
  kernel_rfl

theorem input477_eq : InitECandidate.Proofs.DeadStages866.Parallel.input477 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_786 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input477_def]
  kernel_rfl

theorem output477_eq : InitECandidate.Proofs.DeadStages866.Parallel.output477 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_668 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output477_def]
  kernel_rfl

theorem input478_eq : InitECandidate.Proofs.DeadStages866.Parallel.input478 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_784 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input478_def]
  kernel_rfl

theorem output478_eq : InitECandidate.Proofs.DeadStages866.Parallel.output478 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_666 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output478_def]
  kernel_rfl

theorem input479_eq : InitECandidate.Proofs.DeadStages866.Parallel.input479 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_783 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input479_def]
  kernel_rfl

theorem output479_eq : InitECandidate.Proofs.DeadStages866.Parallel.output479 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_665 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output479_def]
  kernel_rfl

theorem input480_eq : InitECandidate.Proofs.DeadStages866.Parallel.input480 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_785 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input480_def]
  simp only [input479_eq, input478_eq]
  kernel_rfl

theorem output480_eq : InitECandidate.Proofs.DeadStages866.Parallel.output480 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_667 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output480_def]
  simp only [output479_eq, output478_eq]
  kernel_rfl

theorem input481_eq : InitECandidate.Proofs.DeadStages866.Parallel.input481 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_787 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input481_def]
  simp only [input480_eq, input477_eq]
  kernel_rfl

theorem output481_eq : InitECandidate.Proofs.DeadStages866.Parallel.output481 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_669 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output481_def]
  simp only [output480_eq, output477_eq]
  kernel_rfl

theorem input482_eq : InitECandidate.Proofs.DeadStages866.Parallel.input482 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_781 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input482_def]
  kernel_rfl

theorem output482_eq : InitECandidate.Proofs.DeadStages866.Parallel.output482 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_663 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output482_def]
  kernel_rfl

theorem input483_eq : InitECandidate.Proofs.DeadStages866.Parallel.input483 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_778 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input483_def]
  kernel_rfl

theorem output483_eq : InitECandidate.Proofs.DeadStages866.Parallel.output483 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_660 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output483_def]
  kernel_rfl

theorem input484_eq : InitECandidate.Proofs.DeadStages866.Parallel.input484 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_777 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input484_def]
  kernel_rfl

theorem output484_eq : InitECandidate.Proofs.DeadStages866.Parallel.output484 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_659 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output484_def]
  kernel_rfl

theorem input485_eq : InitECandidate.Proofs.DeadStages866.Parallel.input485 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_779 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input485_def]
  simp only [input484_eq, input483_eq]
  kernel_rfl

theorem output485_eq : InitECandidate.Proofs.DeadStages866.Parallel.output485 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_661 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output485_def]
  simp only [output484_eq, output483_eq]
  kernel_rfl

theorem input486_eq : InitECandidate.Proofs.DeadStages866.Parallel.input486 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_774 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input486_def]
  kernel_rfl

theorem output486_eq : InitECandidate.Proofs.DeadStages866.Parallel.output486 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_656 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output486_def]
  kernel_rfl

theorem input487_eq : InitECandidate.Proofs.DeadStages866.Parallel.input487 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_772 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input487_def]
  kernel_rfl

theorem output487_eq : InitECandidate.Proofs.DeadStages866.Parallel.output487 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_654 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output487_def]
  kernel_rfl

theorem input488_eq : InitECandidate.Proofs.DeadStages866.Parallel.input488 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_771 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input488_def]
  kernel_rfl

theorem output488_eq : InitECandidate.Proofs.DeadStages866.Parallel.output488 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_653 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output488_def]
  kernel_rfl

theorem input489_eq : InitECandidate.Proofs.DeadStages866.Parallel.input489 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_773 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input489_def]
  simp only [input488_eq, input487_eq]
  kernel_rfl

theorem output489_eq : InitECandidate.Proofs.DeadStages866.Parallel.output489 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_655 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output489_def]
  simp only [output488_eq, output487_eq]
  kernel_rfl

theorem input490_eq : InitECandidate.Proofs.DeadStages866.Parallel.input490 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_775 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input490_def]
  simp only [input489_eq, input486_eq]
  kernel_rfl

theorem output490_eq : InitECandidate.Proofs.DeadStages866.Parallel.output490 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_657 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output490_def]
  simp only [output489_eq, output486_eq]
  kernel_rfl

theorem input491_eq : InitECandidate.Proofs.DeadStages866.Parallel.input491 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_768 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input491_def]
  kernel_rfl

theorem output491_eq : InitECandidate.Proofs.DeadStages866.Parallel.output491 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_650 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output491_def]
  kernel_rfl

theorem input492_eq : InitECandidate.Proofs.DeadStages866.Parallel.input492 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_766 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input492_def]
  kernel_rfl

theorem output492_eq : InitECandidate.Proofs.DeadStages866.Parallel.output492 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_648 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output492_def]
  kernel_rfl

theorem input493_eq : InitECandidate.Proofs.DeadStages866.Parallel.input493 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_765 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input493_def]
  kernel_rfl

theorem output493_eq : InitECandidate.Proofs.DeadStages866.Parallel.output493 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_647 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output493_def]
  kernel_rfl

theorem input494_eq : InitECandidate.Proofs.DeadStages866.Parallel.input494 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_767 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input494_def]
  simp only [input493_eq, input492_eq]
  kernel_rfl

theorem output494_eq : InitECandidate.Proofs.DeadStages866.Parallel.output494 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_649 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output494_def]
  simp only [output493_eq, output492_eq]
  kernel_rfl

theorem input495_eq : InitECandidate.Proofs.DeadStages866.Parallel.input495 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_769 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input495_def]
  simp only [input494_eq, input491_eq]
  kernel_rfl

theorem output495_eq : InitECandidate.Proofs.DeadStages866.Parallel.output495 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_651 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output495_def]
  simp only [output494_eq, output491_eq]
  kernel_rfl

theorem input496_eq : InitECandidate.Proofs.DeadStages866.Parallel.input496 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_763 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input496_def]
  kernel_rfl

theorem output496_eq : InitECandidate.Proofs.DeadStages866.Parallel.output496 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_645 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output496_def]
  kernel_rfl

theorem input497_eq : InitECandidate.Proofs.DeadStages866.Parallel.input497 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_762 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input497_def]
  kernel_rfl

theorem output497_eq : InitECandidate.Proofs.DeadStages866.Parallel.output497 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_644 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output497_def]
  kernel_rfl

theorem input498_eq : InitECandidate.Proofs.DeadStages866.Parallel.input498 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_764 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input498_def]
  simp only [input497_eq, input496_eq]
  kernel_rfl

theorem output498_eq : InitECandidate.Proofs.DeadStages866.Parallel.output498 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_646 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output498_def]
  simp only [output497_eq, output496_eq]
  kernel_rfl

theorem input499_eq : InitECandidate.Proofs.DeadStages866.Parallel.input499 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_770 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input499_def]
  simp only [input498_eq, input495_eq]
  kernel_rfl

theorem output499_eq : InitECandidate.Proofs.DeadStages866.Parallel.output499 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_652 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output499_def]
  simp only [output498_eq, output495_eq]
  kernel_rfl

theorem input500_eq : InitECandidate.Proofs.DeadStages866.Parallel.input500 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_776 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input500_def]
  simp only [input499_eq, input490_eq]
  kernel_rfl

theorem output500_eq : InitECandidate.Proofs.DeadStages866.Parallel.output500 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_658 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output500_def]
  simp only [output499_eq, output490_eq]
  kernel_rfl

theorem input501_eq : InitECandidate.Proofs.DeadStages866.Parallel.input501 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_780 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input501_def]
  simp only [input500_eq, input485_eq]
  kernel_rfl

theorem output501_eq : InitECandidate.Proofs.DeadStages866.Parallel.output501 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_662 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output501_def]
  simp only [output500_eq, output485_eq]
  kernel_rfl

theorem input502_eq : InitECandidate.Proofs.DeadStages866.Parallel.input502 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_782 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input502_def]
  simp only [input501_eq, input482_eq]
  kernel_rfl

theorem output502_eq : InitECandidate.Proofs.DeadStages866.Parallel.output502 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_664 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output502_def]
  simp only [output501_eq, output482_eq]
  kernel_rfl

theorem input503_eq : InitECandidate.Proofs.DeadStages866.Parallel.input503 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_788 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input503_def]
  simp only [input502_eq, input481_eq]
  kernel_rfl

theorem output503_eq : InitECandidate.Proofs.DeadStages866.Parallel.output503 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_670 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output503_def]
  simp only [output502_eq, output481_eq]
  kernel_rfl

theorem input504_eq : InitECandidate.Proofs.DeadStages866.Parallel.input504 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_794 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input504_def]
  simp only [input503_eq, input476_eq]
  kernel_rfl

theorem output504_eq : InitECandidate.Proofs.DeadStages866.Parallel.output504 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_676 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output504_def]
  simp only [output503_eq, output476_eq]
  kernel_rfl

theorem input505_eq : InitECandidate.Proofs.DeadStages866.Parallel.input505 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_800 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input505_def]
  simp only [input504_eq, input471_eq]
  kernel_rfl

theorem output505_eq : InitECandidate.Proofs.DeadStages866.Parallel.output505 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_682 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output505_def]
  simp only [output504_eq, output471_eq]
  kernel_rfl

theorem input506_eq : InitECandidate.Proofs.DeadStages866.Parallel.input506 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_804 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input506_def]
  simp only [input505_eq, input466_eq]
  kernel_rfl

theorem output506_eq : InitECandidate.Proofs.DeadStages866.Parallel.output506 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_686 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output506_def]
  simp only [output505_eq, output466_eq]
  kernel_rfl

theorem input507_eq : InitECandidate.Proofs.DeadStages866.Parallel.input507 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_760 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input507_def]
  kernel_rfl

theorem output507_eq : InitECandidate.Proofs.DeadStages866.Parallel.output507 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_642 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output507_def]
  kernel_rfl

theorem input508_eq : InitECandidate.Proofs.DeadStages866.Parallel.input508 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_757 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input508_def]
  kernel_rfl

theorem output508_eq : InitECandidate.Proofs.DeadStages866.Parallel.output508 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_639 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output508_def]
  kernel_rfl

theorem input509_eq : InitECandidate.Proofs.DeadStages866.Parallel.input509 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_756 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input509_def]
  kernel_rfl

theorem output509_eq : InitECandidate.Proofs.DeadStages866.Parallel.output509 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_638 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output509_def]
  kernel_rfl

theorem input510_eq : InitECandidate.Proofs.DeadStages866.Parallel.input510 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_758 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input510_def]
  simp only [input509_eq, input508_eq]
  kernel_rfl

theorem output510_eq : InitECandidate.Proofs.DeadStages866.Parallel.output510 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_640 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output510_def]
  simp only [output509_eq, output508_eq]
  kernel_rfl

theorem input511_eq : InitECandidate.Proofs.DeadStages866.Parallel.input511 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_2_754 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.input511_def]
  kernel_rfl

theorem output511_eq : InitECandidate.Proofs.DeadStages866.Parallel.output511 =
    InitECandidate.Proofs.WordStages.Parallel866.word866_3_636 := by
  rw [InitECandidate.Proofs.DeadStages866.Parallel.output511_def]
  kernel_rfl

#print axioms output511_eq
end InitECandidate.Proofs.WordStages.Parallel866.AgreementsParallel
