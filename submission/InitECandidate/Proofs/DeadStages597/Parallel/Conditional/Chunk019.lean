import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages597.Parallel.Data.Chunk019
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages597.Parallel
theorem node4864_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4864 value892 value1 value2 = (output4864, value892, value1) := by
  rw [input4864_def, output4864_def]
  kernel_rfl

theorem node4865_cond_eq
    (child4863 : Flapjack.WordAlloc.removeDeadStructural input4863 value885 value1 value2 = (output4863, value892, value1))
    (child4864 : Flapjack.WordAlloc.removeDeadStructural input4864 value892 value1 value2 = (output4864, value892, value1)) : Flapjack.WordAlloc.removeDeadStructural input4865 value885 value1 value2 = (output4865, value892, value1) := by
  rw [input4865_def, output4865_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4863]
  try dsimp only
  rw [child4864]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4863_skip, output4864_skip]
  kernel_rfl

theorem node4866_cond_eq
    (child4854 : Flapjack.WordAlloc.removeDeadStructural input4854 value885 value1 value2 = (output4854, value890, value1))
    (child4865 : Flapjack.WordAlloc.removeDeadStructural input4865 value885 value1 value2 = (output4865, value892, value1)) : Flapjack.WordAlloc.removeDeadStructural input4866 value885 value1 value2 = (output4866, value894, value1) := by
  rw [input4866_def, output4866_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4854]
  try dsimp only
  rw [child4865]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4854_skip, output4865_skip]
  kernel_rfl

theorem node4867_cond_eq
    (child4825 : Flapjack.WordAlloc.removeDeadStructural input4825 value885 value1 value2 = (output4825, value885, value1))
    (child4866 : Flapjack.WordAlloc.removeDeadStructural input4866 value885 value1 value2 = (output4866, value894, value1)) : Flapjack.WordAlloc.removeDeadStructural input4867 value885 value1 value2 = (output4867, value894, value1) := by
  rw [input4867_def, output4867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4825]
  try dsimp only
  rw [child4866]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4825_skip, output4866_skip]
  kernel_rfl

theorem node4868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4868 value894 value1 value2 = (output4868, value892, value1) := by
  rw [input4868_def, output4868_def]
  kernel_rfl

theorem node4869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4869 value892 value1 value2 = (output4869, value895, value1) := by
  rw [input4869_def, output4869_def]
  kernel_rfl

theorem node4870_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4870 value895 value1 value2 = (output4870, value895, value1) := by
  rw [input4870_def, output4870_def]
  kernel_rfl

theorem node4871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4871 value895 value1 value2 = (output4871, value895, value1) := by
  rw [input4871_def, output4871_def]
  kernel_rfl

theorem node4872_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4872 value895 value1 value2 = (output4872, value895, value1) := by
  rw [input4872_def, output4872_def]
  kernel_rfl

theorem node4873_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4873 value895 value1 value2 = (output4873, value895, value1) := by
  rw [input4873_def, output4873_def]
  kernel_rfl

theorem node4874_cond_eq
    (child4872 : Flapjack.WordAlloc.removeDeadStructural input4872 value895 value1 value2 = (output4872, value895, value1))
    (child4873 : Flapjack.WordAlloc.removeDeadStructural input4873 value895 value1 value2 = (output4873, value895, value1)) : Flapjack.WordAlloc.removeDeadStructural input4874 value895 value1 value2 = (output4874, value895, value1) := by
  rw [input4874_def, output4874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4872]
  try dsimp only
  rw [child4873]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4872_skip, output4873_skip]
  kernel_rfl

theorem node4875_cond_eq
    (child4871 : Flapjack.WordAlloc.removeDeadStructural input4871 value895 value1 value2 = (output4871, value895, value1))
    (child4874 : Flapjack.WordAlloc.removeDeadStructural input4874 value895 value1 value2 = (output4874, value895, value1)) : Flapjack.WordAlloc.removeDeadStructural input4875 value895 value1 value2 = (output4875, value895, value1) := by
  rw [input4875_def, output4875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4871]
  try dsimp only
  rw [child4874]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4871_skip, output4874_skip]
  kernel_rfl

theorem node4876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4876 value895 value1 value2 = (output4876, value895, value1) := by
  rw [input4876_def, output4876_def]
  kernel_rfl

theorem node4877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4877 value895 value1 value2 = (output4877, value895, value1) := by
  rw [input4877_def, output4877_def]
  kernel_rfl

theorem node4878_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4878 value895 value1 value2 = (output4878, value890, value1) := by
  rw [input4878_def, output4878_def]
  kernel_rfl

theorem node4879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4879 value890 value1 value2 = (output4879, value890, value1) := by
  rw [input4879_def, output4879_def]
  kernel_rfl

theorem node4880_cond_eq
    (child4878 : Flapjack.WordAlloc.removeDeadStructural input4878 value895 value1 value2 = (output4878, value890, value1))
    (child4879 : Flapjack.WordAlloc.removeDeadStructural input4879 value890 value1 value2 = (output4879, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input4880 value895 value1 value2 = (output4880, value890, value1) := by
  rw [input4880_def, output4880_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4878]
  try dsimp only
  rw [child4879]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4878_skip, output4879_skip]
  kernel_rfl

theorem node4881_cond_eq
    (child4877 : Flapjack.WordAlloc.removeDeadStructural input4877 value895 value1 value2 = (output4877, value895, value1))
    (child4880 : Flapjack.WordAlloc.removeDeadStructural input4880 value895 value1 value2 = (output4880, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input4881 value895 value1 value2 = (output4881, value890, value1) := by
  rw [input4881_def, output4881_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4877]
  try dsimp only
  rw [child4880]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4877_skip, output4880_skip]
  kernel_rfl

theorem node4882_cond_eq
    (child4876 : Flapjack.WordAlloc.removeDeadStructural input4876 value895 value1 value2 = (output4876, value895, value1))
    (child4881 : Flapjack.WordAlloc.removeDeadStructural input4881 value895 value1 value2 = (output4881, value890, value1)) : Flapjack.WordAlloc.removeDeadStructural input4882 value895 value1 value2 = (output4882, value890, value1) := by
  rw [input4882_def, output4882_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4876]
  try dsimp only
  rw [child4881]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4876_skip, output4881_skip]
  kernel_rfl

theorem node4883_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4883 value890 value1 value2 = (output4883, value896, value1) := by
  rw [input4883_def, output4883_def]
  kernel_rfl

theorem node4884_cond_eq
    (child4882 : Flapjack.WordAlloc.removeDeadStructural input4882 value895 value1 value2 = (output4882, value890, value1))
    (child4883 : Flapjack.WordAlloc.removeDeadStructural input4883 value890 value1 value2 = (output4883, value896, value1)) : Flapjack.WordAlloc.removeDeadStructural input4884 value895 value1 value2 = (output4884, value896, value1) := by
  rw [input4884_def, output4884_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4882]
  try dsimp only
  rw [child4883]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4882_skip, output4883_skip]
  kernel_rfl

theorem node4885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4885 value896 value1 value2 = (output4885, value897, value1) := by
  rw [input4885_def, output4885_def]
  kernel_rfl

theorem node4886_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4886 value897 value1 value2 = (output4886, value898, value1) := by
  rw [input4886_def, output4886_def]
  kernel_rfl

theorem node4887_cond_eq
    (child4885 : Flapjack.WordAlloc.removeDeadStructural input4885 value896 value1 value2 = (output4885, value897, value1))
    (child4886 : Flapjack.WordAlloc.removeDeadStructural input4886 value897 value1 value2 = (output4886, value898, value1)) : Flapjack.WordAlloc.removeDeadStructural input4887 value896 value1 value2 = (output4887, value898, value1) := by
  rw [input4887_def, output4887_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4885]
  try dsimp only
  rw [child4886]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4885_skip, output4886_skip]
  kernel_rfl

theorem node4888_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4888 value898 value1 value2 = (output4888, value896, value1) := by
  rw [input4888_def, output4888_def]
  kernel_rfl

theorem node4889_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4889 value896 value1 value2 = (output4889, value896, value1) := by
  rw [input4889_def, output4889_def]
  kernel_rfl

theorem node4890_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4890 value896 value1 value2 = (output4890, value899, value1) := by
  rw [input4890_def, output4890_def]
  kernel_rfl

theorem node4891_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4891 value899 value1 value2 = (output4891, value899, value1) := by
  rw [input4891_def, output4891_def]
  kernel_rfl

theorem node4892_cond_eq
    (child4890 : Flapjack.WordAlloc.removeDeadStructural input4890 value896 value1 value2 = (output4890, value899, value1))
    (child4891 : Flapjack.WordAlloc.removeDeadStructural input4891 value899 value1 value2 = (output4891, value899, value1)) : Flapjack.WordAlloc.removeDeadStructural input4892 value896 value1 value2 = (output4892, value899, value1) := by
  rw [input4892_def, output4892_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4890]
  try dsimp only
  rw [child4891]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4890_skip, output4891_skip]
  kernel_rfl

theorem node4893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4893 value899 value1 value2 = (output4893, value900, value1) := by
  rw [input4893_def, output4893_def]
  kernel_rfl

theorem node4894_cond_eq
    (child4892 : Flapjack.WordAlloc.removeDeadStructural input4892 value896 value1 value2 = (output4892, value899, value1))
    (child4893 : Flapjack.WordAlloc.removeDeadStructural input4893 value899 value1 value2 = (output4893, value900, value1)) : Flapjack.WordAlloc.removeDeadStructural input4894 value896 value1 value2 = (output4894, value900, value1) := by
  rw [input4894_def, output4894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4892]
  try dsimp only
  rw [child4893]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4892_skip, output4893_skip]
  kernel_rfl

theorem node4895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4895 value900 value1 value2 = (output4895, value900, value1) := by
  rw [input4895_def, output4895_def]
  kernel_rfl

theorem node4896_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4896 value900 value1 value2 = (output4896, value900, value1) := by
  rw [input4896_def, output4896_def]
  kernel_rfl

theorem node4897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4897 value900 value1 value2 = (output4897, value900, value1) := by
  rw [input4897_def, output4897_def]
  kernel_rfl

theorem node4898_cond_eq
    (child4896 : Flapjack.WordAlloc.removeDeadStructural input4896 value900 value1 value2 = (output4896, value900, value1))
    (child4897 : Flapjack.WordAlloc.removeDeadStructural input4897 value900 value1 value2 = (output4897, value900, value1)) : Flapjack.WordAlloc.removeDeadStructural input4898 value900 value1 value2 = (output4898, value900, value1) := by
  rw [input4898_def, output4898_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4896]
  try dsimp only
  rw [child4897]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4896_skip, output4897_skip]
  kernel_rfl

theorem node4899_cond_eq
    (child4895 : Flapjack.WordAlloc.removeDeadStructural input4895 value900 value1 value2 = (output4895, value900, value1))
    (child4898 : Flapjack.WordAlloc.removeDeadStructural input4898 value900 value1 value2 = (output4898, value900, value1)) : Flapjack.WordAlloc.removeDeadStructural input4899 value900 value1 value2 = (output4899, value900, value1) := by
  rw [input4899_def, output4899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4895]
  try dsimp only
  rw [child4898]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4895_skip, output4898_skip]
  kernel_rfl

theorem node4900_cond_eq
    (child4894 : Flapjack.WordAlloc.removeDeadStructural input4894 value896 value1 value2 = (output4894, value900, value1))
    (child4899 : Flapjack.WordAlloc.removeDeadStructural input4899 value900 value1 value2 = (output4899, value900, value1)) : Flapjack.WordAlloc.removeDeadStructural input4900 value896 value1 value2 = (output4900, value900, value1) := by
  rw [input4900_def, output4900_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4894]
  try dsimp only
  rw [child4899]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4894_skip, output4899_skip]
  kernel_rfl

theorem node4901_cond_eq
    (child4889 : Flapjack.WordAlloc.removeDeadStructural input4889 value896 value1 value2 = (output4889, value896, value1))
    (child4900 : Flapjack.WordAlloc.removeDeadStructural input4900 value896 value1 value2 = (output4900, value900, value1)) : Flapjack.WordAlloc.removeDeadStructural input4901 value896 value1 value2 = (output4901, value900, value1) := by
  rw [input4901_def, output4901_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4889]
  try dsimp only
  rw [child4900]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4889_skip, output4900_skip]
  kernel_rfl

