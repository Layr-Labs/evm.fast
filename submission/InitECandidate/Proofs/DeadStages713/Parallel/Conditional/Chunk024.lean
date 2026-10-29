import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk024
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node6144_cond_eq
    (child6142 : Flapjack.WordAlloc.removeDeadStructural input6142 value3076 value1 value2 = (output6142, value3077, value1))
    (child6143 : Flapjack.WordAlloc.removeDeadStructural input6143 value3077 value1 value2 = (output6143, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6144 value3076 value1 value2 = (output6144, value5, value1) := by
  rw [input6144_def, output6144_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6142]
  dsimp only
  rw [child6143]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6142_skip, output6143_skip]
  kernel_rfl

theorem node6145_cond_eq
    (child6141 : Flapjack.WordAlloc.removeDeadStructural input6141 value3075 value1 value2 = (output6141, value3076, value1))
    (child6144 : Flapjack.WordAlloc.removeDeadStructural input6144 value3076 value1 value2 = (output6144, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6145 value3075 value1 value2 = (output6145, value5, value1) := by
  rw [input6145_def, output6145_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6141]
  dsimp only
  rw [child6144]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6141_skip, output6144_skip]
  kernel_rfl

theorem node6146_cond_eq
    (child6140 : Flapjack.WordAlloc.removeDeadStructural input6140 value3074 value1 value2 = (output6140, value3075, value1))
    (child6145 : Flapjack.WordAlloc.removeDeadStructural input6145 value3075 value1 value2 = (output6145, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6146 value3074 value1 value2 = (output6146, value5, value1) := by
  rw [input6146_def, output6146_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6140]
  dsimp only
  rw [child6145]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6140_skip, output6145_skip]
  kernel_rfl

theorem node6147_cond_eq
    (child6139 : Flapjack.WordAlloc.removeDeadStructural input6139 value3072 value1 value2 = (output6139, value3074, value1))
    (child6146 : Flapjack.WordAlloc.removeDeadStructural input6146 value3074 value1 value2 = (output6146, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6147 value3072 value1 value2 = (output6147, value5, value1) := by
  rw [input6147_def, output6147_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6139]
  dsimp only
  rw [child6146]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6139_skip, output6146_skip]
  kernel_rfl

theorem node6148_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6148 value5 value1 value2 = (output6148, value3078, value1) := by
  rw [input6148_def, output6148_def]
  kernel_rfl

theorem node6149_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6149 value3078 value1 value2 = (output6149, value3079, value1) := by
  rw [input6149_def, output6149_def]
  kernel_rfl

theorem node6150_cond_eq
    (child6148 : Flapjack.WordAlloc.removeDeadStructural input6148 value5 value1 value2 = (output6148, value3078, value1))
    (child6149 : Flapjack.WordAlloc.removeDeadStructural input6149 value3078 value1 value2 = (output6149, value3079, value1)) : Flapjack.WordAlloc.removeDeadStructural input6150 value5 value1 value2 = (output6150, value3079, value1) := by
  rw [input6150_def, output6150_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6148]
  dsimp only
  rw [child6149]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6148_skip, output6149_skip]
  kernel_rfl

theorem node6151_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6151 value3079 value1 value2 = (output6151, value3080, value1) := by
  rw [input6151_def, output6151_def]
  kernel_rfl

theorem node6152_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6152 value3080 value1 value2 = (output6152, value3080, value1) := by
  rw [input6152_def, output6152_def]
  kernel_rfl

theorem node6153_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6153 value3080 value1 value2 = (output6153, value3081, value1) := by
  rw [input6153_def, output6153_def]
  kernel_rfl

theorem node6154_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6154 value3081 value1 value2 = (output6154, value3082, value1) := by
  rw [input6154_def, output6154_def]
  kernel_rfl

theorem node6155_cond_eq
    (child6153 : Flapjack.WordAlloc.removeDeadStructural input6153 value3080 value1 value2 = (output6153, value3081, value1))
    (child6154 : Flapjack.WordAlloc.removeDeadStructural input6154 value3081 value1 value2 = (output6154, value3082, value1)) : Flapjack.WordAlloc.removeDeadStructural input6155 value3080 value1 value2 = (output6155, value3082, value1) := by
  rw [input6155_def, output6155_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6153]
  dsimp only
  rw [child6154]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6153_skip, output6154_skip]
  kernel_rfl

theorem node6156_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6156 value3082 value1 value2 = (output6156, value3083, value1) := by
  rw [input6156_def, output6156_def]
  kernel_rfl

theorem node6157_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6157 value3083 value1 value2 = (output6157, value3084, value1) := by
  rw [input6157_def, output6157_def]
  kernel_rfl

theorem node6158_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6158 value3084 value1 value2 = (output6158, value3085, value1) := by
  rw [input6158_def, output6158_def]
  kernel_rfl

theorem node6159_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6159 value3085 value1 value2 = (output6159, value5, value1) := by
  rw [input6159_def, output6159_def]
  kernel_rfl

theorem node6160_cond_eq
    (child6158 : Flapjack.WordAlloc.removeDeadStructural input6158 value3084 value1 value2 = (output6158, value3085, value1))
    (child6159 : Flapjack.WordAlloc.removeDeadStructural input6159 value3085 value1 value2 = (output6159, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6160 value3084 value1 value2 = (output6160, value5, value1) := by
  rw [input6160_def, output6160_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6158]
  dsimp only
  rw [child6159]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6158_skip, output6159_skip]
  kernel_rfl

theorem node6161_cond_eq
    (child6157 : Flapjack.WordAlloc.removeDeadStructural input6157 value3083 value1 value2 = (output6157, value3084, value1))
    (child6160 : Flapjack.WordAlloc.removeDeadStructural input6160 value3084 value1 value2 = (output6160, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6161 value3083 value1 value2 = (output6161, value5, value1) := by
  rw [input6161_def, output6161_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6157]
  dsimp only
  rw [child6160]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6157_skip, output6160_skip]
  kernel_rfl

theorem node6162_cond_eq
    (child6156 : Flapjack.WordAlloc.removeDeadStructural input6156 value3082 value1 value2 = (output6156, value3083, value1))
    (child6161 : Flapjack.WordAlloc.removeDeadStructural input6161 value3083 value1 value2 = (output6161, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6162 value3082 value1 value2 = (output6162, value5, value1) := by
  rw [input6162_def, output6162_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6156]
  dsimp only
  rw [child6161]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6156_skip, output6161_skip]
  kernel_rfl

theorem node6163_cond_eq
    (child6155 : Flapjack.WordAlloc.removeDeadStructural input6155 value3080 value1 value2 = (output6155, value3082, value1))
    (child6162 : Flapjack.WordAlloc.removeDeadStructural input6162 value3082 value1 value2 = (output6162, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6163 value3080 value1 value2 = (output6163, value5, value1) := by
  rw [input6163_def, output6163_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6155]
  dsimp only
  rw [child6162]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6155_skip, output6162_skip]
  kernel_rfl

theorem node6164_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6164 value5 value1 value2 = (output6164, value3086, value1) := by
  rw [input6164_def, output6164_def]
  kernel_rfl

theorem node6165_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6165 value3086 value1 value2 = (output6165, value3087, value1) := by
  rw [input6165_def, output6165_def]
  kernel_rfl

theorem node6166_cond_eq
    (child6164 : Flapjack.WordAlloc.removeDeadStructural input6164 value5 value1 value2 = (output6164, value3086, value1))
    (child6165 : Flapjack.WordAlloc.removeDeadStructural input6165 value3086 value1 value2 = (output6165, value3087, value1)) : Flapjack.WordAlloc.removeDeadStructural input6166 value5 value1 value2 = (output6166, value3087, value1) := by
  rw [input6166_def, output6166_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6164]
  dsimp only
  rw [child6165]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6164_skip, output6165_skip]
  kernel_rfl

theorem node6167_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6167 value3087 value1 value2 = (output6167, value3088, value1) := by
  rw [input6167_def, output6167_def]
  kernel_rfl

theorem node6168_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6168 value3088 value1 value2 = (output6168, value3088, value1) := by
  rw [input6168_def, output6168_def]
  kernel_rfl

theorem node6169_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6169 value3088 value1 value2 = (output6169, value3089, value1) := by
  rw [input6169_def, output6169_def]
  kernel_rfl

theorem node6170_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6170 value3089 value1 value2 = (output6170, value3090, value1) := by
  rw [input6170_def, output6170_def]
  kernel_rfl

theorem node6171_cond_eq
    (child6169 : Flapjack.WordAlloc.removeDeadStructural input6169 value3088 value1 value2 = (output6169, value3089, value1))
    (child6170 : Flapjack.WordAlloc.removeDeadStructural input6170 value3089 value1 value2 = (output6170, value3090, value1)) : Flapjack.WordAlloc.removeDeadStructural input6171 value3088 value1 value2 = (output6171, value3090, value1) := by
  rw [input6171_def, output6171_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6169]
  dsimp only
  rw [child6170]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6169_skip, output6170_skip]
  kernel_rfl

theorem node6172_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6172 value3090 value1 value2 = (output6172, value3091, value1) := by
  rw [input6172_def, output6172_def]
  kernel_rfl

theorem node6173_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6173 value3091 value1 value2 = (output6173, value3092, value1) := by
  rw [input6173_def, output6173_def]
  kernel_rfl

theorem node6174_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6174 value3092 value1 value2 = (output6174, value3093, value1) := by
  rw [input6174_def, output6174_def]
  kernel_rfl

theorem node6175_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6175 value3093 value1 value2 = (output6175, value5, value1) := by
  rw [input6175_def, output6175_def]
  kernel_rfl

theorem node6176_cond_eq
    (child6174 : Flapjack.WordAlloc.removeDeadStructural input6174 value3092 value1 value2 = (output6174, value3093, value1))
    (child6175 : Flapjack.WordAlloc.removeDeadStructural input6175 value3093 value1 value2 = (output6175, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6176 value3092 value1 value2 = (output6176, value5, value1) := by
  rw [input6176_def, output6176_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6174]
  dsimp only
  rw [child6175]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6174_skip, output6175_skip]
  kernel_rfl

theorem node6177_cond_eq
    (child6173 : Flapjack.WordAlloc.removeDeadStructural input6173 value3091 value1 value2 = (output6173, value3092, value1))
    (child6176 : Flapjack.WordAlloc.removeDeadStructural input6176 value3092 value1 value2 = (output6176, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6177 value3091 value1 value2 = (output6177, value5, value1) := by
  rw [input6177_def, output6177_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6173]
  dsimp only
  rw [child6176]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6173_skip, output6176_skip]
  kernel_rfl

theorem node6178_cond_eq
    (child6172 : Flapjack.WordAlloc.removeDeadStructural input6172 value3090 value1 value2 = (output6172, value3091, value1))
    (child6177 : Flapjack.WordAlloc.removeDeadStructural input6177 value3091 value1 value2 = (output6177, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6178 value3090 value1 value2 = (output6178, value5, value1) := by
  rw [input6178_def, output6178_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6172]
  dsimp only
  rw [child6177]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6172_skip, output6177_skip]
  kernel_rfl

theorem node6179_cond_eq
    (child6171 : Flapjack.WordAlloc.removeDeadStructural input6171 value3088 value1 value2 = (output6171, value3090, value1))
    (child6178 : Flapjack.WordAlloc.removeDeadStructural input6178 value3090 value1 value2 = (output6178, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6179 value3088 value1 value2 = (output6179, value5, value1) := by
  rw [input6179_def, output6179_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6171]
  dsimp only
  rw [child6178]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6171_skip, output6178_skip]
  kernel_rfl

theorem node6180_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6180 value5 value1 value2 = (output6180, value3094, value1) := by
  rw [input6180_def, output6180_def]
  kernel_rfl

theorem node6181_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6181 value3094 value1 value2 = (output6181, value3095, value1) := by
  rw [input6181_def, output6181_def]
  kernel_rfl

theorem node6182_cond_eq
    (child6180 : Flapjack.WordAlloc.removeDeadStructural input6180 value5 value1 value2 = (output6180, value3094, value1))
    (child6181 : Flapjack.WordAlloc.removeDeadStructural input6181 value3094 value1 value2 = (output6181, value3095, value1)) : Flapjack.WordAlloc.removeDeadStructural input6182 value5 value1 value2 = (output6182, value3095, value1) := by
  rw [input6182_def, output6182_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6180]
  dsimp only
  rw [child6181]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6180_skip, output6181_skip]
  kernel_rfl

theorem node6183_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6183 value3095 value1 value2 = (output6183, value3096, value1) := by
  rw [input6183_def, output6183_def]
  kernel_rfl

theorem node6184_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6184 value3096 value1 value2 = (output6184, value3096, value1) := by
  rw [input6184_def, output6184_def]
  kernel_rfl

theorem node6185_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6185 value3096 value1 value2 = (output6185, value3097, value1) := by
  rw [input6185_def, output6185_def]
  kernel_rfl

theorem node6186_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6186 value3097 value1 value2 = (output6186, value3098, value1) := by
  rw [input6186_def, output6186_def]
  kernel_rfl

theorem node6187_cond_eq
    (child6185 : Flapjack.WordAlloc.removeDeadStructural input6185 value3096 value1 value2 = (output6185, value3097, value1))
    (child6186 : Flapjack.WordAlloc.removeDeadStructural input6186 value3097 value1 value2 = (output6186, value3098, value1)) : Flapjack.WordAlloc.removeDeadStructural input6187 value3096 value1 value2 = (output6187, value3098, value1) := by
  rw [input6187_def, output6187_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6185]
  dsimp only
  rw [child6186]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6185_skip, output6186_skip]
  kernel_rfl

theorem node6188_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6188 value3098 value1 value2 = (output6188, value3099, value1) := by
  rw [input6188_def, output6188_def]
  kernel_rfl

theorem node6189_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6189 value3099 value1 value2 = (output6189, value3100, value1) := by
  rw [input6189_def, output6189_def]
  kernel_rfl

theorem node6190_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6190 value3100 value1 value2 = (output6190, value3101, value1) := by
  rw [input6190_def, output6190_def]
  kernel_rfl

theorem node6191_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6191 value3101 value1 value2 = (output6191, value5, value1) := by
  rw [input6191_def, output6191_def]
  kernel_rfl

theorem node6192_cond_eq
    (child6190 : Flapjack.WordAlloc.removeDeadStructural input6190 value3100 value1 value2 = (output6190, value3101, value1))
    (child6191 : Flapjack.WordAlloc.removeDeadStructural input6191 value3101 value1 value2 = (output6191, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6192 value3100 value1 value2 = (output6192, value5, value1) := by
  rw [input6192_def, output6192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6190]
  dsimp only
  rw [child6191]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6190_skip, output6191_skip]
  kernel_rfl

theorem node6193_cond_eq
    (child6189 : Flapjack.WordAlloc.removeDeadStructural input6189 value3099 value1 value2 = (output6189, value3100, value1))
    (child6192 : Flapjack.WordAlloc.removeDeadStructural input6192 value3100 value1 value2 = (output6192, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6193 value3099 value1 value2 = (output6193, value5, value1) := by
  rw [input6193_def, output6193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6189]
  dsimp only
  rw [child6192]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6189_skip, output6192_skip]
  kernel_rfl

theorem node6194_cond_eq
    (child6188 : Flapjack.WordAlloc.removeDeadStructural input6188 value3098 value1 value2 = (output6188, value3099, value1))
    (child6193 : Flapjack.WordAlloc.removeDeadStructural input6193 value3099 value1 value2 = (output6193, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6194 value3098 value1 value2 = (output6194, value5, value1) := by
  rw [input6194_def, output6194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6188]
  dsimp only
  rw [child6193]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6188_skip, output6193_skip]
  kernel_rfl

theorem node6195_cond_eq
    (child6187 : Flapjack.WordAlloc.removeDeadStructural input6187 value3096 value1 value2 = (output6187, value3098, value1))
    (child6194 : Flapjack.WordAlloc.removeDeadStructural input6194 value3098 value1 value2 = (output6194, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6195 value3096 value1 value2 = (output6195, value5, value1) := by
  rw [input6195_def, output6195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6187]
  dsimp only
  rw [child6194]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6187_skip, output6194_skip]
  kernel_rfl

theorem node6196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6196 value5 value1 value2 = (output6196, value3102, value1) := by
  rw [input6196_def, output6196_def]
  kernel_rfl

theorem node6197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6197 value3102 value1 value2 = (output6197, value3103, value1) := by
  rw [input6197_def, output6197_def]
  kernel_rfl

theorem node6198_cond_eq
    (child6196 : Flapjack.WordAlloc.removeDeadStructural input6196 value5 value1 value2 = (output6196, value3102, value1))
    (child6197 : Flapjack.WordAlloc.removeDeadStructural input6197 value3102 value1 value2 = (output6197, value3103, value1)) : Flapjack.WordAlloc.removeDeadStructural input6198 value5 value1 value2 = (output6198, value3103, value1) := by
  rw [input6198_def, output6198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6196]
  dsimp only
  rw [child6197]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6196_skip, output6197_skip]
  kernel_rfl

theorem node6199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6199 value3103 value1 value2 = (output6199, value3104, value1) := by
  rw [input6199_def, output6199_def]
  kernel_rfl

theorem node6200_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6200 value3104 value1 value2 = (output6200, value3104, value1) := by
  rw [input6200_def, output6200_def]
  kernel_rfl

theorem node6201_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6201 value3104 value1 value2 = (output6201, value3105, value1) := by
  rw [input6201_def, output6201_def]
  kernel_rfl

theorem node6202_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6202 value3105 value1 value2 = (output6202, value3106, value1) := by
  rw [input6202_def, output6202_def]
  kernel_rfl

theorem node6203_cond_eq
    (child6201 : Flapjack.WordAlloc.removeDeadStructural input6201 value3104 value1 value2 = (output6201, value3105, value1))
    (child6202 : Flapjack.WordAlloc.removeDeadStructural input6202 value3105 value1 value2 = (output6202, value3106, value1)) : Flapjack.WordAlloc.removeDeadStructural input6203 value3104 value1 value2 = (output6203, value3106, value1) := by
  rw [input6203_def, output6203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6201]
  dsimp only
  rw [child6202]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6201_skip, output6202_skip]
  kernel_rfl

theorem node6204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6204 value3106 value1 value2 = (output6204, value3107, value1) := by
  rw [input6204_def, output6204_def]
  kernel_rfl

theorem node6205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6205 value3107 value1 value2 = (output6205, value3108, value1) := by
  rw [input6205_def, output6205_def]
  kernel_rfl

theorem node6206_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6206 value3108 value1 value2 = (output6206, value3109, value1) := by
  rw [input6206_def, output6206_def]
  kernel_rfl

theorem node6207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6207 value3109 value1 value2 = (output6207, value5, value1) := by
  rw [input6207_def, output6207_def]
  kernel_rfl

theorem node6208_cond_eq
    (child6206 : Flapjack.WordAlloc.removeDeadStructural input6206 value3108 value1 value2 = (output6206, value3109, value1))
    (child6207 : Flapjack.WordAlloc.removeDeadStructural input6207 value3109 value1 value2 = (output6207, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6208 value3108 value1 value2 = (output6208, value5, value1) := by
  rw [input6208_def, output6208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6206]
  dsimp only
  rw [child6207]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6206_skip, output6207_skip]
  kernel_rfl

theorem node6209_cond_eq
    (child6205 : Flapjack.WordAlloc.removeDeadStructural input6205 value3107 value1 value2 = (output6205, value3108, value1))
    (child6208 : Flapjack.WordAlloc.removeDeadStructural input6208 value3108 value1 value2 = (output6208, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6209 value3107 value1 value2 = (output6209, value5, value1) := by
  rw [input6209_def, output6209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6205]
  dsimp only
  rw [child6208]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6205_skip, output6208_skip]
  kernel_rfl

theorem node6210_cond_eq
    (child6204 : Flapjack.WordAlloc.removeDeadStructural input6204 value3106 value1 value2 = (output6204, value3107, value1))
    (child6209 : Flapjack.WordAlloc.removeDeadStructural input6209 value3107 value1 value2 = (output6209, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6210 value3106 value1 value2 = (output6210, value5, value1) := by
  rw [input6210_def, output6210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6204]
  dsimp only
  rw [child6209]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6204_skip, output6209_skip]
  kernel_rfl

theorem node6211_cond_eq
    (child6203 : Flapjack.WordAlloc.removeDeadStructural input6203 value3104 value1 value2 = (output6203, value3106, value1))
    (child6210 : Flapjack.WordAlloc.removeDeadStructural input6210 value3106 value1 value2 = (output6210, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6211 value3104 value1 value2 = (output6211, value5, value1) := by
  rw [input6211_def, output6211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6203]
  dsimp only
  rw [child6210]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6203_skip, output6210_skip]
  kernel_rfl

theorem node6212_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6212 value5 value1 value2 = (output6212, value3110, value1) := by
  rw [input6212_def, output6212_def]
  kernel_rfl

theorem node6213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6213 value3110 value1 value2 = (output6213, value3111, value1) := by
  rw [input6213_def, output6213_def]
  kernel_rfl

theorem node6214_cond_eq
    (child6212 : Flapjack.WordAlloc.removeDeadStructural input6212 value5 value1 value2 = (output6212, value3110, value1))
    (child6213 : Flapjack.WordAlloc.removeDeadStructural input6213 value3110 value1 value2 = (output6213, value3111, value1)) : Flapjack.WordAlloc.removeDeadStructural input6214 value5 value1 value2 = (output6214, value3111, value1) := by
  rw [input6214_def, output6214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6212]
  dsimp only
  rw [child6213]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6212_skip, output6213_skip]
  kernel_rfl

theorem node6215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6215 value3111 value1 value2 = (output6215, value3112, value1) := by
  rw [input6215_def, output6215_def]
  kernel_rfl

theorem node6216_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6216 value3112 value1 value2 = (output6216, value3112, value1) := by
  rw [input6216_def, output6216_def]
  kernel_rfl

theorem node6217_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6217 value3112 value1 value2 = (output6217, value3113, value1) := by
  rw [input6217_def, output6217_def]
  kernel_rfl

theorem node6218_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6218 value3113 value1 value2 = (output6218, value3114, value1) := by
  rw [input6218_def, output6218_def]
  kernel_rfl

theorem node6219_cond_eq
    (child6217 : Flapjack.WordAlloc.removeDeadStructural input6217 value3112 value1 value2 = (output6217, value3113, value1))
    (child6218 : Flapjack.WordAlloc.removeDeadStructural input6218 value3113 value1 value2 = (output6218, value3114, value1)) : Flapjack.WordAlloc.removeDeadStructural input6219 value3112 value1 value2 = (output6219, value3114, value1) := by
  rw [input6219_def, output6219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6217]
  dsimp only
  rw [child6218]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6217_skip, output6218_skip]
  kernel_rfl

theorem node6220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6220 value3114 value1 value2 = (output6220, value3115, value1) := by
  rw [input6220_def, output6220_def]
  kernel_rfl

theorem node6221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6221 value3115 value1 value2 = (output6221, value3116, value1) := by
  rw [input6221_def, output6221_def]
  kernel_rfl

theorem node6222_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6222 value3116 value1 value2 = (output6222, value3117, value1) := by
  rw [input6222_def, output6222_def]
  kernel_rfl

theorem node6223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6223 value3117 value1 value2 = (output6223, value5, value1) := by
  rw [input6223_def, output6223_def]
  kernel_rfl

theorem node6224_cond_eq
    (child6222 : Flapjack.WordAlloc.removeDeadStructural input6222 value3116 value1 value2 = (output6222, value3117, value1))
    (child6223 : Flapjack.WordAlloc.removeDeadStructural input6223 value3117 value1 value2 = (output6223, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6224 value3116 value1 value2 = (output6224, value5, value1) := by
  rw [input6224_def, output6224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6222]
  dsimp only
  rw [child6223]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6222_skip, output6223_skip]
  kernel_rfl

theorem node6225_cond_eq
    (child6221 : Flapjack.WordAlloc.removeDeadStructural input6221 value3115 value1 value2 = (output6221, value3116, value1))
    (child6224 : Flapjack.WordAlloc.removeDeadStructural input6224 value3116 value1 value2 = (output6224, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6225 value3115 value1 value2 = (output6225, value5, value1) := by
  rw [input6225_def, output6225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6221]
  dsimp only
  rw [child6224]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6221_skip, output6224_skip]
  kernel_rfl

theorem node6226_cond_eq
    (child6220 : Flapjack.WordAlloc.removeDeadStructural input6220 value3114 value1 value2 = (output6220, value3115, value1))
    (child6225 : Flapjack.WordAlloc.removeDeadStructural input6225 value3115 value1 value2 = (output6225, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6226 value3114 value1 value2 = (output6226, value5, value1) := by
  rw [input6226_def, output6226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6220]
  dsimp only
  rw [child6225]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6220_skip, output6225_skip]
  kernel_rfl

theorem node6227_cond_eq
    (child6219 : Flapjack.WordAlloc.removeDeadStructural input6219 value3112 value1 value2 = (output6219, value3114, value1))
    (child6226 : Flapjack.WordAlloc.removeDeadStructural input6226 value3114 value1 value2 = (output6226, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6227 value3112 value1 value2 = (output6227, value5, value1) := by
  rw [input6227_def, output6227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6219]
  dsimp only
  rw [child6226]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6219_skip, output6226_skip]
  kernel_rfl

theorem node6228_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6228 value5 value1 value2 = (output6228, value3118, value1) := by
  rw [input6228_def, output6228_def]
  kernel_rfl

theorem node6229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6229 value3118 value1 value2 = (output6229, value3119, value1) := by
  rw [input6229_def, output6229_def]
  kernel_rfl

theorem node6230_cond_eq
    (child6228 : Flapjack.WordAlloc.removeDeadStructural input6228 value5 value1 value2 = (output6228, value3118, value1))
    (child6229 : Flapjack.WordAlloc.removeDeadStructural input6229 value3118 value1 value2 = (output6229, value3119, value1)) : Flapjack.WordAlloc.removeDeadStructural input6230 value5 value1 value2 = (output6230, value3119, value1) := by
  rw [input6230_def, output6230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6228]
  dsimp only
  rw [child6229]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6228_skip, output6229_skip]
  kernel_rfl

theorem node6231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6231 value3119 value1 value2 = (output6231, value3120, value1) := by
  rw [input6231_def, output6231_def]
  kernel_rfl

theorem node6232_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6232 value3120 value1 value2 = (output6232, value3120, value1) := by
  rw [input6232_def, output6232_def]
  kernel_rfl

theorem node6233_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6233 value3120 value1 value2 = (output6233, value3121, value1) := by
  rw [input6233_def, output6233_def]
  kernel_rfl

theorem node6234_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6234 value3121 value1 value2 = (output6234, value3122, value1) := by
  rw [input6234_def, output6234_def]
  kernel_rfl

theorem node6235_cond_eq
    (child6233 : Flapjack.WordAlloc.removeDeadStructural input6233 value3120 value1 value2 = (output6233, value3121, value1))
    (child6234 : Flapjack.WordAlloc.removeDeadStructural input6234 value3121 value1 value2 = (output6234, value3122, value1)) : Flapjack.WordAlloc.removeDeadStructural input6235 value3120 value1 value2 = (output6235, value3122, value1) := by
  rw [input6235_def, output6235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6233]
  dsimp only
  rw [child6234]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6233_skip, output6234_skip]
  kernel_rfl

theorem node6236_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6236 value3122 value1 value2 = (output6236, value3123, value1) := by
  rw [input6236_def, output6236_def]
  kernel_rfl

theorem node6237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6237 value3123 value1 value2 = (output6237, value3124, value1) := by
  rw [input6237_def, output6237_def]
  kernel_rfl

theorem node6238_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6238 value3124 value1 value2 = (output6238, value3125, value1) := by
  rw [input6238_def, output6238_def]
  kernel_rfl

theorem node6239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6239 value3125 value1 value2 = (output6239, value5, value1) := by
  rw [input6239_def, output6239_def]
  kernel_rfl

theorem node6240_cond_eq
    (child6238 : Flapjack.WordAlloc.removeDeadStructural input6238 value3124 value1 value2 = (output6238, value3125, value1))
    (child6239 : Flapjack.WordAlloc.removeDeadStructural input6239 value3125 value1 value2 = (output6239, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6240 value3124 value1 value2 = (output6240, value5, value1) := by
  rw [input6240_def, output6240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6238]
  dsimp only
  rw [child6239]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6238_skip, output6239_skip]
  kernel_rfl

theorem node6241_cond_eq
    (child6237 : Flapjack.WordAlloc.removeDeadStructural input6237 value3123 value1 value2 = (output6237, value3124, value1))
    (child6240 : Flapjack.WordAlloc.removeDeadStructural input6240 value3124 value1 value2 = (output6240, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6241 value3123 value1 value2 = (output6241, value5, value1) := by
  rw [input6241_def, output6241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6237]
  dsimp only
  rw [child6240]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6237_skip, output6240_skip]
  kernel_rfl

theorem node6242_cond_eq
    (child6236 : Flapjack.WordAlloc.removeDeadStructural input6236 value3122 value1 value2 = (output6236, value3123, value1))
    (child6241 : Flapjack.WordAlloc.removeDeadStructural input6241 value3123 value1 value2 = (output6241, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6242 value3122 value1 value2 = (output6242, value5, value1) := by
  rw [input6242_def, output6242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6236]
  dsimp only
  rw [child6241]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6236_skip, output6241_skip]
  kernel_rfl

theorem node6243_cond_eq
    (child6235 : Flapjack.WordAlloc.removeDeadStructural input6235 value3120 value1 value2 = (output6235, value3122, value1))
    (child6242 : Flapjack.WordAlloc.removeDeadStructural input6242 value3122 value1 value2 = (output6242, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6243 value3120 value1 value2 = (output6243, value5, value1) := by
  rw [input6243_def, output6243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6235]
  dsimp only
  rw [child6242]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6235_skip, output6242_skip]
  kernel_rfl

theorem node6244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6244 value5 value1 value2 = (output6244, value3126, value1) := by
  rw [input6244_def, output6244_def]
  kernel_rfl

theorem node6245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6245 value3126 value1 value2 = (output6245, value3127, value1) := by
  rw [input6245_def, output6245_def]
  kernel_rfl

theorem node6246_cond_eq
    (child6244 : Flapjack.WordAlloc.removeDeadStructural input6244 value5 value1 value2 = (output6244, value3126, value1))
    (child6245 : Flapjack.WordAlloc.removeDeadStructural input6245 value3126 value1 value2 = (output6245, value3127, value1)) : Flapjack.WordAlloc.removeDeadStructural input6246 value5 value1 value2 = (output6246, value3127, value1) := by
  rw [input6246_def, output6246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6244]
  dsimp only
  rw [child6245]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6244_skip, output6245_skip]
  kernel_rfl

theorem node6247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6247 value3127 value1 value2 = (output6247, value3128, value1) := by
  rw [input6247_def, output6247_def]
  kernel_rfl

theorem node6248_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6248 value3128 value1 value2 = (output6248, value3128, value1) := by
  rw [input6248_def, output6248_def]
  kernel_rfl

theorem node6249_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6249 value3128 value1 value2 = (output6249, value3129, value1) := by
  rw [input6249_def, output6249_def]
  kernel_rfl

theorem node6250_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6250 value3129 value1 value2 = (output6250, value3130, value1) := by
  rw [input6250_def, output6250_def]
  kernel_rfl

theorem node6251_cond_eq
    (child6249 : Flapjack.WordAlloc.removeDeadStructural input6249 value3128 value1 value2 = (output6249, value3129, value1))
    (child6250 : Flapjack.WordAlloc.removeDeadStructural input6250 value3129 value1 value2 = (output6250, value3130, value1)) : Flapjack.WordAlloc.removeDeadStructural input6251 value3128 value1 value2 = (output6251, value3130, value1) := by
  rw [input6251_def, output6251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6249]
  dsimp only
  rw [child6250]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6249_skip, output6250_skip]
  kernel_rfl

theorem node6252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6252 value3130 value1 value2 = (output6252, value3131, value1) := by
  rw [input6252_def, output6252_def]
  kernel_rfl

theorem node6253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6253 value3131 value1 value2 = (output6253, value3132, value1) := by
  rw [input6253_def, output6253_def]
  kernel_rfl

theorem node6254_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6254 value3132 value1 value2 = (output6254, value3133, value1) := by
  rw [input6254_def, output6254_def]
  kernel_rfl

theorem node6255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6255 value3133 value1 value2 = (output6255, value5, value1) := by
  rw [input6255_def, output6255_def]
  kernel_rfl

theorem node6256_cond_eq
    (child6254 : Flapjack.WordAlloc.removeDeadStructural input6254 value3132 value1 value2 = (output6254, value3133, value1))
    (child6255 : Flapjack.WordAlloc.removeDeadStructural input6255 value3133 value1 value2 = (output6255, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6256 value3132 value1 value2 = (output6256, value5, value1) := by
  rw [input6256_def, output6256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6254]
  dsimp only
  rw [child6255]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6254_skip, output6255_skip]
  kernel_rfl

theorem node6257_cond_eq
    (child6253 : Flapjack.WordAlloc.removeDeadStructural input6253 value3131 value1 value2 = (output6253, value3132, value1))
    (child6256 : Flapjack.WordAlloc.removeDeadStructural input6256 value3132 value1 value2 = (output6256, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6257 value3131 value1 value2 = (output6257, value5, value1) := by
  rw [input6257_def, output6257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6253]
  dsimp only
  rw [child6256]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6253_skip, output6256_skip]
  kernel_rfl

theorem node6258_cond_eq
    (child6252 : Flapjack.WordAlloc.removeDeadStructural input6252 value3130 value1 value2 = (output6252, value3131, value1))
    (child6257 : Flapjack.WordAlloc.removeDeadStructural input6257 value3131 value1 value2 = (output6257, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6258 value3130 value1 value2 = (output6258, value5, value1) := by
  rw [input6258_def, output6258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6252]
  dsimp only
  rw [child6257]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6252_skip, output6257_skip]
  kernel_rfl

theorem node6259_cond_eq
    (child6251 : Flapjack.WordAlloc.removeDeadStructural input6251 value3128 value1 value2 = (output6251, value3130, value1))
    (child6258 : Flapjack.WordAlloc.removeDeadStructural input6258 value3130 value1 value2 = (output6258, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6259 value3128 value1 value2 = (output6259, value5, value1) := by
  rw [input6259_def, output6259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6251]
  dsimp only
  rw [child6258]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6251_skip, output6258_skip]
  kernel_rfl

theorem node6260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6260 value5 value1 value2 = (output6260, value3134, value1) := by
  rw [input6260_def, output6260_def]
  kernel_rfl

theorem node6261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6261 value3134 value1 value2 = (output6261, value3135, value1) := by
  rw [input6261_def, output6261_def]
  kernel_rfl

theorem node6262_cond_eq
    (child6260 : Flapjack.WordAlloc.removeDeadStructural input6260 value5 value1 value2 = (output6260, value3134, value1))
    (child6261 : Flapjack.WordAlloc.removeDeadStructural input6261 value3134 value1 value2 = (output6261, value3135, value1)) : Flapjack.WordAlloc.removeDeadStructural input6262 value5 value1 value2 = (output6262, value3135, value1) := by
  rw [input6262_def, output6262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6260]
  dsimp only
  rw [child6261]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6260_skip, output6261_skip]
  kernel_rfl

theorem node6263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6263 value3135 value1 value2 = (output6263, value3136, value1) := by
  rw [input6263_def, output6263_def]
  kernel_rfl

theorem node6264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6264 value3136 value1 value2 = (output6264, value3136, value1) := by
  rw [input6264_def, output6264_def]
  kernel_rfl

theorem node6265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6265 value3136 value1 value2 = (output6265, value3137, value1) := by
  rw [input6265_def, output6265_def]
  kernel_rfl

theorem node6266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6266 value3137 value1 value2 = (output6266, value3138, value1) := by
  rw [input6266_def, output6266_def]
  kernel_rfl

theorem node6267_cond_eq
    (child6265 : Flapjack.WordAlloc.removeDeadStructural input6265 value3136 value1 value2 = (output6265, value3137, value1))
    (child6266 : Flapjack.WordAlloc.removeDeadStructural input6266 value3137 value1 value2 = (output6266, value3138, value1)) : Flapjack.WordAlloc.removeDeadStructural input6267 value3136 value1 value2 = (output6267, value3138, value1) := by
  rw [input6267_def, output6267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6265]
  dsimp only
  rw [child6266]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6265_skip, output6266_skip]
  kernel_rfl

theorem node6268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6268 value3138 value1 value2 = (output6268, value3139, value1) := by
  rw [input6268_def, output6268_def]
  kernel_rfl

theorem node6269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6269 value3139 value1 value2 = (output6269, value3140, value1) := by
  rw [input6269_def, output6269_def]
  kernel_rfl

theorem node6270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6270 value3140 value1 value2 = (output6270, value3141, value1) := by
  rw [input6270_def, output6270_def]
  kernel_rfl

theorem node6271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6271 value3141 value1 value2 = (output6271, value5, value1) := by
  rw [input6271_def, output6271_def]
  kernel_rfl

theorem node6272_cond_eq
    (child6270 : Flapjack.WordAlloc.removeDeadStructural input6270 value3140 value1 value2 = (output6270, value3141, value1))
    (child6271 : Flapjack.WordAlloc.removeDeadStructural input6271 value3141 value1 value2 = (output6271, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6272 value3140 value1 value2 = (output6272, value5, value1) := by
  rw [input6272_def, output6272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6270]
  dsimp only
  rw [child6271]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6270_skip, output6271_skip]
  kernel_rfl

theorem node6273_cond_eq
    (child6269 : Flapjack.WordAlloc.removeDeadStructural input6269 value3139 value1 value2 = (output6269, value3140, value1))
    (child6272 : Flapjack.WordAlloc.removeDeadStructural input6272 value3140 value1 value2 = (output6272, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6273 value3139 value1 value2 = (output6273, value5, value1) := by
  rw [input6273_def, output6273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6269]
  dsimp only
  rw [child6272]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6269_skip, output6272_skip]
  kernel_rfl

theorem node6274_cond_eq
    (child6268 : Flapjack.WordAlloc.removeDeadStructural input6268 value3138 value1 value2 = (output6268, value3139, value1))
    (child6273 : Flapjack.WordAlloc.removeDeadStructural input6273 value3139 value1 value2 = (output6273, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6274 value3138 value1 value2 = (output6274, value5, value1) := by
  rw [input6274_def, output6274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6268]
  dsimp only
  rw [child6273]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6268_skip, output6273_skip]
  kernel_rfl

theorem node6275_cond_eq
    (child6267 : Flapjack.WordAlloc.removeDeadStructural input6267 value3136 value1 value2 = (output6267, value3138, value1))
    (child6274 : Flapjack.WordAlloc.removeDeadStructural input6274 value3138 value1 value2 = (output6274, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6275 value3136 value1 value2 = (output6275, value5, value1) := by
  rw [input6275_def, output6275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6267]
  dsimp only
  rw [child6274]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6267_skip, output6274_skip]
  kernel_rfl

theorem node6276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6276 value5 value1 value2 = (output6276, value3142, value1) := by
  rw [input6276_def, output6276_def]
  kernel_rfl

theorem node6277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6277 value3142 value1 value2 = (output6277, value3143, value1) := by
  rw [input6277_def, output6277_def]
  kernel_rfl

theorem node6278_cond_eq
    (child6276 : Flapjack.WordAlloc.removeDeadStructural input6276 value5 value1 value2 = (output6276, value3142, value1))
    (child6277 : Flapjack.WordAlloc.removeDeadStructural input6277 value3142 value1 value2 = (output6277, value3143, value1)) : Flapjack.WordAlloc.removeDeadStructural input6278 value5 value1 value2 = (output6278, value3143, value1) := by
  rw [input6278_def, output6278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6276]
  dsimp only
  rw [child6277]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6276_skip, output6277_skip]
  kernel_rfl

theorem node6279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6279 value3143 value1 value2 = (output6279, value3144, value1) := by
  rw [input6279_def, output6279_def]
  kernel_rfl

theorem node6280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6280 value3144 value1 value2 = (output6280, value3144, value1) := by
  rw [input6280_def, output6280_def]
  kernel_rfl

theorem node6281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6281 value3144 value1 value2 = (output6281, value3145, value1) := by
  rw [input6281_def, output6281_def]
  kernel_rfl

theorem node6282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6282 value3145 value1 value2 = (output6282, value3146, value1) := by
  rw [input6282_def, output6282_def]
  kernel_rfl

theorem node6283_cond_eq
    (child6281 : Flapjack.WordAlloc.removeDeadStructural input6281 value3144 value1 value2 = (output6281, value3145, value1))
    (child6282 : Flapjack.WordAlloc.removeDeadStructural input6282 value3145 value1 value2 = (output6282, value3146, value1)) : Flapjack.WordAlloc.removeDeadStructural input6283 value3144 value1 value2 = (output6283, value3146, value1) := by
  rw [input6283_def, output6283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6281]
  dsimp only
  rw [child6282]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6281_skip, output6282_skip]
  kernel_rfl

theorem node6284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6284 value3146 value1 value2 = (output6284, value3147, value1) := by
  rw [input6284_def, output6284_def]
  kernel_rfl

theorem node6285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6285 value3147 value1 value2 = (output6285, value3148, value1) := by
  rw [input6285_def, output6285_def]
  kernel_rfl

theorem node6286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6286 value3148 value1 value2 = (output6286, value3149, value1) := by
  rw [input6286_def, output6286_def]
  kernel_rfl

theorem node6287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6287 value3149 value1 value2 = (output6287, value5, value1) := by
  rw [input6287_def, output6287_def]
  kernel_rfl

theorem node6288_cond_eq
    (child6286 : Flapjack.WordAlloc.removeDeadStructural input6286 value3148 value1 value2 = (output6286, value3149, value1))
    (child6287 : Flapjack.WordAlloc.removeDeadStructural input6287 value3149 value1 value2 = (output6287, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6288 value3148 value1 value2 = (output6288, value5, value1) := by
  rw [input6288_def, output6288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6286]
  dsimp only
  rw [child6287]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6286_skip, output6287_skip]
  kernel_rfl

theorem node6289_cond_eq
    (child6285 : Flapjack.WordAlloc.removeDeadStructural input6285 value3147 value1 value2 = (output6285, value3148, value1))
    (child6288 : Flapjack.WordAlloc.removeDeadStructural input6288 value3148 value1 value2 = (output6288, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6289 value3147 value1 value2 = (output6289, value5, value1) := by
  rw [input6289_def, output6289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6285]
  dsimp only
  rw [child6288]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6285_skip, output6288_skip]
  kernel_rfl

theorem node6290_cond_eq
    (child6284 : Flapjack.WordAlloc.removeDeadStructural input6284 value3146 value1 value2 = (output6284, value3147, value1))
    (child6289 : Flapjack.WordAlloc.removeDeadStructural input6289 value3147 value1 value2 = (output6289, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6290 value3146 value1 value2 = (output6290, value5, value1) := by
  rw [input6290_def, output6290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6284]
  dsimp only
  rw [child6289]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6284_skip, output6289_skip]
  kernel_rfl

theorem node6291_cond_eq
    (child6283 : Flapjack.WordAlloc.removeDeadStructural input6283 value3144 value1 value2 = (output6283, value3146, value1))
    (child6290 : Flapjack.WordAlloc.removeDeadStructural input6290 value3146 value1 value2 = (output6290, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6291 value3144 value1 value2 = (output6291, value5, value1) := by
  rw [input6291_def, output6291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6283]
  dsimp only
  rw [child6290]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6283_skip, output6290_skip]
  kernel_rfl

theorem node6292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6292 value5 value1 value2 = (output6292, value3150, value1) := by
  rw [input6292_def, output6292_def]
  kernel_rfl

theorem node6293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6293 value3150 value1 value2 = (output6293, value3151, value1) := by
  rw [input6293_def, output6293_def]
  kernel_rfl

theorem node6294_cond_eq
    (child6292 : Flapjack.WordAlloc.removeDeadStructural input6292 value5 value1 value2 = (output6292, value3150, value1))
    (child6293 : Flapjack.WordAlloc.removeDeadStructural input6293 value3150 value1 value2 = (output6293, value3151, value1)) : Flapjack.WordAlloc.removeDeadStructural input6294 value5 value1 value2 = (output6294, value3151, value1) := by
  rw [input6294_def, output6294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6292]
  dsimp only
  rw [child6293]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6292_skip, output6293_skip]
  kernel_rfl

theorem node6295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6295 value3151 value1 value2 = (output6295, value3152, value1) := by
  rw [input6295_def, output6295_def]
  kernel_rfl

theorem node6296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6296 value3152 value1 value2 = (output6296, value3152, value1) := by
  rw [input6296_def, output6296_def]
  kernel_rfl

theorem node6297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6297 value3152 value1 value2 = (output6297, value3153, value1) := by
  rw [input6297_def, output6297_def]
  kernel_rfl

theorem node6298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6298 value3153 value1 value2 = (output6298, value3154, value1) := by
  rw [input6298_def, output6298_def]
  kernel_rfl

theorem node6299_cond_eq
    (child6297 : Flapjack.WordAlloc.removeDeadStructural input6297 value3152 value1 value2 = (output6297, value3153, value1))
    (child6298 : Flapjack.WordAlloc.removeDeadStructural input6298 value3153 value1 value2 = (output6298, value3154, value1)) : Flapjack.WordAlloc.removeDeadStructural input6299 value3152 value1 value2 = (output6299, value3154, value1) := by
  rw [input6299_def, output6299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6297]
  dsimp only
  rw [child6298]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6297_skip, output6298_skip]
  kernel_rfl

theorem node6300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6300 value3154 value1 value2 = (output6300, value3155, value1) := by
  rw [input6300_def, output6300_def]
  kernel_rfl

theorem node6301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6301 value3155 value1 value2 = (output6301, value3156, value1) := by
  rw [input6301_def, output6301_def]
  kernel_rfl

theorem node6302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6302 value3156 value1 value2 = (output6302, value3157, value1) := by
  rw [input6302_def, output6302_def]
  kernel_rfl

theorem node6303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6303 value3157 value1 value2 = (output6303, value5, value1) := by
  rw [input6303_def, output6303_def]
  kernel_rfl

theorem node6304_cond_eq
    (child6302 : Flapjack.WordAlloc.removeDeadStructural input6302 value3156 value1 value2 = (output6302, value3157, value1))
    (child6303 : Flapjack.WordAlloc.removeDeadStructural input6303 value3157 value1 value2 = (output6303, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6304 value3156 value1 value2 = (output6304, value5, value1) := by
  rw [input6304_def, output6304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6302]
  dsimp only
  rw [child6303]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6302_skip, output6303_skip]
  kernel_rfl

theorem node6305_cond_eq
    (child6301 : Flapjack.WordAlloc.removeDeadStructural input6301 value3155 value1 value2 = (output6301, value3156, value1))
    (child6304 : Flapjack.WordAlloc.removeDeadStructural input6304 value3156 value1 value2 = (output6304, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6305 value3155 value1 value2 = (output6305, value5, value1) := by
  rw [input6305_def, output6305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6301]
  dsimp only
  rw [child6304]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6301_skip, output6304_skip]
  kernel_rfl

theorem node6306_cond_eq
    (child6300 : Flapjack.WordAlloc.removeDeadStructural input6300 value3154 value1 value2 = (output6300, value3155, value1))
    (child6305 : Flapjack.WordAlloc.removeDeadStructural input6305 value3155 value1 value2 = (output6305, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6306 value3154 value1 value2 = (output6306, value5, value1) := by
  rw [input6306_def, output6306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6300]
  dsimp only
  rw [child6305]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6300_skip, output6305_skip]
  kernel_rfl

theorem node6307_cond_eq
    (child6299 : Flapjack.WordAlloc.removeDeadStructural input6299 value3152 value1 value2 = (output6299, value3154, value1))
    (child6306 : Flapjack.WordAlloc.removeDeadStructural input6306 value3154 value1 value2 = (output6306, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6307 value3152 value1 value2 = (output6307, value5, value1) := by
  rw [input6307_def, output6307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6299]
  dsimp only
  rw [child6306]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6299_skip, output6306_skip]
  kernel_rfl

theorem node6308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6308 value5 value1 value2 = (output6308, value3158, value1) := by
  rw [input6308_def, output6308_def]
  kernel_rfl

theorem node6309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6309 value3158 value1 value2 = (output6309, value3159, value1) := by
  rw [input6309_def, output6309_def]
  kernel_rfl

theorem node6310_cond_eq
    (child6308 : Flapjack.WordAlloc.removeDeadStructural input6308 value5 value1 value2 = (output6308, value3158, value1))
    (child6309 : Flapjack.WordAlloc.removeDeadStructural input6309 value3158 value1 value2 = (output6309, value3159, value1)) : Flapjack.WordAlloc.removeDeadStructural input6310 value5 value1 value2 = (output6310, value3159, value1) := by
  rw [input6310_def, output6310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6308]
  dsimp only
  rw [child6309]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6308_skip, output6309_skip]
  kernel_rfl

theorem node6311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6311 value3159 value1 value2 = (output6311, value3160, value1) := by
  rw [input6311_def, output6311_def]
  kernel_rfl

theorem node6312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6312 value3160 value1 value2 = (output6312, value3160, value1) := by
  rw [input6312_def, output6312_def]
  kernel_rfl

theorem node6313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6313 value3160 value1 value2 = (output6313, value3161, value1) := by
  rw [input6313_def, output6313_def]
  kernel_rfl

theorem node6314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6314 value3161 value1 value2 = (output6314, value3162, value1) := by
  rw [input6314_def, output6314_def]
  kernel_rfl

theorem node6315_cond_eq
    (child6313 : Flapjack.WordAlloc.removeDeadStructural input6313 value3160 value1 value2 = (output6313, value3161, value1))
    (child6314 : Flapjack.WordAlloc.removeDeadStructural input6314 value3161 value1 value2 = (output6314, value3162, value1)) : Flapjack.WordAlloc.removeDeadStructural input6315 value3160 value1 value2 = (output6315, value3162, value1) := by
  rw [input6315_def, output6315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6313]
  dsimp only
  rw [child6314]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6313_skip, output6314_skip]
  kernel_rfl

theorem node6316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6316 value3162 value1 value2 = (output6316, value3163, value1) := by
  rw [input6316_def, output6316_def]
  kernel_rfl

theorem node6317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6317 value3163 value1 value2 = (output6317, value3164, value1) := by
  rw [input6317_def, output6317_def]
  kernel_rfl

theorem node6318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6318 value3164 value1 value2 = (output6318, value3165, value1) := by
  rw [input6318_def, output6318_def]
  kernel_rfl

theorem node6319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6319 value3165 value1 value2 = (output6319, value5, value1) := by
  rw [input6319_def, output6319_def]
  kernel_rfl

theorem node6320_cond_eq
    (child6318 : Flapjack.WordAlloc.removeDeadStructural input6318 value3164 value1 value2 = (output6318, value3165, value1))
    (child6319 : Flapjack.WordAlloc.removeDeadStructural input6319 value3165 value1 value2 = (output6319, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6320 value3164 value1 value2 = (output6320, value5, value1) := by
  rw [input6320_def, output6320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6318]
  dsimp only
  rw [child6319]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6318_skip, output6319_skip]
  kernel_rfl

theorem node6321_cond_eq
    (child6317 : Flapjack.WordAlloc.removeDeadStructural input6317 value3163 value1 value2 = (output6317, value3164, value1))
    (child6320 : Flapjack.WordAlloc.removeDeadStructural input6320 value3164 value1 value2 = (output6320, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6321 value3163 value1 value2 = (output6321, value5, value1) := by
  rw [input6321_def, output6321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6317]
  dsimp only
  rw [child6320]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6317_skip, output6320_skip]
  kernel_rfl

theorem node6322_cond_eq
    (child6316 : Flapjack.WordAlloc.removeDeadStructural input6316 value3162 value1 value2 = (output6316, value3163, value1))
    (child6321 : Flapjack.WordAlloc.removeDeadStructural input6321 value3163 value1 value2 = (output6321, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6322 value3162 value1 value2 = (output6322, value5, value1) := by
  rw [input6322_def, output6322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6316]
  dsimp only
  rw [child6321]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6316_skip, output6321_skip]
  kernel_rfl

theorem node6323_cond_eq
    (child6315 : Flapjack.WordAlloc.removeDeadStructural input6315 value3160 value1 value2 = (output6315, value3162, value1))
    (child6322 : Flapjack.WordAlloc.removeDeadStructural input6322 value3162 value1 value2 = (output6322, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6323 value3160 value1 value2 = (output6323, value5, value1) := by
  rw [input6323_def, output6323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6315]
  dsimp only
  rw [child6322]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6315_skip, output6322_skip]
  kernel_rfl

theorem node6324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6324 value5 value1 value2 = (output6324, value3166, value1) := by
  rw [input6324_def, output6324_def]
  kernel_rfl

theorem node6325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6325 value3166 value1 value2 = (output6325, value3167, value1) := by
  rw [input6325_def, output6325_def]
  kernel_rfl

theorem node6326_cond_eq
    (child6324 : Flapjack.WordAlloc.removeDeadStructural input6324 value5 value1 value2 = (output6324, value3166, value1))
    (child6325 : Flapjack.WordAlloc.removeDeadStructural input6325 value3166 value1 value2 = (output6325, value3167, value1)) : Flapjack.WordAlloc.removeDeadStructural input6326 value5 value1 value2 = (output6326, value3167, value1) := by
  rw [input6326_def, output6326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6324]
  dsimp only
  rw [child6325]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6324_skip, output6325_skip]
  kernel_rfl

theorem node6327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6327 value3167 value1 value2 = (output6327, value3168, value1) := by
  rw [input6327_def, output6327_def]
  kernel_rfl

theorem node6328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6328 value3168 value1 value2 = (output6328, value3168, value1) := by
  rw [input6328_def, output6328_def]
  kernel_rfl

theorem node6329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6329 value3168 value1 value2 = (output6329, value3169, value1) := by
  rw [input6329_def, output6329_def]
  kernel_rfl

theorem node6330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6330 value3169 value1 value2 = (output6330, value3170, value1) := by
  rw [input6330_def, output6330_def]
  kernel_rfl

theorem node6331_cond_eq
    (child6329 : Flapjack.WordAlloc.removeDeadStructural input6329 value3168 value1 value2 = (output6329, value3169, value1))
    (child6330 : Flapjack.WordAlloc.removeDeadStructural input6330 value3169 value1 value2 = (output6330, value3170, value1)) : Flapjack.WordAlloc.removeDeadStructural input6331 value3168 value1 value2 = (output6331, value3170, value1) := by
  rw [input6331_def, output6331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6329]
  dsimp only
  rw [child6330]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6329_skip, output6330_skip]
  kernel_rfl

theorem node6332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6332 value3170 value1 value2 = (output6332, value3171, value1) := by
  rw [input6332_def, output6332_def]
  kernel_rfl

theorem node6333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6333 value3171 value1 value2 = (output6333, value3172, value1) := by
  rw [input6333_def, output6333_def]
  kernel_rfl

theorem node6334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6334 value3172 value1 value2 = (output6334, value3173, value1) := by
  rw [input6334_def, output6334_def]
  kernel_rfl

theorem node6335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6335 value3173 value1 value2 = (output6335, value5, value1) := by
  rw [input6335_def, output6335_def]
  kernel_rfl

theorem node6336_cond_eq
    (child6334 : Flapjack.WordAlloc.removeDeadStructural input6334 value3172 value1 value2 = (output6334, value3173, value1))
    (child6335 : Flapjack.WordAlloc.removeDeadStructural input6335 value3173 value1 value2 = (output6335, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6336 value3172 value1 value2 = (output6336, value5, value1) := by
  rw [input6336_def, output6336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6334]
  dsimp only
  rw [child6335]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6334_skip, output6335_skip]
  kernel_rfl

theorem node6337_cond_eq
    (child6333 : Flapjack.WordAlloc.removeDeadStructural input6333 value3171 value1 value2 = (output6333, value3172, value1))
    (child6336 : Flapjack.WordAlloc.removeDeadStructural input6336 value3172 value1 value2 = (output6336, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6337 value3171 value1 value2 = (output6337, value5, value1) := by
  rw [input6337_def, output6337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6333]
  dsimp only
  rw [child6336]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6333_skip, output6336_skip]
  kernel_rfl

theorem node6338_cond_eq
    (child6332 : Flapjack.WordAlloc.removeDeadStructural input6332 value3170 value1 value2 = (output6332, value3171, value1))
    (child6337 : Flapjack.WordAlloc.removeDeadStructural input6337 value3171 value1 value2 = (output6337, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6338 value3170 value1 value2 = (output6338, value5, value1) := by
  rw [input6338_def, output6338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6332]
  dsimp only
  rw [child6337]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6332_skip, output6337_skip]
  kernel_rfl

theorem node6339_cond_eq
    (child6331 : Flapjack.WordAlloc.removeDeadStructural input6331 value3168 value1 value2 = (output6331, value3170, value1))
    (child6338 : Flapjack.WordAlloc.removeDeadStructural input6338 value3170 value1 value2 = (output6338, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6339 value3168 value1 value2 = (output6339, value5, value1) := by
  rw [input6339_def, output6339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6331]
  dsimp only
  rw [child6338]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6331_skip, output6338_skip]
  kernel_rfl

theorem node6340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6340 value5 value1 value2 = (output6340, value3174, value1) := by
  rw [input6340_def, output6340_def]
  kernel_rfl

theorem node6341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6341 value3174 value1 value2 = (output6341, value3175, value1) := by
  rw [input6341_def, output6341_def]
  kernel_rfl

theorem node6342_cond_eq
    (child6340 : Flapjack.WordAlloc.removeDeadStructural input6340 value5 value1 value2 = (output6340, value3174, value1))
    (child6341 : Flapjack.WordAlloc.removeDeadStructural input6341 value3174 value1 value2 = (output6341, value3175, value1)) : Flapjack.WordAlloc.removeDeadStructural input6342 value5 value1 value2 = (output6342, value3175, value1) := by
  rw [input6342_def, output6342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6340]
  dsimp only
  rw [child6341]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6340_skip, output6341_skip]
  kernel_rfl

theorem node6343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6343 value3175 value1 value2 = (output6343, value3176, value1) := by
  rw [input6343_def, output6343_def]
  kernel_rfl

theorem node6344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6344 value3176 value1 value2 = (output6344, value3176, value1) := by
  rw [input6344_def, output6344_def]
  kernel_rfl

theorem node6345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6345 value3176 value1 value2 = (output6345, value3177, value1) := by
  rw [input6345_def, output6345_def]
  kernel_rfl

theorem node6346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6346 value3177 value1 value2 = (output6346, value3178, value1) := by
  rw [input6346_def, output6346_def]
  kernel_rfl

theorem node6347_cond_eq
    (child6345 : Flapjack.WordAlloc.removeDeadStructural input6345 value3176 value1 value2 = (output6345, value3177, value1))
    (child6346 : Flapjack.WordAlloc.removeDeadStructural input6346 value3177 value1 value2 = (output6346, value3178, value1)) : Flapjack.WordAlloc.removeDeadStructural input6347 value3176 value1 value2 = (output6347, value3178, value1) := by
  rw [input6347_def, output6347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6345]
  dsimp only
  rw [child6346]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6345_skip, output6346_skip]
  kernel_rfl

theorem node6348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6348 value3178 value1 value2 = (output6348, value3179, value1) := by
  rw [input6348_def, output6348_def]
  kernel_rfl

theorem node6349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6349 value3179 value1 value2 = (output6349, value3180, value1) := by
  rw [input6349_def, output6349_def]
  kernel_rfl

theorem node6350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6350 value3180 value1 value2 = (output6350, value3181, value1) := by
  rw [input6350_def, output6350_def]
  kernel_rfl

theorem node6351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6351 value3181 value1 value2 = (output6351, value5, value1) := by
  rw [input6351_def, output6351_def]
  kernel_rfl

theorem node6352_cond_eq
    (child6350 : Flapjack.WordAlloc.removeDeadStructural input6350 value3180 value1 value2 = (output6350, value3181, value1))
    (child6351 : Flapjack.WordAlloc.removeDeadStructural input6351 value3181 value1 value2 = (output6351, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6352 value3180 value1 value2 = (output6352, value5, value1) := by
  rw [input6352_def, output6352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6350]
  dsimp only
  rw [child6351]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6350_skip, output6351_skip]
  kernel_rfl

theorem node6353_cond_eq
    (child6349 : Flapjack.WordAlloc.removeDeadStructural input6349 value3179 value1 value2 = (output6349, value3180, value1))
    (child6352 : Flapjack.WordAlloc.removeDeadStructural input6352 value3180 value1 value2 = (output6352, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6353 value3179 value1 value2 = (output6353, value5, value1) := by
  rw [input6353_def, output6353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6349]
  dsimp only
  rw [child6352]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6349_skip, output6352_skip]
  kernel_rfl

theorem node6354_cond_eq
    (child6348 : Flapjack.WordAlloc.removeDeadStructural input6348 value3178 value1 value2 = (output6348, value3179, value1))
    (child6353 : Flapjack.WordAlloc.removeDeadStructural input6353 value3179 value1 value2 = (output6353, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6354 value3178 value1 value2 = (output6354, value5, value1) := by
  rw [input6354_def, output6354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6348]
  dsimp only
  rw [child6353]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6348_skip, output6353_skip]
  kernel_rfl

theorem node6355_cond_eq
    (child6347 : Flapjack.WordAlloc.removeDeadStructural input6347 value3176 value1 value2 = (output6347, value3178, value1))
    (child6354 : Flapjack.WordAlloc.removeDeadStructural input6354 value3178 value1 value2 = (output6354, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6355 value3176 value1 value2 = (output6355, value5, value1) := by
  rw [input6355_def, output6355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6347]
  dsimp only
  rw [child6354]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6347_skip, output6354_skip]
  kernel_rfl

theorem node6356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6356 value5 value1 value2 = (output6356, value3182, value1) := by
  rw [input6356_def, output6356_def]
  kernel_rfl

theorem node6357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6357 value3182 value1 value2 = (output6357, value3183, value1) := by
  rw [input6357_def, output6357_def]
  kernel_rfl

theorem node6358_cond_eq
    (child6356 : Flapjack.WordAlloc.removeDeadStructural input6356 value5 value1 value2 = (output6356, value3182, value1))
    (child6357 : Flapjack.WordAlloc.removeDeadStructural input6357 value3182 value1 value2 = (output6357, value3183, value1)) : Flapjack.WordAlloc.removeDeadStructural input6358 value5 value1 value2 = (output6358, value3183, value1) := by
  rw [input6358_def, output6358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6356]
  dsimp only
  rw [child6357]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6356_skip, output6357_skip]
  kernel_rfl

theorem node6359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6359 value3183 value1 value2 = (output6359, value3184, value1) := by
  rw [input6359_def, output6359_def]
  kernel_rfl

theorem node6360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6360 value3184 value1 value2 = (output6360, value3184, value1) := by
  rw [input6360_def, output6360_def]
  kernel_rfl

theorem node6361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6361 value3184 value1 value2 = (output6361, value3185, value1) := by
  rw [input6361_def, output6361_def]
  kernel_rfl

theorem node6362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6362 value3185 value1 value2 = (output6362, value3186, value1) := by
  rw [input6362_def, output6362_def]
  kernel_rfl

theorem node6363_cond_eq
    (child6361 : Flapjack.WordAlloc.removeDeadStructural input6361 value3184 value1 value2 = (output6361, value3185, value1))
    (child6362 : Flapjack.WordAlloc.removeDeadStructural input6362 value3185 value1 value2 = (output6362, value3186, value1)) : Flapjack.WordAlloc.removeDeadStructural input6363 value3184 value1 value2 = (output6363, value3186, value1) := by
  rw [input6363_def, output6363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6361]
  dsimp only
  rw [child6362]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6361_skip, output6362_skip]
  kernel_rfl

theorem node6364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6364 value3186 value1 value2 = (output6364, value3187, value1) := by
  rw [input6364_def, output6364_def]
  kernel_rfl

theorem node6365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6365 value3187 value1 value2 = (output6365, value3188, value1) := by
  rw [input6365_def, output6365_def]
  kernel_rfl

theorem node6366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6366 value3188 value1 value2 = (output6366, value3189, value1) := by
  rw [input6366_def, output6366_def]
  kernel_rfl

theorem node6367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6367 value3189 value1 value2 = (output6367, value5, value1) := by
  rw [input6367_def, output6367_def]
  kernel_rfl

theorem node6368_cond_eq
    (child6366 : Flapjack.WordAlloc.removeDeadStructural input6366 value3188 value1 value2 = (output6366, value3189, value1))
    (child6367 : Flapjack.WordAlloc.removeDeadStructural input6367 value3189 value1 value2 = (output6367, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6368 value3188 value1 value2 = (output6368, value5, value1) := by
  rw [input6368_def, output6368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6366]
  dsimp only
  rw [child6367]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6366_skip, output6367_skip]
  kernel_rfl

theorem node6369_cond_eq
    (child6365 : Flapjack.WordAlloc.removeDeadStructural input6365 value3187 value1 value2 = (output6365, value3188, value1))
    (child6368 : Flapjack.WordAlloc.removeDeadStructural input6368 value3188 value1 value2 = (output6368, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6369 value3187 value1 value2 = (output6369, value5, value1) := by
  rw [input6369_def, output6369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6365]
  dsimp only
  rw [child6368]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6365_skip, output6368_skip]
  kernel_rfl

theorem node6370_cond_eq
    (child6364 : Flapjack.WordAlloc.removeDeadStructural input6364 value3186 value1 value2 = (output6364, value3187, value1))
    (child6369 : Flapjack.WordAlloc.removeDeadStructural input6369 value3187 value1 value2 = (output6369, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6370 value3186 value1 value2 = (output6370, value5, value1) := by
  rw [input6370_def, output6370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6364]
  dsimp only
  rw [child6369]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6364_skip, output6369_skip]
  kernel_rfl

theorem node6371_cond_eq
    (child6363 : Flapjack.WordAlloc.removeDeadStructural input6363 value3184 value1 value2 = (output6363, value3186, value1))
    (child6370 : Flapjack.WordAlloc.removeDeadStructural input6370 value3186 value1 value2 = (output6370, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6371 value3184 value1 value2 = (output6371, value5, value1) := by
  rw [input6371_def, output6371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6363]
  dsimp only
  rw [child6370]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6363_skip, output6370_skip]
  kernel_rfl

theorem node6372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6372 value5 value1 value2 = (output6372, value3190, value1) := by
  rw [input6372_def, output6372_def]
  kernel_rfl

theorem node6373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6373 value3190 value1 value2 = (output6373, value3191, value1) := by
  rw [input6373_def, output6373_def]
  kernel_rfl

theorem node6374_cond_eq
    (child6372 : Flapjack.WordAlloc.removeDeadStructural input6372 value5 value1 value2 = (output6372, value3190, value1))
    (child6373 : Flapjack.WordAlloc.removeDeadStructural input6373 value3190 value1 value2 = (output6373, value3191, value1)) : Flapjack.WordAlloc.removeDeadStructural input6374 value5 value1 value2 = (output6374, value3191, value1) := by
  rw [input6374_def, output6374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6372]
  dsimp only
  rw [child6373]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6372_skip, output6373_skip]
  kernel_rfl

theorem node6375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6375 value3191 value1 value2 = (output6375, value3192, value1) := by
  rw [input6375_def, output6375_def]
  kernel_rfl

theorem node6376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6376 value3192 value1 value2 = (output6376, value3192, value1) := by
  rw [input6376_def, output6376_def]
  kernel_rfl

theorem node6377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6377 value3192 value1 value2 = (output6377, value3193, value1) := by
  rw [input6377_def, output6377_def]
  kernel_rfl

theorem node6378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6378 value3193 value1 value2 = (output6378, value3194, value1) := by
  rw [input6378_def, output6378_def]
  kernel_rfl

theorem node6379_cond_eq
    (child6377 : Flapjack.WordAlloc.removeDeadStructural input6377 value3192 value1 value2 = (output6377, value3193, value1))
    (child6378 : Flapjack.WordAlloc.removeDeadStructural input6378 value3193 value1 value2 = (output6378, value3194, value1)) : Flapjack.WordAlloc.removeDeadStructural input6379 value3192 value1 value2 = (output6379, value3194, value1) := by
  rw [input6379_def, output6379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6377]
  dsimp only
  rw [child6378]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6377_skip, output6378_skip]
  kernel_rfl

theorem node6380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6380 value3194 value1 value2 = (output6380, value3195, value1) := by
  rw [input6380_def, output6380_def]
  kernel_rfl

theorem node6381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6381 value3195 value1 value2 = (output6381, value3196, value1) := by
  rw [input6381_def, output6381_def]
  kernel_rfl

theorem node6382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6382 value3196 value1 value2 = (output6382, value3197, value1) := by
  rw [input6382_def, output6382_def]
  kernel_rfl

theorem node6383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6383 value3197 value1 value2 = (output6383, value5, value1) := by
  rw [input6383_def, output6383_def]
  kernel_rfl

theorem node6384_cond_eq
    (child6382 : Flapjack.WordAlloc.removeDeadStructural input6382 value3196 value1 value2 = (output6382, value3197, value1))
    (child6383 : Flapjack.WordAlloc.removeDeadStructural input6383 value3197 value1 value2 = (output6383, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6384 value3196 value1 value2 = (output6384, value5, value1) := by
  rw [input6384_def, output6384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6382]
  dsimp only
  rw [child6383]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6382_skip, output6383_skip]
  kernel_rfl

theorem node6385_cond_eq
    (child6381 : Flapjack.WordAlloc.removeDeadStructural input6381 value3195 value1 value2 = (output6381, value3196, value1))
    (child6384 : Flapjack.WordAlloc.removeDeadStructural input6384 value3196 value1 value2 = (output6384, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6385 value3195 value1 value2 = (output6385, value5, value1) := by
  rw [input6385_def, output6385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6381]
  dsimp only
  rw [child6384]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6381_skip, output6384_skip]
  kernel_rfl

theorem node6386_cond_eq
    (child6380 : Flapjack.WordAlloc.removeDeadStructural input6380 value3194 value1 value2 = (output6380, value3195, value1))
    (child6385 : Flapjack.WordAlloc.removeDeadStructural input6385 value3195 value1 value2 = (output6385, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6386 value3194 value1 value2 = (output6386, value5, value1) := by
  rw [input6386_def, output6386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6380]
  dsimp only
  rw [child6385]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6380_skip, output6385_skip]
  kernel_rfl

theorem node6387_cond_eq
    (child6379 : Flapjack.WordAlloc.removeDeadStructural input6379 value3192 value1 value2 = (output6379, value3194, value1))
    (child6386 : Flapjack.WordAlloc.removeDeadStructural input6386 value3194 value1 value2 = (output6386, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input6387 value3192 value1 value2 = (output6387, value5, value1) := by
  rw [input6387_def, output6387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6379]
  dsimp only
  rw [child6386]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6379_skip, output6386_skip]
  kernel_rfl

theorem node6388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6388 value5 value1 value2 = (output6388, value3198, value1) := by
  rw [input6388_def, output6388_def]
  kernel_rfl

theorem node6389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6389 value3198 value1 value2 = (output6389, value3199, value1) := by
  rw [input6389_def, output6389_def]
  kernel_rfl

theorem node6390_cond_eq
    (child6388 : Flapjack.WordAlloc.removeDeadStructural input6388 value5 value1 value2 = (output6388, value3198, value1))
    (child6389 : Flapjack.WordAlloc.removeDeadStructural input6389 value3198 value1 value2 = (output6389, value3199, value1)) : Flapjack.WordAlloc.removeDeadStructural input6390 value5 value1 value2 = (output6390, value3199, value1) := by
  rw [input6390_def, output6390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6388]
  dsimp only
  rw [child6389]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6388_skip, output6389_skip]
  kernel_rfl

theorem node6391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6391 value3199 value1 value2 = (output6391, value3200, value1) := by
  rw [input6391_def, output6391_def]
  kernel_rfl

theorem node6392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6392 value3200 value1 value2 = (output6392, value3200, value1) := by
  rw [input6392_def, output6392_def]
  kernel_rfl

theorem node6393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6393 value3200 value1 value2 = (output6393, value3201, value1) := by
  rw [input6393_def, output6393_def]
  kernel_rfl

theorem node6394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6394 value3201 value1 value2 = (output6394, value3202, value1) := by
  rw [input6394_def, output6394_def]
  kernel_rfl

theorem node6395_cond_eq
    (child6393 : Flapjack.WordAlloc.removeDeadStructural input6393 value3200 value1 value2 = (output6393, value3201, value1))
    (child6394 : Flapjack.WordAlloc.removeDeadStructural input6394 value3201 value1 value2 = (output6394, value3202, value1)) : Flapjack.WordAlloc.removeDeadStructural input6395 value3200 value1 value2 = (output6395, value3202, value1) := by
  rw [input6395_def, output6395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child6393]
  dsimp only
  rw [child6394]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output6393_skip, output6394_skip]
  kernel_rfl

theorem node6396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6396 value3202 value1 value2 = (output6396, value3203, value1) := by
  rw [input6396_def, output6396_def]
  kernel_rfl

theorem node6397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6397 value3203 value1 value2 = (output6397, value3204, value1) := by
  rw [input6397_def, output6397_def]
  kernel_rfl

theorem node6398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6398 value3204 value1 value2 = (output6398, value3205, value1) := by
  rw [input6398_def, output6398_def]
  kernel_rfl

theorem node6399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input6399 value3205 value1 value2 = (output6399, value5, value1) := by
  rw [input6399_def, output6399_def]
  kernel_rfl

#print axioms node6399_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
