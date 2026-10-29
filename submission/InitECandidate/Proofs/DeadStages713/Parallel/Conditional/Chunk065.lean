import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk065
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node16640_cond_eq
    (child3062 : Flapjack.WordAlloc.removeDeadStructural input3062 value5 value1 value2 = (output3062, value1535, value1))
    (child16639 : Flapjack.WordAlloc.removeDeadStructural input16639 value1535 value1 value2 = (output16639, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16640 value5 value1 value2 = (output16640, value6896, value1) := by
  rw [input16640_def, output16640_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3062]
  try dsimp only
  rw [child16639]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3062_skip, output16639_skip]
  kernel_rfl

theorem node16641_cond_eq
    (child3059 : Flapjack.WordAlloc.removeDeadStructural input3059 value1528 value1 value2 = (output3059, value5, value1))
    (child16640 : Flapjack.WordAlloc.removeDeadStructural input16640 value5 value1 value2 = (output16640, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16641 value1528 value1 value2 = (output16641, value6896, value1) := by
  rw [input16641_def, output16641_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3059]
  try dsimp only
  rw [child16640]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3059_skip, output16640_skip]
  kernel_rfl

theorem node16642_cond_eq
    (child3048 : Flapjack.WordAlloc.removeDeadStructural input3048 value1528 value1 value2 = (output3048, value1528, value1))
    (child16641 : Flapjack.WordAlloc.removeDeadStructural input16641 value1528 value1 value2 = (output16641, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16642 value1528 value1 value2 = (output16642, value6896, value1) := by
  rw [input16642_def, output16642_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3048]
  try dsimp only
  rw [child16641]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3048_skip, output16641_skip]
  kernel_rfl

theorem node16643_cond_eq
    (child3047 : Flapjack.WordAlloc.removeDeadStructural input3047 value1527 value1 value2 = (output3047, value1528, value1))
    (child16642 : Flapjack.WordAlloc.removeDeadStructural input16642 value1528 value1 value2 = (output16642, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16643 value1527 value1 value2 = (output16643, value6896, value1) := by
  rw [input16643_def, output16643_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3047]
  try dsimp only
  rw [child16642]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3047_skip, output16642_skip]
  kernel_rfl

theorem node16644_cond_eq
    (child3046 : Flapjack.WordAlloc.removeDeadStructural input3046 value5 value1 value2 = (output3046, value1527, value1))
    (child16643 : Flapjack.WordAlloc.removeDeadStructural input16643 value1527 value1 value2 = (output16643, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16644 value5 value1 value2 = (output16644, value6896, value1) := by
  rw [input16644_def, output16644_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3046]
  try dsimp only
  rw [child16643]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3046_skip, output16643_skip]
  kernel_rfl

theorem node16645_cond_eq
    (child3043 : Flapjack.WordAlloc.removeDeadStructural input3043 value1520 value1 value2 = (output3043, value5, value1))
    (child16644 : Flapjack.WordAlloc.removeDeadStructural input16644 value5 value1 value2 = (output16644, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16645 value1520 value1 value2 = (output16645, value6896, value1) := by
  rw [input16645_def, output16645_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3043]
  try dsimp only
  rw [child16644]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3043_skip, output16644_skip]
  kernel_rfl

theorem node16646_cond_eq
    (child3032 : Flapjack.WordAlloc.removeDeadStructural input3032 value1520 value1 value2 = (output3032, value1520, value1))
    (child16645 : Flapjack.WordAlloc.removeDeadStructural input16645 value1520 value1 value2 = (output16645, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16646 value1520 value1 value2 = (output16646, value6896, value1) := by
  rw [input16646_def, output16646_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3032]
  try dsimp only
  rw [child16645]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3032_skip, output16645_skip]
  kernel_rfl

theorem node16647_cond_eq
    (child3031 : Flapjack.WordAlloc.removeDeadStructural input3031 value1519 value1 value2 = (output3031, value1520, value1))
    (child16646 : Flapjack.WordAlloc.removeDeadStructural input16646 value1520 value1 value2 = (output16646, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16647 value1519 value1 value2 = (output16647, value6896, value1) := by
  rw [input16647_def, output16647_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3031]
  try dsimp only
  rw [child16646]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3031_skip, output16646_skip]
  kernel_rfl

theorem node16648_cond_eq
    (child3030 : Flapjack.WordAlloc.removeDeadStructural input3030 value5 value1 value2 = (output3030, value1519, value1))
    (child16647 : Flapjack.WordAlloc.removeDeadStructural input16647 value1519 value1 value2 = (output16647, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16648 value5 value1 value2 = (output16648, value6896, value1) := by
  rw [input16648_def, output16648_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3030]
  try dsimp only
  rw [child16647]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3030_skip, output16647_skip]
  kernel_rfl

theorem node16649_cond_eq
    (child3027 : Flapjack.WordAlloc.removeDeadStructural input3027 value1512 value1 value2 = (output3027, value5, value1))
    (child16648 : Flapjack.WordAlloc.removeDeadStructural input16648 value5 value1 value2 = (output16648, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16649 value1512 value1 value2 = (output16649, value6896, value1) := by
  rw [input16649_def, output16649_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3027]
  try dsimp only
  rw [child16648]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3027_skip, output16648_skip]
  kernel_rfl

theorem node16650_cond_eq
    (child3016 : Flapjack.WordAlloc.removeDeadStructural input3016 value1512 value1 value2 = (output3016, value1512, value1))
    (child16649 : Flapjack.WordAlloc.removeDeadStructural input16649 value1512 value1 value2 = (output16649, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16650 value1512 value1 value2 = (output16650, value6896, value1) := by
  rw [input16650_def, output16650_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3016]
  try dsimp only
  rw [child16649]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3016_skip, output16649_skip]
  kernel_rfl

theorem node16651_cond_eq
    (child3015 : Flapjack.WordAlloc.removeDeadStructural input3015 value1511 value1 value2 = (output3015, value1512, value1))
    (child16650 : Flapjack.WordAlloc.removeDeadStructural input16650 value1512 value1 value2 = (output16650, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16651 value1511 value1 value2 = (output16651, value6896, value1) := by
  rw [input16651_def, output16651_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3015]
  try dsimp only
  rw [child16650]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3015_skip, output16650_skip]
  kernel_rfl

theorem node16652_cond_eq
    (child3014 : Flapjack.WordAlloc.removeDeadStructural input3014 value5 value1 value2 = (output3014, value1511, value1))
    (child16651 : Flapjack.WordAlloc.removeDeadStructural input16651 value1511 value1 value2 = (output16651, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16652 value5 value1 value2 = (output16652, value6896, value1) := by
  rw [input16652_def, output16652_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3014]
  try dsimp only
  rw [child16651]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3014_skip, output16651_skip]
  kernel_rfl

theorem node16653_cond_eq
    (child3011 : Flapjack.WordAlloc.removeDeadStructural input3011 value1504 value1 value2 = (output3011, value5, value1))
    (child16652 : Flapjack.WordAlloc.removeDeadStructural input16652 value5 value1 value2 = (output16652, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16653 value1504 value1 value2 = (output16653, value6896, value1) := by
  rw [input16653_def, output16653_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3011]
  try dsimp only
  rw [child16652]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3011_skip, output16652_skip]
  kernel_rfl

theorem node16654_cond_eq
    (child3000 : Flapjack.WordAlloc.removeDeadStructural input3000 value1504 value1 value2 = (output3000, value1504, value1))
    (child16653 : Flapjack.WordAlloc.removeDeadStructural input16653 value1504 value1 value2 = (output16653, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16654 value1504 value1 value2 = (output16654, value6896, value1) := by
  rw [input16654_def, output16654_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3000]
  try dsimp only
  rw [child16653]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3000_skip, output16653_skip]
  kernel_rfl

theorem node16655_cond_eq
    (child2999 : Flapjack.WordAlloc.removeDeadStructural input2999 value1503 value1 value2 = (output2999, value1504, value1))
    (child16654 : Flapjack.WordAlloc.removeDeadStructural input16654 value1504 value1 value2 = (output16654, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16655 value1503 value1 value2 = (output16655, value6896, value1) := by
  rw [input16655_def, output16655_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2999]
  try dsimp only
  rw [child16654]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2999_skip, output16654_skip]
  kernel_rfl

theorem node16656_cond_eq
    (child2998 : Flapjack.WordAlloc.removeDeadStructural input2998 value5 value1 value2 = (output2998, value1503, value1))
    (child16655 : Flapjack.WordAlloc.removeDeadStructural input16655 value1503 value1 value2 = (output16655, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16656 value5 value1 value2 = (output16656, value6896, value1) := by
  rw [input16656_def, output16656_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2998]
  try dsimp only
  rw [child16655]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2998_skip, output16655_skip]
  kernel_rfl

theorem node16657_cond_eq
    (child2995 : Flapjack.WordAlloc.removeDeadStructural input2995 value1496 value1 value2 = (output2995, value5, value1))
    (child16656 : Flapjack.WordAlloc.removeDeadStructural input16656 value5 value1 value2 = (output16656, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16657 value1496 value1 value2 = (output16657, value6896, value1) := by
  rw [input16657_def, output16657_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2995]
  try dsimp only
  rw [child16656]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2995_skip, output16656_skip]
  kernel_rfl

theorem node16658_cond_eq
    (child2984 : Flapjack.WordAlloc.removeDeadStructural input2984 value1496 value1 value2 = (output2984, value1496, value1))
    (child16657 : Flapjack.WordAlloc.removeDeadStructural input16657 value1496 value1 value2 = (output16657, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16658 value1496 value1 value2 = (output16658, value6896, value1) := by
  rw [input16658_def, output16658_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2984]
  try dsimp only
  rw [child16657]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2984_skip, output16657_skip]
  kernel_rfl

theorem node16659_cond_eq
    (child2983 : Flapjack.WordAlloc.removeDeadStructural input2983 value1495 value1 value2 = (output2983, value1496, value1))
    (child16658 : Flapjack.WordAlloc.removeDeadStructural input16658 value1496 value1 value2 = (output16658, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16659 value1495 value1 value2 = (output16659, value6896, value1) := by
  rw [input16659_def, output16659_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2983]
  try dsimp only
  rw [child16658]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2983_skip, output16658_skip]
  kernel_rfl

theorem node16660_cond_eq
    (child2982 : Flapjack.WordAlloc.removeDeadStructural input2982 value5 value1 value2 = (output2982, value1495, value1))
    (child16659 : Flapjack.WordAlloc.removeDeadStructural input16659 value1495 value1 value2 = (output16659, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16660 value5 value1 value2 = (output16660, value6896, value1) := by
  rw [input16660_def, output16660_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2982]
  try dsimp only
  rw [child16659]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2982_skip, output16659_skip]
  kernel_rfl

theorem node16661_cond_eq
    (child2979 : Flapjack.WordAlloc.removeDeadStructural input2979 value1488 value1 value2 = (output2979, value5, value1))
    (child16660 : Flapjack.WordAlloc.removeDeadStructural input16660 value5 value1 value2 = (output16660, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16661 value1488 value1 value2 = (output16661, value6896, value1) := by
  rw [input16661_def, output16661_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2979]
  try dsimp only
  rw [child16660]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2979_skip, output16660_skip]
  kernel_rfl

theorem node16662_cond_eq
    (child2968 : Flapjack.WordAlloc.removeDeadStructural input2968 value1488 value1 value2 = (output2968, value1488, value1))
    (child16661 : Flapjack.WordAlloc.removeDeadStructural input16661 value1488 value1 value2 = (output16661, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16662 value1488 value1 value2 = (output16662, value6896, value1) := by
  rw [input16662_def, output16662_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2968]
  try dsimp only
  rw [child16661]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2968_skip, output16661_skip]
  kernel_rfl

theorem node16663_cond_eq
    (child2967 : Flapjack.WordAlloc.removeDeadStructural input2967 value1487 value1 value2 = (output2967, value1488, value1))
    (child16662 : Flapjack.WordAlloc.removeDeadStructural input16662 value1488 value1 value2 = (output16662, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16663 value1487 value1 value2 = (output16663, value6896, value1) := by
  rw [input16663_def, output16663_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2967]
  try dsimp only
  rw [child16662]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2967_skip, output16662_skip]
  kernel_rfl

theorem node16664_cond_eq
    (child2966 : Flapjack.WordAlloc.removeDeadStructural input2966 value5 value1 value2 = (output2966, value1487, value1))
    (child16663 : Flapjack.WordAlloc.removeDeadStructural input16663 value1487 value1 value2 = (output16663, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16664 value5 value1 value2 = (output16664, value6896, value1) := by
  rw [input16664_def, output16664_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2966]
  try dsimp only
  rw [child16663]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2966_skip, output16663_skip]
  kernel_rfl

theorem node16665_cond_eq
    (child2963 : Flapjack.WordAlloc.removeDeadStructural input2963 value1480 value1 value2 = (output2963, value5, value1))
    (child16664 : Flapjack.WordAlloc.removeDeadStructural input16664 value5 value1 value2 = (output16664, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16665 value1480 value1 value2 = (output16665, value6896, value1) := by
  rw [input16665_def, output16665_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2963]
  try dsimp only
  rw [child16664]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2963_skip, output16664_skip]
  kernel_rfl

theorem node16666_cond_eq
    (child2952 : Flapjack.WordAlloc.removeDeadStructural input2952 value1480 value1 value2 = (output2952, value1480, value1))
    (child16665 : Flapjack.WordAlloc.removeDeadStructural input16665 value1480 value1 value2 = (output16665, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16666 value1480 value1 value2 = (output16666, value6896, value1) := by
  rw [input16666_def, output16666_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2952]
  try dsimp only
  rw [child16665]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2952_skip, output16665_skip]
  kernel_rfl

theorem node16667_cond_eq
    (child2951 : Flapjack.WordAlloc.removeDeadStructural input2951 value1479 value1 value2 = (output2951, value1480, value1))
    (child16666 : Flapjack.WordAlloc.removeDeadStructural input16666 value1480 value1 value2 = (output16666, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16667 value1479 value1 value2 = (output16667, value6896, value1) := by
  rw [input16667_def, output16667_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2951]
  try dsimp only
  rw [child16666]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2951_skip, output16666_skip]
  kernel_rfl

theorem node16668_cond_eq
    (child2950 : Flapjack.WordAlloc.removeDeadStructural input2950 value5 value1 value2 = (output2950, value1479, value1))
    (child16667 : Flapjack.WordAlloc.removeDeadStructural input16667 value1479 value1 value2 = (output16667, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16668 value5 value1 value2 = (output16668, value6896, value1) := by
  rw [input16668_def, output16668_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2950]
  try dsimp only
  rw [child16667]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2950_skip, output16667_skip]
  kernel_rfl

theorem node16669_cond_eq
    (child2947 : Flapjack.WordAlloc.removeDeadStructural input2947 value1472 value1 value2 = (output2947, value5, value1))
    (child16668 : Flapjack.WordAlloc.removeDeadStructural input16668 value5 value1 value2 = (output16668, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16669 value1472 value1 value2 = (output16669, value6896, value1) := by
  rw [input16669_def, output16669_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2947]
  try dsimp only
  rw [child16668]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2947_skip, output16668_skip]
  kernel_rfl

theorem node16670_cond_eq
    (child2936 : Flapjack.WordAlloc.removeDeadStructural input2936 value1472 value1 value2 = (output2936, value1472, value1))
    (child16669 : Flapjack.WordAlloc.removeDeadStructural input16669 value1472 value1 value2 = (output16669, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16670 value1472 value1 value2 = (output16670, value6896, value1) := by
  rw [input16670_def, output16670_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2936]
  try dsimp only
  rw [child16669]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2936_skip, output16669_skip]
  kernel_rfl

theorem node16671_cond_eq
    (child2935 : Flapjack.WordAlloc.removeDeadStructural input2935 value1471 value1 value2 = (output2935, value1472, value1))
    (child16670 : Flapjack.WordAlloc.removeDeadStructural input16670 value1472 value1 value2 = (output16670, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16671 value1471 value1 value2 = (output16671, value6896, value1) := by
  rw [input16671_def, output16671_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2935]
  try dsimp only
  rw [child16670]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2935_skip, output16670_skip]
  kernel_rfl

theorem node16672_cond_eq
    (child2934 : Flapjack.WordAlloc.removeDeadStructural input2934 value5 value1 value2 = (output2934, value1471, value1))
    (child16671 : Flapjack.WordAlloc.removeDeadStructural input16671 value1471 value1 value2 = (output16671, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16672 value5 value1 value2 = (output16672, value6896, value1) := by
  rw [input16672_def, output16672_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2934]
  try dsimp only
  rw [child16671]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2934_skip, output16671_skip]
  kernel_rfl

theorem node16673_cond_eq
    (child2931 : Flapjack.WordAlloc.removeDeadStructural input2931 value1464 value1 value2 = (output2931, value5, value1))
    (child16672 : Flapjack.WordAlloc.removeDeadStructural input16672 value5 value1 value2 = (output16672, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16673 value1464 value1 value2 = (output16673, value6896, value1) := by
  rw [input16673_def, output16673_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2931]
  try dsimp only
  rw [child16672]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2931_skip, output16672_skip]
  kernel_rfl

theorem node16674_cond_eq
    (child2920 : Flapjack.WordAlloc.removeDeadStructural input2920 value1464 value1 value2 = (output2920, value1464, value1))
    (child16673 : Flapjack.WordAlloc.removeDeadStructural input16673 value1464 value1 value2 = (output16673, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16674 value1464 value1 value2 = (output16674, value6896, value1) := by
  rw [input16674_def, output16674_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2920]
  try dsimp only
  rw [child16673]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2920_skip, output16673_skip]
  kernel_rfl

theorem node16675_cond_eq
    (child2919 : Flapjack.WordAlloc.removeDeadStructural input2919 value1463 value1 value2 = (output2919, value1464, value1))
    (child16674 : Flapjack.WordAlloc.removeDeadStructural input16674 value1464 value1 value2 = (output16674, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16675 value1463 value1 value2 = (output16675, value6896, value1) := by
  rw [input16675_def, output16675_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2919]
  try dsimp only
  rw [child16674]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2919_skip, output16674_skip]
  kernel_rfl

theorem node16676_cond_eq
    (child2918 : Flapjack.WordAlloc.removeDeadStructural input2918 value5 value1 value2 = (output2918, value1463, value1))
    (child16675 : Flapjack.WordAlloc.removeDeadStructural input16675 value1463 value1 value2 = (output16675, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16676 value5 value1 value2 = (output16676, value6896, value1) := by
  rw [input16676_def, output16676_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2918]
  try dsimp only
  rw [child16675]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2918_skip, output16675_skip]
  kernel_rfl

theorem node16677_cond_eq
    (child2915 : Flapjack.WordAlloc.removeDeadStructural input2915 value1456 value1 value2 = (output2915, value5, value1))
    (child16676 : Flapjack.WordAlloc.removeDeadStructural input16676 value5 value1 value2 = (output16676, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16677 value1456 value1 value2 = (output16677, value6896, value1) := by
  rw [input16677_def, output16677_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2915]
  try dsimp only
  rw [child16676]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2915_skip, output16676_skip]
  kernel_rfl

theorem node16678_cond_eq
    (child2904 : Flapjack.WordAlloc.removeDeadStructural input2904 value1456 value1 value2 = (output2904, value1456, value1))
    (child16677 : Flapjack.WordAlloc.removeDeadStructural input16677 value1456 value1 value2 = (output16677, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16678 value1456 value1 value2 = (output16678, value6896, value1) := by
  rw [input16678_def, output16678_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2904]
  try dsimp only
  rw [child16677]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2904_skip, output16677_skip]
  kernel_rfl

theorem node16679_cond_eq
    (child2903 : Flapjack.WordAlloc.removeDeadStructural input2903 value1455 value1 value2 = (output2903, value1456, value1))
    (child16678 : Flapjack.WordAlloc.removeDeadStructural input16678 value1456 value1 value2 = (output16678, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16679 value1455 value1 value2 = (output16679, value6896, value1) := by
  rw [input16679_def, output16679_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2903]
  try dsimp only
  rw [child16678]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2903_skip, output16678_skip]
  kernel_rfl

theorem node16680_cond_eq
    (child2902 : Flapjack.WordAlloc.removeDeadStructural input2902 value5 value1 value2 = (output2902, value1455, value1))
    (child16679 : Flapjack.WordAlloc.removeDeadStructural input16679 value1455 value1 value2 = (output16679, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16680 value5 value1 value2 = (output16680, value6896, value1) := by
  rw [input16680_def, output16680_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2902]
  try dsimp only
  rw [child16679]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2902_skip, output16679_skip]
  kernel_rfl

theorem node16681_cond_eq
    (child2899 : Flapjack.WordAlloc.removeDeadStructural input2899 value1448 value1 value2 = (output2899, value5, value1))
    (child16680 : Flapjack.WordAlloc.removeDeadStructural input16680 value5 value1 value2 = (output16680, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16681 value1448 value1 value2 = (output16681, value6896, value1) := by
  rw [input16681_def, output16681_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2899]
  try dsimp only
  rw [child16680]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2899_skip, output16680_skip]
  kernel_rfl

theorem node16682_cond_eq
    (child2888 : Flapjack.WordAlloc.removeDeadStructural input2888 value1448 value1 value2 = (output2888, value1448, value1))
    (child16681 : Flapjack.WordAlloc.removeDeadStructural input16681 value1448 value1 value2 = (output16681, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16682 value1448 value1 value2 = (output16682, value6896, value1) := by
  rw [input16682_def, output16682_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2888]
  try dsimp only
  rw [child16681]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2888_skip, output16681_skip]
  kernel_rfl

theorem node16683_cond_eq
    (child2887 : Flapjack.WordAlloc.removeDeadStructural input2887 value1447 value1 value2 = (output2887, value1448, value1))
    (child16682 : Flapjack.WordAlloc.removeDeadStructural input16682 value1448 value1 value2 = (output16682, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16683 value1447 value1 value2 = (output16683, value6896, value1) := by
  rw [input16683_def, output16683_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2887]
  try dsimp only
  rw [child16682]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2887_skip, output16682_skip]
  kernel_rfl

theorem node16684_cond_eq
    (child2886 : Flapjack.WordAlloc.removeDeadStructural input2886 value5 value1 value2 = (output2886, value1447, value1))
    (child16683 : Flapjack.WordAlloc.removeDeadStructural input16683 value1447 value1 value2 = (output16683, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16684 value5 value1 value2 = (output16684, value6896, value1) := by
  rw [input16684_def, output16684_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2886]
  try dsimp only
  rw [child16683]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2886_skip, output16683_skip]
  kernel_rfl

theorem node16685_cond_eq
    (child2883 : Flapjack.WordAlloc.removeDeadStructural input2883 value1440 value1 value2 = (output2883, value5, value1))
    (child16684 : Flapjack.WordAlloc.removeDeadStructural input16684 value5 value1 value2 = (output16684, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16685 value1440 value1 value2 = (output16685, value6896, value1) := by
  rw [input16685_def, output16685_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2883]
  try dsimp only
  rw [child16684]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2883_skip, output16684_skip]
  kernel_rfl

theorem node16686_cond_eq
    (child2872 : Flapjack.WordAlloc.removeDeadStructural input2872 value1440 value1 value2 = (output2872, value1440, value1))
    (child16685 : Flapjack.WordAlloc.removeDeadStructural input16685 value1440 value1 value2 = (output16685, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16686 value1440 value1 value2 = (output16686, value6896, value1) := by
  rw [input16686_def, output16686_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2872]
  try dsimp only
  rw [child16685]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2872_skip, output16685_skip]
  kernel_rfl

theorem node16687_cond_eq
    (child2871 : Flapjack.WordAlloc.removeDeadStructural input2871 value1439 value1 value2 = (output2871, value1440, value1))
    (child16686 : Flapjack.WordAlloc.removeDeadStructural input16686 value1440 value1 value2 = (output16686, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16687 value1439 value1 value2 = (output16687, value6896, value1) := by
  rw [input16687_def, output16687_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2871]
  try dsimp only
  rw [child16686]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2871_skip, output16686_skip]
  kernel_rfl

theorem node16688_cond_eq
    (child2870 : Flapjack.WordAlloc.removeDeadStructural input2870 value5 value1 value2 = (output2870, value1439, value1))
    (child16687 : Flapjack.WordAlloc.removeDeadStructural input16687 value1439 value1 value2 = (output16687, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16688 value5 value1 value2 = (output16688, value6896, value1) := by
  rw [input16688_def, output16688_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2870]
  try dsimp only
  rw [child16687]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2870_skip, output16687_skip]
  kernel_rfl

theorem node16689_cond_eq
    (child2867 : Flapjack.WordAlloc.removeDeadStructural input2867 value1432 value1 value2 = (output2867, value5, value1))
    (child16688 : Flapjack.WordAlloc.removeDeadStructural input16688 value5 value1 value2 = (output16688, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16689 value1432 value1 value2 = (output16689, value6896, value1) := by
  rw [input16689_def, output16689_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2867]
  try dsimp only
  rw [child16688]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2867_skip, output16688_skip]
  kernel_rfl

theorem node16690_cond_eq
    (child2856 : Flapjack.WordAlloc.removeDeadStructural input2856 value1432 value1 value2 = (output2856, value1432, value1))
    (child16689 : Flapjack.WordAlloc.removeDeadStructural input16689 value1432 value1 value2 = (output16689, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16690 value1432 value1 value2 = (output16690, value6896, value1) := by
  rw [input16690_def, output16690_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2856]
  try dsimp only
  rw [child16689]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2856_skip, output16689_skip]
  kernel_rfl

theorem node16691_cond_eq
    (child2855 : Flapjack.WordAlloc.removeDeadStructural input2855 value1431 value1 value2 = (output2855, value1432, value1))
    (child16690 : Flapjack.WordAlloc.removeDeadStructural input16690 value1432 value1 value2 = (output16690, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16691 value1431 value1 value2 = (output16691, value6896, value1) := by
  rw [input16691_def, output16691_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2855]
  try dsimp only
  rw [child16690]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2855_skip, output16690_skip]
  kernel_rfl

theorem node16692_cond_eq
    (child2854 : Flapjack.WordAlloc.removeDeadStructural input2854 value5 value1 value2 = (output2854, value1431, value1))
    (child16691 : Flapjack.WordAlloc.removeDeadStructural input16691 value1431 value1 value2 = (output16691, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16692 value5 value1 value2 = (output16692, value6896, value1) := by
  rw [input16692_def, output16692_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2854]
  try dsimp only
  rw [child16691]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2854_skip, output16691_skip]
  kernel_rfl

theorem node16693_cond_eq
    (child2851 : Flapjack.WordAlloc.removeDeadStructural input2851 value1424 value1 value2 = (output2851, value5, value1))
    (child16692 : Flapjack.WordAlloc.removeDeadStructural input16692 value5 value1 value2 = (output16692, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16693 value1424 value1 value2 = (output16693, value6896, value1) := by
  rw [input16693_def, output16693_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2851]
  try dsimp only
  rw [child16692]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2851_skip, output16692_skip]
  kernel_rfl

theorem node16694_cond_eq
    (child2840 : Flapjack.WordAlloc.removeDeadStructural input2840 value1424 value1 value2 = (output2840, value1424, value1))
    (child16693 : Flapjack.WordAlloc.removeDeadStructural input16693 value1424 value1 value2 = (output16693, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16694 value1424 value1 value2 = (output16694, value6896, value1) := by
  rw [input16694_def, output16694_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2840]
  try dsimp only
  rw [child16693]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2840_skip, output16693_skip]
  kernel_rfl

theorem node16695_cond_eq
    (child2839 : Flapjack.WordAlloc.removeDeadStructural input2839 value1423 value1 value2 = (output2839, value1424, value1))
    (child16694 : Flapjack.WordAlloc.removeDeadStructural input16694 value1424 value1 value2 = (output16694, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16695 value1423 value1 value2 = (output16695, value6896, value1) := by
  rw [input16695_def, output16695_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2839]
  try dsimp only
  rw [child16694]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2839_skip, output16694_skip]
  kernel_rfl

theorem node16696_cond_eq
    (child2838 : Flapjack.WordAlloc.removeDeadStructural input2838 value5 value1 value2 = (output2838, value1423, value1))
    (child16695 : Flapjack.WordAlloc.removeDeadStructural input16695 value1423 value1 value2 = (output16695, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16696 value5 value1 value2 = (output16696, value6896, value1) := by
  rw [input16696_def, output16696_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2838]
  try dsimp only
  rw [child16695]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2838_skip, output16695_skip]
  kernel_rfl

theorem node16697_cond_eq
    (child2835 : Flapjack.WordAlloc.removeDeadStructural input2835 value1416 value1 value2 = (output2835, value5, value1))
    (child16696 : Flapjack.WordAlloc.removeDeadStructural input16696 value5 value1 value2 = (output16696, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16697 value1416 value1 value2 = (output16697, value6896, value1) := by
  rw [input16697_def, output16697_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2835]
  try dsimp only
  rw [child16696]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2835_skip, output16696_skip]
  kernel_rfl

theorem node16698_cond_eq
    (child2824 : Flapjack.WordAlloc.removeDeadStructural input2824 value1416 value1 value2 = (output2824, value1416, value1))
    (child16697 : Flapjack.WordAlloc.removeDeadStructural input16697 value1416 value1 value2 = (output16697, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16698 value1416 value1 value2 = (output16698, value6896, value1) := by
  rw [input16698_def, output16698_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2824]
  try dsimp only
  rw [child16697]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2824_skip, output16697_skip]
  kernel_rfl

theorem node16699_cond_eq
    (child2823 : Flapjack.WordAlloc.removeDeadStructural input2823 value1415 value1 value2 = (output2823, value1416, value1))
    (child16698 : Flapjack.WordAlloc.removeDeadStructural input16698 value1416 value1 value2 = (output16698, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16699 value1415 value1 value2 = (output16699, value6896, value1) := by
  rw [input16699_def, output16699_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2823]
  try dsimp only
  rw [child16698]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2823_skip, output16698_skip]
  kernel_rfl

theorem node16700_cond_eq
    (child2822 : Flapjack.WordAlloc.removeDeadStructural input2822 value5 value1 value2 = (output2822, value1415, value1))
    (child16699 : Flapjack.WordAlloc.removeDeadStructural input16699 value1415 value1 value2 = (output16699, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16700 value5 value1 value2 = (output16700, value6896, value1) := by
  rw [input16700_def, output16700_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2822]
  try dsimp only
  rw [child16699]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2822_skip, output16699_skip]
  kernel_rfl

theorem node16701_cond_eq
    (child2819 : Flapjack.WordAlloc.removeDeadStructural input2819 value1408 value1 value2 = (output2819, value5, value1))
    (child16700 : Flapjack.WordAlloc.removeDeadStructural input16700 value5 value1 value2 = (output16700, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16701 value1408 value1 value2 = (output16701, value6896, value1) := by
  rw [input16701_def, output16701_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2819]
  try dsimp only
  rw [child16700]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2819_skip, output16700_skip]
  kernel_rfl

theorem node16702_cond_eq
    (child2808 : Flapjack.WordAlloc.removeDeadStructural input2808 value1408 value1 value2 = (output2808, value1408, value1))
    (child16701 : Flapjack.WordAlloc.removeDeadStructural input16701 value1408 value1 value2 = (output16701, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16702 value1408 value1 value2 = (output16702, value6896, value1) := by
  rw [input16702_def, output16702_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2808]
  try dsimp only
  rw [child16701]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2808_skip, output16701_skip]
  kernel_rfl

theorem node16703_cond_eq
    (child2807 : Flapjack.WordAlloc.removeDeadStructural input2807 value1407 value1 value2 = (output2807, value1408, value1))
    (child16702 : Flapjack.WordAlloc.removeDeadStructural input16702 value1408 value1 value2 = (output16702, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16703 value1407 value1 value2 = (output16703, value6896, value1) := by
  rw [input16703_def, output16703_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2807]
  try dsimp only
  rw [child16702]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2807_skip, output16702_skip]
  kernel_rfl

theorem node16704_cond_eq
    (child2806 : Flapjack.WordAlloc.removeDeadStructural input2806 value5 value1 value2 = (output2806, value1407, value1))
    (child16703 : Flapjack.WordAlloc.removeDeadStructural input16703 value1407 value1 value2 = (output16703, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16704 value5 value1 value2 = (output16704, value6896, value1) := by
  rw [input16704_def, output16704_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2806]
  try dsimp only
  rw [child16703]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2806_skip, output16703_skip]
  kernel_rfl

theorem node16705_cond_eq
    (child2803 : Flapjack.WordAlloc.removeDeadStructural input2803 value1400 value1 value2 = (output2803, value5, value1))
    (child16704 : Flapjack.WordAlloc.removeDeadStructural input16704 value5 value1 value2 = (output16704, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16705 value1400 value1 value2 = (output16705, value6896, value1) := by
  rw [input16705_def, output16705_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2803]
  try dsimp only
  rw [child16704]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2803_skip, output16704_skip]
  kernel_rfl

theorem node16706_cond_eq
    (child2792 : Flapjack.WordAlloc.removeDeadStructural input2792 value1400 value1 value2 = (output2792, value1400, value1))
    (child16705 : Flapjack.WordAlloc.removeDeadStructural input16705 value1400 value1 value2 = (output16705, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16706 value1400 value1 value2 = (output16706, value6896, value1) := by
  rw [input16706_def, output16706_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2792]
  try dsimp only
  rw [child16705]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2792_skip, output16705_skip]
  kernel_rfl

theorem node16707_cond_eq
    (child2791 : Flapjack.WordAlloc.removeDeadStructural input2791 value1399 value1 value2 = (output2791, value1400, value1))
    (child16706 : Flapjack.WordAlloc.removeDeadStructural input16706 value1400 value1 value2 = (output16706, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16707 value1399 value1 value2 = (output16707, value6896, value1) := by
  rw [input16707_def, output16707_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2791]
  try dsimp only
  rw [child16706]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2791_skip, output16706_skip]
  kernel_rfl

theorem node16708_cond_eq
    (child2790 : Flapjack.WordAlloc.removeDeadStructural input2790 value5 value1 value2 = (output2790, value1399, value1))
    (child16707 : Flapjack.WordAlloc.removeDeadStructural input16707 value1399 value1 value2 = (output16707, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16708 value5 value1 value2 = (output16708, value6896, value1) := by
  rw [input16708_def, output16708_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2790]
  try dsimp only
  rw [child16707]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2790_skip, output16707_skip]
  kernel_rfl

theorem node16709_cond_eq
    (child2787 : Flapjack.WordAlloc.removeDeadStructural input2787 value1392 value1 value2 = (output2787, value5, value1))
    (child16708 : Flapjack.WordAlloc.removeDeadStructural input16708 value5 value1 value2 = (output16708, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16709 value1392 value1 value2 = (output16709, value6896, value1) := by
  rw [input16709_def, output16709_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2787]
  try dsimp only
  rw [child16708]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2787_skip, output16708_skip]
  kernel_rfl

theorem node16710_cond_eq
    (child2776 : Flapjack.WordAlloc.removeDeadStructural input2776 value1392 value1 value2 = (output2776, value1392, value1))
    (child16709 : Flapjack.WordAlloc.removeDeadStructural input16709 value1392 value1 value2 = (output16709, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16710 value1392 value1 value2 = (output16710, value6896, value1) := by
  rw [input16710_def, output16710_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2776]
  try dsimp only
  rw [child16709]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2776_skip, output16709_skip]
  kernel_rfl

theorem node16711_cond_eq
    (child2775 : Flapjack.WordAlloc.removeDeadStructural input2775 value1391 value1 value2 = (output2775, value1392, value1))
    (child16710 : Flapjack.WordAlloc.removeDeadStructural input16710 value1392 value1 value2 = (output16710, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16711 value1391 value1 value2 = (output16711, value6896, value1) := by
  rw [input16711_def, output16711_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2775]
  try dsimp only
  rw [child16710]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2775_skip, output16710_skip]
  kernel_rfl

theorem node16712_cond_eq
    (child2774 : Flapjack.WordAlloc.removeDeadStructural input2774 value5 value1 value2 = (output2774, value1391, value1))
    (child16711 : Flapjack.WordAlloc.removeDeadStructural input16711 value1391 value1 value2 = (output16711, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16712 value5 value1 value2 = (output16712, value6896, value1) := by
  rw [input16712_def, output16712_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2774]
  try dsimp only
  rw [child16711]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2774_skip, output16711_skip]
  kernel_rfl

theorem node16713_cond_eq
    (child2771 : Flapjack.WordAlloc.removeDeadStructural input2771 value1384 value1 value2 = (output2771, value5, value1))
    (child16712 : Flapjack.WordAlloc.removeDeadStructural input16712 value5 value1 value2 = (output16712, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16713 value1384 value1 value2 = (output16713, value6896, value1) := by
  rw [input16713_def, output16713_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2771]
  try dsimp only
  rw [child16712]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2771_skip, output16712_skip]
  kernel_rfl

theorem node16714_cond_eq
    (child2760 : Flapjack.WordAlloc.removeDeadStructural input2760 value1384 value1 value2 = (output2760, value1384, value1))
    (child16713 : Flapjack.WordAlloc.removeDeadStructural input16713 value1384 value1 value2 = (output16713, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16714 value1384 value1 value2 = (output16714, value6896, value1) := by
  rw [input16714_def, output16714_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2760]
  try dsimp only
  rw [child16713]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2760_skip, output16713_skip]
  kernel_rfl

theorem node16715_cond_eq
    (child2759 : Flapjack.WordAlloc.removeDeadStructural input2759 value1383 value1 value2 = (output2759, value1384, value1))
    (child16714 : Flapjack.WordAlloc.removeDeadStructural input16714 value1384 value1 value2 = (output16714, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16715 value1383 value1 value2 = (output16715, value6896, value1) := by
  rw [input16715_def, output16715_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2759]
  try dsimp only
  rw [child16714]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2759_skip, output16714_skip]
  kernel_rfl

theorem node16716_cond_eq
    (child2758 : Flapjack.WordAlloc.removeDeadStructural input2758 value5 value1 value2 = (output2758, value1383, value1))
    (child16715 : Flapjack.WordAlloc.removeDeadStructural input16715 value1383 value1 value2 = (output16715, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16716 value5 value1 value2 = (output16716, value6896, value1) := by
  rw [input16716_def, output16716_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2758]
  try dsimp only
  rw [child16715]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2758_skip, output16715_skip]
  kernel_rfl

theorem node16717_cond_eq
    (child2755 : Flapjack.WordAlloc.removeDeadStructural input2755 value1376 value1 value2 = (output2755, value5, value1))
    (child16716 : Flapjack.WordAlloc.removeDeadStructural input16716 value5 value1 value2 = (output16716, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16717 value1376 value1 value2 = (output16717, value6896, value1) := by
  rw [input16717_def, output16717_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2755]
  try dsimp only
  rw [child16716]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2755_skip, output16716_skip]
  kernel_rfl

theorem node16718_cond_eq
    (child2744 : Flapjack.WordAlloc.removeDeadStructural input2744 value1376 value1 value2 = (output2744, value1376, value1))
    (child16717 : Flapjack.WordAlloc.removeDeadStructural input16717 value1376 value1 value2 = (output16717, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16718 value1376 value1 value2 = (output16718, value6896, value1) := by
  rw [input16718_def, output16718_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2744]
  try dsimp only
  rw [child16717]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2744_skip, output16717_skip]
  kernel_rfl

theorem node16719_cond_eq
    (child2743 : Flapjack.WordAlloc.removeDeadStructural input2743 value1375 value1 value2 = (output2743, value1376, value1))
    (child16718 : Flapjack.WordAlloc.removeDeadStructural input16718 value1376 value1 value2 = (output16718, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16719 value1375 value1 value2 = (output16719, value6896, value1) := by
  rw [input16719_def, output16719_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2743]
  try dsimp only
  rw [child16718]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2743_skip, output16718_skip]
  kernel_rfl

theorem node16720_cond_eq
    (child2742 : Flapjack.WordAlloc.removeDeadStructural input2742 value5 value1 value2 = (output2742, value1375, value1))
    (child16719 : Flapjack.WordAlloc.removeDeadStructural input16719 value1375 value1 value2 = (output16719, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16720 value5 value1 value2 = (output16720, value6896, value1) := by
  rw [input16720_def, output16720_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2742]
  try dsimp only
  rw [child16719]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2742_skip, output16719_skip]
  kernel_rfl

theorem node16721_cond_eq
    (child2739 : Flapjack.WordAlloc.removeDeadStructural input2739 value1368 value1 value2 = (output2739, value5, value1))
    (child16720 : Flapjack.WordAlloc.removeDeadStructural input16720 value5 value1 value2 = (output16720, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16721 value1368 value1 value2 = (output16721, value6896, value1) := by
  rw [input16721_def, output16721_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2739]
  try dsimp only
  rw [child16720]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2739_skip, output16720_skip]
  kernel_rfl

theorem node16722_cond_eq
    (child2728 : Flapjack.WordAlloc.removeDeadStructural input2728 value1368 value1 value2 = (output2728, value1368, value1))
    (child16721 : Flapjack.WordAlloc.removeDeadStructural input16721 value1368 value1 value2 = (output16721, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16722 value1368 value1 value2 = (output16722, value6896, value1) := by
  rw [input16722_def, output16722_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2728]
  try dsimp only
  rw [child16721]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2728_skip, output16721_skip]
  kernel_rfl

theorem node16723_cond_eq
    (child2727 : Flapjack.WordAlloc.removeDeadStructural input2727 value1367 value1 value2 = (output2727, value1368, value1))
    (child16722 : Flapjack.WordAlloc.removeDeadStructural input16722 value1368 value1 value2 = (output16722, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16723 value1367 value1 value2 = (output16723, value6896, value1) := by
  rw [input16723_def, output16723_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2727]
  try dsimp only
  rw [child16722]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2727_skip, output16722_skip]
  kernel_rfl

theorem node16724_cond_eq
    (child2726 : Flapjack.WordAlloc.removeDeadStructural input2726 value5 value1 value2 = (output2726, value1367, value1))
    (child16723 : Flapjack.WordAlloc.removeDeadStructural input16723 value1367 value1 value2 = (output16723, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16724 value5 value1 value2 = (output16724, value6896, value1) := by
  rw [input16724_def, output16724_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2726]
  try dsimp only
  rw [child16723]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2726_skip, output16723_skip]
  kernel_rfl

theorem node16725_cond_eq
    (child2723 : Flapjack.WordAlloc.removeDeadStructural input2723 value1360 value1 value2 = (output2723, value5, value1))
    (child16724 : Flapjack.WordAlloc.removeDeadStructural input16724 value5 value1 value2 = (output16724, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16725 value1360 value1 value2 = (output16725, value6896, value1) := by
  rw [input16725_def, output16725_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2723]
  try dsimp only
  rw [child16724]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2723_skip, output16724_skip]
  kernel_rfl

theorem node16726_cond_eq
    (child2712 : Flapjack.WordAlloc.removeDeadStructural input2712 value1360 value1 value2 = (output2712, value1360, value1))
    (child16725 : Flapjack.WordAlloc.removeDeadStructural input16725 value1360 value1 value2 = (output16725, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16726 value1360 value1 value2 = (output16726, value6896, value1) := by
  rw [input16726_def, output16726_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2712]
  try dsimp only
  rw [child16725]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2712_skip, output16725_skip]
  kernel_rfl

theorem node16727_cond_eq
    (child2711 : Flapjack.WordAlloc.removeDeadStructural input2711 value1359 value1 value2 = (output2711, value1360, value1))
    (child16726 : Flapjack.WordAlloc.removeDeadStructural input16726 value1360 value1 value2 = (output16726, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16727 value1359 value1 value2 = (output16727, value6896, value1) := by
  rw [input16727_def, output16727_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2711]
  try dsimp only
  rw [child16726]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2711_skip, output16726_skip]
  kernel_rfl

theorem node16728_cond_eq
    (child2710 : Flapjack.WordAlloc.removeDeadStructural input2710 value5 value1 value2 = (output2710, value1359, value1))
    (child16727 : Flapjack.WordAlloc.removeDeadStructural input16727 value1359 value1 value2 = (output16727, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16728 value5 value1 value2 = (output16728, value6896, value1) := by
  rw [input16728_def, output16728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2710]
  try dsimp only
  rw [child16727]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2710_skip, output16727_skip]
  kernel_rfl

theorem node16729_cond_eq
    (child2707 : Flapjack.WordAlloc.removeDeadStructural input2707 value1352 value1 value2 = (output2707, value5, value1))
    (child16728 : Flapjack.WordAlloc.removeDeadStructural input16728 value5 value1 value2 = (output16728, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16729 value1352 value1 value2 = (output16729, value6896, value1) := by
  rw [input16729_def, output16729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2707]
  try dsimp only
  rw [child16728]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2707_skip, output16728_skip]
  kernel_rfl

theorem node16730_cond_eq
    (child2696 : Flapjack.WordAlloc.removeDeadStructural input2696 value1352 value1 value2 = (output2696, value1352, value1))
    (child16729 : Flapjack.WordAlloc.removeDeadStructural input16729 value1352 value1 value2 = (output16729, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16730 value1352 value1 value2 = (output16730, value6896, value1) := by
  rw [input16730_def, output16730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2696]
  try dsimp only
  rw [child16729]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2696_skip, output16729_skip]
  kernel_rfl

theorem node16731_cond_eq
    (child2695 : Flapjack.WordAlloc.removeDeadStructural input2695 value1351 value1 value2 = (output2695, value1352, value1))
    (child16730 : Flapjack.WordAlloc.removeDeadStructural input16730 value1352 value1 value2 = (output16730, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16731 value1351 value1 value2 = (output16731, value6896, value1) := by
  rw [input16731_def, output16731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2695]
  try dsimp only
  rw [child16730]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2695_skip, output16730_skip]
  kernel_rfl

theorem node16732_cond_eq
    (child2694 : Flapjack.WordAlloc.removeDeadStructural input2694 value5 value1 value2 = (output2694, value1351, value1))
    (child16731 : Flapjack.WordAlloc.removeDeadStructural input16731 value1351 value1 value2 = (output16731, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16732 value5 value1 value2 = (output16732, value6896, value1) := by
  rw [input16732_def, output16732_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2694]
  try dsimp only
  rw [child16731]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2694_skip, output16731_skip]
  kernel_rfl

theorem node16733_cond_eq
    (child2691 : Flapjack.WordAlloc.removeDeadStructural input2691 value1344 value1 value2 = (output2691, value5, value1))
    (child16732 : Flapjack.WordAlloc.removeDeadStructural input16732 value5 value1 value2 = (output16732, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16733 value1344 value1 value2 = (output16733, value6896, value1) := by
  rw [input16733_def, output16733_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2691]
  try dsimp only
  rw [child16732]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2691_skip, output16732_skip]
  kernel_rfl

theorem node16734_cond_eq
    (child2680 : Flapjack.WordAlloc.removeDeadStructural input2680 value1344 value1 value2 = (output2680, value1344, value1))
    (child16733 : Flapjack.WordAlloc.removeDeadStructural input16733 value1344 value1 value2 = (output16733, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16734 value1344 value1 value2 = (output16734, value6896, value1) := by
  rw [input16734_def, output16734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2680]
  try dsimp only
  rw [child16733]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2680_skip, output16733_skip]
  kernel_rfl

theorem node16735_cond_eq
    (child2679 : Flapjack.WordAlloc.removeDeadStructural input2679 value1343 value1 value2 = (output2679, value1344, value1))
    (child16734 : Flapjack.WordAlloc.removeDeadStructural input16734 value1344 value1 value2 = (output16734, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16735 value1343 value1 value2 = (output16735, value6896, value1) := by
  rw [input16735_def, output16735_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2679]
  try dsimp only
  rw [child16734]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2679_skip, output16734_skip]
  kernel_rfl

theorem node16736_cond_eq
    (child2678 : Flapjack.WordAlloc.removeDeadStructural input2678 value5 value1 value2 = (output2678, value1343, value1))
    (child16735 : Flapjack.WordAlloc.removeDeadStructural input16735 value1343 value1 value2 = (output16735, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16736 value5 value1 value2 = (output16736, value6896, value1) := by
  rw [input16736_def, output16736_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2678]
  try dsimp only
  rw [child16735]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2678_skip, output16735_skip]
  kernel_rfl

theorem node16737_cond_eq
    (child2675 : Flapjack.WordAlloc.removeDeadStructural input2675 value1336 value1 value2 = (output2675, value5, value1))
    (child16736 : Flapjack.WordAlloc.removeDeadStructural input16736 value5 value1 value2 = (output16736, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16737 value1336 value1 value2 = (output16737, value6896, value1) := by
  rw [input16737_def, output16737_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2675]
  try dsimp only
  rw [child16736]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2675_skip, output16736_skip]
  kernel_rfl

theorem node16738_cond_eq
    (child2664 : Flapjack.WordAlloc.removeDeadStructural input2664 value1336 value1 value2 = (output2664, value1336, value1))
    (child16737 : Flapjack.WordAlloc.removeDeadStructural input16737 value1336 value1 value2 = (output16737, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16738 value1336 value1 value2 = (output16738, value6896, value1) := by
  rw [input16738_def, output16738_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2664]
  try dsimp only
  rw [child16737]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2664_skip, output16737_skip]
  kernel_rfl

theorem node16739_cond_eq
    (child2663 : Flapjack.WordAlloc.removeDeadStructural input2663 value1335 value1 value2 = (output2663, value1336, value1))
    (child16738 : Flapjack.WordAlloc.removeDeadStructural input16738 value1336 value1 value2 = (output16738, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16739 value1335 value1 value2 = (output16739, value6896, value1) := by
  rw [input16739_def, output16739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2663]
  try dsimp only
  rw [child16738]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2663_skip, output16738_skip]
  kernel_rfl

theorem node16740_cond_eq
    (child2662 : Flapjack.WordAlloc.removeDeadStructural input2662 value5 value1 value2 = (output2662, value1335, value1))
    (child16739 : Flapjack.WordAlloc.removeDeadStructural input16739 value1335 value1 value2 = (output16739, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16740 value5 value1 value2 = (output16740, value6896, value1) := by
  rw [input16740_def, output16740_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2662]
  try dsimp only
  rw [child16739]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2662_skip, output16739_skip]
  kernel_rfl

theorem node16741_cond_eq
    (child2659 : Flapjack.WordAlloc.removeDeadStructural input2659 value1328 value1 value2 = (output2659, value5, value1))
    (child16740 : Flapjack.WordAlloc.removeDeadStructural input16740 value5 value1 value2 = (output16740, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16741 value1328 value1 value2 = (output16741, value6896, value1) := by
  rw [input16741_def, output16741_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2659]
  try dsimp only
  rw [child16740]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2659_skip, output16740_skip]
  kernel_rfl

theorem node16742_cond_eq
    (child2648 : Flapjack.WordAlloc.removeDeadStructural input2648 value1328 value1 value2 = (output2648, value1328, value1))
    (child16741 : Flapjack.WordAlloc.removeDeadStructural input16741 value1328 value1 value2 = (output16741, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16742 value1328 value1 value2 = (output16742, value6896, value1) := by
  rw [input16742_def, output16742_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2648]
  try dsimp only
  rw [child16741]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2648_skip, output16741_skip]
  kernel_rfl

theorem node16743_cond_eq
    (child2647 : Flapjack.WordAlloc.removeDeadStructural input2647 value1327 value1 value2 = (output2647, value1328, value1))
    (child16742 : Flapjack.WordAlloc.removeDeadStructural input16742 value1328 value1 value2 = (output16742, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16743 value1327 value1 value2 = (output16743, value6896, value1) := by
  rw [input16743_def, output16743_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2647]
  try dsimp only
  rw [child16742]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2647_skip, output16742_skip]
  kernel_rfl

theorem node16744_cond_eq
    (child2646 : Flapjack.WordAlloc.removeDeadStructural input2646 value5 value1 value2 = (output2646, value1327, value1))
    (child16743 : Flapjack.WordAlloc.removeDeadStructural input16743 value1327 value1 value2 = (output16743, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16744 value5 value1 value2 = (output16744, value6896, value1) := by
  rw [input16744_def, output16744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2646]
  try dsimp only
  rw [child16743]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2646_skip, output16743_skip]
  kernel_rfl

theorem node16745_cond_eq
    (child2643 : Flapjack.WordAlloc.removeDeadStructural input2643 value1320 value1 value2 = (output2643, value5, value1))
    (child16744 : Flapjack.WordAlloc.removeDeadStructural input16744 value5 value1 value2 = (output16744, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16745 value1320 value1 value2 = (output16745, value6896, value1) := by
  rw [input16745_def, output16745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2643]
  try dsimp only
  rw [child16744]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2643_skip, output16744_skip]
  kernel_rfl

theorem node16746_cond_eq
    (child2632 : Flapjack.WordAlloc.removeDeadStructural input2632 value1320 value1 value2 = (output2632, value1320, value1))
    (child16745 : Flapjack.WordAlloc.removeDeadStructural input16745 value1320 value1 value2 = (output16745, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16746 value1320 value1 value2 = (output16746, value6896, value1) := by
  rw [input16746_def, output16746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2632]
  try dsimp only
  rw [child16745]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2632_skip, output16745_skip]
  kernel_rfl

theorem node16747_cond_eq
    (child2631 : Flapjack.WordAlloc.removeDeadStructural input2631 value1319 value1 value2 = (output2631, value1320, value1))
    (child16746 : Flapjack.WordAlloc.removeDeadStructural input16746 value1320 value1 value2 = (output16746, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16747 value1319 value1 value2 = (output16747, value6896, value1) := by
  rw [input16747_def, output16747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2631]
  try dsimp only
  rw [child16746]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2631_skip, output16746_skip]
  kernel_rfl

theorem node16748_cond_eq
    (child2630 : Flapjack.WordAlloc.removeDeadStructural input2630 value5 value1 value2 = (output2630, value1319, value1))
    (child16747 : Flapjack.WordAlloc.removeDeadStructural input16747 value1319 value1 value2 = (output16747, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16748 value5 value1 value2 = (output16748, value6896, value1) := by
  rw [input16748_def, output16748_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2630]
  try dsimp only
  rw [child16747]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2630_skip, output16747_skip]
  kernel_rfl

theorem node16749_cond_eq
    (child2627 : Flapjack.WordAlloc.removeDeadStructural input2627 value1312 value1 value2 = (output2627, value5, value1))
    (child16748 : Flapjack.WordAlloc.removeDeadStructural input16748 value5 value1 value2 = (output16748, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16749 value1312 value1 value2 = (output16749, value6896, value1) := by
  rw [input16749_def, output16749_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2627]
  try dsimp only
  rw [child16748]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2627_skip, output16748_skip]
  kernel_rfl

theorem node16750_cond_eq
    (child2616 : Flapjack.WordAlloc.removeDeadStructural input2616 value1312 value1 value2 = (output2616, value1312, value1))
    (child16749 : Flapjack.WordAlloc.removeDeadStructural input16749 value1312 value1 value2 = (output16749, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16750 value1312 value1 value2 = (output16750, value6896, value1) := by
  rw [input16750_def, output16750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2616]
  try dsimp only
  rw [child16749]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2616_skip, output16749_skip]
  kernel_rfl

theorem node16751_cond_eq
    (child2615 : Flapjack.WordAlloc.removeDeadStructural input2615 value1311 value1 value2 = (output2615, value1312, value1))
    (child16750 : Flapjack.WordAlloc.removeDeadStructural input16750 value1312 value1 value2 = (output16750, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16751 value1311 value1 value2 = (output16751, value6896, value1) := by
  rw [input16751_def, output16751_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2615]
  try dsimp only
  rw [child16750]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2615_skip, output16750_skip]
  kernel_rfl

theorem node16752_cond_eq
    (child2614 : Flapjack.WordAlloc.removeDeadStructural input2614 value5 value1 value2 = (output2614, value1311, value1))
    (child16751 : Flapjack.WordAlloc.removeDeadStructural input16751 value1311 value1 value2 = (output16751, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16752 value5 value1 value2 = (output16752, value6896, value1) := by
  rw [input16752_def, output16752_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2614]
  try dsimp only
  rw [child16751]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2614_skip, output16751_skip]
  kernel_rfl

theorem node16753_cond_eq
    (child2611 : Flapjack.WordAlloc.removeDeadStructural input2611 value1304 value1 value2 = (output2611, value5, value1))
    (child16752 : Flapjack.WordAlloc.removeDeadStructural input16752 value5 value1 value2 = (output16752, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16753 value1304 value1 value2 = (output16753, value6896, value1) := by
  rw [input16753_def, output16753_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2611]
  try dsimp only
  rw [child16752]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2611_skip, output16752_skip]
  kernel_rfl

theorem node16754_cond_eq
    (child2600 : Flapjack.WordAlloc.removeDeadStructural input2600 value1304 value1 value2 = (output2600, value1304, value1))
    (child16753 : Flapjack.WordAlloc.removeDeadStructural input16753 value1304 value1 value2 = (output16753, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16754 value1304 value1 value2 = (output16754, value6896, value1) := by
  rw [input16754_def, output16754_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2600]
  try dsimp only
  rw [child16753]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2600_skip, output16753_skip]
  kernel_rfl

theorem node16755_cond_eq
    (child2599 : Flapjack.WordAlloc.removeDeadStructural input2599 value1303 value1 value2 = (output2599, value1304, value1))
    (child16754 : Flapjack.WordAlloc.removeDeadStructural input16754 value1304 value1 value2 = (output16754, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16755 value1303 value1 value2 = (output16755, value6896, value1) := by
  rw [input16755_def, output16755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2599]
  try dsimp only
  rw [child16754]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2599_skip, output16754_skip]
  kernel_rfl

theorem node16756_cond_eq
    (child2598 : Flapjack.WordAlloc.removeDeadStructural input2598 value5 value1 value2 = (output2598, value1303, value1))
    (child16755 : Flapjack.WordAlloc.removeDeadStructural input16755 value1303 value1 value2 = (output16755, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16756 value5 value1 value2 = (output16756, value6896, value1) := by
  rw [input16756_def, output16756_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2598]
  try dsimp only
  rw [child16755]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2598_skip, output16755_skip]
  kernel_rfl

theorem node16757_cond_eq
    (child2595 : Flapjack.WordAlloc.removeDeadStructural input2595 value1296 value1 value2 = (output2595, value5, value1))
    (child16756 : Flapjack.WordAlloc.removeDeadStructural input16756 value5 value1 value2 = (output16756, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16757 value1296 value1 value2 = (output16757, value6896, value1) := by
  rw [input16757_def, output16757_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2595]
  try dsimp only
  rw [child16756]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2595_skip, output16756_skip]
  kernel_rfl

theorem node16758_cond_eq
    (child2584 : Flapjack.WordAlloc.removeDeadStructural input2584 value1296 value1 value2 = (output2584, value1296, value1))
    (child16757 : Flapjack.WordAlloc.removeDeadStructural input16757 value1296 value1 value2 = (output16757, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16758 value1296 value1 value2 = (output16758, value6896, value1) := by
  rw [input16758_def, output16758_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2584]
  try dsimp only
  rw [child16757]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2584_skip, output16757_skip]
  kernel_rfl

theorem node16759_cond_eq
    (child2583 : Flapjack.WordAlloc.removeDeadStructural input2583 value1295 value1 value2 = (output2583, value1296, value1))
    (child16758 : Flapjack.WordAlloc.removeDeadStructural input16758 value1296 value1 value2 = (output16758, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16759 value1295 value1 value2 = (output16759, value6896, value1) := by
  rw [input16759_def, output16759_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2583]
  try dsimp only
  rw [child16758]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2583_skip, output16758_skip]
  kernel_rfl

theorem node16760_cond_eq
    (child2582 : Flapjack.WordAlloc.removeDeadStructural input2582 value5 value1 value2 = (output2582, value1295, value1))
    (child16759 : Flapjack.WordAlloc.removeDeadStructural input16759 value1295 value1 value2 = (output16759, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16760 value5 value1 value2 = (output16760, value6896, value1) := by
  rw [input16760_def, output16760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2582]
  try dsimp only
  rw [child16759]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2582_skip, output16759_skip]
  kernel_rfl

theorem node16761_cond_eq
    (child2579 : Flapjack.WordAlloc.removeDeadStructural input2579 value1288 value1 value2 = (output2579, value5, value1))
    (child16760 : Flapjack.WordAlloc.removeDeadStructural input16760 value5 value1 value2 = (output16760, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16761 value1288 value1 value2 = (output16761, value6896, value1) := by
  rw [input16761_def, output16761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2579]
  try dsimp only
  rw [child16760]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2579_skip, output16760_skip]
  kernel_rfl

theorem node16762_cond_eq
    (child2568 : Flapjack.WordAlloc.removeDeadStructural input2568 value1288 value1 value2 = (output2568, value1288, value1))
    (child16761 : Flapjack.WordAlloc.removeDeadStructural input16761 value1288 value1 value2 = (output16761, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16762 value1288 value1 value2 = (output16762, value6896, value1) := by
  rw [input16762_def, output16762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2568]
  try dsimp only
  rw [child16761]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2568_skip, output16761_skip]
  kernel_rfl

theorem node16763_cond_eq
    (child2567 : Flapjack.WordAlloc.removeDeadStructural input2567 value1287 value1 value2 = (output2567, value1288, value1))
    (child16762 : Flapjack.WordAlloc.removeDeadStructural input16762 value1288 value1 value2 = (output16762, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16763 value1287 value1 value2 = (output16763, value6896, value1) := by
  rw [input16763_def, output16763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2567]
  try dsimp only
  rw [child16762]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2567_skip, output16762_skip]
  kernel_rfl

theorem node16764_cond_eq
    (child2566 : Flapjack.WordAlloc.removeDeadStructural input2566 value5 value1 value2 = (output2566, value1287, value1))
    (child16763 : Flapjack.WordAlloc.removeDeadStructural input16763 value1287 value1 value2 = (output16763, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16764 value5 value1 value2 = (output16764, value6896, value1) := by
  rw [input16764_def, output16764_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2566]
  try dsimp only
  rw [child16763]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2566_skip, output16763_skip]
  kernel_rfl

theorem node16765_cond_eq
    (child2563 : Flapjack.WordAlloc.removeDeadStructural input2563 value1280 value1 value2 = (output2563, value5, value1))
    (child16764 : Flapjack.WordAlloc.removeDeadStructural input16764 value5 value1 value2 = (output16764, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16765 value1280 value1 value2 = (output16765, value6896, value1) := by
  rw [input16765_def, output16765_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2563]
  try dsimp only
  rw [child16764]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2563_skip, output16764_skip]
  kernel_rfl

theorem node16766_cond_eq
    (child2552 : Flapjack.WordAlloc.removeDeadStructural input2552 value1280 value1 value2 = (output2552, value1280, value1))
    (child16765 : Flapjack.WordAlloc.removeDeadStructural input16765 value1280 value1 value2 = (output16765, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16766 value1280 value1 value2 = (output16766, value6896, value1) := by
  rw [input16766_def, output16766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2552]
  try dsimp only
  rw [child16765]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2552_skip, output16765_skip]
  kernel_rfl

theorem node16767_cond_eq
    (child2551 : Flapjack.WordAlloc.removeDeadStructural input2551 value1279 value1 value2 = (output2551, value1280, value1))
    (child16766 : Flapjack.WordAlloc.removeDeadStructural input16766 value1280 value1 value2 = (output16766, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16767 value1279 value1 value2 = (output16767, value6896, value1) := by
  rw [input16767_def, output16767_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2551]
  try dsimp only
  rw [child16766]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2551_skip, output16766_skip]
  kernel_rfl

theorem node16768_cond_eq
    (child2550 : Flapjack.WordAlloc.removeDeadStructural input2550 value5 value1 value2 = (output2550, value1279, value1))
    (child16767 : Flapjack.WordAlloc.removeDeadStructural input16767 value1279 value1 value2 = (output16767, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16768 value5 value1 value2 = (output16768, value6896, value1) := by
  rw [input16768_def, output16768_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2550]
  try dsimp only
  rw [child16767]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2550_skip, output16767_skip]
  kernel_rfl

theorem node16769_cond_eq
    (child2547 : Flapjack.WordAlloc.removeDeadStructural input2547 value1272 value1 value2 = (output2547, value5, value1))
    (child16768 : Flapjack.WordAlloc.removeDeadStructural input16768 value5 value1 value2 = (output16768, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16769 value1272 value1 value2 = (output16769, value6896, value1) := by
  rw [input16769_def, output16769_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2547]
  try dsimp only
  rw [child16768]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2547_skip, output16768_skip]
  kernel_rfl

theorem node16770_cond_eq
    (child2536 : Flapjack.WordAlloc.removeDeadStructural input2536 value1272 value1 value2 = (output2536, value1272, value1))
    (child16769 : Flapjack.WordAlloc.removeDeadStructural input16769 value1272 value1 value2 = (output16769, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16770 value1272 value1 value2 = (output16770, value6896, value1) := by
  rw [input16770_def, output16770_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2536]
  try dsimp only
  rw [child16769]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2536_skip, output16769_skip]
  kernel_rfl

theorem node16771_cond_eq
    (child2535 : Flapjack.WordAlloc.removeDeadStructural input2535 value1271 value1 value2 = (output2535, value1272, value1))
    (child16770 : Flapjack.WordAlloc.removeDeadStructural input16770 value1272 value1 value2 = (output16770, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16771 value1271 value1 value2 = (output16771, value6896, value1) := by
  rw [input16771_def, output16771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2535]
  try dsimp only
  rw [child16770]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2535_skip, output16770_skip]
  kernel_rfl

theorem node16772_cond_eq
    (child2534 : Flapjack.WordAlloc.removeDeadStructural input2534 value5 value1 value2 = (output2534, value1271, value1))
    (child16771 : Flapjack.WordAlloc.removeDeadStructural input16771 value1271 value1 value2 = (output16771, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16772 value5 value1 value2 = (output16772, value6896, value1) := by
  rw [input16772_def, output16772_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2534]
  try dsimp only
  rw [child16771]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2534_skip, output16771_skip]
  kernel_rfl

theorem node16773_cond_eq
    (child2531 : Flapjack.WordAlloc.removeDeadStructural input2531 value1264 value1 value2 = (output2531, value5, value1))
    (child16772 : Flapjack.WordAlloc.removeDeadStructural input16772 value5 value1 value2 = (output16772, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16773 value1264 value1 value2 = (output16773, value6896, value1) := by
  rw [input16773_def, output16773_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2531]
  try dsimp only
  rw [child16772]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2531_skip, output16772_skip]
  kernel_rfl

theorem node16774_cond_eq
    (child2520 : Flapjack.WordAlloc.removeDeadStructural input2520 value1264 value1 value2 = (output2520, value1264, value1))
    (child16773 : Flapjack.WordAlloc.removeDeadStructural input16773 value1264 value1 value2 = (output16773, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16774 value1264 value1 value2 = (output16774, value6896, value1) := by
  rw [input16774_def, output16774_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2520]
  try dsimp only
  rw [child16773]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2520_skip, output16773_skip]
  kernel_rfl

theorem node16775_cond_eq
    (child2519 : Flapjack.WordAlloc.removeDeadStructural input2519 value1263 value1 value2 = (output2519, value1264, value1))
    (child16774 : Flapjack.WordAlloc.removeDeadStructural input16774 value1264 value1 value2 = (output16774, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16775 value1263 value1 value2 = (output16775, value6896, value1) := by
  rw [input16775_def, output16775_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2519]
  try dsimp only
  rw [child16774]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2519_skip, output16774_skip]
  kernel_rfl

theorem node16776_cond_eq
    (child2518 : Flapjack.WordAlloc.removeDeadStructural input2518 value5 value1 value2 = (output2518, value1263, value1))
    (child16775 : Flapjack.WordAlloc.removeDeadStructural input16775 value1263 value1 value2 = (output16775, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16776 value5 value1 value2 = (output16776, value6896, value1) := by
  rw [input16776_def, output16776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2518]
  try dsimp only
  rw [child16775]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2518_skip, output16775_skip]
  kernel_rfl

theorem node16777_cond_eq
    (child2515 : Flapjack.WordAlloc.removeDeadStructural input2515 value1256 value1 value2 = (output2515, value5, value1))
    (child16776 : Flapjack.WordAlloc.removeDeadStructural input16776 value5 value1 value2 = (output16776, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16777 value1256 value1 value2 = (output16777, value6896, value1) := by
  rw [input16777_def, output16777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2515]
  try dsimp only
  rw [child16776]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2515_skip, output16776_skip]
  kernel_rfl

theorem node16778_cond_eq
    (child2504 : Flapjack.WordAlloc.removeDeadStructural input2504 value1256 value1 value2 = (output2504, value1256, value1))
    (child16777 : Flapjack.WordAlloc.removeDeadStructural input16777 value1256 value1 value2 = (output16777, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16778 value1256 value1 value2 = (output16778, value6896, value1) := by
  rw [input16778_def, output16778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2504]
  try dsimp only
  rw [child16777]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2504_skip, output16777_skip]
  kernel_rfl

theorem node16779_cond_eq
    (child2503 : Flapjack.WordAlloc.removeDeadStructural input2503 value1255 value1 value2 = (output2503, value1256, value1))
    (child16778 : Flapjack.WordAlloc.removeDeadStructural input16778 value1256 value1 value2 = (output16778, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16779 value1255 value1 value2 = (output16779, value6896, value1) := by
  rw [input16779_def, output16779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2503]
  try dsimp only
  rw [child16778]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2503_skip, output16778_skip]
  kernel_rfl

theorem node16780_cond_eq
    (child2502 : Flapjack.WordAlloc.removeDeadStructural input2502 value5 value1 value2 = (output2502, value1255, value1))
    (child16779 : Flapjack.WordAlloc.removeDeadStructural input16779 value1255 value1 value2 = (output16779, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16780 value5 value1 value2 = (output16780, value6896, value1) := by
  rw [input16780_def, output16780_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2502]
  try dsimp only
  rw [child16779]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2502_skip, output16779_skip]
  kernel_rfl

theorem node16781_cond_eq
    (child2499 : Flapjack.WordAlloc.removeDeadStructural input2499 value1248 value1 value2 = (output2499, value5, value1))
    (child16780 : Flapjack.WordAlloc.removeDeadStructural input16780 value5 value1 value2 = (output16780, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16781 value1248 value1 value2 = (output16781, value6896, value1) := by
  rw [input16781_def, output16781_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2499]
  try dsimp only
  rw [child16780]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2499_skip, output16780_skip]
  kernel_rfl

theorem node16782_cond_eq
    (child2488 : Flapjack.WordAlloc.removeDeadStructural input2488 value1248 value1 value2 = (output2488, value1248, value1))
    (child16781 : Flapjack.WordAlloc.removeDeadStructural input16781 value1248 value1 value2 = (output16781, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16782 value1248 value1 value2 = (output16782, value6896, value1) := by
  rw [input16782_def, output16782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2488]
  try dsimp only
  rw [child16781]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2488_skip, output16781_skip]
  kernel_rfl

theorem node16783_cond_eq
    (child2487 : Flapjack.WordAlloc.removeDeadStructural input2487 value1247 value1 value2 = (output2487, value1248, value1))
    (child16782 : Flapjack.WordAlloc.removeDeadStructural input16782 value1248 value1 value2 = (output16782, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16783 value1247 value1 value2 = (output16783, value6896, value1) := by
  rw [input16783_def, output16783_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2487]
  try dsimp only
  rw [child16782]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2487_skip, output16782_skip]
  kernel_rfl

theorem node16784_cond_eq
    (child2486 : Flapjack.WordAlloc.removeDeadStructural input2486 value5 value1 value2 = (output2486, value1247, value1))
    (child16783 : Flapjack.WordAlloc.removeDeadStructural input16783 value1247 value1 value2 = (output16783, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16784 value5 value1 value2 = (output16784, value6896, value1) := by
  rw [input16784_def, output16784_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2486]
  try dsimp only
  rw [child16783]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2486_skip, output16783_skip]
  kernel_rfl

theorem node16785_cond_eq
    (child2483 : Flapjack.WordAlloc.removeDeadStructural input2483 value1240 value1 value2 = (output2483, value5, value1))
    (child16784 : Flapjack.WordAlloc.removeDeadStructural input16784 value5 value1 value2 = (output16784, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16785 value1240 value1 value2 = (output16785, value6896, value1) := by
  rw [input16785_def, output16785_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2483]
  try dsimp only
  rw [child16784]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2483_skip, output16784_skip]
  kernel_rfl

theorem node16786_cond_eq
    (child2472 : Flapjack.WordAlloc.removeDeadStructural input2472 value1240 value1 value2 = (output2472, value1240, value1))
    (child16785 : Flapjack.WordAlloc.removeDeadStructural input16785 value1240 value1 value2 = (output16785, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16786 value1240 value1 value2 = (output16786, value6896, value1) := by
  rw [input16786_def, output16786_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2472]
  try dsimp only
  rw [child16785]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2472_skip, output16785_skip]
  kernel_rfl

theorem node16787_cond_eq
    (child2471 : Flapjack.WordAlloc.removeDeadStructural input2471 value1239 value1 value2 = (output2471, value1240, value1))
    (child16786 : Flapjack.WordAlloc.removeDeadStructural input16786 value1240 value1 value2 = (output16786, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16787 value1239 value1 value2 = (output16787, value6896, value1) := by
  rw [input16787_def, output16787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2471]
  try dsimp only
  rw [child16786]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2471_skip, output16786_skip]
  kernel_rfl

theorem node16788_cond_eq
    (child2470 : Flapjack.WordAlloc.removeDeadStructural input2470 value5 value1 value2 = (output2470, value1239, value1))
    (child16787 : Flapjack.WordAlloc.removeDeadStructural input16787 value1239 value1 value2 = (output16787, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16788 value5 value1 value2 = (output16788, value6896, value1) := by
  rw [input16788_def, output16788_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2470]
  try dsimp only
  rw [child16787]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2470_skip, output16787_skip]
  kernel_rfl

theorem node16789_cond_eq
    (child2467 : Flapjack.WordAlloc.removeDeadStructural input2467 value1232 value1 value2 = (output2467, value5, value1))
    (child16788 : Flapjack.WordAlloc.removeDeadStructural input16788 value5 value1 value2 = (output16788, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16789 value1232 value1 value2 = (output16789, value6896, value1) := by
  rw [input16789_def, output16789_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2467]
  try dsimp only
  rw [child16788]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2467_skip, output16788_skip]
  kernel_rfl

theorem node16790_cond_eq
    (child2456 : Flapjack.WordAlloc.removeDeadStructural input2456 value1232 value1 value2 = (output2456, value1232, value1))
    (child16789 : Flapjack.WordAlloc.removeDeadStructural input16789 value1232 value1 value2 = (output16789, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16790 value1232 value1 value2 = (output16790, value6896, value1) := by
  rw [input16790_def, output16790_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2456]
  try dsimp only
  rw [child16789]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2456_skip, output16789_skip]
  kernel_rfl

theorem node16791_cond_eq
    (child2455 : Flapjack.WordAlloc.removeDeadStructural input2455 value1231 value1 value2 = (output2455, value1232, value1))
    (child16790 : Flapjack.WordAlloc.removeDeadStructural input16790 value1232 value1 value2 = (output16790, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16791 value1231 value1 value2 = (output16791, value6896, value1) := by
  rw [input16791_def, output16791_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2455]
  try dsimp only
  rw [child16790]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2455_skip, output16790_skip]
  kernel_rfl

theorem node16792_cond_eq
    (child2454 : Flapjack.WordAlloc.removeDeadStructural input2454 value5 value1 value2 = (output2454, value1231, value1))
    (child16791 : Flapjack.WordAlloc.removeDeadStructural input16791 value1231 value1 value2 = (output16791, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16792 value5 value1 value2 = (output16792, value6896, value1) := by
  rw [input16792_def, output16792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2454]
  try dsimp only
  rw [child16791]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2454_skip, output16791_skip]
  kernel_rfl

theorem node16793_cond_eq
    (child2451 : Flapjack.WordAlloc.removeDeadStructural input2451 value1224 value1 value2 = (output2451, value5, value1))
    (child16792 : Flapjack.WordAlloc.removeDeadStructural input16792 value5 value1 value2 = (output16792, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16793 value1224 value1 value2 = (output16793, value6896, value1) := by
  rw [input16793_def, output16793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2451]
  try dsimp only
  rw [child16792]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2451_skip, output16792_skip]
  kernel_rfl

theorem node16794_cond_eq
    (child2440 : Flapjack.WordAlloc.removeDeadStructural input2440 value1224 value1 value2 = (output2440, value1224, value1))
    (child16793 : Flapjack.WordAlloc.removeDeadStructural input16793 value1224 value1 value2 = (output16793, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16794 value1224 value1 value2 = (output16794, value6896, value1) := by
  rw [input16794_def, output16794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2440]
  try dsimp only
  rw [child16793]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2440_skip, output16793_skip]
  kernel_rfl

theorem node16795_cond_eq
    (child2439 : Flapjack.WordAlloc.removeDeadStructural input2439 value1223 value1 value2 = (output2439, value1224, value1))
    (child16794 : Flapjack.WordAlloc.removeDeadStructural input16794 value1224 value1 value2 = (output16794, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16795 value1223 value1 value2 = (output16795, value6896, value1) := by
  rw [input16795_def, output16795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2439]
  try dsimp only
  rw [child16794]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2439_skip, output16794_skip]
  kernel_rfl

theorem node16796_cond_eq
    (child2438 : Flapjack.WordAlloc.removeDeadStructural input2438 value5 value1 value2 = (output2438, value1223, value1))
    (child16795 : Flapjack.WordAlloc.removeDeadStructural input16795 value1223 value1 value2 = (output16795, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16796 value5 value1 value2 = (output16796, value6896, value1) := by
  rw [input16796_def, output16796_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2438]
  try dsimp only
  rw [child16795]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2438_skip, output16795_skip]
  kernel_rfl

theorem node16797_cond_eq
    (child2435 : Flapjack.WordAlloc.removeDeadStructural input2435 value1216 value1 value2 = (output2435, value5, value1))
    (child16796 : Flapjack.WordAlloc.removeDeadStructural input16796 value5 value1 value2 = (output16796, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16797 value1216 value1 value2 = (output16797, value6896, value1) := by
  rw [input16797_def, output16797_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2435]
  try dsimp only
  rw [child16796]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2435_skip, output16796_skip]
  kernel_rfl

theorem node16798_cond_eq
    (child2424 : Flapjack.WordAlloc.removeDeadStructural input2424 value1216 value1 value2 = (output2424, value1216, value1))
    (child16797 : Flapjack.WordAlloc.removeDeadStructural input16797 value1216 value1 value2 = (output16797, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16798 value1216 value1 value2 = (output16798, value6896, value1) := by
  rw [input16798_def, output16798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2424]
  try dsimp only
  rw [child16797]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2424_skip, output16797_skip]
  kernel_rfl

theorem node16799_cond_eq
    (child2423 : Flapjack.WordAlloc.removeDeadStructural input2423 value1215 value1 value2 = (output2423, value1216, value1))
    (child16798 : Flapjack.WordAlloc.removeDeadStructural input16798 value1216 value1 value2 = (output16798, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16799 value1215 value1 value2 = (output16799, value6896, value1) := by
  rw [input16799_def, output16799_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2423]
  try dsimp only
  rw [child16798]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2423_skip, output16798_skip]
  kernel_rfl

theorem node16800_cond_eq
    (child2422 : Flapjack.WordAlloc.removeDeadStructural input2422 value5 value1 value2 = (output2422, value1215, value1))
    (child16799 : Flapjack.WordAlloc.removeDeadStructural input16799 value1215 value1 value2 = (output16799, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16800 value5 value1 value2 = (output16800, value6896, value1) := by
  rw [input16800_def, output16800_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2422]
  try dsimp only
  rw [child16799]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2422_skip, output16799_skip]
  kernel_rfl

theorem node16801_cond_eq
    (child2419 : Flapjack.WordAlloc.removeDeadStructural input2419 value1208 value1 value2 = (output2419, value5, value1))
    (child16800 : Flapjack.WordAlloc.removeDeadStructural input16800 value5 value1 value2 = (output16800, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16801 value1208 value1 value2 = (output16801, value6896, value1) := by
  rw [input16801_def, output16801_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2419]
  try dsimp only
  rw [child16800]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2419_skip, output16800_skip]
  kernel_rfl

theorem node16802_cond_eq
    (child2408 : Flapjack.WordAlloc.removeDeadStructural input2408 value1208 value1 value2 = (output2408, value1208, value1))
    (child16801 : Flapjack.WordAlloc.removeDeadStructural input16801 value1208 value1 value2 = (output16801, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16802 value1208 value1 value2 = (output16802, value6896, value1) := by
  rw [input16802_def, output16802_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2408]
  try dsimp only
  rw [child16801]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2408_skip, output16801_skip]
  kernel_rfl

theorem node16803_cond_eq
    (child2407 : Flapjack.WordAlloc.removeDeadStructural input2407 value1207 value1 value2 = (output2407, value1208, value1))
    (child16802 : Flapjack.WordAlloc.removeDeadStructural input16802 value1208 value1 value2 = (output16802, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16803 value1207 value1 value2 = (output16803, value6896, value1) := by
  rw [input16803_def, output16803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2407]
  try dsimp only
  rw [child16802]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2407_skip, output16802_skip]
  kernel_rfl

theorem node16804_cond_eq
    (child2406 : Flapjack.WordAlloc.removeDeadStructural input2406 value5 value1 value2 = (output2406, value1207, value1))
    (child16803 : Flapjack.WordAlloc.removeDeadStructural input16803 value1207 value1 value2 = (output16803, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16804 value5 value1 value2 = (output16804, value6896, value1) := by
  rw [input16804_def, output16804_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2406]
  try dsimp only
  rw [child16803]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2406_skip, output16803_skip]
  kernel_rfl

theorem node16805_cond_eq
    (child2403 : Flapjack.WordAlloc.removeDeadStructural input2403 value1200 value1 value2 = (output2403, value5, value1))
    (child16804 : Flapjack.WordAlloc.removeDeadStructural input16804 value5 value1 value2 = (output16804, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16805 value1200 value1 value2 = (output16805, value6896, value1) := by
  rw [input16805_def, output16805_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2403]
  try dsimp only
  rw [child16804]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2403_skip, output16804_skip]
  kernel_rfl

theorem node16806_cond_eq
    (child2392 : Flapjack.WordAlloc.removeDeadStructural input2392 value1200 value1 value2 = (output2392, value1200, value1))
    (child16805 : Flapjack.WordAlloc.removeDeadStructural input16805 value1200 value1 value2 = (output16805, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16806 value1200 value1 value2 = (output16806, value6896, value1) := by
  rw [input16806_def, output16806_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2392]
  try dsimp only
  rw [child16805]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2392_skip, output16805_skip]
  kernel_rfl

theorem node16807_cond_eq
    (child2391 : Flapjack.WordAlloc.removeDeadStructural input2391 value1199 value1 value2 = (output2391, value1200, value1))
    (child16806 : Flapjack.WordAlloc.removeDeadStructural input16806 value1200 value1 value2 = (output16806, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16807 value1199 value1 value2 = (output16807, value6896, value1) := by
  rw [input16807_def, output16807_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2391]
  try dsimp only
  rw [child16806]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2391_skip, output16806_skip]
  kernel_rfl

theorem node16808_cond_eq
    (child2390 : Flapjack.WordAlloc.removeDeadStructural input2390 value5 value1 value2 = (output2390, value1199, value1))
    (child16807 : Flapjack.WordAlloc.removeDeadStructural input16807 value1199 value1 value2 = (output16807, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16808 value5 value1 value2 = (output16808, value6896, value1) := by
  rw [input16808_def, output16808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2390]
  try dsimp only
  rw [child16807]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2390_skip, output16807_skip]
  kernel_rfl

theorem node16809_cond_eq
    (child2387 : Flapjack.WordAlloc.removeDeadStructural input2387 value1192 value1 value2 = (output2387, value5, value1))
    (child16808 : Flapjack.WordAlloc.removeDeadStructural input16808 value5 value1 value2 = (output16808, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16809 value1192 value1 value2 = (output16809, value6896, value1) := by
  rw [input16809_def, output16809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2387]
  try dsimp only
  rw [child16808]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2387_skip, output16808_skip]
  kernel_rfl

theorem node16810_cond_eq
    (child2376 : Flapjack.WordAlloc.removeDeadStructural input2376 value1192 value1 value2 = (output2376, value1192, value1))
    (child16809 : Flapjack.WordAlloc.removeDeadStructural input16809 value1192 value1 value2 = (output16809, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16810 value1192 value1 value2 = (output16810, value6896, value1) := by
  rw [input16810_def, output16810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2376]
  try dsimp only
  rw [child16809]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2376_skip, output16809_skip]
  kernel_rfl

theorem node16811_cond_eq
    (child2375 : Flapjack.WordAlloc.removeDeadStructural input2375 value1191 value1 value2 = (output2375, value1192, value1))
    (child16810 : Flapjack.WordAlloc.removeDeadStructural input16810 value1192 value1 value2 = (output16810, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16811 value1191 value1 value2 = (output16811, value6896, value1) := by
  rw [input16811_def, output16811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2375]
  try dsimp only
  rw [child16810]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2375_skip, output16810_skip]
  kernel_rfl

theorem node16812_cond_eq
    (child2374 : Flapjack.WordAlloc.removeDeadStructural input2374 value5 value1 value2 = (output2374, value1191, value1))
    (child16811 : Flapjack.WordAlloc.removeDeadStructural input16811 value1191 value1 value2 = (output16811, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16812 value5 value1 value2 = (output16812, value6896, value1) := by
  rw [input16812_def, output16812_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2374]
  try dsimp only
  rw [child16811]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2374_skip, output16811_skip]
  kernel_rfl

theorem node16813_cond_eq
    (child2371 : Flapjack.WordAlloc.removeDeadStructural input2371 value1184 value1 value2 = (output2371, value5, value1))
    (child16812 : Flapjack.WordAlloc.removeDeadStructural input16812 value5 value1 value2 = (output16812, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16813 value1184 value1 value2 = (output16813, value6896, value1) := by
  rw [input16813_def, output16813_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2371]
  try dsimp only
  rw [child16812]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2371_skip, output16812_skip]
  kernel_rfl

theorem node16814_cond_eq
    (child2360 : Flapjack.WordAlloc.removeDeadStructural input2360 value1184 value1 value2 = (output2360, value1184, value1))
    (child16813 : Flapjack.WordAlloc.removeDeadStructural input16813 value1184 value1 value2 = (output16813, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16814 value1184 value1 value2 = (output16814, value6896, value1) := by
  rw [input16814_def, output16814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2360]
  try dsimp only
  rw [child16813]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2360_skip, output16813_skip]
  kernel_rfl

theorem node16815_cond_eq
    (child2359 : Flapjack.WordAlloc.removeDeadStructural input2359 value1183 value1 value2 = (output2359, value1184, value1))
    (child16814 : Flapjack.WordAlloc.removeDeadStructural input16814 value1184 value1 value2 = (output16814, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16815 value1183 value1 value2 = (output16815, value6896, value1) := by
  rw [input16815_def, output16815_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2359]
  try dsimp only
  rw [child16814]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2359_skip, output16814_skip]
  kernel_rfl

theorem node16816_cond_eq
    (child2358 : Flapjack.WordAlloc.removeDeadStructural input2358 value5 value1 value2 = (output2358, value1183, value1))
    (child16815 : Flapjack.WordAlloc.removeDeadStructural input16815 value1183 value1 value2 = (output16815, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16816 value5 value1 value2 = (output16816, value6896, value1) := by
  rw [input16816_def, output16816_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2358]
  try dsimp only
  rw [child16815]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2358_skip, output16815_skip]
  kernel_rfl

theorem node16817_cond_eq
    (child2355 : Flapjack.WordAlloc.removeDeadStructural input2355 value1176 value1 value2 = (output2355, value5, value1))
    (child16816 : Flapjack.WordAlloc.removeDeadStructural input16816 value5 value1 value2 = (output16816, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16817 value1176 value1 value2 = (output16817, value6896, value1) := by
  rw [input16817_def, output16817_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2355]
  try dsimp only
  rw [child16816]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2355_skip, output16816_skip]
  kernel_rfl

theorem node16818_cond_eq
    (child2344 : Flapjack.WordAlloc.removeDeadStructural input2344 value1176 value1 value2 = (output2344, value1176, value1))
    (child16817 : Flapjack.WordAlloc.removeDeadStructural input16817 value1176 value1 value2 = (output16817, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16818 value1176 value1 value2 = (output16818, value6896, value1) := by
  rw [input16818_def, output16818_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2344]
  try dsimp only
  rw [child16817]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2344_skip, output16817_skip]
  kernel_rfl

theorem node16819_cond_eq
    (child2343 : Flapjack.WordAlloc.removeDeadStructural input2343 value1175 value1 value2 = (output2343, value1176, value1))
    (child16818 : Flapjack.WordAlloc.removeDeadStructural input16818 value1176 value1 value2 = (output16818, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16819 value1175 value1 value2 = (output16819, value6896, value1) := by
  rw [input16819_def, output16819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2343]
  try dsimp only
  rw [child16818]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2343_skip, output16818_skip]
  kernel_rfl

theorem node16820_cond_eq
    (child2342 : Flapjack.WordAlloc.removeDeadStructural input2342 value5 value1 value2 = (output2342, value1175, value1))
    (child16819 : Flapjack.WordAlloc.removeDeadStructural input16819 value1175 value1 value2 = (output16819, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16820 value5 value1 value2 = (output16820, value6896, value1) := by
  rw [input16820_def, output16820_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2342]
  try dsimp only
  rw [child16819]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2342_skip, output16819_skip]
  kernel_rfl

theorem node16821_cond_eq
    (child2339 : Flapjack.WordAlloc.removeDeadStructural input2339 value1168 value1 value2 = (output2339, value5, value1))
    (child16820 : Flapjack.WordAlloc.removeDeadStructural input16820 value5 value1 value2 = (output16820, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16821 value1168 value1 value2 = (output16821, value6896, value1) := by
  rw [input16821_def, output16821_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2339]
  try dsimp only
  rw [child16820]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2339_skip, output16820_skip]
  kernel_rfl

theorem node16822_cond_eq
    (child2328 : Flapjack.WordAlloc.removeDeadStructural input2328 value1168 value1 value2 = (output2328, value1168, value1))
    (child16821 : Flapjack.WordAlloc.removeDeadStructural input16821 value1168 value1 value2 = (output16821, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16822 value1168 value1 value2 = (output16822, value6896, value1) := by
  rw [input16822_def, output16822_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2328]
  try dsimp only
  rw [child16821]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2328_skip, output16821_skip]
  kernel_rfl

theorem node16823_cond_eq
    (child2327 : Flapjack.WordAlloc.removeDeadStructural input2327 value1167 value1 value2 = (output2327, value1168, value1))
    (child16822 : Flapjack.WordAlloc.removeDeadStructural input16822 value1168 value1 value2 = (output16822, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16823 value1167 value1 value2 = (output16823, value6896, value1) := by
  rw [input16823_def, output16823_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2327]
  try dsimp only
  rw [child16822]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2327_skip, output16822_skip]
  kernel_rfl

theorem node16824_cond_eq
    (child2326 : Flapjack.WordAlloc.removeDeadStructural input2326 value5 value1 value2 = (output2326, value1167, value1))
    (child16823 : Flapjack.WordAlloc.removeDeadStructural input16823 value1167 value1 value2 = (output16823, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16824 value5 value1 value2 = (output16824, value6896, value1) := by
  rw [input16824_def, output16824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2326]
  try dsimp only
  rw [child16823]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2326_skip, output16823_skip]
  kernel_rfl

theorem node16825_cond_eq
    (child2323 : Flapjack.WordAlloc.removeDeadStructural input2323 value1160 value1 value2 = (output2323, value5, value1))
    (child16824 : Flapjack.WordAlloc.removeDeadStructural input16824 value5 value1 value2 = (output16824, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16825 value1160 value1 value2 = (output16825, value6896, value1) := by
  rw [input16825_def, output16825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2323]
  try dsimp only
  rw [child16824]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2323_skip, output16824_skip]
  kernel_rfl

theorem node16826_cond_eq
    (child2312 : Flapjack.WordAlloc.removeDeadStructural input2312 value1160 value1 value2 = (output2312, value1160, value1))
    (child16825 : Flapjack.WordAlloc.removeDeadStructural input16825 value1160 value1 value2 = (output16825, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16826 value1160 value1 value2 = (output16826, value6896, value1) := by
  rw [input16826_def, output16826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2312]
  try dsimp only
  rw [child16825]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2312_skip, output16825_skip]
  kernel_rfl

theorem node16827_cond_eq
    (child2311 : Flapjack.WordAlloc.removeDeadStructural input2311 value1159 value1 value2 = (output2311, value1160, value1))
    (child16826 : Flapjack.WordAlloc.removeDeadStructural input16826 value1160 value1 value2 = (output16826, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16827 value1159 value1 value2 = (output16827, value6896, value1) := by
  rw [input16827_def, output16827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2311]
  try dsimp only
  rw [child16826]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2311_skip, output16826_skip]
  kernel_rfl

theorem node16828_cond_eq
    (child2310 : Flapjack.WordAlloc.removeDeadStructural input2310 value5 value1 value2 = (output2310, value1159, value1))
    (child16827 : Flapjack.WordAlloc.removeDeadStructural input16827 value1159 value1 value2 = (output16827, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16828 value5 value1 value2 = (output16828, value6896, value1) := by
  rw [input16828_def, output16828_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2310]
  try dsimp only
  rw [child16827]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2310_skip, output16827_skip]
  kernel_rfl

theorem node16829_cond_eq
    (child2307 : Flapjack.WordAlloc.removeDeadStructural input2307 value1152 value1 value2 = (output2307, value5, value1))
    (child16828 : Flapjack.WordAlloc.removeDeadStructural input16828 value5 value1 value2 = (output16828, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16829 value1152 value1 value2 = (output16829, value6896, value1) := by
  rw [input16829_def, output16829_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2307]
  try dsimp only
  rw [child16828]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2307_skip, output16828_skip]
  kernel_rfl

theorem node16830_cond_eq
    (child2296 : Flapjack.WordAlloc.removeDeadStructural input2296 value1152 value1 value2 = (output2296, value1152, value1))
    (child16829 : Flapjack.WordAlloc.removeDeadStructural input16829 value1152 value1 value2 = (output16829, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16830 value1152 value1 value2 = (output16830, value6896, value1) := by
  rw [input16830_def, output16830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2296]
  try dsimp only
  rw [child16829]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2296_skip, output16829_skip]
  kernel_rfl

theorem node16831_cond_eq
    (child2295 : Flapjack.WordAlloc.removeDeadStructural input2295 value1151 value1 value2 = (output2295, value1152, value1))
    (child16830 : Flapjack.WordAlloc.removeDeadStructural input16830 value1152 value1 value2 = (output16830, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16831 value1151 value1 value2 = (output16831, value6896, value1) := by
  rw [input16831_def, output16831_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2295]
  try dsimp only
  rw [child16830]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2295_skip, output16830_skip]
  kernel_rfl

theorem node16832_cond_eq
    (child2294 : Flapjack.WordAlloc.removeDeadStructural input2294 value5 value1 value2 = (output2294, value1151, value1))
    (child16831 : Flapjack.WordAlloc.removeDeadStructural input16831 value1151 value1 value2 = (output16831, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16832 value5 value1 value2 = (output16832, value6896, value1) := by
  rw [input16832_def, output16832_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2294]
  try dsimp only
  rw [child16831]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2294_skip, output16831_skip]
  kernel_rfl

theorem node16833_cond_eq
    (child2291 : Flapjack.WordAlloc.removeDeadStructural input2291 value1144 value1 value2 = (output2291, value5, value1))
    (child16832 : Flapjack.WordAlloc.removeDeadStructural input16832 value5 value1 value2 = (output16832, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16833 value1144 value1 value2 = (output16833, value6896, value1) := by
  rw [input16833_def, output16833_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2291]
  try dsimp only
  rw [child16832]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2291_skip, output16832_skip]
  kernel_rfl

theorem node16834_cond_eq
    (child2280 : Flapjack.WordAlloc.removeDeadStructural input2280 value1144 value1 value2 = (output2280, value1144, value1))
    (child16833 : Flapjack.WordAlloc.removeDeadStructural input16833 value1144 value1 value2 = (output16833, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16834 value1144 value1 value2 = (output16834, value6896, value1) := by
  rw [input16834_def, output16834_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2280]
  try dsimp only
  rw [child16833]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2280_skip, output16833_skip]
  kernel_rfl

theorem node16835_cond_eq
    (child2279 : Flapjack.WordAlloc.removeDeadStructural input2279 value1143 value1 value2 = (output2279, value1144, value1))
    (child16834 : Flapjack.WordAlloc.removeDeadStructural input16834 value1144 value1 value2 = (output16834, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16835 value1143 value1 value2 = (output16835, value6896, value1) := by
  rw [input16835_def, output16835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2279]
  try dsimp only
  rw [child16834]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2279_skip, output16834_skip]
  kernel_rfl

theorem node16836_cond_eq
    (child2278 : Flapjack.WordAlloc.removeDeadStructural input2278 value5 value1 value2 = (output2278, value1143, value1))
    (child16835 : Flapjack.WordAlloc.removeDeadStructural input16835 value1143 value1 value2 = (output16835, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16836 value5 value1 value2 = (output16836, value6896, value1) := by
  rw [input16836_def, output16836_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2278]
  try dsimp only
  rw [child16835]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2278_skip, output16835_skip]
  kernel_rfl

theorem node16837_cond_eq
    (child2275 : Flapjack.WordAlloc.removeDeadStructural input2275 value1136 value1 value2 = (output2275, value5, value1))
    (child16836 : Flapjack.WordAlloc.removeDeadStructural input16836 value5 value1 value2 = (output16836, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16837 value1136 value1 value2 = (output16837, value6896, value1) := by
  rw [input16837_def, output16837_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2275]
  try dsimp only
  rw [child16836]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2275_skip, output16836_skip]
  kernel_rfl

theorem node16838_cond_eq
    (child2264 : Flapjack.WordAlloc.removeDeadStructural input2264 value1136 value1 value2 = (output2264, value1136, value1))
    (child16837 : Flapjack.WordAlloc.removeDeadStructural input16837 value1136 value1 value2 = (output16837, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16838 value1136 value1 value2 = (output16838, value6896, value1) := by
  rw [input16838_def, output16838_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2264]
  try dsimp only
  rw [child16837]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2264_skip, output16837_skip]
  kernel_rfl

theorem node16839_cond_eq
    (child2263 : Flapjack.WordAlloc.removeDeadStructural input2263 value1135 value1 value2 = (output2263, value1136, value1))
    (child16838 : Flapjack.WordAlloc.removeDeadStructural input16838 value1136 value1 value2 = (output16838, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16839 value1135 value1 value2 = (output16839, value6896, value1) := by
  rw [input16839_def, output16839_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2263]
  try dsimp only
  rw [child16838]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2263_skip, output16838_skip]
  kernel_rfl

theorem node16840_cond_eq
    (child2262 : Flapjack.WordAlloc.removeDeadStructural input2262 value5 value1 value2 = (output2262, value1135, value1))
    (child16839 : Flapjack.WordAlloc.removeDeadStructural input16839 value1135 value1 value2 = (output16839, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16840 value5 value1 value2 = (output16840, value6896, value1) := by
  rw [input16840_def, output16840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2262]
  try dsimp only
  rw [child16839]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2262_skip, output16839_skip]
  kernel_rfl

theorem node16841_cond_eq
    (child2259 : Flapjack.WordAlloc.removeDeadStructural input2259 value1128 value1 value2 = (output2259, value5, value1))
    (child16840 : Flapjack.WordAlloc.removeDeadStructural input16840 value5 value1 value2 = (output16840, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16841 value1128 value1 value2 = (output16841, value6896, value1) := by
  rw [input16841_def, output16841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2259]
  try dsimp only
  rw [child16840]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2259_skip, output16840_skip]
  kernel_rfl

theorem node16842_cond_eq
    (child2248 : Flapjack.WordAlloc.removeDeadStructural input2248 value1128 value1 value2 = (output2248, value1128, value1))
    (child16841 : Flapjack.WordAlloc.removeDeadStructural input16841 value1128 value1 value2 = (output16841, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16842 value1128 value1 value2 = (output16842, value6896, value1) := by
  rw [input16842_def, output16842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2248]
  try dsimp only
  rw [child16841]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2248_skip, output16841_skip]
  kernel_rfl

theorem node16843_cond_eq
    (child2247 : Flapjack.WordAlloc.removeDeadStructural input2247 value1127 value1 value2 = (output2247, value1128, value1))
    (child16842 : Flapjack.WordAlloc.removeDeadStructural input16842 value1128 value1 value2 = (output16842, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16843 value1127 value1 value2 = (output16843, value6896, value1) := by
  rw [input16843_def, output16843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2247]
  try dsimp only
  rw [child16842]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2247_skip, output16842_skip]
  kernel_rfl

theorem node16844_cond_eq
    (child2246 : Flapjack.WordAlloc.removeDeadStructural input2246 value5 value1 value2 = (output2246, value1127, value1))
    (child16843 : Flapjack.WordAlloc.removeDeadStructural input16843 value1127 value1 value2 = (output16843, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16844 value5 value1 value2 = (output16844, value6896, value1) := by
  rw [input16844_def, output16844_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2246]
  try dsimp only
  rw [child16843]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2246_skip, output16843_skip]
  kernel_rfl

theorem node16845_cond_eq
    (child2243 : Flapjack.WordAlloc.removeDeadStructural input2243 value1120 value1 value2 = (output2243, value5, value1))
    (child16844 : Flapjack.WordAlloc.removeDeadStructural input16844 value5 value1 value2 = (output16844, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16845 value1120 value1 value2 = (output16845, value6896, value1) := by
  rw [input16845_def, output16845_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2243]
  try dsimp only
  rw [child16844]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2243_skip, output16844_skip]
  kernel_rfl

theorem node16846_cond_eq
    (child2232 : Flapjack.WordAlloc.removeDeadStructural input2232 value1120 value1 value2 = (output2232, value1120, value1))
    (child16845 : Flapjack.WordAlloc.removeDeadStructural input16845 value1120 value1 value2 = (output16845, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16846 value1120 value1 value2 = (output16846, value6896, value1) := by
  rw [input16846_def, output16846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2232]
  try dsimp only
  rw [child16845]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2232_skip, output16845_skip]
  kernel_rfl

theorem node16847_cond_eq
    (child2231 : Flapjack.WordAlloc.removeDeadStructural input2231 value1119 value1 value2 = (output2231, value1120, value1))
    (child16846 : Flapjack.WordAlloc.removeDeadStructural input16846 value1120 value1 value2 = (output16846, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16847 value1119 value1 value2 = (output16847, value6896, value1) := by
  rw [input16847_def, output16847_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2231]
  try dsimp only
  rw [child16846]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2231_skip, output16846_skip]
  kernel_rfl

theorem node16848_cond_eq
    (child2230 : Flapjack.WordAlloc.removeDeadStructural input2230 value5 value1 value2 = (output2230, value1119, value1))
    (child16847 : Flapjack.WordAlloc.removeDeadStructural input16847 value1119 value1 value2 = (output16847, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16848 value5 value1 value2 = (output16848, value6896, value1) := by
  rw [input16848_def, output16848_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2230]
  try dsimp only
  rw [child16847]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2230_skip, output16847_skip]
  kernel_rfl

theorem node16849_cond_eq
    (child2227 : Flapjack.WordAlloc.removeDeadStructural input2227 value1112 value1 value2 = (output2227, value5, value1))
    (child16848 : Flapjack.WordAlloc.removeDeadStructural input16848 value5 value1 value2 = (output16848, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16849 value1112 value1 value2 = (output16849, value6896, value1) := by
  rw [input16849_def, output16849_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2227]
  try dsimp only
  rw [child16848]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2227_skip, output16848_skip]
  kernel_rfl

theorem node16850_cond_eq
    (child2216 : Flapjack.WordAlloc.removeDeadStructural input2216 value1112 value1 value2 = (output2216, value1112, value1))
    (child16849 : Flapjack.WordAlloc.removeDeadStructural input16849 value1112 value1 value2 = (output16849, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16850 value1112 value1 value2 = (output16850, value6896, value1) := by
  rw [input16850_def, output16850_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2216]
  try dsimp only
  rw [child16849]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2216_skip, output16849_skip]
  kernel_rfl

theorem node16851_cond_eq
    (child2215 : Flapjack.WordAlloc.removeDeadStructural input2215 value1111 value1 value2 = (output2215, value1112, value1))
    (child16850 : Flapjack.WordAlloc.removeDeadStructural input16850 value1112 value1 value2 = (output16850, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16851 value1111 value1 value2 = (output16851, value6896, value1) := by
  rw [input16851_def, output16851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2215]
  try dsimp only
  rw [child16850]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2215_skip, output16850_skip]
  kernel_rfl

theorem node16852_cond_eq
    (child2214 : Flapjack.WordAlloc.removeDeadStructural input2214 value5 value1 value2 = (output2214, value1111, value1))
    (child16851 : Flapjack.WordAlloc.removeDeadStructural input16851 value1111 value1 value2 = (output16851, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16852 value5 value1 value2 = (output16852, value6896, value1) := by
  rw [input16852_def, output16852_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2214]
  try dsimp only
  rw [child16851]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2214_skip, output16851_skip]
  kernel_rfl

theorem node16853_cond_eq
    (child2211 : Flapjack.WordAlloc.removeDeadStructural input2211 value1104 value1 value2 = (output2211, value5, value1))
    (child16852 : Flapjack.WordAlloc.removeDeadStructural input16852 value5 value1 value2 = (output16852, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16853 value1104 value1 value2 = (output16853, value6896, value1) := by
  rw [input16853_def, output16853_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2211]
  try dsimp only
  rw [child16852]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2211_skip, output16852_skip]
  kernel_rfl

theorem node16854_cond_eq
    (child2200 : Flapjack.WordAlloc.removeDeadStructural input2200 value1104 value1 value2 = (output2200, value1104, value1))
    (child16853 : Flapjack.WordAlloc.removeDeadStructural input16853 value1104 value1 value2 = (output16853, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16854 value1104 value1 value2 = (output16854, value6896, value1) := by
  rw [input16854_def, output16854_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2200]
  try dsimp only
  rw [child16853]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2200_skip, output16853_skip]
  kernel_rfl

theorem node16855_cond_eq
    (child2199 : Flapjack.WordAlloc.removeDeadStructural input2199 value1103 value1 value2 = (output2199, value1104, value1))
    (child16854 : Flapjack.WordAlloc.removeDeadStructural input16854 value1104 value1 value2 = (output16854, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16855 value1103 value1 value2 = (output16855, value6896, value1) := by
  rw [input16855_def, output16855_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2199]
  try dsimp only
  rw [child16854]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2199_skip, output16854_skip]
  kernel_rfl

theorem node16856_cond_eq
    (child2198 : Flapjack.WordAlloc.removeDeadStructural input2198 value5 value1 value2 = (output2198, value1103, value1))
    (child16855 : Flapjack.WordAlloc.removeDeadStructural input16855 value1103 value1 value2 = (output16855, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16856 value5 value1 value2 = (output16856, value6896, value1) := by
  rw [input16856_def, output16856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2198]
  try dsimp only
  rw [child16855]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2198_skip, output16855_skip]
  kernel_rfl

theorem node16857_cond_eq
    (child2195 : Flapjack.WordAlloc.removeDeadStructural input2195 value1096 value1 value2 = (output2195, value5, value1))
    (child16856 : Flapjack.WordAlloc.removeDeadStructural input16856 value5 value1 value2 = (output16856, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16857 value1096 value1 value2 = (output16857, value6896, value1) := by
  rw [input16857_def, output16857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2195]
  try dsimp only
  rw [child16856]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2195_skip, output16856_skip]
  kernel_rfl

theorem node16858_cond_eq
    (child2184 : Flapjack.WordAlloc.removeDeadStructural input2184 value1096 value1 value2 = (output2184, value1096, value1))
    (child16857 : Flapjack.WordAlloc.removeDeadStructural input16857 value1096 value1 value2 = (output16857, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16858 value1096 value1 value2 = (output16858, value6896, value1) := by
  rw [input16858_def, output16858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2184]
  try dsimp only
  rw [child16857]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2184_skip, output16857_skip]
  kernel_rfl

theorem node16859_cond_eq
    (child2183 : Flapjack.WordAlloc.removeDeadStructural input2183 value1095 value1 value2 = (output2183, value1096, value1))
    (child16858 : Flapjack.WordAlloc.removeDeadStructural input16858 value1096 value1 value2 = (output16858, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16859 value1095 value1 value2 = (output16859, value6896, value1) := by
  rw [input16859_def, output16859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2183]
  try dsimp only
  rw [child16858]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2183_skip, output16858_skip]
  kernel_rfl

theorem node16860_cond_eq
    (child2182 : Flapjack.WordAlloc.removeDeadStructural input2182 value5 value1 value2 = (output2182, value1095, value1))
    (child16859 : Flapjack.WordAlloc.removeDeadStructural input16859 value1095 value1 value2 = (output16859, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16860 value5 value1 value2 = (output16860, value6896, value1) := by
  rw [input16860_def, output16860_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2182]
  try dsimp only
  rw [child16859]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2182_skip, output16859_skip]
  kernel_rfl

theorem node16861_cond_eq
    (child2179 : Flapjack.WordAlloc.removeDeadStructural input2179 value1088 value1 value2 = (output2179, value5, value1))
    (child16860 : Flapjack.WordAlloc.removeDeadStructural input16860 value5 value1 value2 = (output16860, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16861 value1088 value1 value2 = (output16861, value6896, value1) := by
  rw [input16861_def, output16861_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2179]
  try dsimp only
  rw [child16860]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2179_skip, output16860_skip]
  kernel_rfl

theorem node16862_cond_eq
    (child2168 : Flapjack.WordAlloc.removeDeadStructural input2168 value1088 value1 value2 = (output2168, value1088, value1))
    (child16861 : Flapjack.WordAlloc.removeDeadStructural input16861 value1088 value1 value2 = (output16861, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16862 value1088 value1 value2 = (output16862, value6896, value1) := by
  rw [input16862_def, output16862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2168]
  try dsimp only
  rw [child16861]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2168_skip, output16861_skip]
  kernel_rfl

theorem node16863_cond_eq
    (child2167 : Flapjack.WordAlloc.removeDeadStructural input2167 value1087 value1 value2 = (output2167, value1088, value1))
    (child16862 : Flapjack.WordAlloc.removeDeadStructural input16862 value1088 value1 value2 = (output16862, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16863 value1087 value1 value2 = (output16863, value6896, value1) := by
  rw [input16863_def, output16863_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2167]
  try dsimp only
  rw [child16862]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2167_skip, output16862_skip]
  kernel_rfl

theorem node16864_cond_eq
    (child2166 : Flapjack.WordAlloc.removeDeadStructural input2166 value5 value1 value2 = (output2166, value1087, value1))
    (child16863 : Flapjack.WordAlloc.removeDeadStructural input16863 value1087 value1 value2 = (output16863, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16864 value5 value1 value2 = (output16864, value6896, value1) := by
  rw [input16864_def, output16864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2166]
  try dsimp only
  rw [child16863]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2166_skip, output16863_skip]
  kernel_rfl

theorem node16865_cond_eq
    (child2163 : Flapjack.WordAlloc.removeDeadStructural input2163 value1080 value1 value2 = (output2163, value5, value1))
    (child16864 : Flapjack.WordAlloc.removeDeadStructural input16864 value5 value1 value2 = (output16864, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16865 value1080 value1 value2 = (output16865, value6896, value1) := by
  rw [input16865_def, output16865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2163]
  try dsimp only
  rw [child16864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2163_skip, output16864_skip]
  kernel_rfl

theorem node16866_cond_eq
    (child2152 : Flapjack.WordAlloc.removeDeadStructural input2152 value1080 value1 value2 = (output2152, value1080, value1))
    (child16865 : Flapjack.WordAlloc.removeDeadStructural input16865 value1080 value1 value2 = (output16865, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16866 value1080 value1 value2 = (output16866, value6896, value1) := by
  rw [input16866_def, output16866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2152]
  try dsimp only
  rw [child16865]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2152_skip, output16865_skip]
  kernel_rfl

theorem node16867_cond_eq
    (child2151 : Flapjack.WordAlloc.removeDeadStructural input2151 value1079 value1 value2 = (output2151, value1080, value1))
    (child16866 : Flapjack.WordAlloc.removeDeadStructural input16866 value1080 value1 value2 = (output16866, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16867 value1079 value1 value2 = (output16867, value6896, value1) := by
  rw [input16867_def, output16867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2151]
  try dsimp only
  rw [child16866]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2151_skip, output16866_skip]
  kernel_rfl

theorem node16868_cond_eq
    (child2150 : Flapjack.WordAlloc.removeDeadStructural input2150 value5 value1 value2 = (output2150, value1079, value1))
    (child16867 : Flapjack.WordAlloc.removeDeadStructural input16867 value1079 value1 value2 = (output16867, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16868 value5 value1 value2 = (output16868, value6896, value1) := by
  rw [input16868_def, output16868_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2150]
  try dsimp only
  rw [child16867]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2150_skip, output16867_skip]
  kernel_rfl

theorem node16869_cond_eq
    (child2147 : Flapjack.WordAlloc.removeDeadStructural input2147 value1072 value1 value2 = (output2147, value5, value1))
    (child16868 : Flapjack.WordAlloc.removeDeadStructural input16868 value5 value1 value2 = (output16868, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16869 value1072 value1 value2 = (output16869, value6896, value1) := by
  rw [input16869_def, output16869_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2147]
  try dsimp only
  rw [child16868]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2147_skip, output16868_skip]
  kernel_rfl

theorem node16870_cond_eq
    (child2136 : Flapjack.WordAlloc.removeDeadStructural input2136 value1072 value1 value2 = (output2136, value1072, value1))
    (child16869 : Flapjack.WordAlloc.removeDeadStructural input16869 value1072 value1 value2 = (output16869, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16870 value1072 value1 value2 = (output16870, value6896, value1) := by
  rw [input16870_def, output16870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2136]
  try dsimp only
  rw [child16869]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2136_skip, output16869_skip]
  kernel_rfl

theorem node16871_cond_eq
    (child2135 : Flapjack.WordAlloc.removeDeadStructural input2135 value1071 value1 value2 = (output2135, value1072, value1))
    (child16870 : Flapjack.WordAlloc.removeDeadStructural input16870 value1072 value1 value2 = (output16870, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16871 value1071 value1 value2 = (output16871, value6896, value1) := by
  rw [input16871_def, output16871_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2135]
  try dsimp only
  rw [child16870]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2135_skip, output16870_skip]
  kernel_rfl

theorem node16872_cond_eq
    (child2134 : Flapjack.WordAlloc.removeDeadStructural input2134 value5 value1 value2 = (output2134, value1071, value1))
    (child16871 : Flapjack.WordAlloc.removeDeadStructural input16871 value1071 value1 value2 = (output16871, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16872 value5 value1 value2 = (output16872, value6896, value1) := by
  rw [input16872_def, output16872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2134]
  try dsimp only
  rw [child16871]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2134_skip, output16871_skip]
  kernel_rfl

theorem node16873_cond_eq
    (child2131 : Flapjack.WordAlloc.removeDeadStructural input2131 value1064 value1 value2 = (output2131, value5, value1))
    (child16872 : Flapjack.WordAlloc.removeDeadStructural input16872 value5 value1 value2 = (output16872, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16873 value1064 value1 value2 = (output16873, value6896, value1) := by
  rw [input16873_def, output16873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2131]
  try dsimp only
  rw [child16872]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2131_skip, output16872_skip]
  kernel_rfl

theorem node16874_cond_eq
    (child2120 : Flapjack.WordAlloc.removeDeadStructural input2120 value1064 value1 value2 = (output2120, value1064, value1))
    (child16873 : Flapjack.WordAlloc.removeDeadStructural input16873 value1064 value1 value2 = (output16873, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16874 value1064 value1 value2 = (output16874, value6896, value1) := by
  rw [input16874_def, output16874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2120]
  try dsimp only
  rw [child16873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2120_skip, output16873_skip]
  kernel_rfl

theorem node16875_cond_eq
    (child2119 : Flapjack.WordAlloc.removeDeadStructural input2119 value1063 value1 value2 = (output2119, value1064, value1))
    (child16874 : Flapjack.WordAlloc.removeDeadStructural input16874 value1064 value1 value2 = (output16874, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16875 value1063 value1 value2 = (output16875, value6896, value1) := by
  rw [input16875_def, output16875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2119]
  try dsimp only
  rw [child16874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2119_skip, output16874_skip]
  kernel_rfl

theorem node16876_cond_eq
    (child2118 : Flapjack.WordAlloc.removeDeadStructural input2118 value5 value1 value2 = (output2118, value1063, value1))
    (child16875 : Flapjack.WordAlloc.removeDeadStructural input16875 value1063 value1 value2 = (output16875, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16876 value5 value1 value2 = (output16876, value6896, value1) := by
  rw [input16876_def, output16876_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2118]
  try dsimp only
  rw [child16875]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2118_skip, output16875_skip]
  kernel_rfl

theorem node16877_cond_eq
    (child2115 : Flapjack.WordAlloc.removeDeadStructural input2115 value1056 value1 value2 = (output2115, value5, value1))
    (child16876 : Flapjack.WordAlloc.removeDeadStructural input16876 value5 value1 value2 = (output16876, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16877 value1056 value1 value2 = (output16877, value6896, value1) := by
  rw [input16877_def, output16877_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2115]
  try dsimp only
  rw [child16876]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2115_skip, output16876_skip]
  kernel_rfl

theorem node16878_cond_eq
    (child2104 : Flapjack.WordAlloc.removeDeadStructural input2104 value1056 value1 value2 = (output2104, value1056, value1))
    (child16877 : Flapjack.WordAlloc.removeDeadStructural input16877 value1056 value1 value2 = (output16877, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16878 value1056 value1 value2 = (output16878, value6896, value1) := by
  rw [input16878_def, output16878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2104]
  try dsimp only
  rw [child16877]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2104_skip, output16877_skip]
  kernel_rfl

theorem node16879_cond_eq
    (child2103 : Flapjack.WordAlloc.removeDeadStructural input2103 value1055 value1 value2 = (output2103, value1056, value1))
    (child16878 : Flapjack.WordAlloc.removeDeadStructural input16878 value1056 value1 value2 = (output16878, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16879 value1055 value1 value2 = (output16879, value6896, value1) := by
  rw [input16879_def, output16879_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2103]
  try dsimp only
  rw [child16878]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2103_skip, output16878_skip]
  kernel_rfl

theorem node16880_cond_eq
    (child2102 : Flapjack.WordAlloc.removeDeadStructural input2102 value5 value1 value2 = (output2102, value1055, value1))
    (child16879 : Flapjack.WordAlloc.removeDeadStructural input16879 value1055 value1 value2 = (output16879, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16880 value5 value1 value2 = (output16880, value6896, value1) := by
  rw [input16880_def, output16880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2102]
  try dsimp only
  rw [child16879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2102_skip, output16879_skip]
  kernel_rfl

theorem node16881_cond_eq
    (child2099 : Flapjack.WordAlloc.removeDeadStructural input2099 value1048 value1 value2 = (output2099, value5, value1))
    (child16880 : Flapjack.WordAlloc.removeDeadStructural input16880 value5 value1 value2 = (output16880, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16881 value1048 value1 value2 = (output16881, value6896, value1) := by
  rw [input16881_def, output16881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2099]
  try dsimp only
  rw [child16880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2099_skip, output16880_skip]
  kernel_rfl

theorem node16882_cond_eq
    (child2088 : Flapjack.WordAlloc.removeDeadStructural input2088 value1048 value1 value2 = (output2088, value1048, value1))
    (child16881 : Flapjack.WordAlloc.removeDeadStructural input16881 value1048 value1 value2 = (output16881, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16882 value1048 value1 value2 = (output16882, value6896, value1) := by
  rw [input16882_def, output16882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2088]
  try dsimp only
  rw [child16881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2088_skip, output16881_skip]
  kernel_rfl

theorem node16883_cond_eq
    (child2087 : Flapjack.WordAlloc.removeDeadStructural input2087 value1047 value1 value2 = (output2087, value1048, value1))
    (child16882 : Flapjack.WordAlloc.removeDeadStructural input16882 value1048 value1 value2 = (output16882, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16883 value1047 value1 value2 = (output16883, value6896, value1) := by
  rw [input16883_def, output16883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2087]
  try dsimp only
  rw [child16882]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2087_skip, output16882_skip]
  kernel_rfl

theorem node16884_cond_eq
    (child2086 : Flapjack.WordAlloc.removeDeadStructural input2086 value5 value1 value2 = (output2086, value1047, value1))
    (child16883 : Flapjack.WordAlloc.removeDeadStructural input16883 value1047 value1 value2 = (output16883, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16884 value5 value1 value2 = (output16884, value6896, value1) := by
  rw [input16884_def, output16884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2086]
  try dsimp only
  rw [child16883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2086_skip, output16883_skip]
  kernel_rfl

theorem node16885_cond_eq
    (child2083 : Flapjack.WordAlloc.removeDeadStructural input2083 value1040 value1 value2 = (output2083, value5, value1))
    (child16884 : Flapjack.WordAlloc.removeDeadStructural input16884 value5 value1 value2 = (output16884, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16885 value1040 value1 value2 = (output16885, value6896, value1) := by
  rw [input16885_def, output16885_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2083]
  try dsimp only
  rw [child16884]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2083_skip, output16884_skip]
  kernel_rfl

theorem node16886_cond_eq
    (child2072 : Flapjack.WordAlloc.removeDeadStructural input2072 value1040 value1 value2 = (output2072, value1040, value1))
    (child16885 : Flapjack.WordAlloc.removeDeadStructural input16885 value1040 value1 value2 = (output16885, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16886 value1040 value1 value2 = (output16886, value6896, value1) := by
  rw [input16886_def, output16886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2072]
  try dsimp only
  rw [child16885]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2072_skip, output16885_skip]
  kernel_rfl

theorem node16887_cond_eq
    (child2071 : Flapjack.WordAlloc.removeDeadStructural input2071 value1039 value1 value2 = (output2071, value1040, value1))
    (child16886 : Flapjack.WordAlloc.removeDeadStructural input16886 value1040 value1 value2 = (output16886, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16887 value1039 value1 value2 = (output16887, value6896, value1) := by
  rw [input16887_def, output16887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2071]
  try dsimp only
  rw [child16886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2071_skip, output16886_skip]
  kernel_rfl

theorem node16888_cond_eq
    (child2070 : Flapjack.WordAlloc.removeDeadStructural input2070 value5 value1 value2 = (output2070, value1039, value1))
    (child16887 : Flapjack.WordAlloc.removeDeadStructural input16887 value1039 value1 value2 = (output16887, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16888 value5 value1 value2 = (output16888, value6896, value1) := by
  rw [input16888_def, output16888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2070]
  try dsimp only
  rw [child16887]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2070_skip, output16887_skip]
  kernel_rfl

theorem node16889_cond_eq
    (child2067 : Flapjack.WordAlloc.removeDeadStructural input2067 value1032 value1 value2 = (output2067, value5, value1))
    (child16888 : Flapjack.WordAlloc.removeDeadStructural input16888 value5 value1 value2 = (output16888, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16889 value1032 value1 value2 = (output16889, value6896, value1) := by
  rw [input16889_def, output16889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2067]
  try dsimp only
  rw [child16888]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2067_skip, output16888_skip]
  kernel_rfl

theorem node16890_cond_eq
    (child2056 : Flapjack.WordAlloc.removeDeadStructural input2056 value1032 value1 value2 = (output2056, value1032, value1))
    (child16889 : Flapjack.WordAlloc.removeDeadStructural input16889 value1032 value1 value2 = (output16889, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16890 value1032 value1 value2 = (output16890, value6896, value1) := by
  rw [input16890_def, output16890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2056]
  try dsimp only
  rw [child16889]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2056_skip, output16889_skip]
  kernel_rfl

theorem node16891_cond_eq
    (child2055 : Flapjack.WordAlloc.removeDeadStructural input2055 value1031 value1 value2 = (output2055, value1032, value1))
    (child16890 : Flapjack.WordAlloc.removeDeadStructural input16890 value1032 value1 value2 = (output16890, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16891 value1031 value1 value2 = (output16891, value6896, value1) := by
  rw [input16891_def, output16891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2055]
  try dsimp only
  rw [child16890]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2055_skip, output16890_skip]
  kernel_rfl

theorem node16892_cond_eq
    (child2054 : Flapjack.WordAlloc.removeDeadStructural input2054 value5 value1 value2 = (output2054, value1031, value1))
    (child16891 : Flapjack.WordAlloc.removeDeadStructural input16891 value1031 value1 value2 = (output16891, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16892 value5 value1 value2 = (output16892, value6896, value1) := by
  rw [input16892_def, output16892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2054]
  try dsimp only
  rw [child16891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2054_skip, output16891_skip]
  kernel_rfl

theorem node16893_cond_eq
    (child2051 : Flapjack.WordAlloc.removeDeadStructural input2051 value1024 value1 value2 = (output2051, value5, value1))
    (child16892 : Flapjack.WordAlloc.removeDeadStructural input16892 value5 value1 value2 = (output16892, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16893 value1024 value1 value2 = (output16893, value6896, value1) := by
  rw [input16893_def, output16893_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2051]
  try dsimp only
  rw [child16892]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2051_skip, output16892_skip]
  kernel_rfl

theorem node16894_cond_eq
    (child2040 : Flapjack.WordAlloc.removeDeadStructural input2040 value1024 value1 value2 = (output2040, value1024, value1))
    (child16893 : Flapjack.WordAlloc.removeDeadStructural input16893 value1024 value1 value2 = (output16893, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16894 value1024 value1 value2 = (output16894, value6896, value1) := by
  rw [input16894_def, output16894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2040]
  try dsimp only
  rw [child16893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2040_skip, output16893_skip]
  kernel_rfl

theorem node16895_cond_eq
    (child2039 : Flapjack.WordAlloc.removeDeadStructural input2039 value1023 value1 value2 = (output2039, value1024, value1))
    (child16894 : Flapjack.WordAlloc.removeDeadStructural input16894 value1024 value1 value2 = (output16894, value6896, value1)) : Flapjack.WordAlloc.removeDeadStructural input16895 value1023 value1 value2 = (output16895, value6896, value1) := by
  rw [input16895_def, output16895_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child2039]
  try dsimp only
  rw [child16894]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output2039_skip, output16894_skip]
  kernel_rfl

#print axioms node16895_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