theorem node4902_cond_eq
    (child4888 : Flapjack.WordAlloc.removeDeadStructural input4888 value898 value1 value2 = (output4888, value896, value1))
    (child4901 : Flapjack.WordAlloc.removeDeadStructural input4901 value896 value1 value2 = (output4901, value900, value1)) : Flapjack.WordAlloc.removeDeadStructural input4902 value898 value1 value2 = (output4902, value900, value1) := by
  rw [input4902_def, output4902_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4888]
  try dsimp only
  rw [child4901]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4888_skip, output4901_skip]
  kernel_rfl

theorem node4903_cond_eq
    (child4887 : Flapjack.WordAlloc.removeDeadStructural input4887 value896 value1 value2 = (output4887, value898, value1))
    (child4902 : Flapjack.WordAlloc.removeDeadStructural input4902 value898 value1 value2 = (output4902, value900, value1)) : Flapjack.WordAlloc.removeDeadStructural input4903 value896 value1 value2 = (output4903, value900, value1) := by
  rw [input4903_def, output4903_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4887]
  try dsimp only
  rw [child4902]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4887_skip, output4902_skip]
  kernel_rfl

theorem node4904_cond_eq
    (child4884 : Flapjack.WordAlloc.removeDeadStructural input4884 value895 value1 value2 = (output4884, value896, value1))
    (child4903 : Flapjack.WordAlloc.removeDeadStructural input4903 value896 value1 value2 = (output4903, value900, value1)) : Flapjack.WordAlloc.removeDeadStructural input4904 value895 value1 value2 = (output4904, value900, value1) := by
  rw [input4904_def, output4904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4884]
  try dsimp only
  rw [child4903]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4884_skip, output4903_skip]
  kernel_rfl

theorem node4905_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4905 value895 value1 value2 = (output4905, value895, value1) := by
  rw [input4905_def, output4905_def]
  kernel_rfl

theorem node4906_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4906 value895 value1 value2 = (output4906, value895, value1) := by
  rw [input4906_def, output4906_def]
  kernel_rfl

theorem node4907_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4907 value895 value1 value2 = (output4907, value901, value1) := by
  rw [input4907_def, output4907_def]
  kernel_rfl

theorem node4908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4908 value901 value1 value2 = (output4908, value901, value1) := by
  rw [input4908_def, output4908_def]
  kernel_rfl

theorem node4909_cond_eq
    (child4907 : Flapjack.WordAlloc.removeDeadStructural input4907 value895 value1 value2 = (output4907, value901, value1))
    (child4908 : Flapjack.WordAlloc.removeDeadStructural input4908 value901 value1 value2 = (output4908, value901, value1)) : Flapjack.WordAlloc.removeDeadStructural input4909 value895 value1 value2 = (output4909, value901, value1) := by
  rw [input4909_def, output4909_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4907]
  try dsimp only
  rw [child4908]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4907_skip, output4908_skip]
  kernel_rfl

theorem node4910_cond_eq
    (child4906 : Flapjack.WordAlloc.removeDeadStructural input4906 value895 value1 value2 = (output4906, value895, value1))
    (child4909 : Flapjack.WordAlloc.removeDeadStructural input4909 value895 value1 value2 = (output4909, value901, value1)) : Flapjack.WordAlloc.removeDeadStructural input4910 value895 value1 value2 = (output4910, value901, value1) := by
  rw [input4910_def, output4910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4906]
  try dsimp only
  rw [child4909]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4906_skip, output4909_skip]
  kernel_rfl

theorem node4911_cond_eq
    (child4905 : Flapjack.WordAlloc.removeDeadStructural input4905 value895 value1 value2 = (output4905, value895, value1))
    (child4910 : Flapjack.WordAlloc.removeDeadStructural input4910 value895 value1 value2 = (output4910, value901, value1)) : Flapjack.WordAlloc.removeDeadStructural input4911 value895 value1 value2 = (output4911, value901, value1) := by
  rw [input4911_def, output4911_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4905]
  try dsimp only
  rw [child4910]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4905_skip, output4910_skip]
  kernel_rfl

theorem node4912_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4912 value901 value1 value2 = (output4912, value902, value1) := by
  rw [input4912_def, output4912_def]
  kernel_rfl

theorem node4913_cond_eq
    (child4911 : Flapjack.WordAlloc.removeDeadStructural input4911 value895 value1 value2 = (output4911, value901, value1))
    (child4912 : Flapjack.WordAlloc.removeDeadStructural input4912 value901 value1 value2 = (output4912, value902, value1)) : Flapjack.WordAlloc.removeDeadStructural input4913 value895 value1 value2 = (output4913, value902, value1) := by
  rw [input4913_def, output4913_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4911]
  try dsimp only
  rw [child4912]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4911_skip, output4912_skip]
  kernel_rfl

theorem node4914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4914 value902 value1 value2 = (output4914, value902, value1) := by
  rw [input4914_def, output4914_def]
  kernel_rfl

theorem node4915_cond_eq
    (child4913 : Flapjack.WordAlloc.removeDeadStructural input4913 value895 value1 value2 = (output4913, value902, value1))
    (child4914 : Flapjack.WordAlloc.removeDeadStructural input4914 value902 value1 value2 = (output4914, value902, value1)) : Flapjack.WordAlloc.removeDeadStructural input4915 value895 value1 value2 = (output4915, value902, value1) := by
  rw [input4915_def, output4915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4913]
  try dsimp only
  rw [child4914]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4913_skip, output4914_skip]
  kernel_rfl

theorem node4916_cond_eq
    (child4904 : Flapjack.WordAlloc.removeDeadStructural input4904 value895 value1 value2 = (output4904, value900, value1))
    (child4915 : Flapjack.WordAlloc.removeDeadStructural input4915 value895 value1 value2 = (output4915, value902, value1)) : Flapjack.WordAlloc.removeDeadStructural input4916 value895 value1 value2 = (output4916, value904, value1) := by
  rw [input4916_def, output4916_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4904]
  try dsimp only
  rw [child4915]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4904_skip, output4915_skip]
  kernel_rfl

theorem node4917_cond_eq
    (child4875 : Flapjack.WordAlloc.removeDeadStructural input4875 value895 value1 value2 = (output4875, value895, value1))
    (child4916 : Flapjack.WordAlloc.removeDeadStructural input4916 value895 value1 value2 = (output4916, value904, value1)) : Flapjack.WordAlloc.removeDeadStructural input4917 value895 value1 value2 = (output4917, value904, value1) := by
  rw [input4917_def, output4917_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4875]
  try dsimp only
  rw [child4916]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4875_skip, output4916_skip]
  kernel_rfl

theorem node4918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4918 value904 value1 value2 = (output4918, value902, value1) := by
  rw [input4918_def, output4918_def]
  kernel_rfl

theorem node4919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4919 value902 value1 value2 = (output4919, value905, value1) := by
  rw [input4919_def, output4919_def]
  kernel_rfl

theorem node4920_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4920 value905 value1 value2 = (output4920, value905, value1) := by
  rw [input4920_def, output4920_def]
  kernel_rfl

theorem node4921_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4921 value905 value1 value2 = (output4921, value905, value1) := by
  rw [input4921_def, output4921_def]
  kernel_rfl

theorem node4922_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4922 value905 value1 value2 = (output4922, value905, value1) := by
  rw [input4922_def, output4922_def]
  kernel_rfl

theorem node4923_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4923 value905 value1 value2 = (output4923, value905, value1) := by
  rw [input4923_def, output4923_def]
  kernel_rfl

theorem node4924_cond_eq
    (child4922 : Flapjack.WordAlloc.removeDeadStructural input4922 value905 value1 value2 = (output4922, value905, value1))
    (child4923 : Flapjack.WordAlloc.removeDeadStructural input4923 value905 value1 value2 = (output4923, value905, value1)) : Flapjack.WordAlloc.removeDeadStructural input4924 value905 value1 value2 = (output4924, value905, value1) := by
  rw [input4924_def, output4924_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4922]
  try dsimp only
  rw [child4923]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4922_skip, output4923_skip]
  kernel_rfl

theorem node4925_cond_eq
    (child4921 : Flapjack.WordAlloc.removeDeadStructural input4921 value905 value1 value2 = (output4921, value905, value1))
    (child4924 : Flapjack.WordAlloc.removeDeadStructural input4924 value905 value1 value2 = (output4924, value905, value1)) : Flapjack.WordAlloc.removeDeadStructural input4925 value905 value1 value2 = (output4925, value905, value1) := by
  rw [input4925_def, output4925_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4921]
  try dsimp only
  rw [child4924]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4921_skip, output4924_skip]
  kernel_rfl

theorem node4926_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4926 value905 value1 value2 = (output4926, value905, value1) := by
  rw [input4926_def, output4926_def]
  kernel_rfl

theorem node4927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4927 value905 value1 value2 = (output4927, value905, value1) := by
  rw [input4927_def, output4927_def]
  kernel_rfl

theorem node4928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4928 value905 value1 value2 = (output4928, value900, value1) := by
  rw [input4928_def, output4928_def]
  kernel_rfl

theorem node4929_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4929 value900 value1 value2 = (output4929, value900, value1) := by
  rw [input4929_def, output4929_def]
  kernel_rfl

theorem node4930_cond_eq
    (child4928 : Flapjack.WordAlloc.removeDeadStructural input4928 value905 value1 value2 = (output4928, value900, value1))
    (child4929 : Flapjack.WordAlloc.removeDeadStructural input4929 value900 value1 value2 = (output4929, value900, value1)) : Flapjack.WordAlloc.removeDeadStructural input4930 value905 value1 value2 = (output4930, value900, value1) := by
  rw [input4930_def, output4930_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4928]
  try dsimp only
  rw [child4929]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4928_skip, output4929_skip]
  kernel_rfl

theorem node4931_cond_eq
    (child4927 : Flapjack.WordAlloc.removeDeadStructural input4927 value905 value1 value2 = (output4927, value905, value1))
    (child4930 : Flapjack.WordAlloc.removeDeadStructural input4930 value905 value1 value2 = (output4930, value900, value1)) : Flapjack.WordAlloc.removeDeadStructural input4931 value905 value1 value2 = (output4931, value900, value1) := by
  rw [input4931_def, output4931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4927]
  try dsimp only
  rw [child4930]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4927_skip, output4930_skip]
  kernel_rfl

theorem node4932_cond_eq
    (child4926 : Flapjack.WordAlloc.removeDeadStructural input4926 value905 value1 value2 = (output4926, value905, value1))
    (child4931 : Flapjack.WordAlloc.removeDeadStructural input4931 value905 value1 value2 = (output4931, value900, value1)) : Flapjack.WordAlloc.removeDeadStructural input4932 value905 value1 value2 = (output4932, value900, value1) := by
  rw [input4932_def, output4932_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4926]
  try dsimp only
  rw [child4931]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4926_skip, output4931_skip]
  kernel_rfl

theorem node4933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4933 value900 value1 value2 = (output4933, value906, value1) := by
  rw [input4933_def, output4933_def]
  kernel_rfl

theorem node4934_cond_eq
    (child4932 : Flapjack.WordAlloc.removeDeadStructural input4932 value905 value1 value2 = (output4932, value900, value1))
    (child4933 : Flapjack.WordAlloc.removeDeadStructural input4933 value900 value1 value2 = (output4933, value906, value1)) : Flapjack.WordAlloc.removeDeadStructural input4934 value905 value1 value2 = (output4934, value906, value1) := by
  rw [input4934_def, output4934_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4932]
  try dsimp only
  rw [child4933]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4932_skip, output4933_skip]
  kernel_rfl

theorem node4935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4935 value906 value1 value2 = (output4935, value907, value1) := by
  rw [input4935_def, output4935_def]
  kernel_rfl

theorem node4936_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4936 value907 value1 value2 = (output4936, value908, value1) := by
  rw [input4936_def, output4936_def]
  kernel_rfl

