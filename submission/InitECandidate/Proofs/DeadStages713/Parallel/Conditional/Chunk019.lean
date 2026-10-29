import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk019
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node4864_cond_eq
    (child4862 : Flapjack.WordAlloc.removeDeadStructural input4862 value2436 value1 value2 = (output4862, value2437, value1))
    (child4863 : Flapjack.WordAlloc.removeDeadStructural input4863 value2437 value1 value2 = (output4863, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4864 value2436 value1 value2 = (output4864, value5, value1) := by
  rw [input4864_def, output4864_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4862]
  dsimp only
  rw [child4863]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4862_skip, output4863_skip]
  kernel_rfl

theorem node4865_cond_eq
    (child4861 : Flapjack.WordAlloc.removeDeadStructural input4861 value2435 value1 value2 = (output4861, value2436, value1))
    (child4864 : Flapjack.WordAlloc.removeDeadStructural input4864 value2436 value1 value2 = (output4864, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4865 value2435 value1 value2 = (output4865, value5, value1) := by
  rw [input4865_def, output4865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4861]
  dsimp only
  rw [child4864]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4861_skip, output4864_skip]
  kernel_rfl

theorem node4866_cond_eq
    (child4860 : Flapjack.WordAlloc.removeDeadStructural input4860 value2434 value1 value2 = (output4860, value2435, value1))
    (child4865 : Flapjack.WordAlloc.removeDeadStructural input4865 value2435 value1 value2 = (output4865, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4866 value2434 value1 value2 = (output4866, value5, value1) := by
  rw [input4866_def, output4866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4860]
  dsimp only
  rw [child4865]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4860_skip, output4865_skip]
  kernel_rfl

theorem node4867_cond_eq
    (child4859 : Flapjack.WordAlloc.removeDeadStructural input4859 value2432 value1 value2 = (output4859, value2434, value1))
    (child4866 : Flapjack.WordAlloc.removeDeadStructural input4866 value2434 value1 value2 = (output4866, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4867 value2432 value1 value2 = (output4867, value5, value1) := by
  rw [input4867_def, output4867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4859]
  dsimp only
  rw [child4866]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4859_skip, output4866_skip]
  kernel_rfl

theorem node4868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4868 value5 value1 value2 = (output4868, value2438, value1) := by
  rw [input4868_def, output4868_def]
  kernel_rfl

theorem node4869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4869 value2438 value1 value2 = (output4869, value2439, value1) := by
  rw [input4869_def, output4869_def]
  kernel_rfl

theorem node4870_cond_eq
    (child4868 : Flapjack.WordAlloc.removeDeadStructural input4868 value5 value1 value2 = (output4868, value2438, value1))
    (child4869 : Flapjack.WordAlloc.removeDeadStructural input4869 value2438 value1 value2 = (output4869, value2439, value1)) : Flapjack.WordAlloc.removeDeadStructural input4870 value5 value1 value2 = (output4870, value2439, value1) := by
  rw [input4870_def, output4870_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4868]
  dsimp only
  rw [child4869]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4868_skip, output4869_skip]
  kernel_rfl

theorem node4871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4871 value2439 value1 value2 = (output4871, value2440, value1) := by
  rw [input4871_def, output4871_def]
  kernel_rfl

theorem node4872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4872 value2440 value1 value2 = (output4872, value2440, value1) := by
  rw [input4872_def, output4872_def]
  kernel_rfl

theorem node4873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4873 value2440 value1 value2 = (output4873, value2441, value1) := by
  rw [input4873_def, output4873_def]
  kernel_rfl

theorem node4874_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4874 value2441 value1 value2 = (output4874, value2442, value1) := by
  rw [input4874_def, output4874_def]
  kernel_rfl

theorem node4875_cond_eq
    (child4873 : Flapjack.WordAlloc.removeDeadStructural input4873 value2440 value1 value2 = (output4873, value2441, value1))
    (child4874 : Flapjack.WordAlloc.removeDeadStructural input4874 value2441 value1 value2 = (output4874, value2442, value1)) : Flapjack.WordAlloc.removeDeadStructural input4875 value2440 value1 value2 = (output4875, value2442, value1) := by
  rw [input4875_def, output4875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4873]
  dsimp only
  rw [child4874]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4873_skip, output4874_skip]
  kernel_rfl

theorem node4876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4876 value2442 value1 value2 = (output4876, value2443, value1) := by
  rw [input4876_def, output4876_def]
  kernel_rfl

theorem node4877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4877 value2443 value1 value2 = (output4877, value2444, value1) := by
  rw [input4877_def, output4877_def]
  kernel_rfl

theorem node4878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4878 value2444 value1 value2 = (output4878, value2445, value1) := by
  rw [input4878_def, output4878_def]
  kernel_rfl

theorem node4879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4879 value2445 value1 value2 = (output4879, value5, value1) := by
  rw [input4879_def, output4879_def]
  kernel_rfl

theorem node4880_cond_eq
    (child4878 : Flapjack.WordAlloc.removeDeadStructural input4878 value2444 value1 value2 = (output4878, value2445, value1))
    (child4879 : Flapjack.WordAlloc.removeDeadStructural input4879 value2445 value1 value2 = (output4879, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4880 value2444 value1 value2 = (output4880, value5, value1) := by
  rw [input4880_def, output4880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4878]
  dsimp only
  rw [child4879]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4878_skip, output4879_skip]
  kernel_rfl

theorem node4881_cond_eq
    (child4877 : Flapjack.WordAlloc.removeDeadStructural input4877 value2443 value1 value2 = (output4877, value2444, value1))
    (child4880 : Flapjack.WordAlloc.removeDeadStructural input4880 value2444 value1 value2 = (output4880, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4881 value2443 value1 value2 = (output4881, value5, value1) := by
  rw [input4881_def, output4881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4877]
  dsimp only
  rw [child4880]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4877_skip, output4880_skip]
  kernel_rfl

theorem node4882_cond_eq
    (child4876 : Flapjack.WordAlloc.removeDeadStructural input4876 value2442 value1 value2 = (output4876, value2443, value1))
    (child4881 : Flapjack.WordAlloc.removeDeadStructural input4881 value2443 value1 value2 = (output4881, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4882 value2442 value1 value2 = (output4882, value5, value1) := by
  rw [input4882_def, output4882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4876]
  dsimp only
  rw [child4881]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4876_skip, output4881_skip]
  kernel_rfl

theorem node4883_cond_eq
    (child4875 : Flapjack.WordAlloc.removeDeadStructural input4875 value2440 value1 value2 = (output4875, value2442, value1))
    (child4882 : Flapjack.WordAlloc.removeDeadStructural input4882 value2442 value1 value2 = (output4882, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4883 value2440 value1 value2 = (output4883, value5, value1) := by
  rw [input4883_def, output4883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4875]
  dsimp only
  rw [child4882]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4875_skip, output4882_skip]
  kernel_rfl

theorem node4884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4884 value5 value1 value2 = (output4884, value2446, value1) := by
  rw [input4884_def, output4884_def]
  kernel_rfl

theorem node4885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4885 value2446 value1 value2 = (output4885, value2447, value1) := by
  rw [input4885_def, output4885_def]
  kernel_rfl

theorem node4886_cond_eq
    (child4884 : Flapjack.WordAlloc.removeDeadStructural input4884 value5 value1 value2 = (output4884, value2446, value1))
    (child4885 : Flapjack.WordAlloc.removeDeadStructural input4885 value2446 value1 value2 = (output4885, value2447, value1)) : Flapjack.WordAlloc.removeDeadStructural input4886 value5 value1 value2 = (output4886, value2447, value1) := by
  rw [input4886_def, output4886_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4884]
  dsimp only
  rw [child4885]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4884_skip, output4885_skip]
  kernel_rfl

theorem node4887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4887 value2447 value1 value2 = (output4887, value2448, value1) := by
  rw [input4887_def, output4887_def]
  kernel_rfl

theorem node4888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4888 value2448 value1 value2 = (output4888, value2448, value1) := by
  rw [input4888_def, output4888_def]
  kernel_rfl

theorem node4889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4889 value2448 value1 value2 = (output4889, value2449, value1) := by
  rw [input4889_def, output4889_def]
  kernel_rfl

theorem node4890_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4890 value2449 value1 value2 = (output4890, value2450, value1) := by
  rw [input4890_def, output4890_def]
  kernel_rfl

theorem node4891_cond_eq
    (child4889 : Flapjack.WordAlloc.removeDeadStructural input4889 value2448 value1 value2 = (output4889, value2449, value1))
    (child4890 : Flapjack.WordAlloc.removeDeadStructural input4890 value2449 value1 value2 = (output4890, value2450, value1)) : Flapjack.WordAlloc.removeDeadStructural input4891 value2448 value1 value2 = (output4891, value2450, value1) := by
  rw [input4891_def, output4891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4889]
  dsimp only
  rw [child4890]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4889_skip, output4890_skip]
  kernel_rfl

theorem node4892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4892 value2450 value1 value2 = (output4892, value2451, value1) := by
  rw [input4892_def, output4892_def]
  kernel_rfl

theorem node4893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4893 value2451 value1 value2 = (output4893, value2452, value1) := by
  rw [input4893_def, output4893_def]
  kernel_rfl

theorem node4894_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4894 value2452 value1 value2 = (output4894, value2453, value1) := by
  rw [input4894_def, output4894_def]
  kernel_rfl

theorem node4895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4895 value2453 value1 value2 = (output4895, value5, value1) := by
  rw [input4895_def, output4895_def]
  kernel_rfl

theorem node4896_cond_eq
    (child4894 : Flapjack.WordAlloc.removeDeadStructural input4894 value2452 value1 value2 = (output4894, value2453, value1))
    (child4895 : Flapjack.WordAlloc.removeDeadStructural input4895 value2453 value1 value2 = (output4895, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4896 value2452 value1 value2 = (output4896, value5, value1) := by
  rw [input4896_def, output4896_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4894]
  dsimp only
  rw [child4895]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4894_skip, output4895_skip]
  kernel_rfl

theorem node4897_cond_eq
    (child4893 : Flapjack.WordAlloc.removeDeadStructural input4893 value2451 value1 value2 = (output4893, value2452, value1))
    (child4896 : Flapjack.WordAlloc.removeDeadStructural input4896 value2452 value1 value2 = (output4896, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4897 value2451 value1 value2 = (output4897, value5, value1) := by
  rw [input4897_def, output4897_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4893]
  dsimp only
  rw [child4896]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4893_skip, output4896_skip]
  kernel_rfl

theorem node4898_cond_eq
    (child4892 : Flapjack.WordAlloc.removeDeadStructural input4892 value2450 value1 value2 = (output4892, value2451, value1))
    (child4897 : Flapjack.WordAlloc.removeDeadStructural input4897 value2451 value1 value2 = (output4897, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4898 value2450 value1 value2 = (output4898, value5, value1) := by
  rw [input4898_def, output4898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4892]
  dsimp only
  rw [child4897]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4892_skip, output4897_skip]
  kernel_rfl

theorem node4899_cond_eq
    (child4891 : Flapjack.WordAlloc.removeDeadStructural input4891 value2448 value1 value2 = (output4891, value2450, value1))
    (child4898 : Flapjack.WordAlloc.removeDeadStructural input4898 value2450 value1 value2 = (output4898, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4899 value2448 value1 value2 = (output4899, value5, value1) := by
  rw [input4899_def, output4899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4891]
  dsimp only
  rw [child4898]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4891_skip, output4898_skip]
  kernel_rfl

theorem node4900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4900 value5 value1 value2 = (output4900, value2454, value1) := by
  rw [input4900_def, output4900_def]
  kernel_rfl

theorem node4901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4901 value2454 value1 value2 = (output4901, value2455, value1) := by
  rw [input4901_def, output4901_def]
  kernel_rfl

theorem node4902_cond_eq
    (child4900 : Flapjack.WordAlloc.removeDeadStructural input4900 value5 value1 value2 = (output4900, value2454, value1))
    (child4901 : Flapjack.WordAlloc.removeDeadStructural input4901 value2454 value1 value2 = (output4901, value2455, value1)) : Flapjack.WordAlloc.removeDeadStructural input4902 value5 value1 value2 = (output4902, value2455, value1) := by
  rw [input4902_def, output4902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4900]
  dsimp only
  rw [child4901]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4900_skip, output4901_skip]
  kernel_rfl

theorem node4903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4903 value2455 value1 value2 = (output4903, value2456, value1) := by
  rw [input4903_def, output4903_def]
  kernel_rfl

theorem node4904_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4904 value2456 value1 value2 = (output4904, value2456, value1) := by
  rw [input4904_def, output4904_def]
  kernel_rfl

theorem node4905_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4905 value2456 value1 value2 = (output4905, value2457, value1) := by
  rw [input4905_def, output4905_def]
  kernel_rfl

theorem node4906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4906 value2457 value1 value2 = (output4906, value2458, value1) := by
  rw [input4906_def, output4906_def]
  kernel_rfl

theorem node4907_cond_eq
    (child4905 : Flapjack.WordAlloc.removeDeadStructural input4905 value2456 value1 value2 = (output4905, value2457, value1))
    (child4906 : Flapjack.WordAlloc.removeDeadStructural input4906 value2457 value1 value2 = (output4906, value2458, value1)) : Flapjack.WordAlloc.removeDeadStructural input4907 value2456 value1 value2 = (output4907, value2458, value1) := by
  rw [input4907_def, output4907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4905]
  dsimp only
  rw [child4906]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4905_skip, output4906_skip]
  kernel_rfl

theorem node4908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4908 value2458 value1 value2 = (output4908, value2459, value1) := by
  rw [input4908_def, output4908_def]
  kernel_rfl

theorem node4909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4909 value2459 value1 value2 = (output4909, value2460, value1) := by
  rw [input4909_def, output4909_def]
  kernel_rfl

theorem node4910_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4910 value2460 value1 value2 = (output4910, value2461, value1) := by
  rw [input4910_def, output4910_def]
  kernel_rfl

theorem node4911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4911 value2461 value1 value2 = (output4911, value5, value1) := by
  rw [input4911_def, output4911_def]
  kernel_rfl

theorem node4912_cond_eq
    (child4910 : Flapjack.WordAlloc.removeDeadStructural input4910 value2460 value1 value2 = (output4910, value2461, value1))
    (child4911 : Flapjack.WordAlloc.removeDeadStructural input4911 value2461 value1 value2 = (output4911, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4912 value2460 value1 value2 = (output4912, value5, value1) := by
  rw [input4912_def, output4912_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4910]
  dsimp only
  rw [child4911]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4910_skip, output4911_skip]
  kernel_rfl

theorem node4913_cond_eq
    (child4909 : Flapjack.WordAlloc.removeDeadStructural input4909 value2459 value1 value2 = (output4909, value2460, value1))
    (child4912 : Flapjack.WordAlloc.removeDeadStructural input4912 value2460 value1 value2 = (output4912, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4913 value2459 value1 value2 = (output4913, value5, value1) := by
  rw [input4913_def, output4913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4909]
  dsimp only
  rw [child4912]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4909_skip, output4912_skip]
  kernel_rfl

theorem node4914_cond_eq
    (child4908 : Flapjack.WordAlloc.removeDeadStructural input4908 value2458 value1 value2 = (output4908, value2459, value1))
    (child4913 : Flapjack.WordAlloc.removeDeadStructural input4913 value2459 value1 value2 = (output4913, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4914 value2458 value1 value2 = (output4914, value5, value1) := by
  rw [input4914_def, output4914_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4908]
  dsimp only
  rw [child4913]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4908_skip, output4913_skip]
  kernel_rfl

theorem node4915_cond_eq
    (child4907 : Flapjack.WordAlloc.removeDeadStructural input4907 value2456 value1 value2 = (output4907, value2458, value1))
    (child4914 : Flapjack.WordAlloc.removeDeadStructural input4914 value2458 value1 value2 = (output4914, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4915 value2456 value1 value2 = (output4915, value5, value1) := by
  rw [input4915_def, output4915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4907]
  dsimp only
  rw [child4914]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4907_skip, output4914_skip]
  kernel_rfl

theorem node4916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4916 value5 value1 value2 = (output4916, value2462, value1) := by
  rw [input4916_def, output4916_def]
  kernel_rfl

theorem node4917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4917 value2462 value1 value2 = (output4917, value2463, value1) := by
  rw [input4917_def, output4917_def]
  kernel_rfl

theorem node4918_cond_eq
    (child4916 : Flapjack.WordAlloc.removeDeadStructural input4916 value5 value1 value2 = (output4916, value2462, value1))
    (child4917 : Flapjack.WordAlloc.removeDeadStructural input4917 value2462 value1 value2 = (output4917, value2463, value1)) : Flapjack.WordAlloc.removeDeadStructural input4918 value5 value1 value2 = (output4918, value2463, value1) := by
  rw [input4918_def, output4918_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4916]
  dsimp only
  rw [child4917]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4916_skip, output4917_skip]
  kernel_rfl

theorem node4919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4919 value2463 value1 value2 = (output4919, value2464, value1) := by
  rw [input4919_def, output4919_def]
  kernel_rfl

theorem node4920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4920 value2464 value1 value2 = (output4920, value2464, value1) := by
  rw [input4920_def, output4920_def]
  kernel_rfl

theorem node4921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4921 value2464 value1 value2 = (output4921, value2465, value1) := by
  rw [input4921_def, output4921_def]
  kernel_rfl

theorem node4922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4922 value2465 value1 value2 = (output4922, value2466, value1) := by
  rw [input4922_def, output4922_def]
  kernel_rfl

theorem node4923_cond_eq
    (child4921 : Flapjack.WordAlloc.removeDeadStructural input4921 value2464 value1 value2 = (output4921, value2465, value1))
    (child4922 : Flapjack.WordAlloc.removeDeadStructural input4922 value2465 value1 value2 = (output4922, value2466, value1)) : Flapjack.WordAlloc.removeDeadStructural input4923 value2464 value1 value2 = (output4923, value2466, value1) := by
  rw [input4923_def, output4923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4921]
  dsimp only
  rw [child4922]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4921_skip, output4922_skip]
  kernel_rfl

theorem node4924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4924 value2466 value1 value2 = (output4924, value2467, value1) := by
  rw [input4924_def, output4924_def]
  kernel_rfl

theorem node4925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4925 value2467 value1 value2 = (output4925, value2468, value1) := by
  rw [input4925_def, output4925_def]
  kernel_rfl

theorem node4926_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4926 value2468 value1 value2 = (output4926, value2469, value1) := by
  rw [input4926_def, output4926_def]
  kernel_rfl

theorem node4927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4927 value2469 value1 value2 = (output4927, value5, value1) := by
  rw [input4927_def, output4927_def]
  kernel_rfl

theorem node4928_cond_eq
    (child4926 : Flapjack.WordAlloc.removeDeadStructural input4926 value2468 value1 value2 = (output4926, value2469, value1))
    (child4927 : Flapjack.WordAlloc.removeDeadStructural input4927 value2469 value1 value2 = (output4927, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4928 value2468 value1 value2 = (output4928, value5, value1) := by
  rw [input4928_def, output4928_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4926]
  dsimp only
  rw [child4927]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4926_skip, output4927_skip]
  kernel_rfl

theorem node4929_cond_eq
    (child4925 : Flapjack.WordAlloc.removeDeadStructural input4925 value2467 value1 value2 = (output4925, value2468, value1))
    (child4928 : Flapjack.WordAlloc.removeDeadStructural input4928 value2468 value1 value2 = (output4928, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4929 value2467 value1 value2 = (output4929, value5, value1) := by
  rw [input4929_def, output4929_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4925]
  dsimp only
  rw [child4928]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4925_skip, output4928_skip]
  kernel_rfl

theorem node4930_cond_eq
    (child4924 : Flapjack.WordAlloc.removeDeadStructural input4924 value2466 value1 value2 = (output4924, value2467, value1))
    (child4929 : Flapjack.WordAlloc.removeDeadStructural input4929 value2467 value1 value2 = (output4929, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4930 value2466 value1 value2 = (output4930, value5, value1) := by
  rw [input4930_def, output4930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4924]
  dsimp only
  rw [child4929]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4924_skip, output4929_skip]
  kernel_rfl

theorem node4931_cond_eq
    (child4923 : Flapjack.WordAlloc.removeDeadStructural input4923 value2464 value1 value2 = (output4923, value2466, value1))
    (child4930 : Flapjack.WordAlloc.removeDeadStructural input4930 value2466 value1 value2 = (output4930, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4931 value2464 value1 value2 = (output4931, value5, value1) := by
  rw [input4931_def, output4931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4923]
  dsimp only
  rw [child4930]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4923_skip, output4930_skip]
  kernel_rfl

theorem node4932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4932 value5 value1 value2 = (output4932, value2470, value1) := by
  rw [input4932_def, output4932_def]
  kernel_rfl

theorem node4933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4933 value2470 value1 value2 = (output4933, value2471, value1) := by
  rw [input4933_def, output4933_def]
  kernel_rfl

theorem node4934_cond_eq
    (child4932 : Flapjack.WordAlloc.removeDeadStructural input4932 value5 value1 value2 = (output4932, value2470, value1))
    (child4933 : Flapjack.WordAlloc.removeDeadStructural input4933 value2470 value1 value2 = (output4933, value2471, value1)) : Flapjack.WordAlloc.removeDeadStructural input4934 value5 value1 value2 = (output4934, value2471, value1) := by
  rw [input4934_def, output4934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4932]
  dsimp only
  rw [child4933]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4932_skip, output4933_skip]
  kernel_rfl

theorem node4935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4935 value2471 value1 value2 = (output4935, value2472, value1) := by
  rw [input4935_def, output4935_def]
  kernel_rfl

theorem node4936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4936 value2472 value1 value2 = (output4936, value2472, value1) := by
  rw [input4936_def, output4936_def]
  kernel_rfl

theorem node4937_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4937 value2472 value1 value2 = (output4937, value2473, value1) := by
  rw [input4937_def, output4937_def]
  kernel_rfl

theorem node4938_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4938 value2473 value1 value2 = (output4938, value2474, value1) := by
  rw [input4938_def, output4938_def]
  kernel_rfl

theorem node4939_cond_eq
    (child4937 : Flapjack.WordAlloc.removeDeadStructural input4937 value2472 value1 value2 = (output4937, value2473, value1))
    (child4938 : Flapjack.WordAlloc.removeDeadStructural input4938 value2473 value1 value2 = (output4938, value2474, value1)) : Flapjack.WordAlloc.removeDeadStructural input4939 value2472 value1 value2 = (output4939, value2474, value1) := by
  rw [input4939_def, output4939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4937]
  dsimp only
  rw [child4938]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4937_skip, output4938_skip]
  kernel_rfl

theorem node4940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4940 value2474 value1 value2 = (output4940, value2475, value1) := by
  rw [input4940_def, output4940_def]
  kernel_rfl

theorem node4941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4941 value2475 value1 value2 = (output4941, value2476, value1) := by
  rw [input4941_def, output4941_def]
  kernel_rfl

theorem node4942_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4942 value2476 value1 value2 = (output4942, value2477, value1) := by
  rw [input4942_def, output4942_def]
  kernel_rfl

theorem node4943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4943 value2477 value1 value2 = (output4943, value5, value1) := by
  rw [input4943_def, output4943_def]
  kernel_rfl

theorem node4944_cond_eq
    (child4942 : Flapjack.WordAlloc.removeDeadStructural input4942 value2476 value1 value2 = (output4942, value2477, value1))
    (child4943 : Flapjack.WordAlloc.removeDeadStructural input4943 value2477 value1 value2 = (output4943, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4944 value2476 value1 value2 = (output4944, value5, value1) := by
  rw [input4944_def, output4944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4942]
  dsimp only
  rw [child4943]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4942_skip, output4943_skip]
  kernel_rfl

theorem node4945_cond_eq
    (child4941 : Flapjack.WordAlloc.removeDeadStructural input4941 value2475 value1 value2 = (output4941, value2476, value1))
    (child4944 : Flapjack.WordAlloc.removeDeadStructural input4944 value2476 value1 value2 = (output4944, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4945 value2475 value1 value2 = (output4945, value5, value1) := by
  rw [input4945_def, output4945_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4941]
  dsimp only
  rw [child4944]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4941_skip, output4944_skip]
  kernel_rfl

theorem node4946_cond_eq
    (child4940 : Flapjack.WordAlloc.removeDeadStructural input4940 value2474 value1 value2 = (output4940, value2475, value1))
    (child4945 : Flapjack.WordAlloc.removeDeadStructural input4945 value2475 value1 value2 = (output4945, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4946 value2474 value1 value2 = (output4946, value5, value1) := by
  rw [input4946_def, output4946_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4940]
  dsimp only
  rw [child4945]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4940_skip, output4945_skip]
  kernel_rfl

theorem node4947_cond_eq
    (child4939 : Flapjack.WordAlloc.removeDeadStructural input4939 value2472 value1 value2 = (output4939, value2474, value1))
    (child4946 : Flapjack.WordAlloc.removeDeadStructural input4946 value2474 value1 value2 = (output4946, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4947 value2472 value1 value2 = (output4947, value5, value1) := by
  rw [input4947_def, output4947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4939]
  dsimp only
  rw [child4946]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4939_skip, output4946_skip]
  kernel_rfl

theorem node4948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4948 value5 value1 value2 = (output4948, value2478, value1) := by
  rw [input4948_def, output4948_def]
  kernel_rfl

theorem node4949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4949 value2478 value1 value2 = (output4949, value2479, value1) := by
  rw [input4949_def, output4949_def]
  kernel_rfl

theorem node4950_cond_eq
    (child4948 : Flapjack.WordAlloc.removeDeadStructural input4948 value5 value1 value2 = (output4948, value2478, value1))
    (child4949 : Flapjack.WordAlloc.removeDeadStructural input4949 value2478 value1 value2 = (output4949, value2479, value1)) : Flapjack.WordAlloc.removeDeadStructural input4950 value5 value1 value2 = (output4950, value2479, value1) := by
  rw [input4950_def, output4950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4948]
  dsimp only
  rw [child4949]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4948_skip, output4949_skip]
  kernel_rfl

theorem node4951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4951 value2479 value1 value2 = (output4951, value2480, value1) := by
  rw [input4951_def, output4951_def]
  kernel_rfl

theorem node4952_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4952 value2480 value1 value2 = (output4952, value2480, value1) := by
  rw [input4952_def, output4952_def]
  kernel_rfl

theorem node4953_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4953 value2480 value1 value2 = (output4953, value2481, value1) := by
  rw [input4953_def, output4953_def]
  kernel_rfl

theorem node4954_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4954 value2481 value1 value2 = (output4954, value2482, value1) := by
  rw [input4954_def, output4954_def]
  kernel_rfl

theorem node4955_cond_eq
    (child4953 : Flapjack.WordAlloc.removeDeadStructural input4953 value2480 value1 value2 = (output4953, value2481, value1))
    (child4954 : Flapjack.WordAlloc.removeDeadStructural input4954 value2481 value1 value2 = (output4954, value2482, value1)) : Flapjack.WordAlloc.removeDeadStructural input4955 value2480 value1 value2 = (output4955, value2482, value1) := by
  rw [input4955_def, output4955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4953]
  dsimp only
  rw [child4954]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4953_skip, output4954_skip]
  kernel_rfl

theorem node4956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4956 value2482 value1 value2 = (output4956, value2483, value1) := by
  rw [input4956_def, output4956_def]
  kernel_rfl

theorem node4957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4957 value2483 value1 value2 = (output4957, value2484, value1) := by
  rw [input4957_def, output4957_def]
  kernel_rfl

theorem node4958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4958 value2484 value1 value2 = (output4958, value2485, value1) := by
  rw [input4958_def, output4958_def]
  kernel_rfl

theorem node4959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4959 value2485 value1 value2 = (output4959, value5, value1) := by
  rw [input4959_def, output4959_def]
  kernel_rfl

theorem node4960_cond_eq
    (child4958 : Flapjack.WordAlloc.removeDeadStructural input4958 value2484 value1 value2 = (output4958, value2485, value1))
    (child4959 : Flapjack.WordAlloc.removeDeadStructural input4959 value2485 value1 value2 = (output4959, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4960 value2484 value1 value2 = (output4960, value5, value1) := by
  rw [input4960_def, output4960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4958]
  dsimp only
  rw [child4959]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4958_skip, output4959_skip]
  kernel_rfl

theorem node4961_cond_eq
    (child4957 : Flapjack.WordAlloc.removeDeadStructural input4957 value2483 value1 value2 = (output4957, value2484, value1))
    (child4960 : Flapjack.WordAlloc.removeDeadStructural input4960 value2484 value1 value2 = (output4960, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4961 value2483 value1 value2 = (output4961, value5, value1) := by
  rw [input4961_def, output4961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4957]
  dsimp only
  rw [child4960]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4957_skip, output4960_skip]
  kernel_rfl

theorem node4962_cond_eq
    (child4956 : Flapjack.WordAlloc.removeDeadStructural input4956 value2482 value1 value2 = (output4956, value2483, value1))
    (child4961 : Flapjack.WordAlloc.removeDeadStructural input4961 value2483 value1 value2 = (output4961, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4962 value2482 value1 value2 = (output4962, value5, value1) := by
  rw [input4962_def, output4962_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4956]
  dsimp only
  rw [child4961]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4956_skip, output4961_skip]
  kernel_rfl

theorem node4963_cond_eq
    (child4955 : Flapjack.WordAlloc.removeDeadStructural input4955 value2480 value1 value2 = (output4955, value2482, value1))
    (child4962 : Flapjack.WordAlloc.removeDeadStructural input4962 value2482 value1 value2 = (output4962, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4963 value2480 value1 value2 = (output4963, value5, value1) := by
  rw [input4963_def, output4963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4955]
  dsimp only
  rw [child4962]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4955_skip, output4962_skip]
  kernel_rfl

theorem node4964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4964 value5 value1 value2 = (output4964, value2486, value1) := by
  rw [input4964_def, output4964_def]
  kernel_rfl

theorem node4965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4965 value2486 value1 value2 = (output4965, value2487, value1) := by
  rw [input4965_def, output4965_def]
  kernel_rfl

theorem node4966_cond_eq
    (child4964 : Flapjack.WordAlloc.removeDeadStructural input4964 value5 value1 value2 = (output4964, value2486, value1))
    (child4965 : Flapjack.WordAlloc.removeDeadStructural input4965 value2486 value1 value2 = (output4965, value2487, value1)) : Flapjack.WordAlloc.removeDeadStructural input4966 value5 value1 value2 = (output4966, value2487, value1) := by
  rw [input4966_def, output4966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4964]
  dsimp only
  rw [child4965]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4964_skip, output4965_skip]
  kernel_rfl

theorem node4967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4967 value2487 value1 value2 = (output4967, value2488, value1) := by
  rw [input4967_def, output4967_def]
  kernel_rfl

theorem node4968_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4968 value2488 value1 value2 = (output4968, value2488, value1) := by
  rw [input4968_def, output4968_def]
  kernel_rfl

theorem node4969_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4969 value2488 value1 value2 = (output4969, value2489, value1) := by
  rw [input4969_def, output4969_def]
  kernel_rfl

theorem node4970_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4970 value2489 value1 value2 = (output4970, value2490, value1) := by
  rw [input4970_def, output4970_def]
  kernel_rfl

theorem node4971_cond_eq
    (child4969 : Flapjack.WordAlloc.removeDeadStructural input4969 value2488 value1 value2 = (output4969, value2489, value1))
    (child4970 : Flapjack.WordAlloc.removeDeadStructural input4970 value2489 value1 value2 = (output4970, value2490, value1)) : Flapjack.WordAlloc.removeDeadStructural input4971 value2488 value1 value2 = (output4971, value2490, value1) := by
  rw [input4971_def, output4971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4969]
  dsimp only
  rw [child4970]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4969_skip, output4970_skip]
  kernel_rfl

theorem node4972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4972 value2490 value1 value2 = (output4972, value2491, value1) := by
  rw [input4972_def, output4972_def]
  kernel_rfl

theorem node4973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4973 value2491 value1 value2 = (output4973, value2492, value1) := by
  rw [input4973_def, output4973_def]
  kernel_rfl

theorem node4974_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4974 value2492 value1 value2 = (output4974, value2493, value1) := by
  rw [input4974_def, output4974_def]
  kernel_rfl

theorem node4975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4975 value2493 value1 value2 = (output4975, value5, value1) := by
  rw [input4975_def, output4975_def]
  kernel_rfl

theorem node4976_cond_eq
    (child4974 : Flapjack.WordAlloc.removeDeadStructural input4974 value2492 value1 value2 = (output4974, value2493, value1))
    (child4975 : Flapjack.WordAlloc.removeDeadStructural input4975 value2493 value1 value2 = (output4975, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4976 value2492 value1 value2 = (output4976, value5, value1) := by
  rw [input4976_def, output4976_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4974]
  dsimp only
  rw [child4975]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4974_skip, output4975_skip]
  kernel_rfl

theorem node4977_cond_eq
    (child4973 : Flapjack.WordAlloc.removeDeadStructural input4973 value2491 value1 value2 = (output4973, value2492, value1))
    (child4976 : Flapjack.WordAlloc.removeDeadStructural input4976 value2492 value1 value2 = (output4976, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4977 value2491 value1 value2 = (output4977, value5, value1) := by
  rw [input4977_def, output4977_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4973]
  dsimp only
  rw [child4976]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4973_skip, output4976_skip]
  kernel_rfl

theorem node4978_cond_eq
    (child4972 : Flapjack.WordAlloc.removeDeadStructural input4972 value2490 value1 value2 = (output4972, value2491, value1))
    (child4977 : Flapjack.WordAlloc.removeDeadStructural input4977 value2491 value1 value2 = (output4977, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4978 value2490 value1 value2 = (output4978, value5, value1) := by
  rw [input4978_def, output4978_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4972]
  dsimp only
  rw [child4977]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4972_skip, output4977_skip]
  kernel_rfl

theorem node4979_cond_eq
    (child4971 : Flapjack.WordAlloc.removeDeadStructural input4971 value2488 value1 value2 = (output4971, value2490, value1))
    (child4978 : Flapjack.WordAlloc.removeDeadStructural input4978 value2490 value1 value2 = (output4978, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4979 value2488 value1 value2 = (output4979, value5, value1) := by
  rw [input4979_def, output4979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4971]
  dsimp only
  rw [child4978]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4971_skip, output4978_skip]
  kernel_rfl

theorem node4980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4980 value5 value1 value2 = (output4980, value2494, value1) := by
  rw [input4980_def, output4980_def]
  kernel_rfl

theorem node4981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4981 value2494 value1 value2 = (output4981, value2495, value1) := by
  rw [input4981_def, output4981_def]
  kernel_rfl

theorem node4982_cond_eq
    (child4980 : Flapjack.WordAlloc.removeDeadStructural input4980 value5 value1 value2 = (output4980, value2494, value1))
    (child4981 : Flapjack.WordAlloc.removeDeadStructural input4981 value2494 value1 value2 = (output4981, value2495, value1)) : Flapjack.WordAlloc.removeDeadStructural input4982 value5 value1 value2 = (output4982, value2495, value1) := by
  rw [input4982_def, output4982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4980]
  dsimp only
  rw [child4981]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4980_skip, output4981_skip]
  kernel_rfl

theorem node4983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4983 value2495 value1 value2 = (output4983, value2496, value1) := by
  rw [input4983_def, output4983_def]
  kernel_rfl

theorem node4984_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4984 value2496 value1 value2 = (output4984, value2496, value1) := by
  rw [input4984_def, output4984_def]
  kernel_rfl

theorem node4985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4985 value2496 value1 value2 = (output4985, value2497, value1) := by
  rw [input4985_def, output4985_def]
  kernel_rfl

theorem node4986_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4986 value2497 value1 value2 = (output4986, value2498, value1) := by
  rw [input4986_def, output4986_def]
  kernel_rfl

theorem node4987_cond_eq
    (child4985 : Flapjack.WordAlloc.removeDeadStructural input4985 value2496 value1 value2 = (output4985, value2497, value1))
    (child4986 : Flapjack.WordAlloc.removeDeadStructural input4986 value2497 value1 value2 = (output4986, value2498, value1)) : Flapjack.WordAlloc.removeDeadStructural input4987 value2496 value1 value2 = (output4987, value2498, value1) := by
  rw [input4987_def, output4987_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4985]
  dsimp only
  rw [child4986]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4985_skip, output4986_skip]
  kernel_rfl

theorem node4988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4988 value2498 value1 value2 = (output4988, value2499, value1) := by
  rw [input4988_def, output4988_def]
  kernel_rfl

theorem node4989_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4989 value2499 value1 value2 = (output4989, value2500, value1) := by
  rw [input4989_def, output4989_def]
  kernel_rfl

theorem node4990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4990 value2500 value1 value2 = (output4990, value2501, value1) := by
  rw [input4990_def, output4990_def]
  kernel_rfl

theorem node4991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4991 value2501 value1 value2 = (output4991, value5, value1) := by
  rw [input4991_def, output4991_def]
  kernel_rfl

theorem node4992_cond_eq
    (child4990 : Flapjack.WordAlloc.removeDeadStructural input4990 value2500 value1 value2 = (output4990, value2501, value1))
    (child4991 : Flapjack.WordAlloc.removeDeadStructural input4991 value2501 value1 value2 = (output4991, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4992 value2500 value1 value2 = (output4992, value5, value1) := by
  rw [input4992_def, output4992_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4990]
  dsimp only
  rw [child4991]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4990_skip, output4991_skip]
  kernel_rfl

theorem node4993_cond_eq
    (child4989 : Flapjack.WordAlloc.removeDeadStructural input4989 value2499 value1 value2 = (output4989, value2500, value1))
    (child4992 : Flapjack.WordAlloc.removeDeadStructural input4992 value2500 value1 value2 = (output4992, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4993 value2499 value1 value2 = (output4993, value5, value1) := by
  rw [input4993_def, output4993_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4989]
  dsimp only
  rw [child4992]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4989_skip, output4992_skip]
  kernel_rfl

theorem node4994_cond_eq
    (child4988 : Flapjack.WordAlloc.removeDeadStructural input4988 value2498 value1 value2 = (output4988, value2499, value1))
    (child4993 : Flapjack.WordAlloc.removeDeadStructural input4993 value2499 value1 value2 = (output4993, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4994 value2498 value1 value2 = (output4994, value5, value1) := by
  rw [input4994_def, output4994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4988]
  dsimp only
  rw [child4993]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4988_skip, output4993_skip]
  kernel_rfl

theorem node4995_cond_eq
    (child4987 : Flapjack.WordAlloc.removeDeadStructural input4987 value2496 value1 value2 = (output4987, value2498, value1))
    (child4994 : Flapjack.WordAlloc.removeDeadStructural input4994 value2498 value1 value2 = (output4994, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input4995 value2496 value1 value2 = (output4995, value5, value1) := by
  rw [input4995_def, output4995_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4987]
  dsimp only
  rw [child4994]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4987_skip, output4994_skip]
  kernel_rfl

theorem node4996_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4996 value5 value1 value2 = (output4996, value2502, value1) := by
  rw [input4996_def, output4996_def]
  kernel_rfl

theorem node4997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4997 value2502 value1 value2 = (output4997, value2503, value1) := by
  rw [input4997_def, output4997_def]
  kernel_rfl

theorem node4998_cond_eq
    (child4996 : Flapjack.WordAlloc.removeDeadStructural input4996 value5 value1 value2 = (output4996, value2502, value1))
    (child4997 : Flapjack.WordAlloc.removeDeadStructural input4997 value2502 value1 value2 = (output4997, value2503, value1)) : Flapjack.WordAlloc.removeDeadStructural input4998 value5 value1 value2 = (output4998, value2503, value1) := by
  rw [input4998_def, output4998_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4996]
  dsimp only
  rw [child4997]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4996_skip, output4997_skip]
  kernel_rfl

theorem node4999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4999 value2503 value1 value2 = (output4999, value2504, value1) := by
  rw [input4999_def, output4999_def]
  kernel_rfl

theorem node5000_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5000 value2504 value1 value2 = (output5000, value2504, value1) := by
  rw [input5000_def, output5000_def]
  kernel_rfl

theorem node5001_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5001 value2504 value1 value2 = (output5001, value2505, value1) := by
  rw [input5001_def, output5001_def]
  kernel_rfl

theorem node5002_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5002 value2505 value1 value2 = (output5002, value2506, value1) := by
  rw [input5002_def, output5002_def]
  kernel_rfl

theorem node5003_cond_eq
    (child5001 : Flapjack.WordAlloc.removeDeadStructural input5001 value2504 value1 value2 = (output5001, value2505, value1))
    (child5002 : Flapjack.WordAlloc.removeDeadStructural input5002 value2505 value1 value2 = (output5002, value2506, value1)) : Flapjack.WordAlloc.removeDeadStructural input5003 value2504 value1 value2 = (output5003, value2506, value1) := by
  rw [input5003_def, output5003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5001]
  dsimp only
  rw [child5002]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5001_skip, output5002_skip]
  kernel_rfl

theorem node5004_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5004 value2506 value1 value2 = (output5004, value2507, value1) := by
  rw [input5004_def, output5004_def]
  kernel_rfl

theorem node5005_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5005 value2507 value1 value2 = (output5005, value2508, value1) := by
  rw [input5005_def, output5005_def]
  kernel_rfl

theorem node5006_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5006 value2508 value1 value2 = (output5006, value2509, value1) := by
  rw [input5006_def, output5006_def]
  kernel_rfl

theorem node5007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5007 value2509 value1 value2 = (output5007, value5, value1) := by
  rw [input5007_def, output5007_def]
  kernel_rfl

theorem node5008_cond_eq
    (child5006 : Flapjack.WordAlloc.removeDeadStructural input5006 value2508 value1 value2 = (output5006, value2509, value1))
    (child5007 : Flapjack.WordAlloc.removeDeadStructural input5007 value2509 value1 value2 = (output5007, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5008 value2508 value1 value2 = (output5008, value5, value1) := by
  rw [input5008_def, output5008_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5006]
  dsimp only
  rw [child5007]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5006_skip, output5007_skip]
  kernel_rfl

theorem node5009_cond_eq
    (child5005 : Flapjack.WordAlloc.removeDeadStructural input5005 value2507 value1 value2 = (output5005, value2508, value1))
    (child5008 : Flapjack.WordAlloc.removeDeadStructural input5008 value2508 value1 value2 = (output5008, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5009 value2507 value1 value2 = (output5009, value5, value1) := by
  rw [input5009_def, output5009_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5005]
  dsimp only
  rw [child5008]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5005_skip, output5008_skip]
  kernel_rfl

theorem node5010_cond_eq
    (child5004 : Flapjack.WordAlloc.removeDeadStructural input5004 value2506 value1 value2 = (output5004, value2507, value1))
    (child5009 : Flapjack.WordAlloc.removeDeadStructural input5009 value2507 value1 value2 = (output5009, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5010 value2506 value1 value2 = (output5010, value5, value1) := by
  rw [input5010_def, output5010_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5004]
  dsimp only
  rw [child5009]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5004_skip, output5009_skip]
  kernel_rfl

theorem node5011_cond_eq
    (child5003 : Flapjack.WordAlloc.removeDeadStructural input5003 value2504 value1 value2 = (output5003, value2506, value1))
    (child5010 : Flapjack.WordAlloc.removeDeadStructural input5010 value2506 value1 value2 = (output5010, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5011 value2504 value1 value2 = (output5011, value5, value1) := by
  rw [input5011_def, output5011_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5003]
  dsimp only
  rw [child5010]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5003_skip, output5010_skip]
  kernel_rfl

theorem node5012_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5012 value5 value1 value2 = (output5012, value2510, value1) := by
  rw [input5012_def, output5012_def]
  kernel_rfl

theorem node5013_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5013 value2510 value1 value2 = (output5013, value2511, value1) := by
  rw [input5013_def, output5013_def]
  kernel_rfl

theorem node5014_cond_eq
    (child5012 : Flapjack.WordAlloc.removeDeadStructural input5012 value5 value1 value2 = (output5012, value2510, value1))
    (child5013 : Flapjack.WordAlloc.removeDeadStructural input5013 value2510 value1 value2 = (output5013, value2511, value1)) : Flapjack.WordAlloc.removeDeadStructural input5014 value5 value1 value2 = (output5014, value2511, value1) := by
  rw [input5014_def, output5014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5012]
  dsimp only
  rw [child5013]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5012_skip, output5013_skip]
  kernel_rfl

theorem node5015_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5015 value2511 value1 value2 = (output5015, value2512, value1) := by
  rw [input5015_def, output5015_def]
  kernel_rfl

theorem node5016_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5016 value2512 value1 value2 = (output5016, value2512, value1) := by
  rw [input5016_def, output5016_def]
  kernel_rfl

theorem node5017_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5017 value2512 value1 value2 = (output5017, value2513, value1) := by
  rw [input5017_def, output5017_def]
  kernel_rfl

theorem node5018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5018 value2513 value1 value2 = (output5018, value2514, value1) := by
  rw [input5018_def, output5018_def]
  kernel_rfl

theorem node5019_cond_eq
    (child5017 : Flapjack.WordAlloc.removeDeadStructural input5017 value2512 value1 value2 = (output5017, value2513, value1))
    (child5018 : Flapjack.WordAlloc.removeDeadStructural input5018 value2513 value1 value2 = (output5018, value2514, value1)) : Flapjack.WordAlloc.removeDeadStructural input5019 value2512 value1 value2 = (output5019, value2514, value1) := by
  rw [input5019_def, output5019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5017]
  dsimp only
  rw [child5018]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5017_skip, output5018_skip]
  kernel_rfl

theorem node5020_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5020 value2514 value1 value2 = (output5020, value2515, value1) := by
  rw [input5020_def, output5020_def]
  kernel_rfl

theorem node5021_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5021 value2515 value1 value2 = (output5021, value2516, value1) := by
  rw [input5021_def, output5021_def]
  kernel_rfl

theorem node5022_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5022 value2516 value1 value2 = (output5022, value2517, value1) := by
  rw [input5022_def, output5022_def]
  kernel_rfl

theorem node5023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5023 value2517 value1 value2 = (output5023, value5, value1) := by
  rw [input5023_def, output5023_def]
  kernel_rfl

theorem node5024_cond_eq
    (child5022 : Flapjack.WordAlloc.removeDeadStructural input5022 value2516 value1 value2 = (output5022, value2517, value1))
    (child5023 : Flapjack.WordAlloc.removeDeadStructural input5023 value2517 value1 value2 = (output5023, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5024 value2516 value1 value2 = (output5024, value5, value1) := by
  rw [input5024_def, output5024_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5022]
  dsimp only
  rw [child5023]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5022_skip, output5023_skip]
  kernel_rfl

theorem node5025_cond_eq
    (child5021 : Flapjack.WordAlloc.removeDeadStructural input5021 value2515 value1 value2 = (output5021, value2516, value1))
    (child5024 : Flapjack.WordAlloc.removeDeadStructural input5024 value2516 value1 value2 = (output5024, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5025 value2515 value1 value2 = (output5025, value5, value1) := by
  rw [input5025_def, output5025_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5021]
  dsimp only
  rw [child5024]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5021_skip, output5024_skip]
  kernel_rfl

theorem node5026_cond_eq
    (child5020 : Flapjack.WordAlloc.removeDeadStructural input5020 value2514 value1 value2 = (output5020, value2515, value1))
    (child5025 : Flapjack.WordAlloc.removeDeadStructural input5025 value2515 value1 value2 = (output5025, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5026 value2514 value1 value2 = (output5026, value5, value1) := by
  rw [input5026_def, output5026_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5020]
  dsimp only
  rw [child5025]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5020_skip, output5025_skip]
  kernel_rfl

theorem node5027_cond_eq
    (child5019 : Flapjack.WordAlloc.removeDeadStructural input5019 value2512 value1 value2 = (output5019, value2514, value1))
    (child5026 : Flapjack.WordAlloc.removeDeadStructural input5026 value2514 value1 value2 = (output5026, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5027 value2512 value1 value2 = (output5027, value5, value1) := by
  rw [input5027_def, output5027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5019]
  dsimp only
  rw [child5026]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5019_skip, output5026_skip]
  kernel_rfl

theorem node5028_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5028 value5 value1 value2 = (output5028, value2518, value1) := by
  rw [input5028_def, output5028_def]
  kernel_rfl

theorem node5029_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5029 value2518 value1 value2 = (output5029, value2519, value1) := by
  rw [input5029_def, output5029_def]
  kernel_rfl

theorem node5030_cond_eq
    (child5028 : Flapjack.WordAlloc.removeDeadStructural input5028 value5 value1 value2 = (output5028, value2518, value1))
    (child5029 : Flapjack.WordAlloc.removeDeadStructural input5029 value2518 value1 value2 = (output5029, value2519, value1)) : Flapjack.WordAlloc.removeDeadStructural input5030 value5 value1 value2 = (output5030, value2519, value1) := by
  rw [input5030_def, output5030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5028]
  dsimp only
  rw [child5029]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5028_skip, output5029_skip]
  kernel_rfl

theorem node5031_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5031 value2519 value1 value2 = (output5031, value2520, value1) := by
  rw [input5031_def, output5031_def]
  kernel_rfl

theorem node5032_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5032 value2520 value1 value2 = (output5032, value2520, value1) := by
  rw [input5032_def, output5032_def]
  kernel_rfl

theorem node5033_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5033 value2520 value1 value2 = (output5033, value2521, value1) := by
  rw [input5033_def, output5033_def]
  kernel_rfl

theorem node5034_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5034 value2521 value1 value2 = (output5034, value2522, value1) := by
  rw [input5034_def, output5034_def]
  kernel_rfl

theorem node5035_cond_eq
    (child5033 : Flapjack.WordAlloc.removeDeadStructural input5033 value2520 value1 value2 = (output5033, value2521, value1))
    (child5034 : Flapjack.WordAlloc.removeDeadStructural input5034 value2521 value1 value2 = (output5034, value2522, value1)) : Flapjack.WordAlloc.removeDeadStructural input5035 value2520 value1 value2 = (output5035, value2522, value1) := by
  rw [input5035_def, output5035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5033]
  dsimp only
  rw [child5034]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5033_skip, output5034_skip]
  kernel_rfl

theorem node5036_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5036 value2522 value1 value2 = (output5036, value2523, value1) := by
  rw [input5036_def, output5036_def]
  kernel_rfl

theorem node5037_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5037 value2523 value1 value2 = (output5037, value2524, value1) := by
  rw [input5037_def, output5037_def]
  kernel_rfl

theorem node5038_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5038 value2524 value1 value2 = (output5038, value2525, value1) := by
  rw [input5038_def, output5038_def]
  kernel_rfl

theorem node5039_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5039 value2525 value1 value2 = (output5039, value5, value1) := by
  rw [input5039_def, output5039_def]
  kernel_rfl

theorem node5040_cond_eq
    (child5038 : Flapjack.WordAlloc.removeDeadStructural input5038 value2524 value1 value2 = (output5038, value2525, value1))
    (child5039 : Flapjack.WordAlloc.removeDeadStructural input5039 value2525 value1 value2 = (output5039, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5040 value2524 value1 value2 = (output5040, value5, value1) := by
  rw [input5040_def, output5040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5038]
  dsimp only
  rw [child5039]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5038_skip, output5039_skip]
  kernel_rfl

theorem node5041_cond_eq
    (child5037 : Flapjack.WordAlloc.removeDeadStructural input5037 value2523 value1 value2 = (output5037, value2524, value1))
    (child5040 : Flapjack.WordAlloc.removeDeadStructural input5040 value2524 value1 value2 = (output5040, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5041 value2523 value1 value2 = (output5041, value5, value1) := by
  rw [input5041_def, output5041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5037]
  dsimp only
  rw [child5040]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5037_skip, output5040_skip]
  kernel_rfl

theorem node5042_cond_eq
    (child5036 : Flapjack.WordAlloc.removeDeadStructural input5036 value2522 value1 value2 = (output5036, value2523, value1))
    (child5041 : Flapjack.WordAlloc.removeDeadStructural input5041 value2523 value1 value2 = (output5041, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5042 value2522 value1 value2 = (output5042, value5, value1) := by
  rw [input5042_def, output5042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5036]
  dsimp only
  rw [child5041]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5036_skip, output5041_skip]
  kernel_rfl

theorem node5043_cond_eq
    (child5035 : Flapjack.WordAlloc.removeDeadStructural input5035 value2520 value1 value2 = (output5035, value2522, value1))
    (child5042 : Flapjack.WordAlloc.removeDeadStructural input5042 value2522 value1 value2 = (output5042, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5043 value2520 value1 value2 = (output5043, value5, value1) := by
  rw [input5043_def, output5043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5035]
  dsimp only
  rw [child5042]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5035_skip, output5042_skip]
  kernel_rfl

theorem node5044_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5044 value5 value1 value2 = (output5044, value2526, value1) := by
  rw [input5044_def, output5044_def]
  kernel_rfl

theorem node5045_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5045 value2526 value1 value2 = (output5045, value2527, value1) := by
  rw [input5045_def, output5045_def]
  kernel_rfl

theorem node5046_cond_eq
    (child5044 : Flapjack.WordAlloc.removeDeadStructural input5044 value5 value1 value2 = (output5044, value2526, value1))
    (child5045 : Flapjack.WordAlloc.removeDeadStructural input5045 value2526 value1 value2 = (output5045, value2527, value1)) : Flapjack.WordAlloc.removeDeadStructural input5046 value5 value1 value2 = (output5046, value2527, value1) := by
  rw [input5046_def, output5046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5044]
  dsimp only
  rw [child5045]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5044_skip, output5045_skip]
  kernel_rfl

theorem node5047_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5047 value2527 value1 value2 = (output5047, value2528, value1) := by
  rw [input5047_def, output5047_def]
  kernel_rfl

theorem node5048_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5048 value2528 value1 value2 = (output5048, value2528, value1) := by
  rw [input5048_def, output5048_def]
  kernel_rfl

theorem node5049_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5049 value2528 value1 value2 = (output5049, value2529, value1) := by
  rw [input5049_def, output5049_def]
  kernel_rfl

theorem node5050_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5050 value2529 value1 value2 = (output5050, value2530, value1) := by
  rw [input5050_def, output5050_def]
  kernel_rfl

theorem node5051_cond_eq
    (child5049 : Flapjack.WordAlloc.removeDeadStructural input5049 value2528 value1 value2 = (output5049, value2529, value1))
    (child5050 : Flapjack.WordAlloc.removeDeadStructural input5050 value2529 value1 value2 = (output5050, value2530, value1)) : Flapjack.WordAlloc.removeDeadStructural input5051 value2528 value1 value2 = (output5051, value2530, value1) := by
  rw [input5051_def, output5051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5049]
  dsimp only
  rw [child5050]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5049_skip, output5050_skip]
  kernel_rfl

theorem node5052_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5052 value2530 value1 value2 = (output5052, value2531, value1) := by
  rw [input5052_def, output5052_def]
  kernel_rfl

theorem node5053_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5053 value2531 value1 value2 = (output5053, value2532, value1) := by
  rw [input5053_def, output5053_def]
  kernel_rfl

theorem node5054_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5054 value2532 value1 value2 = (output5054, value2533, value1) := by
  rw [input5054_def, output5054_def]
  kernel_rfl

theorem node5055_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5055 value2533 value1 value2 = (output5055, value5, value1) := by
  rw [input5055_def, output5055_def]
  kernel_rfl

theorem node5056_cond_eq
    (child5054 : Flapjack.WordAlloc.removeDeadStructural input5054 value2532 value1 value2 = (output5054, value2533, value1))
    (child5055 : Flapjack.WordAlloc.removeDeadStructural input5055 value2533 value1 value2 = (output5055, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5056 value2532 value1 value2 = (output5056, value5, value1) := by
  rw [input5056_def, output5056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5054]
  dsimp only
  rw [child5055]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5054_skip, output5055_skip]
  kernel_rfl

theorem node5057_cond_eq
    (child5053 : Flapjack.WordAlloc.removeDeadStructural input5053 value2531 value1 value2 = (output5053, value2532, value1))
    (child5056 : Flapjack.WordAlloc.removeDeadStructural input5056 value2532 value1 value2 = (output5056, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5057 value2531 value1 value2 = (output5057, value5, value1) := by
  rw [input5057_def, output5057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5053]
  dsimp only
  rw [child5056]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5053_skip, output5056_skip]
  kernel_rfl

theorem node5058_cond_eq
    (child5052 : Flapjack.WordAlloc.removeDeadStructural input5052 value2530 value1 value2 = (output5052, value2531, value1))
    (child5057 : Flapjack.WordAlloc.removeDeadStructural input5057 value2531 value1 value2 = (output5057, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5058 value2530 value1 value2 = (output5058, value5, value1) := by
  rw [input5058_def, output5058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5052]
  dsimp only
  rw [child5057]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5052_skip, output5057_skip]
  kernel_rfl

theorem node5059_cond_eq
    (child5051 : Flapjack.WordAlloc.removeDeadStructural input5051 value2528 value1 value2 = (output5051, value2530, value1))
    (child5058 : Flapjack.WordAlloc.removeDeadStructural input5058 value2530 value1 value2 = (output5058, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5059 value2528 value1 value2 = (output5059, value5, value1) := by
  rw [input5059_def, output5059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5051]
  dsimp only
  rw [child5058]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5051_skip, output5058_skip]
  kernel_rfl

theorem node5060_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5060 value5 value1 value2 = (output5060, value2534, value1) := by
  rw [input5060_def, output5060_def]
  kernel_rfl

theorem node5061_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5061 value2534 value1 value2 = (output5061, value2535, value1) := by
  rw [input5061_def, output5061_def]
  kernel_rfl

theorem node5062_cond_eq
    (child5060 : Flapjack.WordAlloc.removeDeadStructural input5060 value5 value1 value2 = (output5060, value2534, value1))
    (child5061 : Flapjack.WordAlloc.removeDeadStructural input5061 value2534 value1 value2 = (output5061, value2535, value1)) : Flapjack.WordAlloc.removeDeadStructural input5062 value5 value1 value2 = (output5062, value2535, value1) := by
  rw [input5062_def, output5062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5060]
  dsimp only
  rw [child5061]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5060_skip, output5061_skip]
  kernel_rfl

theorem node5063_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5063 value2535 value1 value2 = (output5063, value2536, value1) := by
  rw [input5063_def, output5063_def]
  kernel_rfl

theorem node5064_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5064 value2536 value1 value2 = (output5064, value2536, value1) := by
  rw [input5064_def, output5064_def]
  kernel_rfl

theorem node5065_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5065 value2536 value1 value2 = (output5065, value2537, value1) := by
  rw [input5065_def, output5065_def]
  kernel_rfl

theorem node5066_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5066 value2537 value1 value2 = (output5066, value2538, value1) := by
  rw [input5066_def, output5066_def]
  kernel_rfl

theorem node5067_cond_eq
    (child5065 : Flapjack.WordAlloc.removeDeadStructural input5065 value2536 value1 value2 = (output5065, value2537, value1))
    (child5066 : Flapjack.WordAlloc.removeDeadStructural input5066 value2537 value1 value2 = (output5066, value2538, value1)) : Flapjack.WordAlloc.removeDeadStructural input5067 value2536 value1 value2 = (output5067, value2538, value1) := by
  rw [input5067_def, output5067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5065]
  dsimp only
  rw [child5066]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5065_skip, output5066_skip]
  kernel_rfl

theorem node5068_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5068 value2538 value1 value2 = (output5068, value2539, value1) := by
  rw [input5068_def, output5068_def]
  kernel_rfl

theorem node5069_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5069 value2539 value1 value2 = (output5069, value2540, value1) := by
  rw [input5069_def, output5069_def]
  kernel_rfl

theorem node5070_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5070 value2540 value1 value2 = (output5070, value2541, value1) := by
  rw [input5070_def, output5070_def]
  kernel_rfl

theorem node5071_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5071 value2541 value1 value2 = (output5071, value5, value1) := by
  rw [input5071_def, output5071_def]
  kernel_rfl

theorem node5072_cond_eq
    (child5070 : Flapjack.WordAlloc.removeDeadStructural input5070 value2540 value1 value2 = (output5070, value2541, value1))
    (child5071 : Flapjack.WordAlloc.removeDeadStructural input5071 value2541 value1 value2 = (output5071, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5072 value2540 value1 value2 = (output5072, value5, value1) := by
  rw [input5072_def, output5072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5070]
  dsimp only
  rw [child5071]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5070_skip, output5071_skip]
  kernel_rfl

theorem node5073_cond_eq
    (child5069 : Flapjack.WordAlloc.removeDeadStructural input5069 value2539 value1 value2 = (output5069, value2540, value1))
    (child5072 : Flapjack.WordAlloc.removeDeadStructural input5072 value2540 value1 value2 = (output5072, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5073 value2539 value1 value2 = (output5073, value5, value1) := by
  rw [input5073_def, output5073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5069]
  dsimp only
  rw [child5072]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5069_skip, output5072_skip]
  kernel_rfl

theorem node5074_cond_eq
    (child5068 : Flapjack.WordAlloc.removeDeadStructural input5068 value2538 value1 value2 = (output5068, value2539, value1))
    (child5073 : Flapjack.WordAlloc.removeDeadStructural input5073 value2539 value1 value2 = (output5073, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5074 value2538 value1 value2 = (output5074, value5, value1) := by
  rw [input5074_def, output5074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5068]
  dsimp only
  rw [child5073]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5068_skip, output5073_skip]
  kernel_rfl

theorem node5075_cond_eq
    (child5067 : Flapjack.WordAlloc.removeDeadStructural input5067 value2536 value1 value2 = (output5067, value2538, value1))
    (child5074 : Flapjack.WordAlloc.removeDeadStructural input5074 value2538 value1 value2 = (output5074, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5075 value2536 value1 value2 = (output5075, value5, value1) := by
  rw [input5075_def, output5075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5067]
  dsimp only
  rw [child5074]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5067_skip, output5074_skip]
  kernel_rfl

theorem node5076_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5076 value5 value1 value2 = (output5076, value2542, value1) := by
  rw [input5076_def, output5076_def]
  kernel_rfl

theorem node5077_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5077 value2542 value1 value2 = (output5077, value2543, value1) := by
  rw [input5077_def, output5077_def]
  kernel_rfl

theorem node5078_cond_eq
    (child5076 : Flapjack.WordAlloc.removeDeadStructural input5076 value5 value1 value2 = (output5076, value2542, value1))
    (child5077 : Flapjack.WordAlloc.removeDeadStructural input5077 value2542 value1 value2 = (output5077, value2543, value1)) : Flapjack.WordAlloc.removeDeadStructural input5078 value5 value1 value2 = (output5078, value2543, value1) := by
  rw [input5078_def, output5078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5076]
  dsimp only
  rw [child5077]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5076_skip, output5077_skip]
  kernel_rfl

theorem node5079_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5079 value2543 value1 value2 = (output5079, value2544, value1) := by
  rw [input5079_def, output5079_def]
  kernel_rfl

theorem node5080_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5080 value2544 value1 value2 = (output5080, value2544, value1) := by
  rw [input5080_def, output5080_def]
  kernel_rfl

theorem node5081_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5081 value2544 value1 value2 = (output5081, value2545, value1) := by
  rw [input5081_def, output5081_def]
  kernel_rfl

theorem node5082_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5082 value2545 value1 value2 = (output5082, value2546, value1) := by
  rw [input5082_def, output5082_def]
  kernel_rfl

theorem node5083_cond_eq
    (child5081 : Flapjack.WordAlloc.removeDeadStructural input5081 value2544 value1 value2 = (output5081, value2545, value1))
    (child5082 : Flapjack.WordAlloc.removeDeadStructural input5082 value2545 value1 value2 = (output5082, value2546, value1)) : Flapjack.WordAlloc.removeDeadStructural input5083 value2544 value1 value2 = (output5083, value2546, value1) := by
  rw [input5083_def, output5083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5081]
  dsimp only
  rw [child5082]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5081_skip, output5082_skip]
  kernel_rfl

theorem node5084_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5084 value2546 value1 value2 = (output5084, value2547, value1) := by
  rw [input5084_def, output5084_def]
  kernel_rfl

theorem node5085_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5085 value2547 value1 value2 = (output5085, value2548, value1) := by
  rw [input5085_def, output5085_def]
  kernel_rfl

theorem node5086_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5086 value2548 value1 value2 = (output5086, value2549, value1) := by
  rw [input5086_def, output5086_def]
  kernel_rfl

theorem node5087_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5087 value2549 value1 value2 = (output5087, value5, value1) := by
  rw [input5087_def, output5087_def]
  kernel_rfl

theorem node5088_cond_eq
    (child5086 : Flapjack.WordAlloc.removeDeadStructural input5086 value2548 value1 value2 = (output5086, value2549, value1))
    (child5087 : Flapjack.WordAlloc.removeDeadStructural input5087 value2549 value1 value2 = (output5087, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5088 value2548 value1 value2 = (output5088, value5, value1) := by
  rw [input5088_def, output5088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5086]
  dsimp only
  rw [child5087]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5086_skip, output5087_skip]
  kernel_rfl

theorem node5089_cond_eq
    (child5085 : Flapjack.WordAlloc.removeDeadStructural input5085 value2547 value1 value2 = (output5085, value2548, value1))
    (child5088 : Flapjack.WordAlloc.removeDeadStructural input5088 value2548 value1 value2 = (output5088, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5089 value2547 value1 value2 = (output5089, value5, value1) := by
  rw [input5089_def, output5089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5085]
  dsimp only
  rw [child5088]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5085_skip, output5088_skip]
  kernel_rfl

theorem node5090_cond_eq
    (child5084 : Flapjack.WordAlloc.removeDeadStructural input5084 value2546 value1 value2 = (output5084, value2547, value1))
    (child5089 : Flapjack.WordAlloc.removeDeadStructural input5089 value2547 value1 value2 = (output5089, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5090 value2546 value1 value2 = (output5090, value5, value1) := by
  rw [input5090_def, output5090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5084]
  dsimp only
  rw [child5089]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5084_skip, output5089_skip]
  kernel_rfl

theorem node5091_cond_eq
    (child5083 : Flapjack.WordAlloc.removeDeadStructural input5083 value2544 value1 value2 = (output5083, value2546, value1))
    (child5090 : Flapjack.WordAlloc.removeDeadStructural input5090 value2546 value1 value2 = (output5090, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5091 value2544 value1 value2 = (output5091, value5, value1) := by
  rw [input5091_def, output5091_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5083]
  dsimp only
  rw [child5090]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5083_skip, output5090_skip]
  kernel_rfl

theorem node5092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5092 value5 value1 value2 = (output5092, value2550, value1) := by
  rw [input5092_def, output5092_def]
  kernel_rfl

theorem node5093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5093 value2550 value1 value2 = (output5093, value2551, value1) := by
  rw [input5093_def, output5093_def]
  kernel_rfl

theorem node5094_cond_eq
    (child5092 : Flapjack.WordAlloc.removeDeadStructural input5092 value5 value1 value2 = (output5092, value2550, value1))
    (child5093 : Flapjack.WordAlloc.removeDeadStructural input5093 value2550 value1 value2 = (output5093, value2551, value1)) : Flapjack.WordAlloc.removeDeadStructural input5094 value5 value1 value2 = (output5094, value2551, value1) := by
  rw [input5094_def, output5094_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5092]
  dsimp only
  rw [child5093]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5092_skip, output5093_skip]
  kernel_rfl

theorem node5095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5095 value2551 value1 value2 = (output5095, value2552, value1) := by
  rw [input5095_def, output5095_def]
  kernel_rfl

theorem node5096_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5096 value2552 value1 value2 = (output5096, value2552, value1) := by
  rw [input5096_def, output5096_def]
  kernel_rfl

theorem node5097_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5097 value2552 value1 value2 = (output5097, value2553, value1) := by
  rw [input5097_def, output5097_def]
  kernel_rfl

theorem node5098_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5098 value2553 value1 value2 = (output5098, value2554, value1) := by
  rw [input5098_def, output5098_def]
  kernel_rfl

theorem node5099_cond_eq
    (child5097 : Flapjack.WordAlloc.removeDeadStructural input5097 value2552 value1 value2 = (output5097, value2553, value1))
    (child5098 : Flapjack.WordAlloc.removeDeadStructural input5098 value2553 value1 value2 = (output5098, value2554, value1)) : Flapjack.WordAlloc.removeDeadStructural input5099 value2552 value1 value2 = (output5099, value2554, value1) := by
  rw [input5099_def, output5099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5097]
  dsimp only
  rw [child5098]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5097_skip, output5098_skip]
  kernel_rfl

theorem node5100_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5100 value2554 value1 value2 = (output5100, value2555, value1) := by
  rw [input5100_def, output5100_def]
  kernel_rfl

theorem node5101_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5101 value2555 value1 value2 = (output5101, value2556, value1) := by
  rw [input5101_def, output5101_def]
  kernel_rfl

theorem node5102_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5102 value2556 value1 value2 = (output5102, value2557, value1) := by
  rw [input5102_def, output5102_def]
  kernel_rfl

theorem node5103_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5103 value2557 value1 value2 = (output5103, value5, value1) := by
  rw [input5103_def, output5103_def]
  kernel_rfl

theorem node5104_cond_eq
    (child5102 : Flapjack.WordAlloc.removeDeadStructural input5102 value2556 value1 value2 = (output5102, value2557, value1))
    (child5103 : Flapjack.WordAlloc.removeDeadStructural input5103 value2557 value1 value2 = (output5103, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5104 value2556 value1 value2 = (output5104, value5, value1) := by
  rw [input5104_def, output5104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5102]
  dsimp only
  rw [child5103]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5102_skip, output5103_skip]
  kernel_rfl

theorem node5105_cond_eq
    (child5101 : Flapjack.WordAlloc.removeDeadStructural input5101 value2555 value1 value2 = (output5101, value2556, value1))
    (child5104 : Flapjack.WordAlloc.removeDeadStructural input5104 value2556 value1 value2 = (output5104, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5105 value2555 value1 value2 = (output5105, value5, value1) := by
  rw [input5105_def, output5105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5101]
  dsimp only
  rw [child5104]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5101_skip, output5104_skip]
  kernel_rfl

theorem node5106_cond_eq
    (child5100 : Flapjack.WordAlloc.removeDeadStructural input5100 value2554 value1 value2 = (output5100, value2555, value1))
    (child5105 : Flapjack.WordAlloc.removeDeadStructural input5105 value2555 value1 value2 = (output5105, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5106 value2554 value1 value2 = (output5106, value5, value1) := by
  rw [input5106_def, output5106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5100]
  dsimp only
  rw [child5105]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5100_skip, output5105_skip]
  kernel_rfl

theorem node5107_cond_eq
    (child5099 : Flapjack.WordAlloc.removeDeadStructural input5099 value2552 value1 value2 = (output5099, value2554, value1))
    (child5106 : Flapjack.WordAlloc.removeDeadStructural input5106 value2554 value1 value2 = (output5106, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input5107 value2552 value1 value2 = (output5107, value5, value1) := by
  rw [input5107_def, output5107_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5099]
  dsimp only
  rw [child5106]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5099_skip, output5106_skip]
  kernel_rfl

theorem node5108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5108 value5 value1 value2 = (output5108, value2558, value1) := by
  rw [input5108_def, output5108_def]
  kernel_rfl

theorem node5109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5109 value2558 value1 value2 = (output5109, value2559, value1) := by
  rw [input5109_def, output5109_def]
  kernel_rfl

theorem node5110_cond_eq
    (child5108 : Flapjack.WordAlloc.removeDeadStructural input5108 value5 value1 value2 = (output5108, value2558, value1))
    (child5109 : Flapjack.WordAlloc.removeDeadStructural input5109 value2558 value1 value2 = (output5109, value2559, value1)) : Flapjack.WordAlloc.removeDeadStructural input5110 value5 value1 value2 = (output5110, value2559, value1) := by
  rw [input5110_def, output5110_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5108]
  dsimp only
  rw [child5109]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5108_skip, output5109_skip]
  kernel_rfl

theorem node5111_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5111 value2559 value1 value2 = (output5111, value2560, value1) := by
  rw [input5111_def, output5111_def]
  kernel_rfl

theorem node5112_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5112 value2560 value1 value2 = (output5112, value2560, value1) := by
  rw [input5112_def, output5112_def]
  kernel_rfl

theorem node5113_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5113 value2560 value1 value2 = (output5113, value2561, value1) := by
  rw [input5113_def, output5113_def]
  kernel_rfl

theorem node5114_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5114 value2561 value1 value2 = (output5114, value2562, value1) := by
  rw [input5114_def, output5114_def]
  kernel_rfl

theorem node5115_cond_eq
    (child5113 : Flapjack.WordAlloc.removeDeadStructural input5113 value2560 value1 value2 = (output5113, value2561, value1))
    (child5114 : Flapjack.WordAlloc.removeDeadStructural input5114 value2561 value1 value2 = (output5114, value2562, value1)) : Flapjack.WordAlloc.removeDeadStructural input5115 value2560 value1 value2 = (output5115, value2562, value1) := by
  rw [input5115_def, output5115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5113]
  dsimp only
  rw [child5114]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5113_skip, output5114_skip]
  kernel_rfl

theorem node5116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5116 value2562 value1 value2 = (output5116, value2563, value1) := by
  rw [input5116_def, output5116_def]
  kernel_rfl

theorem node5117_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5117 value2563 value1 value2 = (output5117, value2564, value1) := by
  rw [input5117_def, output5117_def]
  kernel_rfl

theorem node5118_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5118 value2564 value1 value2 = (output5118, value2565, value1) := by
  rw [input5118_def, output5118_def]
  kernel_rfl

theorem node5119_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5119 value2565 value1 value2 = (output5119, value5, value1) := by
  rw [input5119_def, output5119_def]
  kernel_rfl

#print axioms node5119_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
