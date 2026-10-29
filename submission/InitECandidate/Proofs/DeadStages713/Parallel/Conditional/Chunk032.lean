import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk032
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node8192_cond_eq
    (child8190 : Flapjack.WordAlloc.removeDeadStructural input8190 value4100 value1 value2 = (output8190, value4101, value1))
    (child8191 : Flapjack.WordAlloc.removeDeadStructural input8191 value4101 value1 value2 = (output8191, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8192 value4100 value1 value2 = (output8192, value5, value1) := by
  rw [input8192_def, output8192_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8190]
  dsimp only
  rw [child8191]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8190_skip, output8191_skip]
  kernel_rfl

theorem node8193_cond_eq
    (child8189 : Flapjack.WordAlloc.removeDeadStructural input8189 value4099 value1 value2 = (output8189, value4100, value1))
    (child8192 : Flapjack.WordAlloc.removeDeadStructural input8192 value4100 value1 value2 = (output8192, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8193 value4099 value1 value2 = (output8193, value5, value1) := by
  rw [input8193_def, output8193_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8189]
  dsimp only
  rw [child8192]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8189_skip, output8192_skip]
  kernel_rfl

theorem node8194_cond_eq
    (child8188 : Flapjack.WordAlloc.removeDeadStructural input8188 value4098 value1 value2 = (output8188, value4099, value1))
    (child8193 : Flapjack.WordAlloc.removeDeadStructural input8193 value4099 value1 value2 = (output8193, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8194 value4098 value1 value2 = (output8194, value5, value1) := by
  rw [input8194_def, output8194_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8188]
  dsimp only
  rw [child8193]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8188_skip, output8193_skip]
  kernel_rfl

theorem node8195_cond_eq
    (child8187 : Flapjack.WordAlloc.removeDeadStructural input8187 value4096 value1 value2 = (output8187, value4098, value1))
    (child8194 : Flapjack.WordAlloc.removeDeadStructural input8194 value4098 value1 value2 = (output8194, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8195 value4096 value1 value2 = (output8195, value5, value1) := by
  rw [input8195_def, output8195_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8187]
  dsimp only
  rw [child8194]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8187_skip, output8194_skip]
  kernel_rfl

theorem node8196_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8196 value5 value1 value2 = (output8196, value4102, value1) := by
  rw [input8196_def, output8196_def]
  kernel_rfl

theorem node8197_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8197 value4102 value1 value2 = (output8197, value4103, value1) := by
  rw [input8197_def, output8197_def]
  kernel_rfl

theorem node8198_cond_eq
    (child8196 : Flapjack.WordAlloc.removeDeadStructural input8196 value5 value1 value2 = (output8196, value4102, value1))
    (child8197 : Flapjack.WordAlloc.removeDeadStructural input8197 value4102 value1 value2 = (output8197, value4103, value1)) : Flapjack.WordAlloc.removeDeadStructural input8198 value5 value1 value2 = (output8198, value4103, value1) := by
  rw [input8198_def, output8198_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8196]
  dsimp only
  rw [child8197]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8196_skip, output8197_skip]
  kernel_rfl

theorem node8199_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8199 value4103 value1 value2 = (output8199, value4104, value1) := by
  rw [input8199_def, output8199_def]
  kernel_rfl

theorem node8200_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8200 value4104 value1 value2 = (output8200, value4104, value1) := by
  rw [input8200_def, output8200_def]
  kernel_rfl

theorem node8201_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8201 value4104 value1 value2 = (output8201, value4105, value1) := by
  rw [input8201_def, output8201_def]
  kernel_rfl

theorem node8202_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8202 value4105 value1 value2 = (output8202, value4106, value1) := by
  rw [input8202_def, output8202_def]
  kernel_rfl

theorem node8203_cond_eq
    (child8201 : Flapjack.WordAlloc.removeDeadStructural input8201 value4104 value1 value2 = (output8201, value4105, value1))
    (child8202 : Flapjack.WordAlloc.removeDeadStructural input8202 value4105 value1 value2 = (output8202, value4106, value1)) : Flapjack.WordAlloc.removeDeadStructural input8203 value4104 value1 value2 = (output8203, value4106, value1) := by
  rw [input8203_def, output8203_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8201]
  dsimp only
  rw [child8202]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8201_skip, output8202_skip]
  kernel_rfl

theorem node8204_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8204 value4106 value1 value2 = (output8204, value4107, value1) := by
  rw [input8204_def, output8204_def]
  kernel_rfl

theorem node8205_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8205 value4107 value1 value2 = (output8205, value4108, value1) := by
  rw [input8205_def, output8205_def]
  kernel_rfl

theorem node8206_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8206 value4108 value1 value2 = (output8206, value4109, value1) := by
  rw [input8206_def, output8206_def]
  kernel_rfl

theorem node8207_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8207 value4109 value1 value2 = (output8207, value5, value1) := by
  rw [input8207_def, output8207_def]
  kernel_rfl

theorem node8208_cond_eq
    (child8206 : Flapjack.WordAlloc.removeDeadStructural input8206 value4108 value1 value2 = (output8206, value4109, value1))
    (child8207 : Flapjack.WordAlloc.removeDeadStructural input8207 value4109 value1 value2 = (output8207, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8208 value4108 value1 value2 = (output8208, value5, value1) := by
  rw [input8208_def, output8208_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8206]
  dsimp only
  rw [child8207]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8206_skip, output8207_skip]
  kernel_rfl

theorem node8209_cond_eq
    (child8205 : Flapjack.WordAlloc.removeDeadStructural input8205 value4107 value1 value2 = (output8205, value4108, value1))
    (child8208 : Flapjack.WordAlloc.removeDeadStructural input8208 value4108 value1 value2 = (output8208, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8209 value4107 value1 value2 = (output8209, value5, value1) := by
  rw [input8209_def, output8209_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8205]
  dsimp only
  rw [child8208]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8205_skip, output8208_skip]
  kernel_rfl

theorem node8210_cond_eq
    (child8204 : Flapjack.WordAlloc.removeDeadStructural input8204 value4106 value1 value2 = (output8204, value4107, value1))
    (child8209 : Flapjack.WordAlloc.removeDeadStructural input8209 value4107 value1 value2 = (output8209, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8210 value4106 value1 value2 = (output8210, value5, value1) := by
  rw [input8210_def, output8210_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8204]
  dsimp only
  rw [child8209]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8204_skip, output8209_skip]
  kernel_rfl

theorem node8211_cond_eq
    (child8203 : Flapjack.WordAlloc.removeDeadStructural input8203 value4104 value1 value2 = (output8203, value4106, value1))
    (child8210 : Flapjack.WordAlloc.removeDeadStructural input8210 value4106 value1 value2 = (output8210, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8211 value4104 value1 value2 = (output8211, value5, value1) := by
  rw [input8211_def, output8211_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8203]
  dsimp only
  rw [child8210]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8203_skip, output8210_skip]
  kernel_rfl

theorem node8212_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8212 value5 value1 value2 = (output8212, value4110, value1) := by
  rw [input8212_def, output8212_def]
  kernel_rfl

theorem node8213_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8213 value4110 value1 value2 = (output8213, value4111, value1) := by
  rw [input8213_def, output8213_def]
  kernel_rfl

theorem node8214_cond_eq
    (child8212 : Flapjack.WordAlloc.removeDeadStructural input8212 value5 value1 value2 = (output8212, value4110, value1))
    (child8213 : Flapjack.WordAlloc.removeDeadStructural input8213 value4110 value1 value2 = (output8213, value4111, value1)) : Flapjack.WordAlloc.removeDeadStructural input8214 value5 value1 value2 = (output8214, value4111, value1) := by
  rw [input8214_def, output8214_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8212]
  dsimp only
  rw [child8213]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8212_skip, output8213_skip]
  kernel_rfl

theorem node8215_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8215 value4111 value1 value2 = (output8215, value4112, value1) := by
  rw [input8215_def, output8215_def]
  kernel_rfl

theorem node8216_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8216 value4112 value1 value2 = (output8216, value4112, value1) := by
  rw [input8216_def, output8216_def]
  kernel_rfl

theorem node8217_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8217 value4112 value1 value2 = (output8217, value4113, value1) := by
  rw [input8217_def, output8217_def]
  kernel_rfl

theorem node8218_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8218 value4113 value1 value2 = (output8218, value4114, value1) := by
  rw [input8218_def, output8218_def]
  kernel_rfl

theorem node8219_cond_eq
    (child8217 : Flapjack.WordAlloc.removeDeadStructural input8217 value4112 value1 value2 = (output8217, value4113, value1))
    (child8218 : Flapjack.WordAlloc.removeDeadStructural input8218 value4113 value1 value2 = (output8218, value4114, value1)) : Flapjack.WordAlloc.removeDeadStructural input8219 value4112 value1 value2 = (output8219, value4114, value1) := by
  rw [input8219_def, output8219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8217]
  dsimp only
  rw [child8218]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8217_skip, output8218_skip]
  kernel_rfl

theorem node8220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8220 value4114 value1 value2 = (output8220, value4115, value1) := by
  rw [input8220_def, output8220_def]
  kernel_rfl

theorem node8221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8221 value4115 value1 value2 = (output8221, value4116, value1) := by
  rw [input8221_def, output8221_def]
  kernel_rfl

theorem node8222_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8222 value4116 value1 value2 = (output8222, value4117, value1) := by
  rw [input8222_def, output8222_def]
  kernel_rfl

theorem node8223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8223 value4117 value1 value2 = (output8223, value5, value1) := by
  rw [input8223_def, output8223_def]
  kernel_rfl

theorem node8224_cond_eq
    (child8222 : Flapjack.WordAlloc.removeDeadStructural input8222 value4116 value1 value2 = (output8222, value4117, value1))
    (child8223 : Flapjack.WordAlloc.removeDeadStructural input8223 value4117 value1 value2 = (output8223, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8224 value4116 value1 value2 = (output8224, value5, value1) := by
  rw [input8224_def, output8224_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8222]
  dsimp only
  rw [child8223]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8222_skip, output8223_skip]
  kernel_rfl

theorem node8225_cond_eq
    (child8221 : Flapjack.WordAlloc.removeDeadStructural input8221 value4115 value1 value2 = (output8221, value4116, value1))
    (child8224 : Flapjack.WordAlloc.removeDeadStructural input8224 value4116 value1 value2 = (output8224, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8225 value4115 value1 value2 = (output8225, value5, value1) := by
  rw [input8225_def, output8225_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8221]
  dsimp only
  rw [child8224]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8221_skip, output8224_skip]
  kernel_rfl

theorem node8226_cond_eq
    (child8220 : Flapjack.WordAlloc.removeDeadStructural input8220 value4114 value1 value2 = (output8220, value4115, value1))
    (child8225 : Flapjack.WordAlloc.removeDeadStructural input8225 value4115 value1 value2 = (output8225, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8226 value4114 value1 value2 = (output8226, value5, value1) := by
  rw [input8226_def, output8226_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8220]
  dsimp only
  rw [child8225]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8220_skip, output8225_skip]
  kernel_rfl

theorem node8227_cond_eq
    (child8219 : Flapjack.WordAlloc.removeDeadStructural input8219 value4112 value1 value2 = (output8219, value4114, value1))
    (child8226 : Flapjack.WordAlloc.removeDeadStructural input8226 value4114 value1 value2 = (output8226, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8227 value4112 value1 value2 = (output8227, value5, value1) := by
  rw [input8227_def, output8227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8219]
  dsimp only
  rw [child8226]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8219_skip, output8226_skip]
  kernel_rfl

theorem node8228_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8228 value5 value1 value2 = (output8228, value4118, value1) := by
  rw [input8228_def, output8228_def]
  kernel_rfl

theorem node8229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8229 value4118 value1 value2 = (output8229, value4119, value1) := by
  rw [input8229_def, output8229_def]
  kernel_rfl

theorem node8230_cond_eq
    (child8228 : Flapjack.WordAlloc.removeDeadStructural input8228 value5 value1 value2 = (output8228, value4118, value1))
    (child8229 : Flapjack.WordAlloc.removeDeadStructural input8229 value4118 value1 value2 = (output8229, value4119, value1)) : Flapjack.WordAlloc.removeDeadStructural input8230 value5 value1 value2 = (output8230, value4119, value1) := by
  rw [input8230_def, output8230_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8228]
  dsimp only
  rw [child8229]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8228_skip, output8229_skip]
  kernel_rfl

theorem node8231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8231 value4119 value1 value2 = (output8231, value4120, value1) := by
  rw [input8231_def, output8231_def]
  kernel_rfl

theorem node8232_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8232 value4120 value1 value2 = (output8232, value4120, value1) := by
  rw [input8232_def, output8232_def]
  kernel_rfl

theorem node8233_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8233 value4120 value1 value2 = (output8233, value4121, value1) := by
  rw [input8233_def, output8233_def]
  kernel_rfl

theorem node8234_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8234 value4121 value1 value2 = (output8234, value4122, value1) := by
  rw [input8234_def, output8234_def]
  kernel_rfl

theorem node8235_cond_eq
    (child8233 : Flapjack.WordAlloc.removeDeadStructural input8233 value4120 value1 value2 = (output8233, value4121, value1))
    (child8234 : Flapjack.WordAlloc.removeDeadStructural input8234 value4121 value1 value2 = (output8234, value4122, value1)) : Flapjack.WordAlloc.removeDeadStructural input8235 value4120 value1 value2 = (output8235, value4122, value1) := by
  rw [input8235_def, output8235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8233]
  dsimp only
  rw [child8234]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8233_skip, output8234_skip]
  kernel_rfl

theorem node8236_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8236 value4122 value1 value2 = (output8236, value4123, value1) := by
  rw [input8236_def, output8236_def]
  kernel_rfl

theorem node8237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8237 value4123 value1 value2 = (output8237, value4124, value1) := by
  rw [input8237_def, output8237_def]
  kernel_rfl

theorem node8238_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8238 value4124 value1 value2 = (output8238, value4125, value1) := by
  rw [input8238_def, output8238_def]
  kernel_rfl

theorem node8239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8239 value4125 value1 value2 = (output8239, value5, value1) := by
  rw [input8239_def, output8239_def]
  kernel_rfl

theorem node8240_cond_eq
    (child8238 : Flapjack.WordAlloc.removeDeadStructural input8238 value4124 value1 value2 = (output8238, value4125, value1))
    (child8239 : Flapjack.WordAlloc.removeDeadStructural input8239 value4125 value1 value2 = (output8239, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8240 value4124 value1 value2 = (output8240, value5, value1) := by
  rw [input8240_def, output8240_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8238]
  dsimp only
  rw [child8239]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8238_skip, output8239_skip]
  kernel_rfl

theorem node8241_cond_eq
    (child8237 : Flapjack.WordAlloc.removeDeadStructural input8237 value4123 value1 value2 = (output8237, value4124, value1))
    (child8240 : Flapjack.WordAlloc.removeDeadStructural input8240 value4124 value1 value2 = (output8240, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8241 value4123 value1 value2 = (output8241, value5, value1) := by
  rw [input8241_def, output8241_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8237]
  dsimp only
  rw [child8240]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8237_skip, output8240_skip]
  kernel_rfl

theorem node8242_cond_eq
    (child8236 : Flapjack.WordAlloc.removeDeadStructural input8236 value4122 value1 value2 = (output8236, value4123, value1))
    (child8241 : Flapjack.WordAlloc.removeDeadStructural input8241 value4123 value1 value2 = (output8241, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8242 value4122 value1 value2 = (output8242, value5, value1) := by
  rw [input8242_def, output8242_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8236]
  dsimp only
  rw [child8241]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8236_skip, output8241_skip]
  kernel_rfl

theorem node8243_cond_eq
    (child8235 : Flapjack.WordAlloc.removeDeadStructural input8235 value4120 value1 value2 = (output8235, value4122, value1))
    (child8242 : Flapjack.WordAlloc.removeDeadStructural input8242 value4122 value1 value2 = (output8242, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8243 value4120 value1 value2 = (output8243, value5, value1) := by
  rw [input8243_def, output8243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8235]
  dsimp only
  rw [child8242]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8235_skip, output8242_skip]
  kernel_rfl

theorem node8244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8244 value5 value1 value2 = (output8244, value4126, value1) := by
  rw [input8244_def, output8244_def]
  kernel_rfl

theorem node8245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8245 value4126 value1 value2 = (output8245, value4127, value1) := by
  rw [input8245_def, output8245_def]
  kernel_rfl

theorem node8246_cond_eq
    (child8244 : Flapjack.WordAlloc.removeDeadStructural input8244 value5 value1 value2 = (output8244, value4126, value1))
    (child8245 : Flapjack.WordAlloc.removeDeadStructural input8245 value4126 value1 value2 = (output8245, value4127, value1)) : Flapjack.WordAlloc.removeDeadStructural input8246 value5 value1 value2 = (output8246, value4127, value1) := by
  rw [input8246_def, output8246_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8244]
  dsimp only
  rw [child8245]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8244_skip, output8245_skip]
  kernel_rfl

theorem node8247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8247 value4127 value1 value2 = (output8247, value4128, value1) := by
  rw [input8247_def, output8247_def]
  kernel_rfl

theorem node8248_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8248 value4128 value1 value2 = (output8248, value4128, value1) := by
  rw [input8248_def, output8248_def]
  kernel_rfl

theorem node8249_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8249 value4128 value1 value2 = (output8249, value4129, value1) := by
  rw [input8249_def, output8249_def]
  kernel_rfl

theorem node8250_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8250 value4129 value1 value2 = (output8250, value4130, value1) := by
  rw [input8250_def, output8250_def]
  kernel_rfl

theorem node8251_cond_eq
    (child8249 : Flapjack.WordAlloc.removeDeadStructural input8249 value4128 value1 value2 = (output8249, value4129, value1))
    (child8250 : Flapjack.WordAlloc.removeDeadStructural input8250 value4129 value1 value2 = (output8250, value4130, value1)) : Flapjack.WordAlloc.removeDeadStructural input8251 value4128 value1 value2 = (output8251, value4130, value1) := by
  rw [input8251_def, output8251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8249]
  dsimp only
  rw [child8250]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8249_skip, output8250_skip]
  kernel_rfl

theorem node8252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8252 value4130 value1 value2 = (output8252, value4131, value1) := by
  rw [input8252_def, output8252_def]
  kernel_rfl

theorem node8253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8253 value4131 value1 value2 = (output8253, value4132, value1) := by
  rw [input8253_def, output8253_def]
  kernel_rfl

theorem node8254_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8254 value4132 value1 value2 = (output8254, value4133, value1) := by
  rw [input8254_def, output8254_def]
  kernel_rfl

theorem node8255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8255 value4133 value1 value2 = (output8255, value5, value1) := by
  rw [input8255_def, output8255_def]
  kernel_rfl

theorem node8256_cond_eq
    (child8254 : Flapjack.WordAlloc.removeDeadStructural input8254 value4132 value1 value2 = (output8254, value4133, value1))
    (child8255 : Flapjack.WordAlloc.removeDeadStructural input8255 value4133 value1 value2 = (output8255, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8256 value4132 value1 value2 = (output8256, value5, value1) := by
  rw [input8256_def, output8256_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8254]
  dsimp only
  rw [child8255]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8254_skip, output8255_skip]
  kernel_rfl

theorem node8257_cond_eq
    (child8253 : Flapjack.WordAlloc.removeDeadStructural input8253 value4131 value1 value2 = (output8253, value4132, value1))
    (child8256 : Flapjack.WordAlloc.removeDeadStructural input8256 value4132 value1 value2 = (output8256, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8257 value4131 value1 value2 = (output8257, value5, value1) := by
  rw [input8257_def, output8257_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8253]
  dsimp only
  rw [child8256]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8253_skip, output8256_skip]
  kernel_rfl

theorem node8258_cond_eq
    (child8252 : Flapjack.WordAlloc.removeDeadStructural input8252 value4130 value1 value2 = (output8252, value4131, value1))
    (child8257 : Flapjack.WordAlloc.removeDeadStructural input8257 value4131 value1 value2 = (output8257, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8258 value4130 value1 value2 = (output8258, value5, value1) := by
  rw [input8258_def, output8258_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8252]
  dsimp only
  rw [child8257]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8252_skip, output8257_skip]
  kernel_rfl

theorem node8259_cond_eq
    (child8251 : Flapjack.WordAlloc.removeDeadStructural input8251 value4128 value1 value2 = (output8251, value4130, value1))
    (child8258 : Flapjack.WordAlloc.removeDeadStructural input8258 value4130 value1 value2 = (output8258, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8259 value4128 value1 value2 = (output8259, value5, value1) := by
  rw [input8259_def, output8259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8251]
  dsimp only
  rw [child8258]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8251_skip, output8258_skip]
  kernel_rfl

theorem node8260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8260 value5 value1 value2 = (output8260, value4134, value1) := by
  rw [input8260_def, output8260_def]
  kernel_rfl

theorem node8261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8261 value4134 value1 value2 = (output8261, value4135, value1) := by
  rw [input8261_def, output8261_def]
  kernel_rfl

theorem node8262_cond_eq
    (child8260 : Flapjack.WordAlloc.removeDeadStructural input8260 value5 value1 value2 = (output8260, value4134, value1))
    (child8261 : Flapjack.WordAlloc.removeDeadStructural input8261 value4134 value1 value2 = (output8261, value4135, value1)) : Flapjack.WordAlloc.removeDeadStructural input8262 value5 value1 value2 = (output8262, value4135, value1) := by
  rw [input8262_def, output8262_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8260]
  dsimp only
  rw [child8261]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8260_skip, output8261_skip]
  kernel_rfl

theorem node8263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8263 value4135 value1 value2 = (output8263, value4136, value1) := by
  rw [input8263_def, output8263_def]
  kernel_rfl

theorem node8264_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8264 value4136 value1 value2 = (output8264, value4136, value1) := by
  rw [input8264_def, output8264_def]
  kernel_rfl

theorem node8265_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8265 value4136 value1 value2 = (output8265, value4137, value1) := by
  rw [input8265_def, output8265_def]
  kernel_rfl

theorem node8266_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8266 value4137 value1 value2 = (output8266, value4138, value1) := by
  rw [input8266_def, output8266_def]
  kernel_rfl

theorem node8267_cond_eq
    (child8265 : Flapjack.WordAlloc.removeDeadStructural input8265 value4136 value1 value2 = (output8265, value4137, value1))
    (child8266 : Flapjack.WordAlloc.removeDeadStructural input8266 value4137 value1 value2 = (output8266, value4138, value1)) : Flapjack.WordAlloc.removeDeadStructural input8267 value4136 value1 value2 = (output8267, value4138, value1) := by
  rw [input8267_def, output8267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8265]
  dsimp only
  rw [child8266]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8265_skip, output8266_skip]
  kernel_rfl

theorem node8268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8268 value4138 value1 value2 = (output8268, value4139, value1) := by
  rw [input8268_def, output8268_def]
  kernel_rfl

theorem node8269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8269 value4139 value1 value2 = (output8269, value4140, value1) := by
  rw [input8269_def, output8269_def]
  kernel_rfl

theorem node8270_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8270 value4140 value1 value2 = (output8270, value4141, value1) := by
  rw [input8270_def, output8270_def]
  kernel_rfl

theorem node8271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8271 value4141 value1 value2 = (output8271, value5, value1) := by
  rw [input8271_def, output8271_def]
  kernel_rfl

theorem node8272_cond_eq
    (child8270 : Flapjack.WordAlloc.removeDeadStructural input8270 value4140 value1 value2 = (output8270, value4141, value1))
    (child8271 : Flapjack.WordAlloc.removeDeadStructural input8271 value4141 value1 value2 = (output8271, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8272 value4140 value1 value2 = (output8272, value5, value1) := by
  rw [input8272_def, output8272_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8270]
  dsimp only
  rw [child8271]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8270_skip, output8271_skip]
  kernel_rfl

theorem node8273_cond_eq
    (child8269 : Flapjack.WordAlloc.removeDeadStructural input8269 value4139 value1 value2 = (output8269, value4140, value1))
    (child8272 : Flapjack.WordAlloc.removeDeadStructural input8272 value4140 value1 value2 = (output8272, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8273 value4139 value1 value2 = (output8273, value5, value1) := by
  rw [input8273_def, output8273_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8269]
  dsimp only
  rw [child8272]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8269_skip, output8272_skip]
  kernel_rfl

theorem node8274_cond_eq
    (child8268 : Flapjack.WordAlloc.removeDeadStructural input8268 value4138 value1 value2 = (output8268, value4139, value1))
    (child8273 : Flapjack.WordAlloc.removeDeadStructural input8273 value4139 value1 value2 = (output8273, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8274 value4138 value1 value2 = (output8274, value5, value1) := by
  rw [input8274_def, output8274_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8268]
  dsimp only
  rw [child8273]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8268_skip, output8273_skip]
  kernel_rfl

theorem node8275_cond_eq
    (child8267 : Flapjack.WordAlloc.removeDeadStructural input8267 value4136 value1 value2 = (output8267, value4138, value1))
    (child8274 : Flapjack.WordAlloc.removeDeadStructural input8274 value4138 value1 value2 = (output8274, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8275 value4136 value1 value2 = (output8275, value5, value1) := by
  rw [input8275_def, output8275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8267]
  dsimp only
  rw [child8274]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8267_skip, output8274_skip]
  kernel_rfl

theorem node8276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8276 value5 value1 value2 = (output8276, value4142, value1) := by
  rw [input8276_def, output8276_def]
  kernel_rfl

theorem node8277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8277 value4142 value1 value2 = (output8277, value4143, value1) := by
  rw [input8277_def, output8277_def]
  kernel_rfl

theorem node8278_cond_eq
    (child8276 : Flapjack.WordAlloc.removeDeadStructural input8276 value5 value1 value2 = (output8276, value4142, value1))
    (child8277 : Flapjack.WordAlloc.removeDeadStructural input8277 value4142 value1 value2 = (output8277, value4143, value1)) : Flapjack.WordAlloc.removeDeadStructural input8278 value5 value1 value2 = (output8278, value4143, value1) := by
  rw [input8278_def, output8278_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8276]
  dsimp only
  rw [child8277]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8276_skip, output8277_skip]
  kernel_rfl

theorem node8279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8279 value4143 value1 value2 = (output8279, value4144, value1) := by
  rw [input8279_def, output8279_def]
  kernel_rfl

theorem node8280_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8280 value4144 value1 value2 = (output8280, value4144, value1) := by
  rw [input8280_def, output8280_def]
  kernel_rfl

theorem node8281_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8281 value4144 value1 value2 = (output8281, value4145, value1) := by
  rw [input8281_def, output8281_def]
  kernel_rfl

theorem node8282_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8282 value4145 value1 value2 = (output8282, value4146, value1) := by
  rw [input8282_def, output8282_def]
  kernel_rfl

theorem node8283_cond_eq
    (child8281 : Flapjack.WordAlloc.removeDeadStructural input8281 value4144 value1 value2 = (output8281, value4145, value1))
    (child8282 : Flapjack.WordAlloc.removeDeadStructural input8282 value4145 value1 value2 = (output8282, value4146, value1)) : Flapjack.WordAlloc.removeDeadStructural input8283 value4144 value1 value2 = (output8283, value4146, value1) := by
  rw [input8283_def, output8283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8281]
  dsimp only
  rw [child8282]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8281_skip, output8282_skip]
  kernel_rfl

theorem node8284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8284 value4146 value1 value2 = (output8284, value4147, value1) := by
  rw [input8284_def, output8284_def]
  kernel_rfl

theorem node8285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8285 value4147 value1 value2 = (output8285, value4148, value1) := by
  rw [input8285_def, output8285_def]
  kernel_rfl

theorem node8286_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8286 value4148 value1 value2 = (output8286, value4149, value1) := by
  rw [input8286_def, output8286_def]
  kernel_rfl

theorem node8287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8287 value4149 value1 value2 = (output8287, value5, value1) := by
  rw [input8287_def, output8287_def]
  kernel_rfl

theorem node8288_cond_eq
    (child8286 : Flapjack.WordAlloc.removeDeadStructural input8286 value4148 value1 value2 = (output8286, value4149, value1))
    (child8287 : Flapjack.WordAlloc.removeDeadStructural input8287 value4149 value1 value2 = (output8287, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8288 value4148 value1 value2 = (output8288, value5, value1) := by
  rw [input8288_def, output8288_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8286]
  dsimp only
  rw [child8287]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8286_skip, output8287_skip]
  kernel_rfl

theorem node8289_cond_eq
    (child8285 : Flapjack.WordAlloc.removeDeadStructural input8285 value4147 value1 value2 = (output8285, value4148, value1))
    (child8288 : Flapjack.WordAlloc.removeDeadStructural input8288 value4148 value1 value2 = (output8288, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8289 value4147 value1 value2 = (output8289, value5, value1) := by
  rw [input8289_def, output8289_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8285]
  dsimp only
  rw [child8288]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8285_skip, output8288_skip]
  kernel_rfl

theorem node8290_cond_eq
    (child8284 : Flapjack.WordAlloc.removeDeadStructural input8284 value4146 value1 value2 = (output8284, value4147, value1))
    (child8289 : Flapjack.WordAlloc.removeDeadStructural input8289 value4147 value1 value2 = (output8289, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8290 value4146 value1 value2 = (output8290, value5, value1) := by
  rw [input8290_def, output8290_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8284]
  dsimp only
  rw [child8289]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8284_skip, output8289_skip]
  kernel_rfl

theorem node8291_cond_eq
    (child8283 : Flapjack.WordAlloc.removeDeadStructural input8283 value4144 value1 value2 = (output8283, value4146, value1))
    (child8290 : Flapjack.WordAlloc.removeDeadStructural input8290 value4146 value1 value2 = (output8290, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8291 value4144 value1 value2 = (output8291, value5, value1) := by
  rw [input8291_def, output8291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8283]
  dsimp only
  rw [child8290]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8283_skip, output8290_skip]
  kernel_rfl

theorem node8292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8292 value5 value1 value2 = (output8292, value4150, value1) := by
  rw [input8292_def, output8292_def]
  kernel_rfl

theorem node8293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8293 value4150 value1 value2 = (output8293, value4151, value1) := by
  rw [input8293_def, output8293_def]
  kernel_rfl

theorem node8294_cond_eq
    (child8292 : Flapjack.WordAlloc.removeDeadStructural input8292 value5 value1 value2 = (output8292, value4150, value1))
    (child8293 : Flapjack.WordAlloc.removeDeadStructural input8293 value4150 value1 value2 = (output8293, value4151, value1)) : Flapjack.WordAlloc.removeDeadStructural input8294 value5 value1 value2 = (output8294, value4151, value1) := by
  rw [input8294_def, output8294_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8292]
  dsimp only
  rw [child8293]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8292_skip, output8293_skip]
  kernel_rfl

theorem node8295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8295 value4151 value1 value2 = (output8295, value4152, value1) := by
  rw [input8295_def, output8295_def]
  kernel_rfl

theorem node8296_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8296 value4152 value1 value2 = (output8296, value4152, value1) := by
  rw [input8296_def, output8296_def]
  kernel_rfl

theorem node8297_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8297 value4152 value1 value2 = (output8297, value4153, value1) := by
  rw [input8297_def, output8297_def]
  kernel_rfl

theorem node8298_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8298 value4153 value1 value2 = (output8298, value4154, value1) := by
  rw [input8298_def, output8298_def]
  kernel_rfl

theorem node8299_cond_eq
    (child8297 : Flapjack.WordAlloc.removeDeadStructural input8297 value4152 value1 value2 = (output8297, value4153, value1))
    (child8298 : Flapjack.WordAlloc.removeDeadStructural input8298 value4153 value1 value2 = (output8298, value4154, value1)) : Flapjack.WordAlloc.removeDeadStructural input8299 value4152 value1 value2 = (output8299, value4154, value1) := by
  rw [input8299_def, output8299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8297]
  dsimp only
  rw [child8298]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8297_skip, output8298_skip]
  kernel_rfl

theorem node8300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8300 value4154 value1 value2 = (output8300, value4155, value1) := by
  rw [input8300_def, output8300_def]
  kernel_rfl

theorem node8301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8301 value4155 value1 value2 = (output8301, value4156, value1) := by
  rw [input8301_def, output8301_def]
  kernel_rfl

theorem node8302_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8302 value4156 value1 value2 = (output8302, value4157, value1) := by
  rw [input8302_def, output8302_def]
  kernel_rfl

theorem node8303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8303 value4157 value1 value2 = (output8303, value5, value1) := by
  rw [input8303_def, output8303_def]
  kernel_rfl

theorem node8304_cond_eq
    (child8302 : Flapjack.WordAlloc.removeDeadStructural input8302 value4156 value1 value2 = (output8302, value4157, value1))
    (child8303 : Flapjack.WordAlloc.removeDeadStructural input8303 value4157 value1 value2 = (output8303, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8304 value4156 value1 value2 = (output8304, value5, value1) := by
  rw [input8304_def, output8304_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8302]
  dsimp only
  rw [child8303]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8302_skip, output8303_skip]
  kernel_rfl

theorem node8305_cond_eq
    (child8301 : Flapjack.WordAlloc.removeDeadStructural input8301 value4155 value1 value2 = (output8301, value4156, value1))
    (child8304 : Flapjack.WordAlloc.removeDeadStructural input8304 value4156 value1 value2 = (output8304, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8305 value4155 value1 value2 = (output8305, value5, value1) := by
  rw [input8305_def, output8305_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8301]
  dsimp only
  rw [child8304]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8301_skip, output8304_skip]
  kernel_rfl

theorem node8306_cond_eq
    (child8300 : Flapjack.WordAlloc.removeDeadStructural input8300 value4154 value1 value2 = (output8300, value4155, value1))
    (child8305 : Flapjack.WordAlloc.removeDeadStructural input8305 value4155 value1 value2 = (output8305, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8306 value4154 value1 value2 = (output8306, value5, value1) := by
  rw [input8306_def, output8306_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8300]
  dsimp only
  rw [child8305]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8300_skip, output8305_skip]
  kernel_rfl

theorem node8307_cond_eq
    (child8299 : Flapjack.WordAlloc.removeDeadStructural input8299 value4152 value1 value2 = (output8299, value4154, value1))
    (child8306 : Flapjack.WordAlloc.removeDeadStructural input8306 value4154 value1 value2 = (output8306, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8307 value4152 value1 value2 = (output8307, value5, value1) := by
  rw [input8307_def, output8307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8299]
  dsimp only
  rw [child8306]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8299_skip, output8306_skip]
  kernel_rfl

theorem node8308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8308 value5 value1 value2 = (output8308, value4158, value1) := by
  rw [input8308_def, output8308_def]
  kernel_rfl

theorem node8309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8309 value4158 value1 value2 = (output8309, value4159, value1) := by
  rw [input8309_def, output8309_def]
  kernel_rfl

theorem node8310_cond_eq
    (child8308 : Flapjack.WordAlloc.removeDeadStructural input8308 value5 value1 value2 = (output8308, value4158, value1))
    (child8309 : Flapjack.WordAlloc.removeDeadStructural input8309 value4158 value1 value2 = (output8309, value4159, value1)) : Flapjack.WordAlloc.removeDeadStructural input8310 value5 value1 value2 = (output8310, value4159, value1) := by
  rw [input8310_def, output8310_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8308]
  dsimp only
  rw [child8309]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8308_skip, output8309_skip]
  kernel_rfl

theorem node8311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8311 value4159 value1 value2 = (output8311, value4160, value1) := by
  rw [input8311_def, output8311_def]
  kernel_rfl

theorem node8312_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8312 value4160 value1 value2 = (output8312, value4160, value1) := by
  rw [input8312_def, output8312_def]
  kernel_rfl

theorem node8313_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8313 value4160 value1 value2 = (output8313, value4161, value1) := by
  rw [input8313_def, output8313_def]
  kernel_rfl

theorem node8314_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8314 value4161 value1 value2 = (output8314, value4162, value1) := by
  rw [input8314_def, output8314_def]
  kernel_rfl

theorem node8315_cond_eq
    (child8313 : Flapjack.WordAlloc.removeDeadStructural input8313 value4160 value1 value2 = (output8313, value4161, value1))
    (child8314 : Flapjack.WordAlloc.removeDeadStructural input8314 value4161 value1 value2 = (output8314, value4162, value1)) : Flapjack.WordAlloc.removeDeadStructural input8315 value4160 value1 value2 = (output8315, value4162, value1) := by
  rw [input8315_def, output8315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8313]
  dsimp only
  rw [child8314]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8313_skip, output8314_skip]
  kernel_rfl

theorem node8316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8316 value4162 value1 value2 = (output8316, value4163, value1) := by
  rw [input8316_def, output8316_def]
  kernel_rfl

theorem node8317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8317 value4163 value1 value2 = (output8317, value4164, value1) := by
  rw [input8317_def, output8317_def]
  kernel_rfl

theorem node8318_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8318 value4164 value1 value2 = (output8318, value4165, value1) := by
  rw [input8318_def, output8318_def]
  kernel_rfl

theorem node8319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8319 value4165 value1 value2 = (output8319, value5, value1) := by
  rw [input8319_def, output8319_def]
  kernel_rfl

theorem node8320_cond_eq
    (child8318 : Flapjack.WordAlloc.removeDeadStructural input8318 value4164 value1 value2 = (output8318, value4165, value1))
    (child8319 : Flapjack.WordAlloc.removeDeadStructural input8319 value4165 value1 value2 = (output8319, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8320 value4164 value1 value2 = (output8320, value5, value1) := by
  rw [input8320_def, output8320_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8318]
  dsimp only
  rw [child8319]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8318_skip, output8319_skip]
  kernel_rfl

theorem node8321_cond_eq
    (child8317 : Flapjack.WordAlloc.removeDeadStructural input8317 value4163 value1 value2 = (output8317, value4164, value1))
    (child8320 : Flapjack.WordAlloc.removeDeadStructural input8320 value4164 value1 value2 = (output8320, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8321 value4163 value1 value2 = (output8321, value5, value1) := by
  rw [input8321_def, output8321_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8317]
  dsimp only
  rw [child8320]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8317_skip, output8320_skip]
  kernel_rfl

theorem node8322_cond_eq
    (child8316 : Flapjack.WordAlloc.removeDeadStructural input8316 value4162 value1 value2 = (output8316, value4163, value1))
    (child8321 : Flapjack.WordAlloc.removeDeadStructural input8321 value4163 value1 value2 = (output8321, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8322 value4162 value1 value2 = (output8322, value5, value1) := by
  rw [input8322_def, output8322_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8316]
  dsimp only
  rw [child8321]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8316_skip, output8321_skip]
  kernel_rfl

theorem node8323_cond_eq
    (child8315 : Flapjack.WordAlloc.removeDeadStructural input8315 value4160 value1 value2 = (output8315, value4162, value1))
    (child8322 : Flapjack.WordAlloc.removeDeadStructural input8322 value4162 value1 value2 = (output8322, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8323 value4160 value1 value2 = (output8323, value5, value1) := by
  rw [input8323_def, output8323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8315]
  dsimp only
  rw [child8322]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8315_skip, output8322_skip]
  kernel_rfl

theorem node8324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8324 value5 value1 value2 = (output8324, value4166, value1) := by
  rw [input8324_def, output8324_def]
  kernel_rfl

theorem node8325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8325 value4166 value1 value2 = (output8325, value4167, value1) := by
  rw [input8325_def, output8325_def]
  kernel_rfl

theorem node8326_cond_eq
    (child8324 : Flapjack.WordAlloc.removeDeadStructural input8324 value5 value1 value2 = (output8324, value4166, value1))
    (child8325 : Flapjack.WordAlloc.removeDeadStructural input8325 value4166 value1 value2 = (output8325, value4167, value1)) : Flapjack.WordAlloc.removeDeadStructural input8326 value5 value1 value2 = (output8326, value4167, value1) := by
  rw [input8326_def, output8326_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8324]
  dsimp only
  rw [child8325]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8324_skip, output8325_skip]
  kernel_rfl

theorem node8327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8327 value4167 value1 value2 = (output8327, value4168, value1) := by
  rw [input8327_def, output8327_def]
  kernel_rfl

theorem node8328_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8328 value4168 value1 value2 = (output8328, value4168, value1) := by
  rw [input8328_def, output8328_def]
  kernel_rfl

theorem node8329_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8329 value4168 value1 value2 = (output8329, value4169, value1) := by
  rw [input8329_def, output8329_def]
  kernel_rfl

theorem node8330_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8330 value4169 value1 value2 = (output8330, value4170, value1) := by
  rw [input8330_def, output8330_def]
  kernel_rfl

theorem node8331_cond_eq
    (child8329 : Flapjack.WordAlloc.removeDeadStructural input8329 value4168 value1 value2 = (output8329, value4169, value1))
    (child8330 : Flapjack.WordAlloc.removeDeadStructural input8330 value4169 value1 value2 = (output8330, value4170, value1)) : Flapjack.WordAlloc.removeDeadStructural input8331 value4168 value1 value2 = (output8331, value4170, value1) := by
  rw [input8331_def, output8331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8329]
  dsimp only
  rw [child8330]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8329_skip, output8330_skip]
  kernel_rfl

theorem node8332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8332 value4170 value1 value2 = (output8332, value4171, value1) := by
  rw [input8332_def, output8332_def]
  kernel_rfl

theorem node8333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8333 value4171 value1 value2 = (output8333, value4172, value1) := by
  rw [input8333_def, output8333_def]
  kernel_rfl

theorem node8334_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8334 value4172 value1 value2 = (output8334, value4173, value1) := by
  rw [input8334_def, output8334_def]
  kernel_rfl

theorem node8335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8335 value4173 value1 value2 = (output8335, value5, value1) := by
  rw [input8335_def, output8335_def]
  kernel_rfl

theorem node8336_cond_eq
    (child8334 : Flapjack.WordAlloc.removeDeadStructural input8334 value4172 value1 value2 = (output8334, value4173, value1))
    (child8335 : Flapjack.WordAlloc.removeDeadStructural input8335 value4173 value1 value2 = (output8335, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8336 value4172 value1 value2 = (output8336, value5, value1) := by
  rw [input8336_def, output8336_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8334]
  dsimp only
  rw [child8335]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8334_skip, output8335_skip]
  kernel_rfl

theorem node8337_cond_eq
    (child8333 : Flapjack.WordAlloc.removeDeadStructural input8333 value4171 value1 value2 = (output8333, value4172, value1))
    (child8336 : Flapjack.WordAlloc.removeDeadStructural input8336 value4172 value1 value2 = (output8336, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8337 value4171 value1 value2 = (output8337, value5, value1) := by
  rw [input8337_def, output8337_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8333]
  dsimp only
  rw [child8336]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8333_skip, output8336_skip]
  kernel_rfl

theorem node8338_cond_eq
    (child8332 : Flapjack.WordAlloc.removeDeadStructural input8332 value4170 value1 value2 = (output8332, value4171, value1))
    (child8337 : Flapjack.WordAlloc.removeDeadStructural input8337 value4171 value1 value2 = (output8337, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8338 value4170 value1 value2 = (output8338, value5, value1) := by
  rw [input8338_def, output8338_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8332]
  dsimp only
  rw [child8337]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8332_skip, output8337_skip]
  kernel_rfl

theorem node8339_cond_eq
    (child8331 : Flapjack.WordAlloc.removeDeadStructural input8331 value4168 value1 value2 = (output8331, value4170, value1))
    (child8338 : Flapjack.WordAlloc.removeDeadStructural input8338 value4170 value1 value2 = (output8338, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8339 value4168 value1 value2 = (output8339, value5, value1) := by
  rw [input8339_def, output8339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8331]
  dsimp only
  rw [child8338]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8331_skip, output8338_skip]
  kernel_rfl

theorem node8340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8340 value5 value1 value2 = (output8340, value4174, value1) := by
  rw [input8340_def, output8340_def]
  kernel_rfl

theorem node8341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8341 value4174 value1 value2 = (output8341, value4175, value1) := by
  rw [input8341_def, output8341_def]
  kernel_rfl

theorem node8342_cond_eq
    (child8340 : Flapjack.WordAlloc.removeDeadStructural input8340 value5 value1 value2 = (output8340, value4174, value1))
    (child8341 : Flapjack.WordAlloc.removeDeadStructural input8341 value4174 value1 value2 = (output8341, value4175, value1)) : Flapjack.WordAlloc.removeDeadStructural input8342 value5 value1 value2 = (output8342, value4175, value1) := by
  rw [input8342_def, output8342_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8340]
  dsimp only
  rw [child8341]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8340_skip, output8341_skip]
  kernel_rfl

theorem node8343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8343 value4175 value1 value2 = (output8343, value4176, value1) := by
  rw [input8343_def, output8343_def]
  kernel_rfl

theorem node8344_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8344 value4176 value1 value2 = (output8344, value4176, value1) := by
  rw [input8344_def, output8344_def]
  kernel_rfl

theorem node8345_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8345 value4176 value1 value2 = (output8345, value4177, value1) := by
  rw [input8345_def, output8345_def]
  kernel_rfl

theorem node8346_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8346 value4177 value1 value2 = (output8346, value4178, value1) := by
  rw [input8346_def, output8346_def]
  kernel_rfl

theorem node8347_cond_eq
    (child8345 : Flapjack.WordAlloc.removeDeadStructural input8345 value4176 value1 value2 = (output8345, value4177, value1))
    (child8346 : Flapjack.WordAlloc.removeDeadStructural input8346 value4177 value1 value2 = (output8346, value4178, value1)) : Flapjack.WordAlloc.removeDeadStructural input8347 value4176 value1 value2 = (output8347, value4178, value1) := by
  rw [input8347_def, output8347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8345]
  dsimp only
  rw [child8346]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8345_skip, output8346_skip]
  kernel_rfl

theorem node8348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8348 value4178 value1 value2 = (output8348, value4179, value1) := by
  rw [input8348_def, output8348_def]
  kernel_rfl

theorem node8349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8349 value4179 value1 value2 = (output8349, value4180, value1) := by
  rw [input8349_def, output8349_def]
  kernel_rfl

theorem node8350_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8350 value4180 value1 value2 = (output8350, value4181, value1) := by
  rw [input8350_def, output8350_def]
  kernel_rfl

theorem node8351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8351 value4181 value1 value2 = (output8351, value5, value1) := by
  rw [input8351_def, output8351_def]
  kernel_rfl

theorem node8352_cond_eq
    (child8350 : Flapjack.WordAlloc.removeDeadStructural input8350 value4180 value1 value2 = (output8350, value4181, value1))
    (child8351 : Flapjack.WordAlloc.removeDeadStructural input8351 value4181 value1 value2 = (output8351, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8352 value4180 value1 value2 = (output8352, value5, value1) := by
  rw [input8352_def, output8352_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8350]
  dsimp only
  rw [child8351]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8350_skip, output8351_skip]
  kernel_rfl

theorem node8353_cond_eq
    (child8349 : Flapjack.WordAlloc.removeDeadStructural input8349 value4179 value1 value2 = (output8349, value4180, value1))
    (child8352 : Flapjack.WordAlloc.removeDeadStructural input8352 value4180 value1 value2 = (output8352, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8353 value4179 value1 value2 = (output8353, value5, value1) := by
  rw [input8353_def, output8353_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8349]
  dsimp only
  rw [child8352]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8349_skip, output8352_skip]
  kernel_rfl

theorem node8354_cond_eq
    (child8348 : Flapjack.WordAlloc.removeDeadStructural input8348 value4178 value1 value2 = (output8348, value4179, value1))
    (child8353 : Flapjack.WordAlloc.removeDeadStructural input8353 value4179 value1 value2 = (output8353, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8354 value4178 value1 value2 = (output8354, value5, value1) := by
  rw [input8354_def, output8354_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8348]
  dsimp only
  rw [child8353]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8348_skip, output8353_skip]
  kernel_rfl

theorem node8355_cond_eq
    (child8347 : Flapjack.WordAlloc.removeDeadStructural input8347 value4176 value1 value2 = (output8347, value4178, value1))
    (child8354 : Flapjack.WordAlloc.removeDeadStructural input8354 value4178 value1 value2 = (output8354, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8355 value4176 value1 value2 = (output8355, value5, value1) := by
  rw [input8355_def, output8355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8347]
  dsimp only
  rw [child8354]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8347_skip, output8354_skip]
  kernel_rfl

theorem node8356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8356 value5 value1 value2 = (output8356, value4182, value1) := by
  rw [input8356_def, output8356_def]
  kernel_rfl

theorem node8357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8357 value4182 value1 value2 = (output8357, value4183, value1) := by
  rw [input8357_def, output8357_def]
  kernel_rfl

theorem node8358_cond_eq
    (child8356 : Flapjack.WordAlloc.removeDeadStructural input8356 value5 value1 value2 = (output8356, value4182, value1))
    (child8357 : Flapjack.WordAlloc.removeDeadStructural input8357 value4182 value1 value2 = (output8357, value4183, value1)) : Flapjack.WordAlloc.removeDeadStructural input8358 value5 value1 value2 = (output8358, value4183, value1) := by
  rw [input8358_def, output8358_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8356]
  dsimp only
  rw [child8357]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8356_skip, output8357_skip]
  kernel_rfl

theorem node8359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8359 value4183 value1 value2 = (output8359, value4184, value1) := by
  rw [input8359_def, output8359_def]
  kernel_rfl

theorem node8360_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8360 value4184 value1 value2 = (output8360, value4184, value1) := by
  rw [input8360_def, output8360_def]
  kernel_rfl

theorem node8361_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8361 value4184 value1 value2 = (output8361, value4185, value1) := by
  rw [input8361_def, output8361_def]
  kernel_rfl

theorem node8362_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8362 value4185 value1 value2 = (output8362, value4186, value1) := by
  rw [input8362_def, output8362_def]
  kernel_rfl

theorem node8363_cond_eq
    (child8361 : Flapjack.WordAlloc.removeDeadStructural input8361 value4184 value1 value2 = (output8361, value4185, value1))
    (child8362 : Flapjack.WordAlloc.removeDeadStructural input8362 value4185 value1 value2 = (output8362, value4186, value1)) : Flapjack.WordAlloc.removeDeadStructural input8363 value4184 value1 value2 = (output8363, value4186, value1) := by
  rw [input8363_def, output8363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8361]
  dsimp only
  rw [child8362]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8361_skip, output8362_skip]
  kernel_rfl

theorem node8364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8364 value4186 value1 value2 = (output8364, value4187, value1) := by
  rw [input8364_def, output8364_def]
  kernel_rfl

theorem node8365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8365 value4187 value1 value2 = (output8365, value4188, value1) := by
  rw [input8365_def, output8365_def]
  kernel_rfl

theorem node8366_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8366 value4188 value1 value2 = (output8366, value4189, value1) := by
  rw [input8366_def, output8366_def]
  kernel_rfl

theorem node8367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8367 value4189 value1 value2 = (output8367, value5, value1) := by
  rw [input8367_def, output8367_def]
  kernel_rfl

theorem node8368_cond_eq
    (child8366 : Flapjack.WordAlloc.removeDeadStructural input8366 value4188 value1 value2 = (output8366, value4189, value1))
    (child8367 : Flapjack.WordAlloc.removeDeadStructural input8367 value4189 value1 value2 = (output8367, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8368 value4188 value1 value2 = (output8368, value5, value1) := by
  rw [input8368_def, output8368_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8366]
  dsimp only
  rw [child8367]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8366_skip, output8367_skip]
  kernel_rfl

theorem node8369_cond_eq
    (child8365 : Flapjack.WordAlloc.removeDeadStructural input8365 value4187 value1 value2 = (output8365, value4188, value1))
    (child8368 : Flapjack.WordAlloc.removeDeadStructural input8368 value4188 value1 value2 = (output8368, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8369 value4187 value1 value2 = (output8369, value5, value1) := by
  rw [input8369_def, output8369_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8365]
  dsimp only
  rw [child8368]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8365_skip, output8368_skip]
  kernel_rfl

theorem node8370_cond_eq
    (child8364 : Flapjack.WordAlloc.removeDeadStructural input8364 value4186 value1 value2 = (output8364, value4187, value1))
    (child8369 : Flapjack.WordAlloc.removeDeadStructural input8369 value4187 value1 value2 = (output8369, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8370 value4186 value1 value2 = (output8370, value5, value1) := by
  rw [input8370_def, output8370_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8364]
  dsimp only
  rw [child8369]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8364_skip, output8369_skip]
  kernel_rfl

theorem node8371_cond_eq
    (child8363 : Flapjack.WordAlloc.removeDeadStructural input8363 value4184 value1 value2 = (output8363, value4186, value1))
    (child8370 : Flapjack.WordAlloc.removeDeadStructural input8370 value4186 value1 value2 = (output8370, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8371 value4184 value1 value2 = (output8371, value5, value1) := by
  rw [input8371_def, output8371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8363]
  dsimp only
  rw [child8370]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8363_skip, output8370_skip]
  kernel_rfl

theorem node8372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8372 value5 value1 value2 = (output8372, value4190, value1) := by
  rw [input8372_def, output8372_def]
  kernel_rfl

theorem node8373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8373 value4190 value1 value2 = (output8373, value4191, value1) := by
  rw [input8373_def, output8373_def]
  kernel_rfl

theorem node8374_cond_eq
    (child8372 : Flapjack.WordAlloc.removeDeadStructural input8372 value5 value1 value2 = (output8372, value4190, value1))
    (child8373 : Flapjack.WordAlloc.removeDeadStructural input8373 value4190 value1 value2 = (output8373, value4191, value1)) : Flapjack.WordAlloc.removeDeadStructural input8374 value5 value1 value2 = (output8374, value4191, value1) := by
  rw [input8374_def, output8374_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8372]
  dsimp only
  rw [child8373]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8372_skip, output8373_skip]
  kernel_rfl

theorem node8375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8375 value4191 value1 value2 = (output8375, value4192, value1) := by
  rw [input8375_def, output8375_def]
  kernel_rfl

theorem node8376_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8376 value4192 value1 value2 = (output8376, value4192, value1) := by
  rw [input8376_def, output8376_def]
  kernel_rfl

theorem node8377_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8377 value4192 value1 value2 = (output8377, value4193, value1) := by
  rw [input8377_def, output8377_def]
  kernel_rfl

theorem node8378_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8378 value4193 value1 value2 = (output8378, value4194, value1) := by
  rw [input8378_def, output8378_def]
  kernel_rfl

theorem node8379_cond_eq
    (child8377 : Flapjack.WordAlloc.removeDeadStructural input8377 value4192 value1 value2 = (output8377, value4193, value1))
    (child8378 : Flapjack.WordAlloc.removeDeadStructural input8378 value4193 value1 value2 = (output8378, value4194, value1)) : Flapjack.WordAlloc.removeDeadStructural input8379 value4192 value1 value2 = (output8379, value4194, value1) := by
  rw [input8379_def, output8379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8377]
  dsimp only
  rw [child8378]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8377_skip, output8378_skip]
  kernel_rfl

theorem node8380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8380 value4194 value1 value2 = (output8380, value4195, value1) := by
  rw [input8380_def, output8380_def]
  kernel_rfl

theorem node8381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8381 value4195 value1 value2 = (output8381, value4196, value1) := by
  rw [input8381_def, output8381_def]
  kernel_rfl

theorem node8382_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8382 value4196 value1 value2 = (output8382, value4197, value1) := by
  rw [input8382_def, output8382_def]
  kernel_rfl

theorem node8383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8383 value4197 value1 value2 = (output8383, value5, value1) := by
  rw [input8383_def, output8383_def]
  kernel_rfl

theorem node8384_cond_eq
    (child8382 : Flapjack.WordAlloc.removeDeadStructural input8382 value4196 value1 value2 = (output8382, value4197, value1))
    (child8383 : Flapjack.WordAlloc.removeDeadStructural input8383 value4197 value1 value2 = (output8383, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8384 value4196 value1 value2 = (output8384, value5, value1) := by
  rw [input8384_def, output8384_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8382]
  dsimp only
  rw [child8383]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8382_skip, output8383_skip]
  kernel_rfl

theorem node8385_cond_eq
    (child8381 : Flapjack.WordAlloc.removeDeadStructural input8381 value4195 value1 value2 = (output8381, value4196, value1))
    (child8384 : Flapjack.WordAlloc.removeDeadStructural input8384 value4196 value1 value2 = (output8384, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8385 value4195 value1 value2 = (output8385, value5, value1) := by
  rw [input8385_def, output8385_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8381]
  dsimp only
  rw [child8384]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8381_skip, output8384_skip]
  kernel_rfl

theorem node8386_cond_eq
    (child8380 : Flapjack.WordAlloc.removeDeadStructural input8380 value4194 value1 value2 = (output8380, value4195, value1))
    (child8385 : Flapjack.WordAlloc.removeDeadStructural input8385 value4195 value1 value2 = (output8385, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8386 value4194 value1 value2 = (output8386, value5, value1) := by
  rw [input8386_def, output8386_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8380]
  dsimp only
  rw [child8385]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8380_skip, output8385_skip]
  kernel_rfl

theorem node8387_cond_eq
    (child8379 : Flapjack.WordAlloc.removeDeadStructural input8379 value4192 value1 value2 = (output8379, value4194, value1))
    (child8386 : Flapjack.WordAlloc.removeDeadStructural input8386 value4194 value1 value2 = (output8386, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8387 value4192 value1 value2 = (output8387, value5, value1) := by
  rw [input8387_def, output8387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8379]
  dsimp only
  rw [child8386]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8379_skip, output8386_skip]
  kernel_rfl

theorem node8388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8388 value5 value1 value2 = (output8388, value4198, value1) := by
  rw [input8388_def, output8388_def]
  kernel_rfl

theorem node8389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8389 value4198 value1 value2 = (output8389, value4199, value1) := by
  rw [input8389_def, output8389_def]
  kernel_rfl

theorem node8390_cond_eq
    (child8388 : Flapjack.WordAlloc.removeDeadStructural input8388 value5 value1 value2 = (output8388, value4198, value1))
    (child8389 : Flapjack.WordAlloc.removeDeadStructural input8389 value4198 value1 value2 = (output8389, value4199, value1)) : Flapjack.WordAlloc.removeDeadStructural input8390 value5 value1 value2 = (output8390, value4199, value1) := by
  rw [input8390_def, output8390_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8388]
  dsimp only
  rw [child8389]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8388_skip, output8389_skip]
  kernel_rfl

theorem node8391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8391 value4199 value1 value2 = (output8391, value4200, value1) := by
  rw [input8391_def, output8391_def]
  kernel_rfl

theorem node8392_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8392 value4200 value1 value2 = (output8392, value4200, value1) := by
  rw [input8392_def, output8392_def]
  kernel_rfl

theorem node8393_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8393 value4200 value1 value2 = (output8393, value4201, value1) := by
  rw [input8393_def, output8393_def]
  kernel_rfl

theorem node8394_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8394 value4201 value1 value2 = (output8394, value4202, value1) := by
  rw [input8394_def, output8394_def]
  kernel_rfl

theorem node8395_cond_eq
    (child8393 : Flapjack.WordAlloc.removeDeadStructural input8393 value4200 value1 value2 = (output8393, value4201, value1))
    (child8394 : Flapjack.WordAlloc.removeDeadStructural input8394 value4201 value1 value2 = (output8394, value4202, value1)) : Flapjack.WordAlloc.removeDeadStructural input8395 value4200 value1 value2 = (output8395, value4202, value1) := by
  rw [input8395_def, output8395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8393]
  dsimp only
  rw [child8394]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8393_skip, output8394_skip]
  kernel_rfl

theorem node8396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8396 value4202 value1 value2 = (output8396, value4203, value1) := by
  rw [input8396_def, output8396_def]
  kernel_rfl

theorem node8397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8397 value4203 value1 value2 = (output8397, value4204, value1) := by
  rw [input8397_def, output8397_def]
  kernel_rfl

theorem node8398_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8398 value4204 value1 value2 = (output8398, value4205, value1) := by
  rw [input8398_def, output8398_def]
  kernel_rfl

theorem node8399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8399 value4205 value1 value2 = (output8399, value5, value1) := by
  rw [input8399_def, output8399_def]
  kernel_rfl

theorem node8400_cond_eq
    (child8398 : Flapjack.WordAlloc.removeDeadStructural input8398 value4204 value1 value2 = (output8398, value4205, value1))
    (child8399 : Flapjack.WordAlloc.removeDeadStructural input8399 value4205 value1 value2 = (output8399, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8400 value4204 value1 value2 = (output8400, value5, value1) := by
  rw [input8400_def, output8400_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8398]
  dsimp only
  rw [child8399]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8398_skip, output8399_skip]
  kernel_rfl

theorem node8401_cond_eq
    (child8397 : Flapjack.WordAlloc.removeDeadStructural input8397 value4203 value1 value2 = (output8397, value4204, value1))
    (child8400 : Flapjack.WordAlloc.removeDeadStructural input8400 value4204 value1 value2 = (output8400, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8401 value4203 value1 value2 = (output8401, value5, value1) := by
  rw [input8401_def, output8401_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8397]
  dsimp only
  rw [child8400]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8397_skip, output8400_skip]
  kernel_rfl

theorem node8402_cond_eq
    (child8396 : Flapjack.WordAlloc.removeDeadStructural input8396 value4202 value1 value2 = (output8396, value4203, value1))
    (child8401 : Flapjack.WordAlloc.removeDeadStructural input8401 value4203 value1 value2 = (output8401, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8402 value4202 value1 value2 = (output8402, value5, value1) := by
  rw [input8402_def, output8402_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8396]
  dsimp only
  rw [child8401]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8396_skip, output8401_skip]
  kernel_rfl

theorem node8403_cond_eq
    (child8395 : Flapjack.WordAlloc.removeDeadStructural input8395 value4200 value1 value2 = (output8395, value4202, value1))
    (child8402 : Flapjack.WordAlloc.removeDeadStructural input8402 value4202 value1 value2 = (output8402, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8403 value4200 value1 value2 = (output8403, value5, value1) := by
  rw [input8403_def, output8403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8395]
  dsimp only
  rw [child8402]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8395_skip, output8402_skip]
  kernel_rfl

theorem node8404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8404 value5 value1 value2 = (output8404, value4206, value1) := by
  rw [input8404_def, output8404_def]
  kernel_rfl

theorem node8405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8405 value4206 value1 value2 = (output8405, value4207, value1) := by
  rw [input8405_def, output8405_def]
  kernel_rfl

theorem node8406_cond_eq
    (child8404 : Flapjack.WordAlloc.removeDeadStructural input8404 value5 value1 value2 = (output8404, value4206, value1))
    (child8405 : Flapjack.WordAlloc.removeDeadStructural input8405 value4206 value1 value2 = (output8405, value4207, value1)) : Flapjack.WordAlloc.removeDeadStructural input8406 value5 value1 value2 = (output8406, value4207, value1) := by
  rw [input8406_def, output8406_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8404]
  dsimp only
  rw [child8405]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8404_skip, output8405_skip]
  kernel_rfl

theorem node8407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8407 value4207 value1 value2 = (output8407, value4208, value1) := by
  rw [input8407_def, output8407_def]
  kernel_rfl

theorem node8408_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8408 value4208 value1 value2 = (output8408, value4208, value1) := by
  rw [input8408_def, output8408_def]
  kernel_rfl

theorem node8409_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8409 value4208 value1 value2 = (output8409, value4209, value1) := by
  rw [input8409_def, output8409_def]
  kernel_rfl

theorem node8410_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8410 value4209 value1 value2 = (output8410, value4210, value1) := by
  rw [input8410_def, output8410_def]
  kernel_rfl

theorem node8411_cond_eq
    (child8409 : Flapjack.WordAlloc.removeDeadStructural input8409 value4208 value1 value2 = (output8409, value4209, value1))
    (child8410 : Flapjack.WordAlloc.removeDeadStructural input8410 value4209 value1 value2 = (output8410, value4210, value1)) : Flapjack.WordAlloc.removeDeadStructural input8411 value4208 value1 value2 = (output8411, value4210, value1) := by
  rw [input8411_def, output8411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8409]
  dsimp only
  rw [child8410]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8409_skip, output8410_skip]
  kernel_rfl

theorem node8412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8412 value4210 value1 value2 = (output8412, value4211, value1) := by
  rw [input8412_def, output8412_def]
  kernel_rfl

theorem node8413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8413 value4211 value1 value2 = (output8413, value4212, value1) := by
  rw [input8413_def, output8413_def]
  kernel_rfl

theorem node8414_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8414 value4212 value1 value2 = (output8414, value4213, value1) := by
  rw [input8414_def, output8414_def]
  kernel_rfl

theorem node8415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8415 value4213 value1 value2 = (output8415, value5, value1) := by
  rw [input8415_def, output8415_def]
  kernel_rfl

theorem node8416_cond_eq
    (child8414 : Flapjack.WordAlloc.removeDeadStructural input8414 value4212 value1 value2 = (output8414, value4213, value1))
    (child8415 : Flapjack.WordAlloc.removeDeadStructural input8415 value4213 value1 value2 = (output8415, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8416 value4212 value1 value2 = (output8416, value5, value1) := by
  rw [input8416_def, output8416_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8414]
  dsimp only
  rw [child8415]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8414_skip, output8415_skip]
  kernel_rfl

theorem node8417_cond_eq
    (child8413 : Flapjack.WordAlloc.removeDeadStructural input8413 value4211 value1 value2 = (output8413, value4212, value1))
    (child8416 : Flapjack.WordAlloc.removeDeadStructural input8416 value4212 value1 value2 = (output8416, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8417 value4211 value1 value2 = (output8417, value5, value1) := by
  rw [input8417_def, output8417_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8413]
  dsimp only
  rw [child8416]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8413_skip, output8416_skip]
  kernel_rfl

theorem node8418_cond_eq
    (child8412 : Flapjack.WordAlloc.removeDeadStructural input8412 value4210 value1 value2 = (output8412, value4211, value1))
    (child8417 : Flapjack.WordAlloc.removeDeadStructural input8417 value4211 value1 value2 = (output8417, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8418 value4210 value1 value2 = (output8418, value5, value1) := by
  rw [input8418_def, output8418_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8412]
  dsimp only
  rw [child8417]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8412_skip, output8417_skip]
  kernel_rfl

theorem node8419_cond_eq
    (child8411 : Flapjack.WordAlloc.removeDeadStructural input8411 value4208 value1 value2 = (output8411, value4210, value1))
    (child8418 : Flapjack.WordAlloc.removeDeadStructural input8418 value4210 value1 value2 = (output8418, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8419 value4208 value1 value2 = (output8419, value5, value1) := by
  rw [input8419_def, output8419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8411]
  dsimp only
  rw [child8418]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8411_skip, output8418_skip]
  kernel_rfl

theorem node8420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8420 value5 value1 value2 = (output8420, value4214, value1) := by
  rw [input8420_def, output8420_def]
  kernel_rfl

theorem node8421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8421 value4214 value1 value2 = (output8421, value4215, value1) := by
  rw [input8421_def, output8421_def]
  kernel_rfl

theorem node8422_cond_eq
    (child8420 : Flapjack.WordAlloc.removeDeadStructural input8420 value5 value1 value2 = (output8420, value4214, value1))
    (child8421 : Flapjack.WordAlloc.removeDeadStructural input8421 value4214 value1 value2 = (output8421, value4215, value1)) : Flapjack.WordAlloc.removeDeadStructural input8422 value5 value1 value2 = (output8422, value4215, value1) := by
  rw [input8422_def, output8422_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8420]
  dsimp only
  rw [child8421]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8420_skip, output8421_skip]
  kernel_rfl

theorem node8423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8423 value4215 value1 value2 = (output8423, value4216, value1) := by
  rw [input8423_def, output8423_def]
  kernel_rfl

theorem node8424_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8424 value4216 value1 value2 = (output8424, value4216, value1) := by
  rw [input8424_def, output8424_def]
  kernel_rfl

theorem node8425_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8425 value4216 value1 value2 = (output8425, value4217, value1) := by
  rw [input8425_def, output8425_def]
  kernel_rfl

theorem node8426_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8426 value4217 value1 value2 = (output8426, value4218, value1) := by
  rw [input8426_def, output8426_def]
  kernel_rfl

theorem node8427_cond_eq
    (child8425 : Flapjack.WordAlloc.removeDeadStructural input8425 value4216 value1 value2 = (output8425, value4217, value1))
    (child8426 : Flapjack.WordAlloc.removeDeadStructural input8426 value4217 value1 value2 = (output8426, value4218, value1)) : Flapjack.WordAlloc.removeDeadStructural input8427 value4216 value1 value2 = (output8427, value4218, value1) := by
  rw [input8427_def, output8427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8425]
  dsimp only
  rw [child8426]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8425_skip, output8426_skip]
  kernel_rfl

theorem node8428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8428 value4218 value1 value2 = (output8428, value4219, value1) := by
  rw [input8428_def, output8428_def]
  kernel_rfl

theorem node8429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8429 value4219 value1 value2 = (output8429, value4220, value1) := by
  rw [input8429_def, output8429_def]
  kernel_rfl

theorem node8430_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8430 value4220 value1 value2 = (output8430, value4221, value1) := by
  rw [input8430_def, output8430_def]
  kernel_rfl

theorem node8431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8431 value4221 value1 value2 = (output8431, value5, value1) := by
  rw [input8431_def, output8431_def]
  kernel_rfl

theorem node8432_cond_eq
    (child8430 : Flapjack.WordAlloc.removeDeadStructural input8430 value4220 value1 value2 = (output8430, value4221, value1))
    (child8431 : Flapjack.WordAlloc.removeDeadStructural input8431 value4221 value1 value2 = (output8431, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8432 value4220 value1 value2 = (output8432, value5, value1) := by
  rw [input8432_def, output8432_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8430]
  dsimp only
  rw [child8431]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8430_skip, output8431_skip]
  kernel_rfl

theorem node8433_cond_eq
    (child8429 : Flapjack.WordAlloc.removeDeadStructural input8429 value4219 value1 value2 = (output8429, value4220, value1))
    (child8432 : Flapjack.WordAlloc.removeDeadStructural input8432 value4220 value1 value2 = (output8432, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8433 value4219 value1 value2 = (output8433, value5, value1) := by
  rw [input8433_def, output8433_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8429]
  dsimp only
  rw [child8432]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8429_skip, output8432_skip]
  kernel_rfl

theorem node8434_cond_eq
    (child8428 : Flapjack.WordAlloc.removeDeadStructural input8428 value4218 value1 value2 = (output8428, value4219, value1))
    (child8433 : Flapjack.WordAlloc.removeDeadStructural input8433 value4219 value1 value2 = (output8433, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8434 value4218 value1 value2 = (output8434, value5, value1) := by
  rw [input8434_def, output8434_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8428]
  dsimp only
  rw [child8433]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8428_skip, output8433_skip]
  kernel_rfl

theorem node8435_cond_eq
    (child8427 : Flapjack.WordAlloc.removeDeadStructural input8427 value4216 value1 value2 = (output8427, value4218, value1))
    (child8434 : Flapjack.WordAlloc.removeDeadStructural input8434 value4218 value1 value2 = (output8434, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input8435 value4216 value1 value2 = (output8435, value5, value1) := by
  rw [input8435_def, output8435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8427]
  dsimp only
  rw [child8434]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8427_skip, output8434_skip]
  kernel_rfl

theorem node8436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8436 value5 value1 value2 = (output8436, value4222, value1) := by
  rw [input8436_def, output8436_def]
  kernel_rfl

theorem node8437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8437 value4222 value1 value2 = (output8437, value4223, value1) := by
  rw [input8437_def, output8437_def]
  kernel_rfl

theorem node8438_cond_eq
    (child8436 : Flapjack.WordAlloc.removeDeadStructural input8436 value5 value1 value2 = (output8436, value4222, value1))
    (child8437 : Flapjack.WordAlloc.removeDeadStructural input8437 value4222 value1 value2 = (output8437, value4223, value1)) : Flapjack.WordAlloc.removeDeadStructural input8438 value5 value1 value2 = (output8438, value4223, value1) := by
  rw [input8438_def, output8438_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8436]
  dsimp only
  rw [child8437]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8436_skip, output8437_skip]
  kernel_rfl

theorem node8439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8439 value4223 value1 value2 = (output8439, value4224, value1) := by
  rw [input8439_def, output8439_def]
  kernel_rfl

theorem node8440_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8440 value4224 value1 value2 = (output8440, value4224, value1) := by
  rw [input8440_def, output8440_def]
  kernel_rfl

theorem node8441_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8441 value4224 value1 value2 = (output8441, value4225, value1) := by
  rw [input8441_def, output8441_def]
  kernel_rfl

theorem node8442_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8442 value4225 value1 value2 = (output8442, value4226, value1) := by
  rw [input8442_def, output8442_def]
  kernel_rfl

theorem node8443_cond_eq
    (child8441 : Flapjack.WordAlloc.removeDeadStructural input8441 value4224 value1 value2 = (output8441, value4225, value1))
    (child8442 : Flapjack.WordAlloc.removeDeadStructural input8442 value4225 value1 value2 = (output8442, value4226, value1)) : Flapjack.WordAlloc.removeDeadStructural input8443 value4224 value1 value2 = (output8443, value4226, value1) := by
  rw [input8443_def, output8443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child8441]
  dsimp only
  rw [child8442]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output8441_skip, output8442_skip]
  kernel_rfl

theorem node8444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8444 value4226 value1 value2 = (output8444, value4227, value1) := by
  rw [input8444_def, output8444_def]
  kernel_rfl

theorem node8445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8445 value4227 value1 value2 = (output8445, value4228, value1) := by
  rw [input8445_def, output8445_def]
  kernel_rfl

theorem node8446_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8446 value4228 value1 value2 = (output8446, value4229, value1) := by
  rw [input8446_def, output8446_def]
  kernel_rfl

theorem node8447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input8447 value4229 value1 value2 = (output8447, value5, value1) := by
  rw [input8447_def, output8447_def]
  kernel_rfl

#print axioms node8447_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