theorem node4937_cond_eq
    (child4935 : Flapjack.WordAlloc.removeDeadStructural input4935 value906 value1 value2 = (output4935, value907, value1))
    (child4936 : Flapjack.WordAlloc.removeDeadStructural input4936 value907 value1 value2 = (output4936, value908, value1)) : Flapjack.WordAlloc.removeDeadStructural input4937 value906 value1 value2 = (output4937, value908, value1) := by
  rw [input4937_def, output4937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4935]
  try dsimp only
  rw [child4936]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4935_skip, output4936_skip]
  kernel_rfl

theorem node4938_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4938 value908 value1 value2 = (output4938, value906, value1) := by
  rw [input4938_def, output4938_def]
  kernel_rfl

theorem node4939_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4939 value906 value1 value2 = (output4939, value906, value1) := by
  rw [input4939_def, output4939_def]
  kernel_rfl

theorem node4940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4940 value906 value1 value2 = (output4940, value909, value1) := by
  rw [input4940_def, output4940_def]
  kernel_rfl

theorem node4941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4941 value909 value1 value2 = (output4941, value909, value1) := by
  rw [input4941_def, output4941_def]
  kernel_rfl

theorem node4942_cond_eq
    (child4940 : Flapjack.WordAlloc.removeDeadStructural input4940 value906 value1 value2 = (output4940, value909, value1))
    (child4941 : Flapjack.WordAlloc.removeDeadStructural input4941 value909 value1 value2 = (output4941, value909, value1)) : Flapjack.WordAlloc.removeDeadStructural input4942 value906 value1 value2 = (output4942, value909, value1) := by
  rw [input4942_def, output4942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4940]
  try dsimp only
  rw [child4941]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4940_skip, output4941_skip]
  kernel_rfl

theorem node4943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4943 value909 value1 value2 = (output4943, value910, value1) := by
  rw [input4943_def, output4943_def]
  kernel_rfl

theorem node4944_cond_eq
    (child4942 : Flapjack.WordAlloc.removeDeadStructural input4942 value906 value1 value2 = (output4942, value909, value1))
    (child4943 : Flapjack.WordAlloc.removeDeadStructural input4943 value909 value1 value2 = (output4943, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input4944 value906 value1 value2 = (output4944, value910, value1) := by
  rw [input4944_def, output4944_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4942]
  try dsimp only
  rw [child4943]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4942_skip, output4943_skip]
  kernel_rfl

theorem node4945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4945 value910 value1 value2 = (output4945, value910, value1) := by
  rw [input4945_def, output4945_def]
  kernel_rfl

theorem node4946_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4946 value910 value1 value2 = (output4946, value910, value1) := by
  rw [input4946_def, output4946_def]
  kernel_rfl

theorem node4947_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4947 value910 value1 value2 = (output4947, value910, value1) := by
  rw [input4947_def, output4947_def]
  kernel_rfl

theorem node4948_cond_eq
    (child4946 : Flapjack.WordAlloc.removeDeadStructural input4946 value910 value1 value2 = (output4946, value910, value1))
    (child4947 : Flapjack.WordAlloc.removeDeadStructural input4947 value910 value1 value2 = (output4947, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input4948 value910 value1 value2 = (output4948, value910, value1) := by
  rw [input4948_def, output4948_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4946]
  try dsimp only
  rw [child4947]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4946_skip, output4947_skip]
  kernel_rfl

theorem node4949_cond_eq
    (child4945 : Flapjack.WordAlloc.removeDeadStructural input4945 value910 value1 value2 = (output4945, value910, value1))
    (child4948 : Flapjack.WordAlloc.removeDeadStructural input4948 value910 value1 value2 = (output4948, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input4949 value910 value1 value2 = (output4949, value910, value1) := by
  rw [input4949_def, output4949_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4945]
  try dsimp only
  rw [child4948]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4945_skip, output4948_skip]
  kernel_rfl

theorem node4950_cond_eq
    (child4944 : Flapjack.WordAlloc.removeDeadStructural input4944 value906 value1 value2 = (output4944, value910, value1))
    (child4949 : Flapjack.WordAlloc.removeDeadStructural input4949 value910 value1 value2 = (output4949, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input4950 value906 value1 value2 = (output4950, value910, value1) := by
  rw [input4950_def, output4950_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4944]
  try dsimp only
  rw [child4949]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4944_skip, output4949_skip]
  kernel_rfl

theorem node4951_cond_eq
    (child4939 : Flapjack.WordAlloc.removeDeadStructural input4939 value906 value1 value2 = (output4939, value906, value1))
    (child4950 : Flapjack.WordAlloc.removeDeadStructural input4950 value906 value1 value2 = (output4950, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input4951 value906 value1 value2 = (output4951, value910, value1) := by
  rw [input4951_def, output4951_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4939]
  try dsimp only
  rw [child4950]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4939_skip, output4950_skip]
  kernel_rfl

theorem node4952_cond_eq
    (child4938 : Flapjack.WordAlloc.removeDeadStructural input4938 value908 value1 value2 = (output4938, value906, value1))
    (child4951 : Flapjack.WordAlloc.removeDeadStructural input4951 value906 value1 value2 = (output4951, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input4952 value908 value1 value2 = (output4952, value910, value1) := by
  rw [input4952_def, output4952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4938]
  try dsimp only
  rw [child4951]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4938_skip, output4951_skip]
  kernel_rfl

theorem node4953_cond_eq
    (child4937 : Flapjack.WordAlloc.removeDeadStructural input4937 value906 value1 value2 = (output4937, value908, value1))
    (child4952 : Flapjack.WordAlloc.removeDeadStructural input4952 value908 value1 value2 = (output4952, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input4953 value906 value1 value2 = (output4953, value910, value1) := by
  rw [input4953_def, output4953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4937]
  try dsimp only
  rw [child4952]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4937_skip, output4952_skip]
  kernel_rfl

theorem node4954_cond_eq
    (child4934 : Flapjack.WordAlloc.removeDeadStructural input4934 value905 value1 value2 = (output4934, value906, value1))
    (child4953 : Flapjack.WordAlloc.removeDeadStructural input4953 value906 value1 value2 = (output4953, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input4954 value905 value1 value2 = (output4954, value910, value1) := by
  rw [input4954_def, output4954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4934]
  try dsimp only
  rw [child4953]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4934_skip, output4953_skip]
  kernel_rfl

theorem node4955_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4955 value905 value1 value2 = (output4955, value905, value1) := by
  rw [input4955_def, output4955_def]
  kernel_rfl

theorem node4956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4956 value905 value1 value2 = (output4956, value905, value1) := by
  rw [input4956_def, output4956_def]
  kernel_rfl

theorem node4957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4957 value905 value1 value2 = (output4957, value911, value1) := by
  rw [input4957_def, output4957_def]
  kernel_rfl

theorem node4958_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4958 value911 value1 value2 = (output4958, value911, value1) := by
  rw [input4958_def, output4958_def]
  kernel_rfl

theorem node4959_cond_eq
    (child4957 : Flapjack.WordAlloc.removeDeadStructural input4957 value905 value1 value2 = (output4957, value911, value1))
    (child4958 : Flapjack.WordAlloc.removeDeadStructural input4958 value911 value1 value2 = (output4958, value911, value1)) : Flapjack.WordAlloc.removeDeadStructural input4959 value905 value1 value2 = (output4959, value911, value1) := by
  rw [input4959_def, output4959_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4957]
  try dsimp only
  rw [child4958]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4957_skip, output4958_skip]
  kernel_rfl

theorem node4960_cond_eq
    (child4956 : Flapjack.WordAlloc.removeDeadStructural input4956 value905 value1 value2 = (output4956, value905, value1))
    (child4959 : Flapjack.WordAlloc.removeDeadStructural input4959 value905 value1 value2 = (output4959, value911, value1)) : Flapjack.WordAlloc.removeDeadStructural input4960 value905 value1 value2 = (output4960, value911, value1) := by
  rw [input4960_def, output4960_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4956]
  try dsimp only
  rw [child4959]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4956_skip, output4959_skip]
  kernel_rfl

theorem node4961_cond_eq
    (child4955 : Flapjack.WordAlloc.removeDeadStructural input4955 value905 value1 value2 = (output4955, value905, value1))
    (child4960 : Flapjack.WordAlloc.removeDeadStructural input4960 value905 value1 value2 = (output4960, value911, value1)) : Flapjack.WordAlloc.removeDeadStructural input4961 value905 value1 value2 = (output4961, value911, value1) := by
  rw [input4961_def, output4961_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4955]
  try dsimp only
  rw [child4960]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4955_skip, output4960_skip]
  kernel_rfl

theorem node4962_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4962 value911 value1 value2 = (output4962, value912, value1) := by
  rw [input4962_def, output4962_def]
  kernel_rfl

theorem node4963_cond_eq
    (child4961 : Flapjack.WordAlloc.removeDeadStructural input4961 value905 value1 value2 = (output4961, value911, value1))
    (child4962 : Flapjack.WordAlloc.removeDeadStructural input4962 value911 value1 value2 = (output4962, value912, value1)) : Flapjack.WordAlloc.removeDeadStructural input4963 value905 value1 value2 = (output4963, value912, value1) := by
  rw [input4963_def, output4963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4961]
  try dsimp only
  rw [child4962]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4961_skip, output4962_skip]
  kernel_rfl

theorem node4964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4964 value912 value1 value2 = (output4964, value912, value1) := by
  rw [input4964_def, output4964_def]
  kernel_rfl

theorem node4965_cond_eq
    (child4963 : Flapjack.WordAlloc.removeDeadStructural input4963 value905 value1 value2 = (output4963, value912, value1))
    (child4964 : Flapjack.WordAlloc.removeDeadStructural input4964 value912 value1 value2 = (output4964, value912, value1)) : Flapjack.WordAlloc.removeDeadStructural input4965 value905 value1 value2 = (output4965, value912, value1) := by
  rw [input4965_def, output4965_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4963]
  try dsimp only
  rw [child4964]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4963_skip, output4964_skip]
  kernel_rfl

theorem node4966_cond_eq
    (child4954 : Flapjack.WordAlloc.removeDeadStructural input4954 value905 value1 value2 = (output4954, value910, value1))
    (child4965 : Flapjack.WordAlloc.removeDeadStructural input4965 value905 value1 value2 = (output4965, value912, value1)) : Flapjack.WordAlloc.removeDeadStructural input4966 value905 value1 value2 = (output4966, value914, value1) := by
  rw [input4966_def, output4966_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4954]
  try dsimp only
  rw [child4965]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4954_skip, output4965_skip]
  kernel_rfl

theorem node4967_cond_eq
    (child4925 : Flapjack.WordAlloc.removeDeadStructural input4925 value905 value1 value2 = (output4925, value905, value1))
    (child4966 : Flapjack.WordAlloc.removeDeadStructural input4966 value905 value1 value2 = (output4966, value914, value1)) : Flapjack.WordAlloc.removeDeadStructural input4967 value905 value1 value2 = (output4967, value914, value1) := by
  rw [input4967_def, output4967_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4925]
  try dsimp only
  rw [child4966]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4925_skip, output4966_skip]
  kernel_rfl

theorem node4968_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4968 value914 value1 value2 = (output4968, value912, value1) := by
  rw [input4968_def, output4968_def]
  kernel_rfl

theorem node4969_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4969 value912 value1 value2 = (output4969, value915, value1) := by
  rw [input4969_def, output4969_def]
  kernel_rfl

theorem node4970_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4970 value915 value1 value2 = (output4970, value915, value1) := by
  rw [input4970_def, output4970_def]
  kernel_rfl

theorem node4971_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4971 value915 value1 value2 = (output4971, value915, value1) := by
  rw [input4971_def, output4971_def]
  kernel_rfl

theorem node4972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4972 value915 value1 value2 = (output4972, value915, value1) := by
  rw [input4972_def, output4972_def]
  kernel_rfl

theorem node4973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4973 value915 value1 value2 = (output4973, value915, value1) := by
  rw [input4973_def, output4973_def]
  kernel_rfl

theorem node4974_cond_eq
    (child4972 : Flapjack.WordAlloc.removeDeadStructural input4972 value915 value1 value2 = (output4972, value915, value1))
    (child4973 : Flapjack.WordAlloc.removeDeadStructural input4973 value915 value1 value2 = (output4973, value915, value1)) : Flapjack.WordAlloc.removeDeadStructural input4974 value915 value1 value2 = (output4974, value915, value1) := by
  rw [input4974_def, output4974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4972]
  try dsimp only
  rw [child4973]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4972_skip, output4973_skip]
  kernel_rfl

