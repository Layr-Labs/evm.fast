import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk036
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node9216_cond_eq
    (child9214 : Flapjack.WordAlloc.removeDeadStructural input9214 value4612 value1 value2 = (output9214, value4613, value1))
    (child9215 : Flapjack.WordAlloc.removeDeadStructural input9215 value4613 value1 value2 = (output9215, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9216 value4612 value1 value2 = (output9216, value5, value1) := by
  rw [input9216_def, output9216_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9214]
  dsimp only
  rw [child9215]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9214_skip, output9215_skip]
  kernel_rfl

theorem node9217_cond_eq
    (child9213 : Flapjack.WordAlloc.removeDeadStructural input9213 value4611 value1 value2 = (output9213, value4612, value1))
    (child9216 : Flapjack.WordAlloc.removeDeadStructural input9216 value4612 value1 value2 = (output9216, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9217 value4611 value1 value2 = (output9217, value5, value1) := by
  rw [input9217_def, output9217_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9213]
  dsimp only
  rw [child9216]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9213_skip, output9216_skip]
  kernel_rfl

theorem node9218_cond_eq
    (child9212 : Flapjack.WordAlloc.removeDeadStructural input9212 value4610 value1 value2 = (output9212, value4611, value1))
    (child9217 : Flapjack.WordAlloc.removeDeadStructural input9217 value4611 value1 value2 = (output9217, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9218 value4610 value1 value2 = (output9218, value5, value1) := by
  rw [input9218_def, output9218_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9212]
  dsimp only
  rw [child9217]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9212_skip, output9217_skip]
  kernel_rfl

theorem node9219_cond_eq
    (child9211 : Flapjack.WordAlloc.removeDeadStructural input9211 value4608 value1 value2 = (output9211, value4610, value1))
    (child9218 : Flapjack.WordAlloc.removeDeadStructural input9218 value4610 value1 value2 = (output9218, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9219 value4608 value1 value2 = (output9219, value5, value1) := by
  rw [input9219_def, output9219_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9211]
  dsimp only
  rw [child9218]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9211_skip, output9218_skip]
  kernel_rfl

theorem node9220_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9220 value5 value1 value2 = (output9220, value4614, value1) := by
  rw [input9220_def, output9220_def]
  kernel_rfl

theorem node9221_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9221 value4614 value1 value2 = (output9221, value4615, value1) := by
  rw [input9221_def, output9221_def]
  kernel_rfl

theorem node9222_cond_eq
    (child9220 : Flapjack.WordAlloc.removeDeadStructural input9220 value5 value1 value2 = (output9220, value4614, value1))
    (child9221 : Flapjack.WordAlloc.removeDeadStructural input9221 value4614 value1 value2 = (output9221, value4615, value1)) : Flapjack.WordAlloc.removeDeadStructural input9222 value5 value1 value2 = (output9222, value4615, value1) := by
  rw [input9222_def, output9222_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9220]
  dsimp only
  rw [child9221]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9220_skip, output9221_skip]
  kernel_rfl

theorem node9223_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9223 value4615 value1 value2 = (output9223, value4616, value1) := by
  rw [input9223_def, output9223_def]
  kernel_rfl

theorem node9224_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9224 value4616 value1 value2 = (output9224, value4616, value1) := by
  rw [input9224_def, output9224_def]
  kernel_rfl

theorem node9225_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9225 value4616 value1 value2 = (output9225, value4617, value1) := by
  rw [input9225_def, output9225_def]
  kernel_rfl

theorem node9226_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9226 value4617 value1 value2 = (output9226, value4618, value1) := by
  rw [input9226_def, output9226_def]
  kernel_rfl

theorem node9227_cond_eq
    (child9225 : Flapjack.WordAlloc.removeDeadStructural input9225 value4616 value1 value2 = (output9225, value4617, value1))
    (child9226 : Flapjack.WordAlloc.removeDeadStructural input9226 value4617 value1 value2 = (output9226, value4618, value1)) : Flapjack.WordAlloc.removeDeadStructural input9227 value4616 value1 value2 = (output9227, value4618, value1) := by
  rw [input9227_def, output9227_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9225]
  dsimp only
  rw [child9226]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9225_skip, output9226_skip]
  kernel_rfl

theorem node9228_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9228 value4618 value1 value2 = (output9228, value4619, value1) := by
  rw [input9228_def, output9228_def]
  kernel_rfl

theorem node9229_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9229 value4619 value1 value2 = (output9229, value4620, value1) := by
  rw [input9229_def, output9229_def]
  kernel_rfl

theorem node9230_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9230 value4620 value1 value2 = (output9230, value4621, value1) := by
  rw [input9230_def, output9230_def]
  kernel_rfl

theorem node9231_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9231 value4621 value1 value2 = (output9231, value5, value1) := by
  rw [input9231_def, output9231_def]
  kernel_rfl

theorem node9232_cond_eq
    (child9230 : Flapjack.WordAlloc.removeDeadStructural input9230 value4620 value1 value2 = (output9230, value4621, value1))
    (child9231 : Flapjack.WordAlloc.removeDeadStructural input9231 value4621 value1 value2 = (output9231, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9232 value4620 value1 value2 = (output9232, value5, value1) := by
  rw [input9232_def, output9232_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9230]
  dsimp only
  rw [child9231]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9230_skip, output9231_skip]
  kernel_rfl

theorem node9233_cond_eq
    (child9229 : Flapjack.WordAlloc.removeDeadStructural input9229 value4619 value1 value2 = (output9229, value4620, value1))
    (child9232 : Flapjack.WordAlloc.removeDeadStructural input9232 value4620 value1 value2 = (output9232, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9233 value4619 value1 value2 = (output9233, value5, value1) := by
  rw [input9233_def, output9233_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9229]
  dsimp only
  rw [child9232]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9229_skip, output9232_skip]
  kernel_rfl

theorem node9234_cond_eq
    (child9228 : Flapjack.WordAlloc.removeDeadStructural input9228 value4618 value1 value2 = (output9228, value4619, value1))
    (child9233 : Flapjack.WordAlloc.removeDeadStructural input9233 value4619 value1 value2 = (output9233, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9234 value4618 value1 value2 = (output9234, value5, value1) := by
  rw [input9234_def, output9234_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9228]
  dsimp only
  rw [child9233]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9228_skip, output9233_skip]
  kernel_rfl

theorem node9235_cond_eq
    (child9227 : Flapjack.WordAlloc.removeDeadStructural input9227 value4616 value1 value2 = (output9227, value4618, value1))
    (child9234 : Flapjack.WordAlloc.removeDeadStructural input9234 value4618 value1 value2 = (output9234, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9235 value4616 value1 value2 = (output9235, value5, value1) := by
  rw [input9235_def, output9235_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9227]
  dsimp only
  rw [child9234]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9227_skip, output9234_skip]
  kernel_rfl

theorem node9236_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9236 value5 value1 value2 = (output9236, value4622, value1) := by
  rw [input9236_def, output9236_def]
  kernel_rfl

theorem node9237_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9237 value4622 value1 value2 = (output9237, value4623, value1) := by
  rw [input9237_def, output9237_def]
  kernel_rfl

theorem node9238_cond_eq
    (child9236 : Flapjack.WordAlloc.removeDeadStructural input9236 value5 value1 value2 = (output9236, value4622, value1))
    (child9237 : Flapjack.WordAlloc.removeDeadStructural input9237 value4622 value1 value2 = (output9237, value4623, value1)) : Flapjack.WordAlloc.removeDeadStructural input9238 value5 value1 value2 = (output9238, value4623, value1) := by
  rw [input9238_def, output9238_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9236]
  dsimp only
  rw [child9237]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9236_skip, output9237_skip]
  kernel_rfl

theorem node9239_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9239 value4623 value1 value2 = (output9239, value4624, value1) := by
  rw [input9239_def, output9239_def]
  kernel_rfl

theorem node9240_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9240 value4624 value1 value2 = (output9240, value4624, value1) := by
  rw [input9240_def, output9240_def]
  kernel_rfl

theorem node9241_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9241 value4624 value1 value2 = (output9241, value4625, value1) := by
  rw [input9241_def, output9241_def]
  kernel_rfl

theorem node9242_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9242 value4625 value1 value2 = (output9242, value4626, value1) := by
  rw [input9242_def, output9242_def]
  kernel_rfl

theorem node9243_cond_eq
    (child9241 : Flapjack.WordAlloc.removeDeadStructural input9241 value4624 value1 value2 = (output9241, value4625, value1))
    (child9242 : Flapjack.WordAlloc.removeDeadStructural input9242 value4625 value1 value2 = (output9242, value4626, value1)) : Flapjack.WordAlloc.removeDeadStructural input9243 value4624 value1 value2 = (output9243, value4626, value1) := by
  rw [input9243_def, output9243_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9241]
  dsimp only
  rw [child9242]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9241_skip, output9242_skip]
  kernel_rfl

theorem node9244_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9244 value4626 value1 value2 = (output9244, value4627, value1) := by
  rw [input9244_def, output9244_def]
  kernel_rfl

theorem node9245_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9245 value4627 value1 value2 = (output9245, value4628, value1) := by
  rw [input9245_def, output9245_def]
  kernel_rfl

theorem node9246_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9246 value4628 value1 value2 = (output9246, value4629, value1) := by
  rw [input9246_def, output9246_def]
  kernel_rfl

theorem node9247_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9247 value4629 value1 value2 = (output9247, value5, value1) := by
  rw [input9247_def, output9247_def]
  kernel_rfl

theorem node9248_cond_eq
    (child9246 : Flapjack.WordAlloc.removeDeadStructural input9246 value4628 value1 value2 = (output9246, value4629, value1))
    (child9247 : Flapjack.WordAlloc.removeDeadStructural input9247 value4629 value1 value2 = (output9247, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9248 value4628 value1 value2 = (output9248, value5, value1) := by
  rw [input9248_def, output9248_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9246]
  dsimp only
  rw [child9247]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9246_skip, output9247_skip]
  kernel_rfl

theorem node9249_cond_eq
    (child9245 : Flapjack.WordAlloc.removeDeadStructural input9245 value4627 value1 value2 = (output9245, value4628, value1))
    (child9248 : Flapjack.WordAlloc.removeDeadStructural input9248 value4628 value1 value2 = (output9248, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9249 value4627 value1 value2 = (output9249, value5, value1) := by
  rw [input9249_def, output9249_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9245]
  dsimp only
  rw [child9248]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9245_skip, output9248_skip]
  kernel_rfl

theorem node9250_cond_eq
    (child9244 : Flapjack.WordAlloc.removeDeadStructural input9244 value4626 value1 value2 = (output9244, value4627, value1))
    (child9249 : Flapjack.WordAlloc.removeDeadStructural input9249 value4627 value1 value2 = (output9249, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9250 value4626 value1 value2 = (output9250, value5, value1) := by
  rw [input9250_def, output9250_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9244]
  dsimp only
  rw [child9249]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9244_skip, output9249_skip]
  kernel_rfl

theorem node9251_cond_eq
    (child9243 : Flapjack.WordAlloc.removeDeadStructural input9243 value4624 value1 value2 = (output9243, value4626, value1))
    (child9250 : Flapjack.WordAlloc.removeDeadStructural input9250 value4626 value1 value2 = (output9250, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9251 value4624 value1 value2 = (output9251, value5, value1) := by
  rw [input9251_def, output9251_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9243]
  dsimp only
  rw [child9250]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9243_skip, output9250_skip]
  kernel_rfl

theorem node9252_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9252 value5 value1 value2 = (output9252, value4630, value1) := by
  rw [input9252_def, output9252_def]
  kernel_rfl

theorem node9253_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9253 value4630 value1 value2 = (output9253, value4631, value1) := by
  rw [input9253_def, output9253_def]
  kernel_rfl

theorem node9254_cond_eq
    (child9252 : Flapjack.WordAlloc.removeDeadStructural input9252 value5 value1 value2 = (output9252, value4630, value1))
    (child9253 : Flapjack.WordAlloc.removeDeadStructural input9253 value4630 value1 value2 = (output9253, value4631, value1)) : Flapjack.WordAlloc.removeDeadStructural input9254 value5 value1 value2 = (output9254, value4631, value1) := by
  rw [input9254_def, output9254_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9252]
  dsimp only
  rw [child9253]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9252_skip, output9253_skip]
  kernel_rfl

theorem node9255_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9255 value4631 value1 value2 = (output9255, value4632, value1) := by
  rw [input9255_def, output9255_def]
  kernel_rfl

theorem node9256_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9256 value4632 value1 value2 = (output9256, value4632, value1) := by
  rw [input9256_def, output9256_def]
  kernel_rfl

theorem node9257_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9257 value4632 value1 value2 = (output9257, value4633, value1) := by
  rw [input9257_def, output9257_def]
  kernel_rfl

theorem node9258_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9258 value4633 value1 value2 = (output9258, value4634, value1) := by
  rw [input9258_def, output9258_def]
  kernel_rfl

theorem node9259_cond_eq
    (child9257 : Flapjack.WordAlloc.removeDeadStructural input9257 value4632 value1 value2 = (output9257, value4633, value1))
    (child9258 : Flapjack.WordAlloc.removeDeadStructural input9258 value4633 value1 value2 = (output9258, value4634, value1)) : Flapjack.WordAlloc.removeDeadStructural input9259 value4632 value1 value2 = (output9259, value4634, value1) := by
  rw [input9259_def, output9259_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9257]
  dsimp only
  rw [child9258]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9257_skip, output9258_skip]
  kernel_rfl

theorem node9260_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9260 value4634 value1 value2 = (output9260, value4635, value1) := by
  rw [input9260_def, output9260_def]
  kernel_rfl

theorem node9261_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9261 value4635 value1 value2 = (output9261, value4636, value1) := by
  rw [input9261_def, output9261_def]
  kernel_rfl

theorem node9262_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9262 value4636 value1 value2 = (output9262, value4637, value1) := by
  rw [input9262_def, output9262_def]
  kernel_rfl

theorem node9263_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9263 value4637 value1 value2 = (output9263, value5, value1) := by
  rw [input9263_def, output9263_def]
  kernel_rfl

theorem node9264_cond_eq
    (child9262 : Flapjack.WordAlloc.removeDeadStructural input9262 value4636 value1 value2 = (output9262, value4637, value1))
    (child9263 : Flapjack.WordAlloc.removeDeadStructural input9263 value4637 value1 value2 = (output9263, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9264 value4636 value1 value2 = (output9264, value5, value1) := by
  rw [input9264_def, output9264_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9262]
  dsimp only
  rw [child9263]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9262_skip, output9263_skip]
  kernel_rfl

theorem node9265_cond_eq
    (child9261 : Flapjack.WordAlloc.removeDeadStructural input9261 value4635 value1 value2 = (output9261, value4636, value1))
    (child9264 : Flapjack.WordAlloc.removeDeadStructural input9264 value4636 value1 value2 = (output9264, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9265 value4635 value1 value2 = (output9265, value5, value1) := by
  rw [input9265_def, output9265_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9261]
  dsimp only
  rw [child9264]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9261_skip, output9264_skip]
  kernel_rfl

theorem node9266_cond_eq
    (child9260 : Flapjack.WordAlloc.removeDeadStructural input9260 value4634 value1 value2 = (output9260, value4635, value1))
    (child9265 : Flapjack.WordAlloc.removeDeadStructural input9265 value4635 value1 value2 = (output9265, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9266 value4634 value1 value2 = (output9266, value5, value1) := by
  rw [input9266_def, output9266_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9260]
  dsimp only
  rw [child9265]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9260_skip, output9265_skip]
  kernel_rfl

theorem node9267_cond_eq
    (child9259 : Flapjack.WordAlloc.removeDeadStructural input9259 value4632 value1 value2 = (output9259, value4634, value1))
    (child9266 : Flapjack.WordAlloc.removeDeadStructural input9266 value4634 value1 value2 = (output9266, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9267 value4632 value1 value2 = (output9267, value5, value1) := by
  rw [input9267_def, output9267_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9259]
  dsimp only
  rw [child9266]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9259_skip, output9266_skip]
  kernel_rfl

theorem node9268_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9268 value5 value1 value2 = (output9268, value4638, value1) := by
  rw [input9268_def, output9268_def]
  kernel_rfl

theorem node9269_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9269 value4638 value1 value2 = (output9269, value4639, value1) := by
  rw [input9269_def, output9269_def]
  kernel_rfl

theorem node9270_cond_eq
    (child9268 : Flapjack.WordAlloc.removeDeadStructural input9268 value5 value1 value2 = (output9268, value4638, value1))
    (child9269 : Flapjack.WordAlloc.removeDeadStructural input9269 value4638 value1 value2 = (output9269, value4639, value1)) : Flapjack.WordAlloc.removeDeadStructural input9270 value5 value1 value2 = (output9270, value4639, value1) := by
  rw [input9270_def, output9270_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9268]
  dsimp only
  rw [child9269]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9268_skip, output9269_skip]
  kernel_rfl

theorem node9271_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9271 value4639 value1 value2 = (output9271, value4640, value1) := by
  rw [input9271_def, output9271_def]
  kernel_rfl

theorem node9272_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9272 value4640 value1 value2 = (output9272, value4640, value1) := by
  rw [input9272_def, output9272_def]
  kernel_rfl

theorem node9273_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9273 value4640 value1 value2 = (output9273, value4641, value1) := by
  rw [input9273_def, output9273_def]
  kernel_rfl

theorem node9274_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9274 value4641 value1 value2 = (output9274, value4642, value1) := by
  rw [input9274_def, output9274_def]
  kernel_rfl

theorem node9275_cond_eq
    (child9273 : Flapjack.WordAlloc.removeDeadStructural input9273 value4640 value1 value2 = (output9273, value4641, value1))
    (child9274 : Flapjack.WordAlloc.removeDeadStructural input9274 value4641 value1 value2 = (output9274, value4642, value1)) : Flapjack.WordAlloc.removeDeadStructural input9275 value4640 value1 value2 = (output9275, value4642, value1) := by
  rw [input9275_def, output9275_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9273]
  dsimp only
  rw [child9274]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9273_skip, output9274_skip]
  kernel_rfl

theorem node9276_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9276 value4642 value1 value2 = (output9276, value4643, value1) := by
  rw [input9276_def, output9276_def]
  kernel_rfl

theorem node9277_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9277 value4643 value1 value2 = (output9277, value4644, value1) := by
  rw [input9277_def, output9277_def]
  kernel_rfl

theorem node9278_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9278 value4644 value1 value2 = (output9278, value4645, value1) := by
  rw [input9278_def, output9278_def]
  kernel_rfl

theorem node9279_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9279 value4645 value1 value2 = (output9279, value5, value1) := by
  rw [input9279_def, output9279_def]
  kernel_rfl

theorem node9280_cond_eq
    (child9278 : Flapjack.WordAlloc.removeDeadStructural input9278 value4644 value1 value2 = (output9278, value4645, value1))
    (child9279 : Flapjack.WordAlloc.removeDeadStructural input9279 value4645 value1 value2 = (output9279, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9280 value4644 value1 value2 = (output9280, value5, value1) := by
  rw [input9280_def, output9280_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9278]
  dsimp only
  rw [child9279]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9278_skip, output9279_skip]
  kernel_rfl

theorem node9281_cond_eq
    (child9277 : Flapjack.WordAlloc.removeDeadStructural input9277 value4643 value1 value2 = (output9277, value4644, value1))
    (child9280 : Flapjack.WordAlloc.removeDeadStructural input9280 value4644 value1 value2 = (output9280, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9281 value4643 value1 value2 = (output9281, value5, value1) := by
  rw [input9281_def, output9281_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9277]
  dsimp only
  rw [child9280]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9277_skip, output9280_skip]
  kernel_rfl

theorem node9282_cond_eq
    (child9276 : Flapjack.WordAlloc.removeDeadStructural input9276 value4642 value1 value2 = (output9276, value4643, value1))
    (child9281 : Flapjack.WordAlloc.removeDeadStructural input9281 value4643 value1 value2 = (output9281, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9282 value4642 value1 value2 = (output9282, value5, value1) := by
  rw [input9282_def, output9282_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9276]
  dsimp only
  rw [child9281]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9276_skip, output9281_skip]
  kernel_rfl

theorem node9283_cond_eq
    (child9275 : Flapjack.WordAlloc.removeDeadStructural input9275 value4640 value1 value2 = (output9275, value4642, value1))
    (child9282 : Flapjack.WordAlloc.removeDeadStructural input9282 value4642 value1 value2 = (output9282, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9283 value4640 value1 value2 = (output9283, value5, value1) := by
  rw [input9283_def, output9283_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9275]
  dsimp only
  rw [child9282]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9275_skip, output9282_skip]
  kernel_rfl

theorem node9284_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9284 value5 value1 value2 = (output9284, value4646, value1) := by
  rw [input9284_def, output9284_def]
  kernel_rfl

theorem node9285_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9285 value4646 value1 value2 = (output9285, value4647, value1) := by
  rw [input9285_def, output9285_def]
  kernel_rfl

theorem node9286_cond_eq
    (child9284 : Flapjack.WordAlloc.removeDeadStructural input9284 value5 value1 value2 = (output9284, value4646, value1))
    (child9285 : Flapjack.WordAlloc.removeDeadStructural input9285 value4646 value1 value2 = (output9285, value4647, value1)) : Flapjack.WordAlloc.removeDeadStructural input9286 value5 value1 value2 = (output9286, value4647, value1) := by
  rw [input9286_def, output9286_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9284]
  dsimp only
  rw [child9285]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9284_skip, output9285_skip]
  kernel_rfl

theorem node9287_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9287 value4647 value1 value2 = (output9287, value4648, value1) := by
  rw [input9287_def, output9287_def]
  kernel_rfl

theorem node9288_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9288 value4648 value1 value2 = (output9288, value4648, value1) := by
  rw [input9288_def, output9288_def]
  kernel_rfl

theorem node9289_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9289 value4648 value1 value2 = (output9289, value4649, value1) := by
  rw [input9289_def, output9289_def]
  kernel_rfl

theorem node9290_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9290 value4649 value1 value2 = (output9290, value4650, value1) := by
  rw [input9290_def, output9290_def]
  kernel_rfl

theorem node9291_cond_eq
    (child9289 : Flapjack.WordAlloc.removeDeadStructural input9289 value4648 value1 value2 = (output9289, value4649, value1))
    (child9290 : Flapjack.WordAlloc.removeDeadStructural input9290 value4649 value1 value2 = (output9290, value4650, value1)) : Flapjack.WordAlloc.removeDeadStructural input9291 value4648 value1 value2 = (output9291, value4650, value1) := by
  rw [input9291_def, output9291_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9289]
  dsimp only
  rw [child9290]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9289_skip, output9290_skip]
  kernel_rfl

theorem node9292_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9292 value4650 value1 value2 = (output9292, value4651, value1) := by
  rw [input9292_def, output9292_def]
  kernel_rfl

theorem node9293_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9293 value4651 value1 value2 = (output9293, value4652, value1) := by
  rw [input9293_def, output9293_def]
  kernel_rfl

theorem node9294_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9294 value4652 value1 value2 = (output9294, value4653, value1) := by
  rw [input9294_def, output9294_def]
  kernel_rfl

theorem node9295_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9295 value4653 value1 value2 = (output9295, value5, value1) := by
  rw [input9295_def, output9295_def]
  kernel_rfl

theorem node9296_cond_eq
    (child9294 : Flapjack.WordAlloc.removeDeadStructural input9294 value4652 value1 value2 = (output9294, value4653, value1))
    (child9295 : Flapjack.WordAlloc.removeDeadStructural input9295 value4653 value1 value2 = (output9295, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9296 value4652 value1 value2 = (output9296, value5, value1) := by
  rw [input9296_def, output9296_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9294]
  dsimp only
  rw [child9295]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9294_skip, output9295_skip]
  kernel_rfl

theorem node9297_cond_eq
    (child9293 : Flapjack.WordAlloc.removeDeadStructural input9293 value4651 value1 value2 = (output9293, value4652, value1))
    (child9296 : Flapjack.WordAlloc.removeDeadStructural input9296 value4652 value1 value2 = (output9296, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9297 value4651 value1 value2 = (output9297, value5, value1) := by
  rw [input9297_def, output9297_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9293]
  dsimp only
  rw [child9296]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9293_skip, output9296_skip]
  kernel_rfl

theorem node9298_cond_eq
    (child9292 : Flapjack.WordAlloc.removeDeadStructural input9292 value4650 value1 value2 = (output9292, value4651, value1))
    (child9297 : Flapjack.WordAlloc.removeDeadStructural input9297 value4651 value1 value2 = (output9297, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9298 value4650 value1 value2 = (output9298, value5, value1) := by
  rw [input9298_def, output9298_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9292]
  dsimp only
  rw [child9297]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9292_skip, output9297_skip]
  kernel_rfl

theorem node9299_cond_eq
    (child9291 : Flapjack.WordAlloc.removeDeadStructural input9291 value4648 value1 value2 = (output9291, value4650, value1))
    (child9298 : Flapjack.WordAlloc.removeDeadStructural input9298 value4650 value1 value2 = (output9298, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9299 value4648 value1 value2 = (output9299, value5, value1) := by
  rw [input9299_def, output9299_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9291]
  dsimp only
  rw [child9298]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9291_skip, output9298_skip]
  kernel_rfl

theorem node9300_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9300 value5 value1 value2 = (output9300, value4654, value1) := by
  rw [input9300_def, output9300_def]
  kernel_rfl

theorem node9301_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9301 value4654 value1 value2 = (output9301, value4655, value1) := by
  rw [input9301_def, output9301_def]
  kernel_rfl

theorem node9302_cond_eq
    (child9300 : Flapjack.WordAlloc.removeDeadStructural input9300 value5 value1 value2 = (output9300, value4654, value1))
    (child9301 : Flapjack.WordAlloc.removeDeadStructural input9301 value4654 value1 value2 = (output9301, value4655, value1)) : Flapjack.WordAlloc.removeDeadStructural input9302 value5 value1 value2 = (output9302, value4655, value1) := by
  rw [input9302_def, output9302_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9300]
  dsimp only
  rw [child9301]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9300_skip, output9301_skip]
  kernel_rfl

theorem node9303_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9303 value4655 value1 value2 = (output9303, value4656, value1) := by
  rw [input9303_def, output9303_def]
  kernel_rfl

theorem node9304_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9304 value4656 value1 value2 = (output9304, value4656, value1) := by
  rw [input9304_def, output9304_def]
  kernel_rfl

theorem node9305_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9305 value4656 value1 value2 = (output9305, value4657, value1) := by
  rw [input9305_def, output9305_def]
  kernel_rfl

theorem node9306_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9306 value4657 value1 value2 = (output9306, value4658, value1) := by
  rw [input9306_def, output9306_def]
  kernel_rfl

theorem node9307_cond_eq
    (child9305 : Flapjack.WordAlloc.removeDeadStructural input9305 value4656 value1 value2 = (output9305, value4657, value1))
    (child9306 : Flapjack.WordAlloc.removeDeadStructural input9306 value4657 value1 value2 = (output9306, value4658, value1)) : Flapjack.WordAlloc.removeDeadStructural input9307 value4656 value1 value2 = (output9307, value4658, value1) := by
  rw [input9307_def, output9307_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9305]
  dsimp only
  rw [child9306]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9305_skip, output9306_skip]
  kernel_rfl

theorem node9308_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9308 value4658 value1 value2 = (output9308, value4659, value1) := by
  rw [input9308_def, output9308_def]
  kernel_rfl

theorem node9309_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9309 value4659 value1 value2 = (output9309, value4660, value1) := by
  rw [input9309_def, output9309_def]
  kernel_rfl

theorem node9310_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9310 value4660 value1 value2 = (output9310, value4661, value1) := by
  rw [input9310_def, output9310_def]
  kernel_rfl

theorem node9311_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9311 value4661 value1 value2 = (output9311, value5, value1) := by
  rw [input9311_def, output9311_def]
  kernel_rfl

theorem node9312_cond_eq
    (child9310 : Flapjack.WordAlloc.removeDeadStructural input9310 value4660 value1 value2 = (output9310, value4661, value1))
    (child9311 : Flapjack.WordAlloc.removeDeadStructural input9311 value4661 value1 value2 = (output9311, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9312 value4660 value1 value2 = (output9312, value5, value1) := by
  rw [input9312_def, output9312_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9310]
  dsimp only
  rw [child9311]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9310_skip, output9311_skip]
  kernel_rfl

theorem node9313_cond_eq
    (child9309 : Flapjack.WordAlloc.removeDeadStructural input9309 value4659 value1 value2 = (output9309, value4660, value1))
    (child9312 : Flapjack.WordAlloc.removeDeadStructural input9312 value4660 value1 value2 = (output9312, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9313 value4659 value1 value2 = (output9313, value5, value1) := by
  rw [input9313_def, output9313_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9309]
  dsimp only
  rw [child9312]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9309_skip, output9312_skip]
  kernel_rfl

theorem node9314_cond_eq
    (child9308 : Flapjack.WordAlloc.removeDeadStructural input9308 value4658 value1 value2 = (output9308, value4659, value1))
    (child9313 : Flapjack.WordAlloc.removeDeadStructural input9313 value4659 value1 value2 = (output9313, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9314 value4658 value1 value2 = (output9314, value5, value1) := by
  rw [input9314_def, output9314_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9308]
  dsimp only
  rw [child9313]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9308_skip, output9313_skip]
  kernel_rfl

theorem node9315_cond_eq
    (child9307 : Flapjack.WordAlloc.removeDeadStructural input9307 value4656 value1 value2 = (output9307, value4658, value1))
    (child9314 : Flapjack.WordAlloc.removeDeadStructural input9314 value4658 value1 value2 = (output9314, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9315 value4656 value1 value2 = (output9315, value5, value1) := by
  rw [input9315_def, output9315_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9307]
  dsimp only
  rw [child9314]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9307_skip, output9314_skip]
  kernel_rfl

theorem node9316_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9316 value5 value1 value2 = (output9316, value4662, value1) := by
  rw [input9316_def, output9316_def]
  kernel_rfl

theorem node9317_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9317 value4662 value1 value2 = (output9317, value4663, value1) := by
  rw [input9317_def, output9317_def]
  kernel_rfl

theorem node9318_cond_eq
    (child9316 : Flapjack.WordAlloc.removeDeadStructural input9316 value5 value1 value2 = (output9316, value4662, value1))
    (child9317 : Flapjack.WordAlloc.removeDeadStructural input9317 value4662 value1 value2 = (output9317, value4663, value1)) : Flapjack.WordAlloc.removeDeadStructural input9318 value5 value1 value2 = (output9318, value4663, value1) := by
  rw [input9318_def, output9318_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9316]
  dsimp only
  rw [child9317]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9316_skip, output9317_skip]
  kernel_rfl

theorem node9319_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9319 value4663 value1 value2 = (output9319, value4664, value1) := by
  rw [input9319_def, output9319_def]
  kernel_rfl

theorem node9320_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9320 value4664 value1 value2 = (output9320, value4664, value1) := by
  rw [input9320_def, output9320_def]
  kernel_rfl

theorem node9321_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9321 value4664 value1 value2 = (output9321, value4665, value1) := by
  rw [input9321_def, output9321_def]
  kernel_rfl

theorem node9322_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9322 value4665 value1 value2 = (output9322, value4666, value1) := by
  rw [input9322_def, output9322_def]
  kernel_rfl

theorem node9323_cond_eq
    (child9321 : Flapjack.WordAlloc.removeDeadStructural input9321 value4664 value1 value2 = (output9321, value4665, value1))
    (child9322 : Flapjack.WordAlloc.removeDeadStructural input9322 value4665 value1 value2 = (output9322, value4666, value1)) : Flapjack.WordAlloc.removeDeadStructural input9323 value4664 value1 value2 = (output9323, value4666, value1) := by
  rw [input9323_def, output9323_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9321]
  dsimp only
  rw [child9322]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9321_skip, output9322_skip]
  kernel_rfl

theorem node9324_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9324 value4666 value1 value2 = (output9324, value4667, value1) := by
  rw [input9324_def, output9324_def]
  kernel_rfl

theorem node9325_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9325 value4667 value1 value2 = (output9325, value4668, value1) := by
  rw [input9325_def, output9325_def]
  kernel_rfl

theorem node9326_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9326 value4668 value1 value2 = (output9326, value4669, value1) := by
  rw [input9326_def, output9326_def]
  kernel_rfl

theorem node9327_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9327 value4669 value1 value2 = (output9327, value5, value1) := by
  rw [input9327_def, output9327_def]
  kernel_rfl

theorem node9328_cond_eq
    (child9326 : Flapjack.WordAlloc.removeDeadStructural input9326 value4668 value1 value2 = (output9326, value4669, value1))
    (child9327 : Flapjack.WordAlloc.removeDeadStructural input9327 value4669 value1 value2 = (output9327, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9328 value4668 value1 value2 = (output9328, value5, value1) := by
  rw [input9328_def, output9328_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9326]
  dsimp only
  rw [child9327]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9326_skip, output9327_skip]
  kernel_rfl

theorem node9329_cond_eq
    (child9325 : Flapjack.WordAlloc.removeDeadStructural input9325 value4667 value1 value2 = (output9325, value4668, value1))
    (child9328 : Flapjack.WordAlloc.removeDeadStructural input9328 value4668 value1 value2 = (output9328, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9329 value4667 value1 value2 = (output9329, value5, value1) := by
  rw [input9329_def, output9329_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9325]
  dsimp only
  rw [child9328]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9325_skip, output9328_skip]
  kernel_rfl

theorem node9330_cond_eq
    (child9324 : Flapjack.WordAlloc.removeDeadStructural input9324 value4666 value1 value2 = (output9324, value4667, value1))
    (child9329 : Flapjack.WordAlloc.removeDeadStructural input9329 value4667 value1 value2 = (output9329, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9330 value4666 value1 value2 = (output9330, value5, value1) := by
  rw [input9330_def, output9330_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9324]
  dsimp only
  rw [child9329]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9324_skip, output9329_skip]
  kernel_rfl

theorem node9331_cond_eq
    (child9323 : Flapjack.WordAlloc.removeDeadStructural input9323 value4664 value1 value2 = (output9323, value4666, value1))
    (child9330 : Flapjack.WordAlloc.removeDeadStructural input9330 value4666 value1 value2 = (output9330, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9331 value4664 value1 value2 = (output9331, value5, value1) := by
  rw [input9331_def, output9331_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9323]
  dsimp only
  rw [child9330]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9323_skip, output9330_skip]
  kernel_rfl

theorem node9332_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9332 value5 value1 value2 = (output9332, value4670, value1) := by
  rw [input9332_def, output9332_def]
  kernel_rfl

theorem node9333_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9333 value4670 value1 value2 = (output9333, value4671, value1) := by
  rw [input9333_def, output9333_def]
  kernel_rfl

theorem node9334_cond_eq
    (child9332 : Flapjack.WordAlloc.removeDeadStructural input9332 value5 value1 value2 = (output9332, value4670, value1))
    (child9333 : Flapjack.WordAlloc.removeDeadStructural input9333 value4670 value1 value2 = (output9333, value4671, value1)) : Flapjack.WordAlloc.removeDeadStructural input9334 value5 value1 value2 = (output9334, value4671, value1) := by
  rw [input9334_def, output9334_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9332]
  dsimp only
  rw [child9333]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9332_skip, output9333_skip]
  kernel_rfl

theorem node9335_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9335 value4671 value1 value2 = (output9335, value4672, value1) := by
  rw [input9335_def, output9335_def]
  kernel_rfl

theorem node9336_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9336 value4672 value1 value2 = (output9336, value4672, value1) := by
  rw [input9336_def, output9336_def]
  kernel_rfl

theorem node9337_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9337 value4672 value1 value2 = (output9337, value4673, value1) := by
  rw [input9337_def, output9337_def]
  kernel_rfl

theorem node9338_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9338 value4673 value1 value2 = (output9338, value4674, value1) := by
  rw [input9338_def, output9338_def]
  kernel_rfl

theorem node9339_cond_eq
    (child9337 : Flapjack.WordAlloc.removeDeadStructural input9337 value4672 value1 value2 = (output9337, value4673, value1))
    (child9338 : Flapjack.WordAlloc.removeDeadStructural input9338 value4673 value1 value2 = (output9338, value4674, value1)) : Flapjack.WordAlloc.removeDeadStructural input9339 value4672 value1 value2 = (output9339, value4674, value1) := by
  rw [input9339_def, output9339_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9337]
  dsimp only
  rw [child9338]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9337_skip, output9338_skip]
  kernel_rfl

theorem node9340_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9340 value4674 value1 value2 = (output9340, value4675, value1) := by
  rw [input9340_def, output9340_def]
  kernel_rfl

theorem node9341_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9341 value4675 value1 value2 = (output9341, value4676, value1) := by
  rw [input9341_def, output9341_def]
  kernel_rfl

theorem node9342_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9342 value4676 value1 value2 = (output9342, value4677, value1) := by
  rw [input9342_def, output9342_def]
  kernel_rfl

theorem node9343_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9343 value4677 value1 value2 = (output9343, value5, value1) := by
  rw [input9343_def, output9343_def]
  kernel_rfl

theorem node9344_cond_eq
    (child9342 : Flapjack.WordAlloc.removeDeadStructural input9342 value4676 value1 value2 = (output9342, value4677, value1))
    (child9343 : Flapjack.WordAlloc.removeDeadStructural input9343 value4677 value1 value2 = (output9343, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9344 value4676 value1 value2 = (output9344, value5, value1) := by
  rw [input9344_def, output9344_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9342]
  dsimp only
  rw [child9343]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9342_skip, output9343_skip]
  kernel_rfl

theorem node9345_cond_eq
    (child9341 : Flapjack.WordAlloc.removeDeadStructural input9341 value4675 value1 value2 = (output9341, value4676, value1))
    (child9344 : Flapjack.WordAlloc.removeDeadStructural input9344 value4676 value1 value2 = (output9344, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9345 value4675 value1 value2 = (output9345, value5, value1) := by
  rw [input9345_def, output9345_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9341]
  dsimp only
  rw [child9344]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9341_skip, output9344_skip]
  kernel_rfl

theorem node9346_cond_eq
    (child9340 : Flapjack.WordAlloc.removeDeadStructural input9340 value4674 value1 value2 = (output9340, value4675, value1))
    (child9345 : Flapjack.WordAlloc.removeDeadStructural input9345 value4675 value1 value2 = (output9345, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9346 value4674 value1 value2 = (output9346, value5, value1) := by
  rw [input9346_def, output9346_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9340]
  dsimp only
  rw [child9345]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9340_skip, output9345_skip]
  kernel_rfl

theorem node9347_cond_eq
    (child9339 : Flapjack.WordAlloc.removeDeadStructural input9339 value4672 value1 value2 = (output9339, value4674, value1))
    (child9346 : Flapjack.WordAlloc.removeDeadStructural input9346 value4674 value1 value2 = (output9346, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9347 value4672 value1 value2 = (output9347, value5, value1) := by
  rw [input9347_def, output9347_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9339]
  dsimp only
  rw [child9346]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9339_skip, output9346_skip]
  kernel_rfl

theorem node9348_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9348 value5 value1 value2 = (output9348, value4678, value1) := by
  rw [input9348_def, output9348_def]
  kernel_rfl

theorem node9349_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9349 value4678 value1 value2 = (output9349, value4679, value1) := by
  rw [input9349_def, output9349_def]
  kernel_rfl

theorem node9350_cond_eq
    (child9348 : Flapjack.WordAlloc.removeDeadStructural input9348 value5 value1 value2 = (output9348, value4678, value1))
    (child9349 : Flapjack.WordAlloc.removeDeadStructural input9349 value4678 value1 value2 = (output9349, value4679, value1)) : Flapjack.WordAlloc.removeDeadStructural input9350 value5 value1 value2 = (output9350, value4679, value1) := by
  rw [input9350_def, output9350_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9348]
  dsimp only
  rw [child9349]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9348_skip, output9349_skip]
  kernel_rfl

theorem node9351_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9351 value4679 value1 value2 = (output9351, value4680, value1) := by
  rw [input9351_def, output9351_def]
  kernel_rfl

theorem node9352_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9352 value4680 value1 value2 = (output9352, value4680, value1) := by
  rw [input9352_def, output9352_def]
  kernel_rfl

theorem node9353_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9353 value4680 value1 value2 = (output9353, value4681, value1) := by
  rw [input9353_def, output9353_def]
  kernel_rfl

theorem node9354_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9354 value4681 value1 value2 = (output9354, value4682, value1) := by
  rw [input9354_def, output9354_def]
  kernel_rfl

theorem node9355_cond_eq
    (child9353 : Flapjack.WordAlloc.removeDeadStructural input9353 value4680 value1 value2 = (output9353, value4681, value1))
    (child9354 : Flapjack.WordAlloc.removeDeadStructural input9354 value4681 value1 value2 = (output9354, value4682, value1)) : Flapjack.WordAlloc.removeDeadStructural input9355 value4680 value1 value2 = (output9355, value4682, value1) := by
  rw [input9355_def, output9355_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9353]
  dsimp only
  rw [child9354]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9353_skip, output9354_skip]
  kernel_rfl

theorem node9356_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9356 value4682 value1 value2 = (output9356, value4683, value1) := by
  rw [input9356_def, output9356_def]
  kernel_rfl

theorem node9357_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9357 value4683 value1 value2 = (output9357, value4684, value1) := by
  rw [input9357_def, output9357_def]
  kernel_rfl

theorem node9358_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9358 value4684 value1 value2 = (output9358, value4685, value1) := by
  rw [input9358_def, output9358_def]
  kernel_rfl

theorem node9359_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9359 value4685 value1 value2 = (output9359, value5, value1) := by
  rw [input9359_def, output9359_def]
  kernel_rfl

theorem node9360_cond_eq
    (child9358 : Flapjack.WordAlloc.removeDeadStructural input9358 value4684 value1 value2 = (output9358, value4685, value1))
    (child9359 : Flapjack.WordAlloc.removeDeadStructural input9359 value4685 value1 value2 = (output9359, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9360 value4684 value1 value2 = (output9360, value5, value1) := by
  rw [input9360_def, output9360_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9358]
  dsimp only
  rw [child9359]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9358_skip, output9359_skip]
  kernel_rfl

theorem node9361_cond_eq
    (child9357 : Flapjack.WordAlloc.removeDeadStructural input9357 value4683 value1 value2 = (output9357, value4684, value1))
    (child9360 : Flapjack.WordAlloc.removeDeadStructural input9360 value4684 value1 value2 = (output9360, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9361 value4683 value1 value2 = (output9361, value5, value1) := by
  rw [input9361_def, output9361_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9357]
  dsimp only
  rw [child9360]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9357_skip, output9360_skip]
  kernel_rfl

theorem node9362_cond_eq
    (child9356 : Flapjack.WordAlloc.removeDeadStructural input9356 value4682 value1 value2 = (output9356, value4683, value1))
    (child9361 : Flapjack.WordAlloc.removeDeadStructural input9361 value4683 value1 value2 = (output9361, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9362 value4682 value1 value2 = (output9362, value5, value1) := by
  rw [input9362_def, output9362_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9356]
  dsimp only
  rw [child9361]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9356_skip, output9361_skip]
  kernel_rfl

theorem node9363_cond_eq
    (child9355 : Flapjack.WordAlloc.removeDeadStructural input9355 value4680 value1 value2 = (output9355, value4682, value1))
    (child9362 : Flapjack.WordAlloc.removeDeadStructural input9362 value4682 value1 value2 = (output9362, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9363 value4680 value1 value2 = (output9363, value5, value1) := by
  rw [input9363_def, output9363_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9355]
  dsimp only
  rw [child9362]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9355_skip, output9362_skip]
  kernel_rfl

theorem node9364_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9364 value5 value1 value2 = (output9364, value4686, value1) := by
  rw [input9364_def, output9364_def]
  kernel_rfl

theorem node9365_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9365 value4686 value1 value2 = (output9365, value4687, value1) := by
  rw [input9365_def, output9365_def]
  kernel_rfl

theorem node9366_cond_eq
    (child9364 : Flapjack.WordAlloc.removeDeadStructural input9364 value5 value1 value2 = (output9364, value4686, value1))
    (child9365 : Flapjack.WordAlloc.removeDeadStructural input9365 value4686 value1 value2 = (output9365, value4687, value1)) : Flapjack.WordAlloc.removeDeadStructural input9366 value5 value1 value2 = (output9366, value4687, value1) := by
  rw [input9366_def, output9366_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9364]
  dsimp only
  rw [child9365]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9364_skip, output9365_skip]
  kernel_rfl

theorem node9367_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9367 value4687 value1 value2 = (output9367, value4688, value1) := by
  rw [input9367_def, output9367_def]
  kernel_rfl

theorem node9368_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9368 value4688 value1 value2 = (output9368, value4688, value1) := by
  rw [input9368_def, output9368_def]
  kernel_rfl

theorem node9369_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9369 value4688 value1 value2 = (output9369, value4689, value1) := by
  rw [input9369_def, output9369_def]
  kernel_rfl

theorem node9370_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9370 value4689 value1 value2 = (output9370, value4690, value1) := by
  rw [input9370_def, output9370_def]
  kernel_rfl

theorem node9371_cond_eq
    (child9369 : Flapjack.WordAlloc.removeDeadStructural input9369 value4688 value1 value2 = (output9369, value4689, value1))
    (child9370 : Flapjack.WordAlloc.removeDeadStructural input9370 value4689 value1 value2 = (output9370, value4690, value1)) : Flapjack.WordAlloc.removeDeadStructural input9371 value4688 value1 value2 = (output9371, value4690, value1) := by
  rw [input9371_def, output9371_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9369]
  dsimp only
  rw [child9370]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9369_skip, output9370_skip]
  kernel_rfl

theorem node9372_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9372 value4690 value1 value2 = (output9372, value4691, value1) := by
  rw [input9372_def, output9372_def]
  kernel_rfl

theorem node9373_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9373 value4691 value1 value2 = (output9373, value4692, value1) := by
  rw [input9373_def, output9373_def]
  kernel_rfl

theorem node9374_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9374 value4692 value1 value2 = (output9374, value4693, value1) := by
  rw [input9374_def, output9374_def]
  kernel_rfl

theorem node9375_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9375 value4693 value1 value2 = (output9375, value5, value1) := by
  rw [input9375_def, output9375_def]
  kernel_rfl

theorem node9376_cond_eq
    (child9374 : Flapjack.WordAlloc.removeDeadStructural input9374 value4692 value1 value2 = (output9374, value4693, value1))
    (child9375 : Flapjack.WordAlloc.removeDeadStructural input9375 value4693 value1 value2 = (output9375, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9376 value4692 value1 value2 = (output9376, value5, value1) := by
  rw [input9376_def, output9376_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9374]
  dsimp only
  rw [child9375]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9374_skip, output9375_skip]
  kernel_rfl

theorem node9377_cond_eq
    (child9373 : Flapjack.WordAlloc.removeDeadStructural input9373 value4691 value1 value2 = (output9373, value4692, value1))
    (child9376 : Flapjack.WordAlloc.removeDeadStructural input9376 value4692 value1 value2 = (output9376, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9377 value4691 value1 value2 = (output9377, value5, value1) := by
  rw [input9377_def, output9377_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9373]
  dsimp only
  rw [child9376]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9373_skip, output9376_skip]
  kernel_rfl

theorem node9378_cond_eq
    (child9372 : Flapjack.WordAlloc.removeDeadStructural input9372 value4690 value1 value2 = (output9372, value4691, value1))
    (child9377 : Flapjack.WordAlloc.removeDeadStructural input9377 value4691 value1 value2 = (output9377, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9378 value4690 value1 value2 = (output9378, value5, value1) := by
  rw [input9378_def, output9378_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9372]
  dsimp only
  rw [child9377]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9372_skip, output9377_skip]
  kernel_rfl

theorem node9379_cond_eq
    (child9371 : Flapjack.WordAlloc.removeDeadStructural input9371 value4688 value1 value2 = (output9371, value4690, value1))
    (child9378 : Flapjack.WordAlloc.removeDeadStructural input9378 value4690 value1 value2 = (output9378, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9379 value4688 value1 value2 = (output9379, value5, value1) := by
  rw [input9379_def, output9379_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9371]
  dsimp only
  rw [child9378]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9371_skip, output9378_skip]
  kernel_rfl

theorem node9380_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9380 value5 value1 value2 = (output9380, value4694, value1) := by
  rw [input9380_def, output9380_def]
  kernel_rfl

theorem node9381_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9381 value4694 value1 value2 = (output9381, value4695, value1) := by
  rw [input9381_def, output9381_def]
  kernel_rfl

theorem node9382_cond_eq
    (child9380 : Flapjack.WordAlloc.removeDeadStructural input9380 value5 value1 value2 = (output9380, value4694, value1))
    (child9381 : Flapjack.WordAlloc.removeDeadStructural input9381 value4694 value1 value2 = (output9381, value4695, value1)) : Flapjack.WordAlloc.removeDeadStructural input9382 value5 value1 value2 = (output9382, value4695, value1) := by
  rw [input9382_def, output9382_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9380]
  dsimp only
  rw [child9381]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9380_skip, output9381_skip]
  kernel_rfl

theorem node9383_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9383 value4695 value1 value2 = (output9383, value4696, value1) := by
  rw [input9383_def, output9383_def]
  kernel_rfl

theorem node9384_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9384 value4696 value1 value2 = (output9384, value4696, value1) := by
  rw [input9384_def, output9384_def]
  kernel_rfl

theorem node9385_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9385 value4696 value1 value2 = (output9385, value4697, value1) := by
  rw [input9385_def, output9385_def]
  kernel_rfl

theorem node9386_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9386 value4697 value1 value2 = (output9386, value4698, value1) := by
  rw [input9386_def, output9386_def]
  kernel_rfl

theorem node9387_cond_eq
    (child9385 : Flapjack.WordAlloc.removeDeadStructural input9385 value4696 value1 value2 = (output9385, value4697, value1))
    (child9386 : Flapjack.WordAlloc.removeDeadStructural input9386 value4697 value1 value2 = (output9386, value4698, value1)) : Flapjack.WordAlloc.removeDeadStructural input9387 value4696 value1 value2 = (output9387, value4698, value1) := by
  rw [input9387_def, output9387_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9385]
  dsimp only
  rw [child9386]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9385_skip, output9386_skip]
  kernel_rfl

theorem node9388_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9388 value4698 value1 value2 = (output9388, value4699, value1) := by
  rw [input9388_def, output9388_def]
  kernel_rfl

theorem node9389_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9389 value4699 value1 value2 = (output9389, value4700, value1) := by
  rw [input9389_def, output9389_def]
  kernel_rfl

theorem node9390_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9390 value4700 value1 value2 = (output9390, value4701, value1) := by
  rw [input9390_def, output9390_def]
  kernel_rfl

theorem node9391_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9391 value4701 value1 value2 = (output9391, value5, value1) := by
  rw [input9391_def, output9391_def]
  kernel_rfl

theorem node9392_cond_eq
    (child9390 : Flapjack.WordAlloc.removeDeadStructural input9390 value4700 value1 value2 = (output9390, value4701, value1))
    (child9391 : Flapjack.WordAlloc.removeDeadStructural input9391 value4701 value1 value2 = (output9391, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9392 value4700 value1 value2 = (output9392, value5, value1) := by
  rw [input9392_def, output9392_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9390]
  dsimp only
  rw [child9391]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9390_skip, output9391_skip]
  kernel_rfl

theorem node9393_cond_eq
    (child9389 : Flapjack.WordAlloc.removeDeadStructural input9389 value4699 value1 value2 = (output9389, value4700, value1))
    (child9392 : Flapjack.WordAlloc.removeDeadStructural input9392 value4700 value1 value2 = (output9392, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9393 value4699 value1 value2 = (output9393, value5, value1) := by
  rw [input9393_def, output9393_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9389]
  dsimp only
  rw [child9392]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9389_skip, output9392_skip]
  kernel_rfl

theorem node9394_cond_eq
    (child9388 : Flapjack.WordAlloc.removeDeadStructural input9388 value4698 value1 value2 = (output9388, value4699, value1))
    (child9393 : Flapjack.WordAlloc.removeDeadStructural input9393 value4699 value1 value2 = (output9393, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9394 value4698 value1 value2 = (output9394, value5, value1) := by
  rw [input9394_def, output9394_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9388]
  dsimp only
  rw [child9393]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9388_skip, output9393_skip]
  kernel_rfl

theorem node9395_cond_eq
    (child9387 : Flapjack.WordAlloc.removeDeadStructural input9387 value4696 value1 value2 = (output9387, value4698, value1))
    (child9394 : Flapjack.WordAlloc.removeDeadStructural input9394 value4698 value1 value2 = (output9394, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9395 value4696 value1 value2 = (output9395, value5, value1) := by
  rw [input9395_def, output9395_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9387]
  dsimp only
  rw [child9394]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9387_skip, output9394_skip]
  kernel_rfl

theorem node9396_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9396 value5 value1 value2 = (output9396, value4702, value1) := by
  rw [input9396_def, output9396_def]
  kernel_rfl

theorem node9397_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9397 value4702 value1 value2 = (output9397, value4703, value1) := by
  rw [input9397_def, output9397_def]
  kernel_rfl

theorem node9398_cond_eq
    (child9396 : Flapjack.WordAlloc.removeDeadStructural input9396 value5 value1 value2 = (output9396, value4702, value1))
    (child9397 : Flapjack.WordAlloc.removeDeadStructural input9397 value4702 value1 value2 = (output9397, value4703, value1)) : Flapjack.WordAlloc.removeDeadStructural input9398 value5 value1 value2 = (output9398, value4703, value1) := by
  rw [input9398_def, output9398_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9396]
  dsimp only
  rw [child9397]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9396_skip, output9397_skip]
  kernel_rfl

theorem node9399_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9399 value4703 value1 value2 = (output9399, value4704, value1) := by
  rw [input9399_def, output9399_def]
  kernel_rfl

theorem node9400_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9400 value4704 value1 value2 = (output9400, value4704, value1) := by
  rw [input9400_def, output9400_def]
  kernel_rfl

theorem node9401_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9401 value4704 value1 value2 = (output9401, value4705, value1) := by
  rw [input9401_def, output9401_def]
  kernel_rfl

theorem node9402_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9402 value4705 value1 value2 = (output9402, value4706, value1) := by
  rw [input9402_def, output9402_def]
  kernel_rfl

theorem node9403_cond_eq
    (child9401 : Flapjack.WordAlloc.removeDeadStructural input9401 value4704 value1 value2 = (output9401, value4705, value1))
    (child9402 : Flapjack.WordAlloc.removeDeadStructural input9402 value4705 value1 value2 = (output9402, value4706, value1)) : Flapjack.WordAlloc.removeDeadStructural input9403 value4704 value1 value2 = (output9403, value4706, value1) := by
  rw [input9403_def, output9403_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9401]
  dsimp only
  rw [child9402]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9401_skip, output9402_skip]
  kernel_rfl

theorem node9404_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9404 value4706 value1 value2 = (output9404, value4707, value1) := by
  rw [input9404_def, output9404_def]
  kernel_rfl

theorem node9405_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9405 value4707 value1 value2 = (output9405, value4708, value1) := by
  rw [input9405_def, output9405_def]
  kernel_rfl

theorem node9406_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9406 value4708 value1 value2 = (output9406, value4709, value1) := by
  rw [input9406_def, output9406_def]
  kernel_rfl

theorem node9407_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9407 value4709 value1 value2 = (output9407, value5, value1) := by
  rw [input9407_def, output9407_def]
  kernel_rfl

theorem node9408_cond_eq
    (child9406 : Flapjack.WordAlloc.removeDeadStructural input9406 value4708 value1 value2 = (output9406, value4709, value1))
    (child9407 : Flapjack.WordAlloc.removeDeadStructural input9407 value4709 value1 value2 = (output9407, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9408 value4708 value1 value2 = (output9408, value5, value1) := by
  rw [input9408_def, output9408_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9406]
  dsimp only
  rw [child9407]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9406_skip, output9407_skip]
  kernel_rfl

theorem node9409_cond_eq
    (child9405 : Flapjack.WordAlloc.removeDeadStructural input9405 value4707 value1 value2 = (output9405, value4708, value1))
    (child9408 : Flapjack.WordAlloc.removeDeadStructural input9408 value4708 value1 value2 = (output9408, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9409 value4707 value1 value2 = (output9409, value5, value1) := by
  rw [input9409_def, output9409_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9405]
  dsimp only
  rw [child9408]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9405_skip, output9408_skip]
  kernel_rfl

theorem node9410_cond_eq
    (child9404 : Flapjack.WordAlloc.removeDeadStructural input9404 value4706 value1 value2 = (output9404, value4707, value1))
    (child9409 : Flapjack.WordAlloc.removeDeadStructural input9409 value4707 value1 value2 = (output9409, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9410 value4706 value1 value2 = (output9410, value5, value1) := by
  rw [input9410_def, output9410_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9404]
  dsimp only
  rw [child9409]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9404_skip, output9409_skip]
  kernel_rfl

theorem node9411_cond_eq
    (child9403 : Flapjack.WordAlloc.removeDeadStructural input9403 value4704 value1 value2 = (output9403, value4706, value1))
    (child9410 : Flapjack.WordAlloc.removeDeadStructural input9410 value4706 value1 value2 = (output9410, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9411 value4704 value1 value2 = (output9411, value5, value1) := by
  rw [input9411_def, output9411_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9403]
  dsimp only
  rw [child9410]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9403_skip, output9410_skip]
  kernel_rfl

theorem node9412_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9412 value5 value1 value2 = (output9412, value4710, value1) := by
  rw [input9412_def, output9412_def]
  kernel_rfl

theorem node9413_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9413 value4710 value1 value2 = (output9413, value4711, value1) := by
  rw [input9413_def, output9413_def]
  kernel_rfl

theorem node9414_cond_eq
    (child9412 : Flapjack.WordAlloc.removeDeadStructural input9412 value5 value1 value2 = (output9412, value4710, value1))
    (child9413 : Flapjack.WordAlloc.removeDeadStructural input9413 value4710 value1 value2 = (output9413, value4711, value1)) : Flapjack.WordAlloc.removeDeadStructural input9414 value5 value1 value2 = (output9414, value4711, value1) := by
  rw [input9414_def, output9414_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9412]
  dsimp only
  rw [child9413]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9412_skip, output9413_skip]
  kernel_rfl

theorem node9415_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9415 value4711 value1 value2 = (output9415, value4712, value1) := by
  rw [input9415_def, output9415_def]
  kernel_rfl

theorem node9416_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9416 value4712 value1 value2 = (output9416, value4712, value1) := by
  rw [input9416_def, output9416_def]
  kernel_rfl

theorem node9417_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9417 value4712 value1 value2 = (output9417, value4713, value1) := by
  rw [input9417_def, output9417_def]
  kernel_rfl

theorem node9418_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9418 value4713 value1 value2 = (output9418, value4714, value1) := by
  rw [input9418_def, output9418_def]
  kernel_rfl

theorem node9419_cond_eq
    (child9417 : Flapjack.WordAlloc.removeDeadStructural input9417 value4712 value1 value2 = (output9417, value4713, value1))
    (child9418 : Flapjack.WordAlloc.removeDeadStructural input9418 value4713 value1 value2 = (output9418, value4714, value1)) : Flapjack.WordAlloc.removeDeadStructural input9419 value4712 value1 value2 = (output9419, value4714, value1) := by
  rw [input9419_def, output9419_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9417]
  dsimp only
  rw [child9418]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9417_skip, output9418_skip]
  kernel_rfl

theorem node9420_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9420 value4714 value1 value2 = (output9420, value4715, value1) := by
  rw [input9420_def, output9420_def]
  kernel_rfl

theorem node9421_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9421 value4715 value1 value2 = (output9421, value4716, value1) := by
  rw [input9421_def, output9421_def]
  kernel_rfl

theorem node9422_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9422 value4716 value1 value2 = (output9422, value4717, value1) := by
  rw [input9422_def, output9422_def]
  kernel_rfl

theorem node9423_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9423 value4717 value1 value2 = (output9423, value5, value1) := by
  rw [input9423_def, output9423_def]
  kernel_rfl

theorem node9424_cond_eq
    (child9422 : Flapjack.WordAlloc.removeDeadStructural input9422 value4716 value1 value2 = (output9422, value4717, value1))
    (child9423 : Flapjack.WordAlloc.removeDeadStructural input9423 value4717 value1 value2 = (output9423, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9424 value4716 value1 value2 = (output9424, value5, value1) := by
  rw [input9424_def, output9424_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9422]
  dsimp only
  rw [child9423]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9422_skip, output9423_skip]
  kernel_rfl

theorem node9425_cond_eq
    (child9421 : Flapjack.WordAlloc.removeDeadStructural input9421 value4715 value1 value2 = (output9421, value4716, value1))
    (child9424 : Flapjack.WordAlloc.removeDeadStructural input9424 value4716 value1 value2 = (output9424, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9425 value4715 value1 value2 = (output9425, value5, value1) := by
  rw [input9425_def, output9425_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9421]
  dsimp only
  rw [child9424]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9421_skip, output9424_skip]
  kernel_rfl

theorem node9426_cond_eq
    (child9420 : Flapjack.WordAlloc.removeDeadStructural input9420 value4714 value1 value2 = (output9420, value4715, value1))
    (child9425 : Flapjack.WordAlloc.removeDeadStructural input9425 value4715 value1 value2 = (output9425, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9426 value4714 value1 value2 = (output9426, value5, value1) := by
  rw [input9426_def, output9426_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9420]
  dsimp only
  rw [child9425]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9420_skip, output9425_skip]
  kernel_rfl

theorem node9427_cond_eq
    (child9419 : Flapjack.WordAlloc.removeDeadStructural input9419 value4712 value1 value2 = (output9419, value4714, value1))
    (child9426 : Flapjack.WordAlloc.removeDeadStructural input9426 value4714 value1 value2 = (output9426, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9427 value4712 value1 value2 = (output9427, value5, value1) := by
  rw [input9427_def, output9427_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9419]
  dsimp only
  rw [child9426]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9419_skip, output9426_skip]
  kernel_rfl

theorem node9428_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9428 value5 value1 value2 = (output9428, value4718, value1) := by
  rw [input9428_def, output9428_def]
  kernel_rfl

theorem node9429_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9429 value4718 value1 value2 = (output9429, value4719, value1) := by
  rw [input9429_def, output9429_def]
  kernel_rfl

theorem node9430_cond_eq
    (child9428 : Flapjack.WordAlloc.removeDeadStructural input9428 value5 value1 value2 = (output9428, value4718, value1))
    (child9429 : Flapjack.WordAlloc.removeDeadStructural input9429 value4718 value1 value2 = (output9429, value4719, value1)) : Flapjack.WordAlloc.removeDeadStructural input9430 value5 value1 value2 = (output9430, value4719, value1) := by
  rw [input9430_def, output9430_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9428]
  dsimp only
  rw [child9429]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9428_skip, output9429_skip]
  kernel_rfl

theorem node9431_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9431 value4719 value1 value2 = (output9431, value4720, value1) := by
  rw [input9431_def, output9431_def]
  kernel_rfl

theorem node9432_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9432 value4720 value1 value2 = (output9432, value4720, value1) := by
  rw [input9432_def, output9432_def]
  kernel_rfl

theorem node9433_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9433 value4720 value1 value2 = (output9433, value4721, value1) := by
  rw [input9433_def, output9433_def]
  kernel_rfl

theorem node9434_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9434 value4721 value1 value2 = (output9434, value4722, value1) := by
  rw [input9434_def, output9434_def]
  kernel_rfl

theorem node9435_cond_eq
    (child9433 : Flapjack.WordAlloc.removeDeadStructural input9433 value4720 value1 value2 = (output9433, value4721, value1))
    (child9434 : Flapjack.WordAlloc.removeDeadStructural input9434 value4721 value1 value2 = (output9434, value4722, value1)) : Flapjack.WordAlloc.removeDeadStructural input9435 value4720 value1 value2 = (output9435, value4722, value1) := by
  rw [input9435_def, output9435_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9433]
  dsimp only
  rw [child9434]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9433_skip, output9434_skip]
  kernel_rfl

theorem node9436_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9436 value4722 value1 value2 = (output9436, value4723, value1) := by
  rw [input9436_def, output9436_def]
  kernel_rfl

theorem node9437_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9437 value4723 value1 value2 = (output9437, value4724, value1) := by
  rw [input9437_def, output9437_def]
  kernel_rfl

theorem node9438_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9438 value4724 value1 value2 = (output9438, value4725, value1) := by
  rw [input9438_def, output9438_def]
  kernel_rfl

theorem node9439_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9439 value4725 value1 value2 = (output9439, value5, value1) := by
  rw [input9439_def, output9439_def]
  kernel_rfl

theorem node9440_cond_eq
    (child9438 : Flapjack.WordAlloc.removeDeadStructural input9438 value4724 value1 value2 = (output9438, value4725, value1))
    (child9439 : Flapjack.WordAlloc.removeDeadStructural input9439 value4725 value1 value2 = (output9439, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9440 value4724 value1 value2 = (output9440, value5, value1) := by
  rw [input9440_def, output9440_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9438]
  dsimp only
  rw [child9439]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9438_skip, output9439_skip]
  kernel_rfl

theorem node9441_cond_eq
    (child9437 : Flapjack.WordAlloc.removeDeadStructural input9437 value4723 value1 value2 = (output9437, value4724, value1))
    (child9440 : Flapjack.WordAlloc.removeDeadStructural input9440 value4724 value1 value2 = (output9440, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9441 value4723 value1 value2 = (output9441, value5, value1) := by
  rw [input9441_def, output9441_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9437]
  dsimp only
  rw [child9440]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9437_skip, output9440_skip]
  kernel_rfl

theorem node9442_cond_eq
    (child9436 : Flapjack.WordAlloc.removeDeadStructural input9436 value4722 value1 value2 = (output9436, value4723, value1))
    (child9441 : Flapjack.WordAlloc.removeDeadStructural input9441 value4723 value1 value2 = (output9441, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9442 value4722 value1 value2 = (output9442, value5, value1) := by
  rw [input9442_def, output9442_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9436]
  dsimp only
  rw [child9441]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9436_skip, output9441_skip]
  kernel_rfl

theorem node9443_cond_eq
    (child9435 : Flapjack.WordAlloc.removeDeadStructural input9435 value4720 value1 value2 = (output9435, value4722, value1))
    (child9442 : Flapjack.WordAlloc.removeDeadStructural input9442 value4722 value1 value2 = (output9442, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9443 value4720 value1 value2 = (output9443, value5, value1) := by
  rw [input9443_def, output9443_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9435]
  dsimp only
  rw [child9442]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9435_skip, output9442_skip]
  kernel_rfl

theorem node9444_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9444 value5 value1 value2 = (output9444, value4726, value1) := by
  rw [input9444_def, output9444_def]
  kernel_rfl

theorem node9445_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9445 value4726 value1 value2 = (output9445, value4727, value1) := by
  rw [input9445_def, output9445_def]
  kernel_rfl

theorem node9446_cond_eq
    (child9444 : Flapjack.WordAlloc.removeDeadStructural input9444 value5 value1 value2 = (output9444, value4726, value1))
    (child9445 : Flapjack.WordAlloc.removeDeadStructural input9445 value4726 value1 value2 = (output9445, value4727, value1)) : Flapjack.WordAlloc.removeDeadStructural input9446 value5 value1 value2 = (output9446, value4727, value1) := by
  rw [input9446_def, output9446_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9444]
  dsimp only
  rw [child9445]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9444_skip, output9445_skip]
  kernel_rfl

theorem node9447_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9447 value4727 value1 value2 = (output9447, value4728, value1) := by
  rw [input9447_def, output9447_def]
  kernel_rfl

theorem node9448_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9448 value4728 value1 value2 = (output9448, value4728, value1) := by
  rw [input9448_def, output9448_def]
  kernel_rfl

theorem node9449_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9449 value4728 value1 value2 = (output9449, value4729, value1) := by
  rw [input9449_def, output9449_def]
  kernel_rfl

theorem node9450_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9450 value4729 value1 value2 = (output9450, value4730, value1) := by
  rw [input9450_def, output9450_def]
  kernel_rfl

theorem node9451_cond_eq
    (child9449 : Flapjack.WordAlloc.removeDeadStructural input9449 value4728 value1 value2 = (output9449, value4729, value1))
    (child9450 : Flapjack.WordAlloc.removeDeadStructural input9450 value4729 value1 value2 = (output9450, value4730, value1)) : Flapjack.WordAlloc.removeDeadStructural input9451 value4728 value1 value2 = (output9451, value4730, value1) := by
  rw [input9451_def, output9451_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9449]
  dsimp only
  rw [child9450]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9449_skip, output9450_skip]
  kernel_rfl

theorem node9452_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9452 value4730 value1 value2 = (output9452, value4731, value1) := by
  rw [input9452_def, output9452_def]
  kernel_rfl

theorem node9453_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9453 value4731 value1 value2 = (output9453, value4732, value1) := by
  rw [input9453_def, output9453_def]
  kernel_rfl

theorem node9454_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9454 value4732 value1 value2 = (output9454, value4733, value1) := by
  rw [input9454_def, output9454_def]
  kernel_rfl

theorem node9455_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9455 value4733 value1 value2 = (output9455, value5, value1) := by
  rw [input9455_def, output9455_def]
  kernel_rfl

theorem node9456_cond_eq
    (child9454 : Flapjack.WordAlloc.removeDeadStructural input9454 value4732 value1 value2 = (output9454, value4733, value1))
    (child9455 : Flapjack.WordAlloc.removeDeadStructural input9455 value4733 value1 value2 = (output9455, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9456 value4732 value1 value2 = (output9456, value5, value1) := by
  rw [input9456_def, output9456_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9454]
  dsimp only
  rw [child9455]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9454_skip, output9455_skip]
  kernel_rfl

theorem node9457_cond_eq
    (child9453 : Flapjack.WordAlloc.removeDeadStructural input9453 value4731 value1 value2 = (output9453, value4732, value1))
    (child9456 : Flapjack.WordAlloc.removeDeadStructural input9456 value4732 value1 value2 = (output9456, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9457 value4731 value1 value2 = (output9457, value5, value1) := by
  rw [input9457_def, output9457_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9453]
  dsimp only
  rw [child9456]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9453_skip, output9456_skip]
  kernel_rfl

theorem node9458_cond_eq
    (child9452 : Flapjack.WordAlloc.removeDeadStructural input9452 value4730 value1 value2 = (output9452, value4731, value1))
    (child9457 : Flapjack.WordAlloc.removeDeadStructural input9457 value4731 value1 value2 = (output9457, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9458 value4730 value1 value2 = (output9458, value5, value1) := by
  rw [input9458_def, output9458_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9452]
  dsimp only
  rw [child9457]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9452_skip, output9457_skip]
  kernel_rfl

theorem node9459_cond_eq
    (child9451 : Flapjack.WordAlloc.removeDeadStructural input9451 value4728 value1 value2 = (output9451, value4730, value1))
    (child9458 : Flapjack.WordAlloc.removeDeadStructural input9458 value4730 value1 value2 = (output9458, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9459 value4728 value1 value2 = (output9459, value5, value1) := by
  rw [input9459_def, output9459_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9451]
  dsimp only
  rw [child9458]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9451_skip, output9458_skip]
  kernel_rfl

theorem node9460_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9460 value5 value1 value2 = (output9460, value4734, value1) := by
  rw [input9460_def, output9460_def]
  kernel_rfl

theorem node9461_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9461 value4734 value1 value2 = (output9461, value4735, value1) := by
  rw [input9461_def, output9461_def]
  kernel_rfl

theorem node9462_cond_eq
    (child9460 : Flapjack.WordAlloc.removeDeadStructural input9460 value5 value1 value2 = (output9460, value4734, value1))
    (child9461 : Flapjack.WordAlloc.removeDeadStructural input9461 value4734 value1 value2 = (output9461, value4735, value1)) : Flapjack.WordAlloc.removeDeadStructural input9462 value5 value1 value2 = (output9462, value4735, value1) := by
  rw [input9462_def, output9462_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9460]
  dsimp only
  rw [child9461]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9460_skip, output9461_skip]
  kernel_rfl

theorem node9463_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9463 value4735 value1 value2 = (output9463, value4736, value1) := by
  rw [input9463_def, output9463_def]
  kernel_rfl

theorem node9464_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9464 value4736 value1 value2 = (output9464, value4736, value1) := by
  rw [input9464_def, output9464_def]
  kernel_rfl

theorem node9465_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9465 value4736 value1 value2 = (output9465, value4737, value1) := by
  rw [input9465_def, output9465_def]
  kernel_rfl

theorem node9466_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9466 value4737 value1 value2 = (output9466, value4738, value1) := by
  rw [input9466_def, output9466_def]
  kernel_rfl

theorem node9467_cond_eq
    (child9465 : Flapjack.WordAlloc.removeDeadStructural input9465 value4736 value1 value2 = (output9465, value4737, value1))
    (child9466 : Flapjack.WordAlloc.removeDeadStructural input9466 value4737 value1 value2 = (output9466, value4738, value1)) : Flapjack.WordAlloc.removeDeadStructural input9467 value4736 value1 value2 = (output9467, value4738, value1) := by
  rw [input9467_def, output9467_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9465]
  dsimp only
  rw [child9466]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9465_skip, output9466_skip]
  kernel_rfl

theorem node9468_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9468 value4738 value1 value2 = (output9468, value4739, value1) := by
  rw [input9468_def, output9468_def]
  kernel_rfl

theorem node9469_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9469 value4739 value1 value2 = (output9469, value4740, value1) := by
  rw [input9469_def, output9469_def]
  kernel_rfl

theorem node9470_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9470 value4740 value1 value2 = (output9470, value4741, value1) := by
  rw [input9470_def, output9470_def]
  kernel_rfl

theorem node9471_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9471 value4741 value1 value2 = (output9471, value5, value1) := by
  rw [input9471_def, output9471_def]
  kernel_rfl

#print axioms node9471_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