theorem node4975_cond_eq
    (child4971 : Flapjack.WordAlloc.removeDeadStructural input4971 value915 value1 value2 = (output4971, value915, value1))
    (child4974 : Flapjack.WordAlloc.removeDeadStructural input4974 value915 value1 value2 = (output4974, value915, value1)) : Flapjack.WordAlloc.removeDeadStructural input4975 value915 value1 value2 = (output4975, value915, value1) := by
  rw [input4975_def, output4975_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4971]
  try dsimp only
  rw [child4974]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4971_skip, output4974_skip]
  kernel_rfl

theorem node4976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4976 value915 value1 value2 = (output4976, value915, value1) := by
  rw [input4976_def, output4976_def]
  kernel_rfl

theorem node4977_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4977 value915 value1 value2 = (output4977, value915, value1) := by
  rw [input4977_def, output4977_def]
  kernel_rfl

theorem node4978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4978 value915 value1 value2 = (output4978, value910, value1) := by
  rw [input4978_def, output4978_def]
  kernel_rfl

theorem node4979_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4979 value910 value1 value2 = (output4979, value910, value1) := by
  rw [input4979_def, output4979_def]
  kernel_rfl

theorem node4980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4980 value910 value1 value2 = (output4980, value910, value1) := by
  rw [input4980_def, output4980_def]
  kernel_rfl

theorem node4981_cond_eq
    (child4979 : Flapjack.WordAlloc.removeDeadStructural input4979 value910 value1 value2 = (output4979, value910, value1))
    (child4980 : Flapjack.WordAlloc.removeDeadStructural input4980 value910 value1 value2 = (output4980, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input4981 value910 value1 value2 = (output4981, value910, value1) := by
  rw [input4981_def, output4981_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4979]
  try dsimp only
  rw [child4980]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4979_skip, output4980_skip]
  kernel_rfl

theorem node4982_cond_eq
    (child4978 : Flapjack.WordAlloc.removeDeadStructural input4978 value915 value1 value2 = (output4978, value910, value1))
    (child4981 : Flapjack.WordAlloc.removeDeadStructural input4981 value910 value1 value2 = (output4981, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input4982 value915 value1 value2 = (output4982, value910, value1) := by
  rw [input4982_def, output4982_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4978]
  try dsimp only
  rw [child4981]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4978_skip, output4981_skip]
  kernel_rfl

theorem node4983_cond_eq
    (child4977 : Flapjack.WordAlloc.removeDeadStructural input4977 value915 value1 value2 = (output4977, value915, value1))
    (child4982 : Flapjack.WordAlloc.removeDeadStructural input4982 value915 value1 value2 = (output4982, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input4983 value915 value1 value2 = (output4983, value910, value1) := by
  rw [input4983_def, output4983_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4977]
  try dsimp only
  rw [child4982]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4977_skip, output4982_skip]
  kernel_rfl

theorem node4984_cond_eq
    (child4976 : Flapjack.WordAlloc.removeDeadStructural input4976 value915 value1 value2 = (output4976, value915, value1))
    (child4983 : Flapjack.WordAlloc.removeDeadStructural input4983 value915 value1 value2 = (output4983, value910, value1)) : Flapjack.WordAlloc.removeDeadStructural input4984 value915 value1 value2 = (output4984, value910, value1) := by
  rw [input4984_def, output4984_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4976]
  try dsimp only
  rw [child4983]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4976_skip, output4983_skip]
  kernel_rfl

theorem node4985_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4985 value910 value1 value2 = (output4985, value916, value1) := by
  rw [input4985_def, output4985_def]
  kernel_rfl

theorem node4986_cond_eq
    (child4984 : Flapjack.WordAlloc.removeDeadStructural input4984 value915 value1 value2 = (output4984, value910, value1))
    (child4985 : Flapjack.WordAlloc.removeDeadStructural input4985 value910 value1 value2 = (output4985, value916, value1)) : Flapjack.WordAlloc.removeDeadStructural input4986 value915 value1 value2 = (output4986, value916, value1) := by
  rw [input4986_def, output4986_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4984]
  try dsimp only
  rw [child4985]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4984_skip, output4985_skip]
  kernel_rfl

theorem node4987_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4987 value916 value1 value2 = (output4987, value917, value1) := by
  rw [input4987_def, output4987_def]
  kernel_rfl

theorem node4988_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4988 value917 value1 value2 = (output4988, value918, value1) := by
  rw [input4988_def, output4988_def]
  kernel_rfl

theorem node4989_cond_eq
    (child4987 : Flapjack.WordAlloc.removeDeadStructural input4987 value916 value1 value2 = (output4987, value917, value1))
    (child4988 : Flapjack.WordAlloc.removeDeadStructural input4988 value917 value1 value2 = (output4988, value918, value1)) : Flapjack.WordAlloc.removeDeadStructural input4989 value916 value1 value2 = (output4989, value918, value1) := by
  rw [input4989_def, output4989_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4987]
  try dsimp only
  rw [child4988]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4987_skip, output4988_skip]
  kernel_rfl

theorem node4990_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4990 value918 value1 value2 = (output4990, value916, value1) := by
  rw [input4990_def, output4990_def]
  kernel_rfl

theorem node4991_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4991 value916 value1 value2 = (output4991, value916, value1) := by
  rw [input4991_def, output4991_def]
  kernel_rfl

theorem node4992_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4992 value916 value1 value2 = (output4992, value919, value1) := by
  rw [input4992_def, output4992_def]
  kernel_rfl

theorem node4993_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4993 value919 value1 value2 = (output4993, value919, value1) := by
  rw [input4993_def, output4993_def]
  kernel_rfl

theorem node4994_cond_eq
    (child4992 : Flapjack.WordAlloc.removeDeadStructural input4992 value916 value1 value2 = (output4992, value919, value1))
    (child4993 : Flapjack.WordAlloc.removeDeadStructural input4993 value919 value1 value2 = (output4993, value919, value1)) : Flapjack.WordAlloc.removeDeadStructural input4994 value916 value1 value2 = (output4994, value919, value1) := by
  rw [input4994_def, output4994_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4992]
  try dsimp only
  rw [child4993]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4992_skip, output4993_skip]
  kernel_rfl

theorem node4995_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4995 value919 value1 value2 = (output4995, value768, value1) := by
  rw [input4995_def, output4995_def]
  kernel_rfl

theorem node4996_cond_eq
    (child4994 : Flapjack.WordAlloc.removeDeadStructural input4994 value916 value1 value2 = (output4994, value919, value1))
    (child4995 : Flapjack.WordAlloc.removeDeadStructural input4995 value919 value1 value2 = (output4995, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input4996 value916 value1 value2 = (output4996, value768, value1) := by
  rw [input4996_def, output4996_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4994]
  try dsimp only
  rw [child4995]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4994_skip, output4995_skip]
  kernel_rfl

theorem node4997_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4997 value768 value1 value2 = (output4997, value768, value1) := by
  rw [input4997_def, output4997_def]
  kernel_rfl

theorem node4998_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4998 value768 value1 value2 = (output4998, value768, value1) := by
  rw [input4998_def, output4998_def]
  kernel_rfl

theorem node4999_cond_eq : Flapjack.WordAlloc.removeDeadStructural input4999 value768 value1 value2 = (output4999, value768, value1) := by
  rw [input4999_def, output4999_def]
  kernel_rfl

theorem node5000_cond_eq
    (child4998 : Flapjack.WordAlloc.removeDeadStructural input4998 value768 value1 value2 = (output4998, value768, value1))
    (child4999 : Flapjack.WordAlloc.removeDeadStructural input4999 value768 value1 value2 = (output4999, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input5000 value768 value1 value2 = (output5000, value768, value1) := by
  rw [input5000_def, output5000_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4998]
  try dsimp only
  rw [child4999]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4998_skip, output4999_skip]
  kernel_rfl

theorem node5001_cond_eq
    (child4997 : Flapjack.WordAlloc.removeDeadStructural input4997 value768 value1 value2 = (output4997, value768, value1))
    (child5000 : Flapjack.WordAlloc.removeDeadStructural input5000 value768 value1 value2 = (output5000, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input5001 value768 value1 value2 = (output5001, value768, value1) := by
  rw [input5001_def, output5001_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4997]
  try dsimp only
  rw [child5000]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4997_skip, output5000_skip]
  kernel_rfl

theorem node5002_cond_eq
    (child4996 : Flapjack.WordAlloc.removeDeadStructural input4996 value916 value1 value2 = (output4996, value768, value1))
    (child5001 : Flapjack.WordAlloc.removeDeadStructural input5001 value768 value1 value2 = (output5001, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input5002 value916 value1 value2 = (output5002, value768, value1) := by
  rw [input5002_def, output5002_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4996]
  try dsimp only
  rw [child5001]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4996_skip, output5001_skip]
  kernel_rfl

theorem node5003_cond_eq
    (child4991 : Flapjack.WordAlloc.removeDeadStructural input4991 value916 value1 value2 = (output4991, value916, value1))
    (child5002 : Flapjack.WordAlloc.removeDeadStructural input5002 value916 value1 value2 = (output5002, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input5003 value916 value1 value2 = (output5003, value768, value1) := by
  rw [input5003_def, output5003_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4991]
  try dsimp only
  rw [child5002]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4991_skip, output5002_skip]
  kernel_rfl

theorem node5004_cond_eq
    (child4990 : Flapjack.WordAlloc.removeDeadStructural input4990 value918 value1 value2 = (output4990, value916, value1))
    (child5003 : Flapjack.WordAlloc.removeDeadStructural input5003 value916 value1 value2 = (output5003, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input5004 value918 value1 value2 = (output5004, value768, value1) := by
  rw [input5004_def, output5004_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4990]
  try dsimp only
  rw [child5003]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4990_skip, output5003_skip]
  kernel_rfl

theorem node5005_cond_eq
    (child4989 : Flapjack.WordAlloc.removeDeadStructural input4989 value916 value1 value2 = (output4989, value918, value1))
    (child5004 : Flapjack.WordAlloc.removeDeadStructural input5004 value918 value1 value2 = (output5004, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input5005 value916 value1 value2 = (output5005, value768, value1) := by
  rw [input5005_def, output5005_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4989]
  try dsimp only
  rw [child5004]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4989_skip, output5004_skip]
  kernel_rfl

theorem node5006_cond_eq
    (child4986 : Flapjack.WordAlloc.removeDeadStructural input4986 value915 value1 value2 = (output4986, value916, value1))
    (child5005 : Flapjack.WordAlloc.removeDeadStructural input5005 value916 value1 value2 = (output5005, value768, value1)) : Flapjack.WordAlloc.removeDeadStructural input5006 value915 value1 value2 = (output5006, value768, value1) := by
  rw [input5006_def, output5006_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4986]
  try dsimp only
  rw [child5005]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4986_skip, output5005_skip]
  kernel_rfl

theorem node5007_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5007 value915 value1 value2 = (output5007, value915, value1) := by
  rw [input5007_def, output5007_def]
  kernel_rfl

theorem node5008_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5008 value915 value1 value2 = (output5008, value915, value1) := by
  rw [input5008_def, output5008_def]
  kernel_rfl

theorem node5009_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5009 value915 value1 value2 = (output5009, value920, value1) := by
  rw [input5009_def, output5009_def]
  kernel_rfl

theorem node5010_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5010 value920 value1 value2 = (output5010, value920, value1) := by
  rw [input5010_def, output5010_def]
  kernel_rfl

theorem node5011_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5011 value920 value1 value2 = (output5011, value920, value1) := by
  rw [input5011_def, output5011_def]
  kernel_rfl

theorem node5012_cond_eq
    (child5010 : Flapjack.WordAlloc.removeDeadStructural input5010 value920 value1 value2 = (output5010, value920, value1))
    (child5011 : Flapjack.WordAlloc.removeDeadStructural input5011 value920 value1 value2 = (output5011, value920, value1)) : Flapjack.WordAlloc.removeDeadStructural input5012 value920 value1 value2 = (output5012, value920, value1) := by
  rw [input5012_def, output5012_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5010]
  try dsimp only
  rw [child5011]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5010_skip, output5011_skip]
  kernel_rfl

theorem node5013_cond_eq
    (child5009 : Flapjack.WordAlloc.removeDeadStructural input5009 value915 value1 value2 = (output5009, value920, value1))
    (child5012 : Flapjack.WordAlloc.removeDeadStructural input5012 value920 value1 value2 = (output5012, value920, value1)) : Flapjack.WordAlloc.removeDeadStructural input5013 value915 value1 value2 = (output5013, value920, value1) := by
  rw [input5013_def, output5013_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5009]
  try dsimp only
  rw [child5012]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5009_skip, output5012_skip]
  kernel_rfl

theorem node5014_cond_eq
    (child5008 : Flapjack.WordAlloc.removeDeadStructural input5008 value915 value1 value2 = (output5008, value915, value1))
    (child5013 : Flapjack.WordAlloc.removeDeadStructural input5013 value915 value1 value2 = (output5013, value920, value1)) : Flapjack.WordAlloc.removeDeadStructural input5014 value915 value1 value2 = (output5014, value920, value1) := by
  rw [input5014_def, output5014_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5008]
  try dsimp only
  rw [child5013]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5008_skip, output5013_skip]
  kernel_rfl

theorem node5015_cond_eq
    (child5007 : Flapjack.WordAlloc.removeDeadStructural input5007 value915 value1 value2 = (output5007, value915, value1))
    (child5014 : Flapjack.WordAlloc.removeDeadStructural input5014 value915 value1 value2 = (output5014, value920, value1)) : Flapjack.WordAlloc.removeDeadStructural input5015 value915 value1 value2 = (output5015, value920, value1) := by
  rw [input5015_def, output5015_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5007]
  try dsimp only
  rw [child5014]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5007_skip, output5014_skip]
  kernel_rfl

theorem node5016_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5016 value920 value1 value2 = (output5016, value921, value1) := by
  rw [input5016_def, output5016_def]
  kernel_rfl

theorem node5017_cond_eq
    (child5015 : Flapjack.WordAlloc.removeDeadStructural input5015 value915 value1 value2 = (output5015, value920, value1))
    (child5016 : Flapjack.WordAlloc.removeDeadStructural input5016 value920 value1 value2 = (output5016, value921, value1)) : Flapjack.WordAlloc.removeDeadStructural input5017 value915 value1 value2 = (output5017, value921, value1) := by
  rw [input5017_def, output5017_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5015]
  try dsimp only
  rw [child5016]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5015_skip, output5016_skip]
  kernel_rfl

theorem node5018_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5018 value921 value1 value2 = (output5018, value921, value1) := by
  rw [input5018_def, output5018_def]
  kernel_rfl

theorem node5019_cond_eq
    (child5017 : Flapjack.WordAlloc.removeDeadStructural input5017 value915 value1 value2 = (output5017, value921, value1))
    (child5018 : Flapjack.WordAlloc.removeDeadStructural input5018 value921 value1 value2 = (output5018, value921, value1)) : Flapjack.WordAlloc.removeDeadStructural input5019 value915 value1 value2 = (output5019, value921, value1) := by
  rw [input5019_def, output5019_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5017]
  try dsimp only
  rw [child5018]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5017_skip, output5018_skip]
  kernel_rfl

theorem node5020_cond_eq
    (child5006 : Flapjack.WordAlloc.removeDeadStructural input5006 value915 value1 value2 = (output5006, value768, value1))
    (child5019 : Flapjack.WordAlloc.removeDeadStructural input5019 value915 value1 value2 = (output5019, value921, value1)) : Flapjack.WordAlloc.removeDeadStructural input5020 value915 value1 value2 = (output5020, value923, value1) := by
  rw [input5020_def, output5020_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child5006]
  try dsimp only
  rw [child5019]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5006_skip, output5019_skip]
  kernel_rfl

theorem node5021_cond_eq
    (child4975 : Flapjack.WordAlloc.removeDeadStructural input4975 value915 value1 value2 = (output4975, value915, value1))
    (child5020 : Flapjack.WordAlloc.removeDeadStructural input5020 value915 value1 value2 = (output5020, value923, value1)) : Flapjack.WordAlloc.removeDeadStructural input5021 value915 value1 value2 = (output5021, value923, value1) := by
  rw [input5021_def, output5021_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4975]
  try dsimp only
  rw [child5020]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4975_skip, output5020_skip]
  kernel_rfl

theorem node5022_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5022 value923 value1 value2 = (output5022, value921, value1) := by
  rw [input5022_def, output5022_def]
  kernel_rfl

theorem node5023_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5023 value921 value1 value2 = (output5023, value773, value1) := by
  rw [input5023_def, output5023_def]
  kernel_rfl

theorem node5024_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5024 value773 value1 value2 = (output5024, value773, value1) := by
  rw [input5024_def, output5024_def]
  kernel_rfl

theorem node5025_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5025 value773 value1 value2 = (output5025, value773, value1) := by
  rw [input5025_def, output5025_def]
  kernel_rfl

theorem node5026_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5026 value773 value1 value2 = (output5026, value773, value1) := by
  rw [input5026_def, output5026_def]
  kernel_rfl

theorem node5027_cond_eq
    (child5025 : Flapjack.WordAlloc.removeDeadStructural input5025 value773 value1 value2 = (output5025, value773, value1))
    (child5026 : Flapjack.WordAlloc.removeDeadStructural input5026 value773 value1 value2 = (output5026, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5027 value773 value1 value2 = (output5027, value773, value1) := by
  rw [input5027_def, output5027_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5025]
  try dsimp only
  rw [child5026]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5025_skip, output5026_skip]
  kernel_rfl

theorem node5028_cond_eq
    (child5024 : Flapjack.WordAlloc.removeDeadStructural input5024 value773 value1 value2 = (output5024, value773, value1))
    (child5027 : Flapjack.WordAlloc.removeDeadStructural input5027 value773 value1 value2 = (output5027, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5028 value773 value1 value2 = (output5028, value773, value1) := by
  rw [input5028_def, output5028_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5024]
  try dsimp only
  rw [child5027]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5024_skip, output5027_skip]
  kernel_rfl

theorem node5029_cond_eq
    (child5023 : Flapjack.WordAlloc.removeDeadStructural input5023 value921 value1 value2 = (output5023, value773, value1))
    (child5028 : Flapjack.WordAlloc.removeDeadStructural input5028 value773 value1 value2 = (output5028, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5029 value921 value1 value2 = (output5029, value773, value1) := by
  rw [input5029_def, output5029_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5023]
  try dsimp only
  rw [child5028]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5023_skip, output5028_skip]
  kernel_rfl

theorem node5030_cond_eq
    (child5022 : Flapjack.WordAlloc.removeDeadStructural input5022 value923 value1 value2 = (output5022, value921, value1))
    (child5029 : Flapjack.WordAlloc.removeDeadStructural input5029 value921 value1 value2 = (output5029, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5030 value923 value1 value2 = (output5030, value773, value1) := by
  rw [input5030_def, output5030_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5022]
  try dsimp only
  rw [child5029]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5022_skip, output5029_skip]
  kernel_rfl

theorem node5031_cond_eq
    (child5021 : Flapjack.WordAlloc.removeDeadStructural input5021 value915 value1 value2 = (output5021, value923, value1))
    (child5030 : Flapjack.WordAlloc.removeDeadStructural input5030 value923 value1 value2 = (output5030, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5031 value915 value1 value2 = (output5031, value773, value1) := by
  rw [input5031_def, output5031_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5021]
  try dsimp only
  rw [child5030]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5021_skip, output5030_skip]
  kernel_rfl

theorem node5032_cond_eq
    (child4970 : Flapjack.WordAlloc.removeDeadStructural input4970 value915 value1 value2 = (output4970, value915, value1))
    (child5031 : Flapjack.WordAlloc.removeDeadStructural input5031 value915 value1 value2 = (output5031, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5032 value915 value1 value2 = (output5032, value773, value1) := by
  rw [input5032_def, output5032_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4970]
  try dsimp only
  rw [child5031]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4970_skip, output5031_skip]
  kernel_rfl

theorem node5033_cond_eq
    (child4969 : Flapjack.WordAlloc.removeDeadStructural input4969 value912 value1 value2 = (output4969, value915, value1))
    (child5032 : Flapjack.WordAlloc.removeDeadStructural input5032 value915 value1 value2 = (output5032, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5033 value912 value1 value2 = (output5033, value773, value1) := by
  rw [input5033_def, output5033_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4969]
  try dsimp only
  rw [child5032]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4969_skip, output5032_skip]
  kernel_rfl

theorem node5034_cond_eq
    (child4968 : Flapjack.WordAlloc.removeDeadStructural input4968 value914 value1 value2 = (output4968, value912, value1))
    (child5033 : Flapjack.WordAlloc.removeDeadStructural input5033 value912 value1 value2 = (output5033, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5034 value914 value1 value2 = (output5034, value773, value1) := by
  rw [input5034_def, output5034_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4968]
  try dsimp only
  rw [child5033]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4968_skip, output5033_skip]
  kernel_rfl

theorem node5035_cond_eq
    (child4967 : Flapjack.WordAlloc.removeDeadStructural input4967 value905 value1 value2 = (output4967, value914, value1))
    (child5034 : Flapjack.WordAlloc.removeDeadStructural input5034 value914 value1 value2 = (output5034, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5035 value905 value1 value2 = (output5035, value773, value1) := by
  rw [input5035_def, output5035_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4967]
  try dsimp only
  rw [child5034]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4967_skip, output5034_skip]
  kernel_rfl

theorem node5036_cond_eq
    (child4920 : Flapjack.WordAlloc.removeDeadStructural input4920 value905 value1 value2 = (output4920, value905, value1))
    (child5035 : Flapjack.WordAlloc.removeDeadStructural input5035 value905 value1 value2 = (output5035, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5036 value905 value1 value2 = (output5036, value773, value1) := by
  rw [input5036_def, output5036_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4920]
  try dsimp only
  rw [child5035]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4920_skip, output5035_skip]
  kernel_rfl

theorem node5037_cond_eq
    (child4919 : Flapjack.WordAlloc.removeDeadStructural input4919 value902 value1 value2 = (output4919, value905, value1))
    (child5036 : Flapjack.WordAlloc.removeDeadStructural input5036 value905 value1 value2 = (output5036, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5037 value902 value1 value2 = (output5037, value773, value1) := by
  rw [input5037_def, output5037_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4919]
  try dsimp only
  rw [child5036]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4919_skip, output5036_skip]
  kernel_rfl

theorem node5038_cond_eq
    (child4918 : Flapjack.WordAlloc.removeDeadStructural input4918 value904 value1 value2 = (output4918, value902, value1))
    (child5037 : Flapjack.WordAlloc.removeDeadStructural input5037 value902 value1 value2 = (output5037, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5038 value904 value1 value2 = (output5038, value773, value1) := by
  rw [input5038_def, output5038_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4918]
  try dsimp only
  rw [child5037]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4918_skip, output5037_skip]
  kernel_rfl

theorem node5039_cond_eq
    (child4917 : Flapjack.WordAlloc.removeDeadStructural input4917 value895 value1 value2 = (output4917, value904, value1))
    (child5038 : Flapjack.WordAlloc.removeDeadStructural input5038 value904 value1 value2 = (output5038, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5039 value895 value1 value2 = (output5039, value773, value1) := by
  rw [input5039_def, output5039_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4917]
  try dsimp only
  rw [child5038]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4917_skip, output5038_skip]
  kernel_rfl

theorem node5040_cond_eq
    (child4870 : Flapjack.WordAlloc.removeDeadStructural input4870 value895 value1 value2 = (output4870, value895, value1))
    (child5039 : Flapjack.WordAlloc.removeDeadStructural input5039 value895 value1 value2 = (output5039, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5040 value895 value1 value2 = (output5040, value773, value1) := by
  rw [input5040_def, output5040_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4870]
  try dsimp only
  rw [child5039]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4870_skip, output5039_skip]
  kernel_rfl

theorem node5041_cond_eq
    (child4869 : Flapjack.WordAlloc.removeDeadStructural input4869 value892 value1 value2 = (output4869, value895, value1))
    (child5040 : Flapjack.WordAlloc.removeDeadStructural input5040 value895 value1 value2 = (output5040, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5041 value892 value1 value2 = (output5041, value773, value1) := by
  rw [input5041_def, output5041_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4869]
  try dsimp only
  rw [child5040]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4869_skip, output5040_skip]
  kernel_rfl

theorem node5042_cond_eq
    (child4868 : Flapjack.WordAlloc.removeDeadStructural input4868 value894 value1 value2 = (output4868, value892, value1))
    (child5041 : Flapjack.WordAlloc.removeDeadStructural input5041 value892 value1 value2 = (output5041, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5042 value894 value1 value2 = (output5042, value773, value1) := by
  rw [input5042_def, output5042_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4868]
  try dsimp only
  rw [child5041]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4868_skip, output5041_skip]
  kernel_rfl

theorem node5043_cond_eq
    (child4867 : Flapjack.WordAlloc.removeDeadStructural input4867 value885 value1 value2 = (output4867, value894, value1))
    (child5042 : Flapjack.WordAlloc.removeDeadStructural input5042 value894 value1 value2 = (output5042, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5043 value885 value1 value2 = (output5043, value773, value1) := by
  rw [input5043_def, output5043_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4867]
  try dsimp only
  rw [child5042]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4867_skip, output5042_skip]
  kernel_rfl

theorem node5044_cond_eq
    (child4820 : Flapjack.WordAlloc.removeDeadStructural input4820 value885 value1 value2 = (output4820, value885, value1))
    (child5043 : Flapjack.WordAlloc.removeDeadStructural input5043 value885 value1 value2 = (output5043, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5044 value885 value1 value2 = (output5044, value773, value1) := by
  rw [input5044_def, output5044_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4820]
  try dsimp only
  rw [child5043]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4820_skip, output5043_skip]
  kernel_rfl

theorem node5045_cond_eq
    (child4819 : Flapjack.WordAlloc.removeDeadStructural input4819 value882 value1 value2 = (output4819, value885, value1))
    (child5044 : Flapjack.WordAlloc.removeDeadStructural input5044 value885 value1 value2 = (output5044, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5045 value882 value1 value2 = (output5045, value773, value1) := by
  rw [input5045_def, output5045_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4819]
  try dsimp only
  rw [child5044]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4819_skip, output5044_skip]
  kernel_rfl

theorem node5046_cond_eq
    (child4818 : Flapjack.WordAlloc.removeDeadStructural input4818 value884 value1 value2 = (output4818, value882, value1))
    (child5045 : Flapjack.WordAlloc.removeDeadStructural input5045 value882 value1 value2 = (output5045, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5046 value884 value1 value2 = (output5046, value773, value1) := by
  rw [input5046_def, output5046_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4818]
  try dsimp only
  rw [child5045]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4818_skip, output5045_skip]
  kernel_rfl

theorem node5047_cond_eq
    (child4817 : Flapjack.WordAlloc.removeDeadStructural input4817 value875 value1 value2 = (output4817, value884, value1))
    (child5046 : Flapjack.WordAlloc.removeDeadStructural input5046 value884 value1 value2 = (output5046, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5047 value875 value1 value2 = (output5047, value773, value1) := by
  rw [input5047_def, output5047_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4817]
  try dsimp only
  rw [child5046]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4817_skip, output5046_skip]
  kernel_rfl

theorem node5048_cond_eq
    (child4770 : Flapjack.WordAlloc.removeDeadStructural input4770 value875 value1 value2 = (output4770, value875, value1))
    (child5047 : Flapjack.WordAlloc.removeDeadStructural input5047 value875 value1 value2 = (output5047, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5048 value875 value1 value2 = (output5048, value773, value1) := by
  rw [input5048_def, output5048_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4770]
  try dsimp only
  rw [child5047]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4770_skip, output5047_skip]
  kernel_rfl

theorem node5049_cond_eq
    (child4769 : Flapjack.WordAlloc.removeDeadStructural input4769 value872 value1 value2 = (output4769, value875, value1))
    (child5048 : Flapjack.WordAlloc.removeDeadStructural input5048 value875 value1 value2 = (output5048, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5049 value872 value1 value2 = (output5049, value773, value1) := by
  rw [input5049_def, output5049_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4769]
  try dsimp only
  rw [child5048]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4769_skip, output5048_skip]
  kernel_rfl

theorem node5050_cond_eq
    (child4768 : Flapjack.WordAlloc.removeDeadStructural input4768 value874 value1 value2 = (output4768, value872, value1))
    (child5049 : Flapjack.WordAlloc.removeDeadStructural input5049 value872 value1 value2 = (output5049, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5050 value874 value1 value2 = (output5050, value773, value1) := by
  rw [input5050_def, output5050_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4768]
  try dsimp only
  rw [child5049]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4768_skip, output5049_skip]
  kernel_rfl

theorem node5051_cond_eq
    (child4767 : Flapjack.WordAlloc.removeDeadStructural input4767 value865 value1 value2 = (output4767, value874, value1))
    (child5050 : Flapjack.WordAlloc.removeDeadStructural input5050 value874 value1 value2 = (output5050, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5051 value865 value1 value2 = (output5051, value773, value1) := by
  rw [input5051_def, output5051_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4767]
  try dsimp only
  rw [child5050]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4767_skip, output5050_skip]
  kernel_rfl

theorem node5052_cond_eq
    (child4720 : Flapjack.WordAlloc.removeDeadStructural input4720 value865 value1 value2 = (output4720, value865, value1))
    (child5051 : Flapjack.WordAlloc.removeDeadStructural input5051 value865 value1 value2 = (output5051, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5052 value865 value1 value2 = (output5052, value773, value1) := by
  rw [input5052_def, output5052_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4720]
  try dsimp only
  rw [child5051]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4720_skip, output5051_skip]
  kernel_rfl

theorem node5053_cond_eq
    (child4719 : Flapjack.WordAlloc.removeDeadStructural input4719 value862 value1 value2 = (output4719, value865, value1))
    (child5052 : Flapjack.WordAlloc.removeDeadStructural input5052 value865 value1 value2 = (output5052, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5053 value862 value1 value2 = (output5053, value773, value1) := by
  rw [input5053_def, output5053_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4719]
  try dsimp only
  rw [child5052]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4719_skip, output5052_skip]
  kernel_rfl

theorem node5054_cond_eq
    (child4718 : Flapjack.WordAlloc.removeDeadStructural input4718 value864 value1 value2 = (output4718, value862, value1))
    (child5053 : Flapjack.WordAlloc.removeDeadStructural input5053 value862 value1 value2 = (output5053, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5054 value864 value1 value2 = (output5054, value773, value1) := by
  rw [input5054_def, output5054_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4718]
  try dsimp only
  rw [child5053]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4718_skip, output5053_skip]
  kernel_rfl

theorem node5055_cond_eq
    (child4717 : Flapjack.WordAlloc.removeDeadStructural input4717 value855 value1 value2 = (output4717, value864, value1))
    (child5054 : Flapjack.WordAlloc.removeDeadStructural input5054 value864 value1 value2 = (output5054, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5055 value855 value1 value2 = (output5055, value773, value1) := by
  rw [input5055_def, output5055_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4717]
  try dsimp only
  rw [child5054]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4717_skip, output5054_skip]
  kernel_rfl

theorem node5056_cond_eq
    (child4670 : Flapjack.WordAlloc.removeDeadStructural input4670 value855 value1 value2 = (output4670, value855, value1))
    (child5055 : Flapjack.WordAlloc.removeDeadStructural input5055 value855 value1 value2 = (output5055, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5056 value855 value1 value2 = (output5056, value773, value1) := by
  rw [input5056_def, output5056_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4670]
  try dsimp only
  rw [child5055]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4670_skip, output5055_skip]
  kernel_rfl

theorem node5057_cond_eq
    (child4669 : Flapjack.WordAlloc.removeDeadStructural input4669 value852 value1 value2 = (output4669, value855, value1))
    (child5056 : Flapjack.WordAlloc.removeDeadStructural input5056 value855 value1 value2 = (output5056, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5057 value852 value1 value2 = (output5057, value773, value1) := by
  rw [input5057_def, output5057_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4669]
  try dsimp only
  rw [child5056]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4669_skip, output5056_skip]
  kernel_rfl

theorem node5058_cond_eq
    (child4668 : Flapjack.WordAlloc.removeDeadStructural input4668 value854 value1 value2 = (output4668, value852, value1))
    (child5057 : Flapjack.WordAlloc.removeDeadStructural input5057 value852 value1 value2 = (output5057, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5058 value854 value1 value2 = (output5058, value773, value1) := by
  rw [input5058_def, output5058_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4668]
  try dsimp only
  rw [child5057]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4668_skip, output5057_skip]
  kernel_rfl

theorem node5059_cond_eq
    (child4667 : Flapjack.WordAlloc.removeDeadStructural input4667 value845 value1 value2 = (output4667, value854, value1))
    (child5058 : Flapjack.WordAlloc.removeDeadStructural input5058 value854 value1 value2 = (output5058, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5059 value845 value1 value2 = (output5059, value773, value1) := by
  rw [input5059_def, output5059_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4667]
  try dsimp only
  rw [child5058]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4667_skip, output5058_skip]
  kernel_rfl

theorem node5060_cond_eq
    (child4620 : Flapjack.WordAlloc.removeDeadStructural input4620 value845 value1 value2 = (output4620, value845, value1))
    (child5059 : Flapjack.WordAlloc.removeDeadStructural input5059 value845 value1 value2 = (output5059, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5060 value845 value1 value2 = (output5060, value773, value1) := by
  rw [input5060_def, output5060_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4620]
  try dsimp only
  rw [child5059]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4620_skip, output5059_skip]
  kernel_rfl

theorem node5061_cond_eq
    (child4619 : Flapjack.WordAlloc.removeDeadStructural input4619 value842 value1 value2 = (output4619, value845, value1))
    (child5060 : Flapjack.WordAlloc.removeDeadStructural input5060 value845 value1 value2 = (output5060, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5061 value842 value1 value2 = (output5061, value773, value1) := by
  rw [input5061_def, output5061_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4619]
  try dsimp only
  rw [child5060]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4619_skip, output5060_skip]
  kernel_rfl

theorem node5062_cond_eq
    (child4618 : Flapjack.WordAlloc.removeDeadStructural input4618 value844 value1 value2 = (output4618, value842, value1))
    (child5061 : Flapjack.WordAlloc.removeDeadStructural input5061 value842 value1 value2 = (output5061, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5062 value844 value1 value2 = (output5062, value773, value1) := by
  rw [input5062_def, output5062_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4618]
  try dsimp only
  rw [child5061]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4618_skip, output5061_skip]
  kernel_rfl

theorem node5063_cond_eq
    (child4617 : Flapjack.WordAlloc.removeDeadStructural input4617 value835 value1 value2 = (output4617, value844, value1))
    (child5062 : Flapjack.WordAlloc.removeDeadStructural input5062 value844 value1 value2 = (output5062, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5063 value835 value1 value2 = (output5063, value773, value1) := by
  rw [input5063_def, output5063_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4617]
  try dsimp only
  rw [child5062]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4617_skip, output5062_skip]
  kernel_rfl

theorem node5064_cond_eq
    (child4570 : Flapjack.WordAlloc.removeDeadStructural input4570 value835 value1 value2 = (output4570, value835, value1))
    (child5063 : Flapjack.WordAlloc.removeDeadStructural input5063 value835 value1 value2 = (output5063, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5064 value835 value1 value2 = (output5064, value773, value1) := by
  rw [input5064_def, output5064_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4570]
  try dsimp only
  rw [child5063]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4570_skip, output5063_skip]
  kernel_rfl

theorem node5065_cond_eq
    (child4569 : Flapjack.WordAlloc.removeDeadStructural input4569 value832 value1 value2 = (output4569, value835, value1))
    (child5064 : Flapjack.WordAlloc.removeDeadStructural input5064 value835 value1 value2 = (output5064, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5065 value832 value1 value2 = (output5065, value773, value1) := by
  rw [input5065_def, output5065_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4569]
  try dsimp only
  rw [child5064]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4569_skip, output5064_skip]
  kernel_rfl

theorem node5066_cond_eq
    (child4568 : Flapjack.WordAlloc.removeDeadStructural input4568 value834 value1 value2 = (output4568, value832, value1))
    (child5065 : Flapjack.WordAlloc.removeDeadStructural input5065 value832 value1 value2 = (output5065, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5066 value834 value1 value2 = (output5066, value773, value1) := by
  rw [input5066_def, output5066_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4568]
  try dsimp only
  rw [child5065]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4568_skip, output5065_skip]
  kernel_rfl

theorem node5067_cond_eq
    (child4567 : Flapjack.WordAlloc.removeDeadStructural input4567 value825 value1 value2 = (output4567, value834, value1))
    (child5066 : Flapjack.WordAlloc.removeDeadStructural input5066 value834 value1 value2 = (output5066, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5067 value825 value1 value2 = (output5067, value773, value1) := by
  rw [input5067_def, output5067_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4567]
  try dsimp only
  rw [child5066]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4567_skip, output5066_skip]
  kernel_rfl

theorem node5068_cond_eq
    (child4520 : Flapjack.WordAlloc.removeDeadStructural input4520 value825 value1 value2 = (output4520, value825, value1))
    (child5067 : Flapjack.WordAlloc.removeDeadStructural input5067 value825 value1 value2 = (output5067, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5068 value825 value1 value2 = (output5068, value773, value1) := by
  rw [input5068_def, output5068_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4520]
  try dsimp only
  rw [child5067]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4520_skip, output5067_skip]
  kernel_rfl

theorem node5069_cond_eq
    (child4519 : Flapjack.WordAlloc.removeDeadStructural input4519 value822 value1 value2 = (output4519, value825, value1))
    (child5068 : Flapjack.WordAlloc.removeDeadStructural input5068 value825 value1 value2 = (output5068, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5069 value822 value1 value2 = (output5069, value773, value1) := by
  rw [input5069_def, output5069_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4519]
  try dsimp only
  rw [child5068]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4519_skip, output5068_skip]
  kernel_rfl

theorem node5070_cond_eq
    (child4518 : Flapjack.WordAlloc.removeDeadStructural input4518 value824 value1 value2 = (output4518, value822, value1))
    (child5069 : Flapjack.WordAlloc.removeDeadStructural input5069 value822 value1 value2 = (output5069, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5070 value824 value1 value2 = (output5070, value773, value1) := by
  rw [input5070_def, output5070_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4518]
  try dsimp only
  rw [child5069]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4518_skip, output5069_skip]
  kernel_rfl

theorem node5071_cond_eq
    (child4517 : Flapjack.WordAlloc.removeDeadStructural input4517 value815 value1 value2 = (output4517, value824, value1))
    (child5070 : Flapjack.WordAlloc.removeDeadStructural input5070 value824 value1 value2 = (output5070, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5071 value815 value1 value2 = (output5071, value773, value1) := by
  rw [input5071_def, output5071_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4517]
  try dsimp only
  rw [child5070]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4517_skip, output5070_skip]
  kernel_rfl

theorem node5072_cond_eq
    (child4470 : Flapjack.WordAlloc.removeDeadStructural input4470 value815 value1 value2 = (output4470, value815, value1))
    (child5071 : Flapjack.WordAlloc.removeDeadStructural input5071 value815 value1 value2 = (output5071, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5072 value815 value1 value2 = (output5072, value773, value1) := by
  rw [input5072_def, output5072_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4470]
  try dsimp only
  rw [child5071]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4470_skip, output5071_skip]
  kernel_rfl

theorem node5073_cond_eq
    (child4469 : Flapjack.WordAlloc.removeDeadStructural input4469 value812 value1 value2 = (output4469, value815, value1))
    (child5072 : Flapjack.WordAlloc.removeDeadStructural input5072 value815 value1 value2 = (output5072, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5073 value812 value1 value2 = (output5073, value773, value1) := by
  rw [input5073_def, output5073_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4469]
  try dsimp only
  rw [child5072]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4469_skip, output5072_skip]
  kernel_rfl

theorem node5074_cond_eq
    (child4468 : Flapjack.WordAlloc.removeDeadStructural input4468 value814 value1 value2 = (output4468, value812, value1))
    (child5073 : Flapjack.WordAlloc.removeDeadStructural input5073 value812 value1 value2 = (output5073, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5074 value814 value1 value2 = (output5074, value773, value1) := by
  rw [input5074_def, output5074_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4468]
  try dsimp only
  rw [child5073]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4468_skip, output5073_skip]
  kernel_rfl

theorem node5075_cond_eq
    (child4467 : Flapjack.WordAlloc.removeDeadStructural input4467 value805 value1 value2 = (output4467, value814, value1))
    (child5074 : Flapjack.WordAlloc.removeDeadStructural input5074 value814 value1 value2 = (output5074, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5075 value805 value1 value2 = (output5075, value773, value1) := by
  rw [input5075_def, output5075_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4467]
  try dsimp only
  rw [child5074]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4467_skip, output5074_skip]
  kernel_rfl

theorem node5076_cond_eq
    (child4420 : Flapjack.WordAlloc.removeDeadStructural input4420 value805 value1 value2 = (output4420, value805, value1))
    (child5075 : Flapjack.WordAlloc.removeDeadStructural input5075 value805 value1 value2 = (output5075, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5076 value805 value1 value2 = (output5076, value773, value1) := by
  rw [input5076_def, output5076_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4420]
  try dsimp only
  rw [child5075]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4420_skip, output5075_skip]
  kernel_rfl

theorem node5077_cond_eq
    (child4419 : Flapjack.WordAlloc.removeDeadStructural input4419 value802 value1 value2 = (output4419, value805, value1))
    (child5076 : Flapjack.WordAlloc.removeDeadStructural input5076 value805 value1 value2 = (output5076, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5077 value802 value1 value2 = (output5077, value773, value1) := by
  rw [input5077_def, output5077_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4419]
  try dsimp only
  rw [child5076]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4419_skip, output5076_skip]
  kernel_rfl

theorem node5078_cond_eq
    (child4418 : Flapjack.WordAlloc.removeDeadStructural input4418 value804 value1 value2 = (output4418, value802, value1))
    (child5077 : Flapjack.WordAlloc.removeDeadStructural input5077 value802 value1 value2 = (output5077, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5078 value804 value1 value2 = (output5078, value773, value1) := by
  rw [input5078_def, output5078_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4418]
  try dsimp only
  rw [child5077]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4418_skip, output5077_skip]
  kernel_rfl

theorem node5079_cond_eq
    (child4417 : Flapjack.WordAlloc.removeDeadStructural input4417 value795 value1 value2 = (output4417, value804, value1))
    (child5078 : Flapjack.WordAlloc.removeDeadStructural input5078 value804 value1 value2 = (output5078, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5079 value795 value1 value2 = (output5079, value773, value1) := by
  rw [input5079_def, output5079_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4417]
  try dsimp only
  rw [child5078]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4417_skip, output5078_skip]
  kernel_rfl

theorem node5080_cond_eq
    (child4370 : Flapjack.WordAlloc.removeDeadStructural input4370 value795 value1 value2 = (output4370, value795, value1))
    (child5079 : Flapjack.WordAlloc.removeDeadStructural input5079 value795 value1 value2 = (output5079, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5080 value795 value1 value2 = (output5080, value773, value1) := by
  rw [input5080_def, output5080_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4370]
  try dsimp only
  rw [child5079]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4370_skip, output5079_skip]
  kernel_rfl

theorem node5081_cond_eq
    (child4369 : Flapjack.WordAlloc.removeDeadStructural input4369 value792 value1 value2 = (output4369, value795, value1))
    (child5080 : Flapjack.WordAlloc.removeDeadStructural input5080 value795 value1 value2 = (output5080, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5081 value792 value1 value2 = (output5081, value773, value1) := by
  rw [input5081_def, output5081_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4369]
  try dsimp only
  rw [child5080]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4369_skip, output5080_skip]
  kernel_rfl

theorem node5082_cond_eq
    (child4368 : Flapjack.WordAlloc.removeDeadStructural input4368 value794 value1 value2 = (output4368, value792, value1))
    (child5081 : Flapjack.WordAlloc.removeDeadStructural input5081 value792 value1 value2 = (output5081, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5082 value794 value1 value2 = (output5082, value773, value1) := by
  rw [input5082_def, output5082_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4368]
  try dsimp only
  rw [child5081]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4368_skip, output5081_skip]
  kernel_rfl

theorem node5083_cond_eq
    (child4367 : Flapjack.WordAlloc.removeDeadStructural input4367 value785 value1 value2 = (output4367, value794, value1))
    (child5082 : Flapjack.WordAlloc.removeDeadStructural input5082 value794 value1 value2 = (output5082, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5083 value785 value1 value2 = (output5083, value773, value1) := by
  rw [input5083_def, output5083_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4367]
  try dsimp only
  rw [child5082]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4367_skip, output5082_skip]
  kernel_rfl

theorem node5084_cond_eq
    (child4320 : Flapjack.WordAlloc.removeDeadStructural input4320 value785 value1 value2 = (output4320, value785, value1))
    (child5083 : Flapjack.WordAlloc.removeDeadStructural input5083 value785 value1 value2 = (output5083, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5084 value785 value1 value2 = (output5084, value773, value1) := by
  rw [input5084_def, output5084_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4320]
  try dsimp only
  rw [child5083]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4320_skip, output5083_skip]
  kernel_rfl

theorem node5085_cond_eq
    (child4319 : Flapjack.WordAlloc.removeDeadStructural input4319 value782 value1 value2 = (output4319, value785, value1))
    (child5084 : Flapjack.WordAlloc.removeDeadStructural input5084 value785 value1 value2 = (output5084, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5085 value782 value1 value2 = (output5085, value773, value1) := by
  rw [input5085_def, output5085_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4319]
  try dsimp only
  rw [child5084]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4319_skip, output5084_skip]
  kernel_rfl

theorem node5086_cond_eq
    (child4318 : Flapjack.WordAlloc.removeDeadStructural input4318 value784 value1 value2 = (output4318, value782, value1))
    (child5085 : Flapjack.WordAlloc.removeDeadStructural input5085 value782 value1 value2 = (output5085, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5086 value784 value1 value2 = (output5086, value773, value1) := by
  rw [input5086_def, output5086_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4318]
  try dsimp only
  rw [child5085]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4318_skip, output5085_skip]
  kernel_rfl

theorem node5087_cond_eq
    (child4317 : Flapjack.WordAlloc.removeDeadStructural input4317 value774 value8 value2 = (output4317, value784, value1))
    (child5086 : Flapjack.WordAlloc.removeDeadStructural input5086 value784 value1 value2 = (output5086, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5087 value774 value8 value2 = (output5087, value773, value1) := by
  rw [input5087_def, output5087_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4317]
  try dsimp only
  rw [child5086]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4317_skip, output5086_skip]
  kernel_rfl

theorem node5088_cond_eq
    (child4270 : Flapjack.WordAlloc.removeDeadStructural input4270 value774 value8 value2 = (output4270, value774, value8))
    (child5087 : Flapjack.WordAlloc.removeDeadStructural input5087 value774 value8 value2 = (output5087, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5088 value774 value8 value2 = (output5088, value773, value1) := by
  rw [input5088_def, output5088_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4270]
  try dsimp only
  rw [child5087]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4270_skip, output5087_skip]
  kernel_rfl

theorem node5089_cond_eq
    (child4269 : Flapjack.WordAlloc.removeDeadStructural input4269 value647 value8 value2 = (output4269, value774, value8))
    (child5088 : Flapjack.WordAlloc.removeDeadStructural input5088 value774 value8 value2 = (output5088, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5089 value647 value8 value2 = (output5089, value773, value1) := by
  rw [input5089_def, output5089_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child4269]
  try dsimp only
  rw [child5088]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4269_skip, output5088_skip]
  kernel_rfl

theorem node5090_cond_eq
    (child4266 : Flapjack.WordAlloc.removeDeadStructural input4266 value647 value8 value2 = (output4266, value773, value1))
    (child5089 : Flapjack.WordAlloc.removeDeadStructural input5089 value647 value8 value2 = (output5089, value773, value1)) : Flapjack.WordAlloc.removeDeadStructural input5090 value647 value8 value2 = (output5090, value925, value1) := by
  rw [input5090_def, output5090_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child4266]
  try dsimp only
  rw [child5089]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output4266_skip, output5089_skip]
  kernel_rfl

theorem node5091_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5091 value925 value1 value2 = (output5091, value773, value1) := by
  rw [input5091_def, output5091_def]
  kernel_rfl

theorem node5092_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5092 value773 value1 value2 = (output5092, value926, value1) := by
  rw [input5092_def, output5092_def]
  kernel_rfl

theorem node5093_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5093 value926 value1 value2 = (output5093, value926, value1) := by
  rw [input5093_def, output5093_def]
  kernel_rfl

theorem node5094_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5094 value926 value1 value2 = (output5094, value926, value1) := by
  rw [input5094_def, output5094_def]
  kernel_rfl

theorem node5095_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5095 value926 value1 value2 = (output5095, value926, value1) := by
  rw [input5095_def, output5095_def]
  kernel_rfl

theorem node5096_cond_eq
    (child5094 : Flapjack.WordAlloc.removeDeadStructural input5094 value926 value1 value2 = (output5094, value926, value1))
    (child5095 : Flapjack.WordAlloc.removeDeadStructural input5095 value926 value1 value2 = (output5095, value926, value1)) : Flapjack.WordAlloc.removeDeadStructural input5096 value926 value1 value2 = (output5096, value926, value1) := by
  rw [input5096_def, output5096_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5094]
  try dsimp only
  rw [child5095]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5094_skip, output5095_skip]
  kernel_rfl

theorem node5097_cond_eq
    (child5093 : Flapjack.WordAlloc.removeDeadStructural input5093 value926 value1 value2 = (output5093, value926, value1))
    (child5096 : Flapjack.WordAlloc.removeDeadStructural input5096 value926 value1 value2 = (output5096, value926, value1)) : Flapjack.WordAlloc.removeDeadStructural input5097 value926 value1 value2 = (output5097, value926, value1) := by
  rw [input5097_def, output5097_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5093]
  try dsimp only
  rw [child5096]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5093_skip, output5096_skip]
  kernel_rfl

theorem node5098_cond_eq
    (child5092 : Flapjack.WordAlloc.removeDeadStructural input5092 value773 value1 value2 = (output5092, value926, value1))
    (child5097 : Flapjack.WordAlloc.removeDeadStructural input5097 value926 value1 value2 = (output5097, value926, value1)) : Flapjack.WordAlloc.removeDeadStructural input5098 value773 value1 value2 = (output5098, value926, value1) := by
  rw [input5098_def, output5098_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5092]
  try dsimp only
  rw [child5097]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5092_skip, output5097_skip]
  kernel_rfl

theorem node5099_cond_eq
    (child5091 : Flapjack.WordAlloc.removeDeadStructural input5091 value925 value1 value2 = (output5091, value773, value1))
    (child5098 : Flapjack.WordAlloc.removeDeadStructural input5098 value773 value1 value2 = (output5098, value926, value1)) : Flapjack.WordAlloc.removeDeadStructural input5099 value925 value1 value2 = (output5099, value926, value1) := by
  rw [input5099_def, output5099_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5091]
  try dsimp only
  rw [child5098]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5091_skip, output5098_skip]
  kernel_rfl

theorem node5100_cond_eq
    (child5090 : Flapjack.WordAlloc.removeDeadStructural input5090 value647 value8 value2 = (output5090, value925, value1))
    (child5099 : Flapjack.WordAlloc.removeDeadStructural input5099 value925 value1 value2 = (output5099, value926, value1)) : Flapjack.WordAlloc.removeDeadStructural input5100 value647 value8 value2 = (output5100, value926, value1) := by
  rw [input5100_def, output5100_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5090]
  try dsimp only
  rw [child5099]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5090_skip, output5099_skip]
  kernel_rfl

theorem node5101_cond_eq
    (child3605 : Flapjack.WordAlloc.removeDeadStructural input3605 value647 value8 value2 = (output3605, value647, value8))
    (child5100 : Flapjack.WordAlloc.removeDeadStructural input5100 value647 value8 value2 = (output5100, value926, value1)) : Flapjack.WordAlloc.removeDeadStructural input5101 value647 value8 value2 = (output5101, value926, value1) := by
  rw [input5101_def, output5101_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3605]
  try dsimp only
  rw [child5100]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3605_skip, output5100_skip]
  kernel_rfl

theorem node5102_cond_eq
    (child3604 : Flapjack.WordAlloc.removeDeadStructural input3604 value651 value8 value2 = (output3604, value647, value8))
    (child5101 : Flapjack.WordAlloc.removeDeadStructural input5101 value647 value8 value2 = (output5101, value926, value1)) : Flapjack.WordAlloc.removeDeadStructural input5102 value651 value8 value2 = (output5102, value926, value1) := by
  rw [input5102_def, output5102_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3604]
  try dsimp only
  rw [child5101]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3604_skip, output5101_skip]
  kernel_rfl

theorem node5103_cond_eq
    (child3603 : Flapjack.WordAlloc.removeDeadStructural input3603 value647 value1 value2 = (output3603, value651, value8))
    (child5102 : Flapjack.WordAlloc.removeDeadStructural input5102 value651 value8 value2 = (output5102, value926, value1)) : Flapjack.WordAlloc.removeDeadStructural input5103 value647 value1 value2 = (output5103, value926, value1) := by
  rw [input5103_def, output5103_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3603]
  try dsimp only
  rw [child5102]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3603_skip, output5102_skip]
  kernel_rfl

theorem node5104_cond_eq
    (child3600 : Flapjack.WordAlloc.removeDeadStructural input3600 value649 value1 value2 = (output3600, value647, value1))
    (child5103 : Flapjack.WordAlloc.removeDeadStructural input5103 value647 value1 value2 = (output5103, value926, value1)) : Flapjack.WordAlloc.removeDeadStructural input5104 value649 value1 value2 = (output5104, value926, value1) := by
  rw [input5104_def, output5104_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3600]
  try dsimp only
  rw [child5103]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3600_skip, output5103_skip]
  kernel_rfl

theorem node5105_cond_eq
    (child3599 : Flapjack.WordAlloc.removeDeadStructural input3599 value647 value1 value2 = (output3599, value649, value1))
    (child5104 : Flapjack.WordAlloc.removeDeadStructural input5104 value649 value1 value2 = (output5104, value926, value1)) : Flapjack.WordAlloc.removeDeadStructural input5105 value647 value1 value2 = (output5105, value926, value1) := by
  rw [input5105_def, output5105_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3599]
  try dsimp only
  rw [child5104]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3599_skip, output5104_skip]
  kernel_rfl

theorem node5106_cond_eq
    (child3596 : Flapjack.WordAlloc.removeDeadStructural input3596 value646 value1 value2 = (output3596, value647, value1))
    (child5105 : Flapjack.WordAlloc.removeDeadStructural input5105 value647 value1 value2 = (output5105, value926, value1)) : Flapjack.WordAlloc.removeDeadStructural input5106 value646 value1 value2 = (output5106, value926, value1) := by
  rw [input5106_def, output5106_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3596]
  try dsimp only
  rw [child5105]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3596_skip, output5105_skip]
  kernel_rfl

theorem node5107_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5107 value646 value1 value2 = (output5107, value646, value1) := by
  rw [input5107_def, output5107_def]
  kernel_rfl

theorem node5108_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5108 value646 value1 value2 = (output5108, value646, value1) := by
  rw [input5108_def, output5108_def]
  kernel_rfl

theorem node5109_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5109 value646 value1 value2 = (output5109, value646, value1) := by
  rw [input5109_def, output5109_def]
  kernel_rfl

theorem node5110_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5110 value646 value1 value2 = (output5110, value646, value1) := by
  rw [input5110_def, output5110_def]
  kernel_rfl

theorem node5111_cond_eq
    (child5109 : Flapjack.WordAlloc.removeDeadStructural input5109 value646 value1 value2 = (output5109, value646, value1))
    (child5110 : Flapjack.WordAlloc.removeDeadStructural input5110 value646 value1 value2 = (output5110, value646, value1)) : Flapjack.WordAlloc.removeDeadStructural input5111 value646 value1 value2 = (output5111, value646, value1) := by
  rw [input5111_def, output5111_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5109]
  try dsimp only
  rw [child5110]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5109_skip, output5110_skip]
  kernel_rfl

theorem node5112_cond_eq
    (child5108 : Flapjack.WordAlloc.removeDeadStructural input5108 value646 value1 value2 = (output5108, value646, value1))
    (child5111 : Flapjack.WordAlloc.removeDeadStructural input5111 value646 value1 value2 = (output5111, value646, value1)) : Flapjack.WordAlloc.removeDeadStructural input5112 value646 value1 value2 = (output5112, value646, value1) := by
  rw [input5112_def, output5112_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5108]
  try dsimp only
  rw [child5111]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5108_skip, output5111_skip]
  kernel_rfl

theorem node5113_cond_eq
    (child5107 : Flapjack.WordAlloc.removeDeadStructural input5107 value646 value1 value2 = (output5107, value646, value1))
    (child5112 : Flapjack.WordAlloc.removeDeadStructural input5112 value646 value1 value2 = (output5112, value646, value1)) : Flapjack.WordAlloc.removeDeadStructural input5113 value646 value1 value2 = (output5113, value646, value1) := by
  rw [input5113_def, output5113_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5107]
  try dsimp only
  rw [child5112]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5107_skip, output5112_skip]
  kernel_rfl

theorem node5114_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5114 value646 value1 value2 = (output5114, value926, value1) := by
  rw [input5114_def, output5114_def]
  kernel_rfl

theorem node5115_cond_eq
    (child5113 : Flapjack.WordAlloc.removeDeadStructural input5113 value646 value1 value2 = (output5113, value646, value1))
    (child5114 : Flapjack.WordAlloc.removeDeadStructural input5114 value646 value1 value2 = (output5114, value926, value1)) : Flapjack.WordAlloc.removeDeadStructural input5115 value646 value1 value2 = (output5115, value926, value1) := by
  rw [input5115_def, output5115_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5113]
  try dsimp only
  rw [child5114]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5113_skip, output5114_skip]
  kernel_rfl

theorem node5116_cond_eq : Flapjack.WordAlloc.removeDeadStructural input5116 value926 value1 value2 = (output5116, value926, value1) := by
  rw [input5116_def, output5116_def]
  kernel_rfl

theorem node5117_cond_eq
    (child5115 : Flapjack.WordAlloc.removeDeadStructural input5115 value646 value1 value2 = (output5115, value926, value1))
    (child5116 : Flapjack.WordAlloc.removeDeadStructural input5116 value926 value1 value2 = (output5116, value926, value1)) : Flapjack.WordAlloc.removeDeadStructural input5117 value646 value1 value2 = (output5117, value926, value1) := by
  rw [input5117_def, output5117_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child5115]
  try dsimp only
  rw [child5116]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5115_skip, output5116_skip]
  kernel_rfl

theorem node5118_cond_eq
    (child5106 : Flapjack.WordAlloc.removeDeadStructural input5106 value646 value1 value2 = (output5106, value926, value1))
    (child5117 : Flapjack.WordAlloc.removeDeadStructural input5117 value646 value1 value2 = (output5117, value926, value1)) : Flapjack.WordAlloc.removeDeadStructural input5118 value646 value1 value2 = (output5118, value928, value1) := by
  rw [input5118_def, output5118_def]
  rw [Flapjack.WordAlloc.removeDeadStructural_ite_eq]
  rw [child5106]
  try dsimp only
  rw [child5117]
  try dsimp only
  unfold Flapjack.WordAlloc.joinDeadIteResult
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output5106_skip, output5117_skip]
  kernel_rfl

theorem node5119_cond_eq
    (child3587 : Flapjack.WordAlloc.removeDeadStructural input3587 value646 value1 value2 = (output3587, value646, value1))
    (child5118 : Flapjack.WordAlloc.removeDeadStructural input5118 value646 value1 value2 = (output5118, value928, value1)) : Flapjack.WordAlloc.removeDeadStructural input5119 value646 value1 value2 = (output5119, value928, value1) := by
  rw [input5119_def, output5119_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child3587]
  try dsimp only
  rw [child5118]
  try dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output3587_skip, output5118_skip]
  kernel_rfl

#print axioms node5119_cond_eq
end InitECandidate.Proofs.DeadStages597.Parallel
