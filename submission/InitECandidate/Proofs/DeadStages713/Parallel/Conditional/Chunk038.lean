import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.DeadBranchComputation
import InitECandidate.Proofs.DeadStages713.Parallel.Data.Chunk038
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.CompilerComputation

namespace InitECandidate.Proofs.DeadStages713.Parallel
theorem node9728_cond_eq
    (child9726 : Flapjack.WordAlloc.removeDeadStructural input9726 value4868 value1 value2 = (output9726, value4869, value1))
    (child9727 : Flapjack.WordAlloc.removeDeadStructural input9727 value4869 value1 value2 = (output9727, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9728 value4868 value1 value2 = (output9728, value5, value1) := by
  rw [input9728_def, output9728_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9726]
  dsimp only
  rw [child9727]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9726_skip, output9727_skip]
  kernel_rfl

theorem node9729_cond_eq
    (child9725 : Flapjack.WordAlloc.removeDeadStructural input9725 value4867 value1 value2 = (output9725, value4868, value1))
    (child9728 : Flapjack.WordAlloc.removeDeadStructural input9728 value4868 value1 value2 = (output9728, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9729 value4867 value1 value2 = (output9729, value5, value1) := by
  rw [input9729_def, output9729_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9725]
  dsimp only
  rw [child9728]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9725_skip, output9728_skip]
  kernel_rfl

theorem node9730_cond_eq
    (child9724 : Flapjack.WordAlloc.removeDeadStructural input9724 value4866 value1 value2 = (output9724, value4867, value1))
    (child9729 : Flapjack.WordAlloc.removeDeadStructural input9729 value4867 value1 value2 = (output9729, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9730 value4866 value1 value2 = (output9730, value5, value1) := by
  rw [input9730_def, output9730_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9724]
  dsimp only
  rw [child9729]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9724_skip, output9729_skip]
  kernel_rfl

theorem node9731_cond_eq
    (child9723 : Flapjack.WordAlloc.removeDeadStructural input9723 value4864 value1 value2 = (output9723, value4866, value1))
    (child9730 : Flapjack.WordAlloc.removeDeadStructural input9730 value4866 value1 value2 = (output9730, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9731 value4864 value1 value2 = (output9731, value5, value1) := by
  rw [input9731_def, output9731_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9723]
  dsimp only
  rw [child9730]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9723_skip, output9730_skip]
  kernel_rfl

theorem node9732_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9732 value5 value1 value2 = (output9732, value4870, value1) := by
  rw [input9732_def, output9732_def]
  kernel_rfl

theorem node9733_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9733 value4870 value1 value2 = (output9733, value4871, value1) := by
  rw [input9733_def, output9733_def]
  kernel_rfl

theorem node9734_cond_eq
    (child9732 : Flapjack.WordAlloc.removeDeadStructural input9732 value5 value1 value2 = (output9732, value4870, value1))
    (child9733 : Flapjack.WordAlloc.removeDeadStructural input9733 value4870 value1 value2 = (output9733, value4871, value1)) : Flapjack.WordAlloc.removeDeadStructural input9734 value5 value1 value2 = (output9734, value4871, value1) := by
  rw [input9734_def, output9734_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9732]
  dsimp only
  rw [child9733]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9732_skip, output9733_skip]
  kernel_rfl

theorem node9735_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9735 value4871 value1 value2 = (output9735, value4872, value1) := by
  rw [input9735_def, output9735_def]
  kernel_rfl

theorem node9736_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9736 value4872 value1 value2 = (output9736, value4872, value1) := by
  rw [input9736_def, output9736_def]
  kernel_rfl

theorem node9737_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9737 value4872 value1 value2 = (output9737, value4873, value1) := by
  rw [input9737_def, output9737_def]
  kernel_rfl

theorem node9738_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9738 value4873 value1 value2 = (output9738, value4874, value1) := by
  rw [input9738_def, output9738_def]
  kernel_rfl

theorem node9739_cond_eq
    (child9737 : Flapjack.WordAlloc.removeDeadStructural input9737 value4872 value1 value2 = (output9737, value4873, value1))
    (child9738 : Flapjack.WordAlloc.removeDeadStructural input9738 value4873 value1 value2 = (output9738, value4874, value1)) : Flapjack.WordAlloc.removeDeadStructural input9739 value4872 value1 value2 = (output9739, value4874, value1) := by
  rw [input9739_def, output9739_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9737]
  dsimp only
  rw [child9738]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9737_skip, output9738_skip]
  kernel_rfl

theorem node9740_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9740 value4874 value1 value2 = (output9740, value4875, value1) := by
  rw [input9740_def, output9740_def]
  kernel_rfl

theorem node9741_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9741 value4875 value1 value2 = (output9741, value4876, value1) := by
  rw [input9741_def, output9741_def]
  kernel_rfl

theorem node9742_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9742 value4876 value1 value2 = (output9742, value4877, value1) := by
  rw [input9742_def, output9742_def]
  kernel_rfl

theorem node9743_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9743 value4877 value1 value2 = (output9743, value5, value1) := by
  rw [input9743_def, output9743_def]
  kernel_rfl

theorem node9744_cond_eq
    (child9742 : Flapjack.WordAlloc.removeDeadStructural input9742 value4876 value1 value2 = (output9742, value4877, value1))
    (child9743 : Flapjack.WordAlloc.removeDeadStructural input9743 value4877 value1 value2 = (output9743, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9744 value4876 value1 value2 = (output9744, value5, value1) := by
  rw [input9744_def, output9744_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9742]
  dsimp only
  rw [child9743]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9742_skip, output9743_skip]
  kernel_rfl

theorem node9745_cond_eq
    (child9741 : Flapjack.WordAlloc.removeDeadStructural input9741 value4875 value1 value2 = (output9741, value4876, value1))
    (child9744 : Flapjack.WordAlloc.removeDeadStructural input9744 value4876 value1 value2 = (output9744, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9745 value4875 value1 value2 = (output9745, value5, value1) := by
  rw [input9745_def, output9745_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9741]
  dsimp only
  rw [child9744]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9741_skip, output9744_skip]
  kernel_rfl

theorem node9746_cond_eq
    (child9740 : Flapjack.WordAlloc.removeDeadStructural input9740 value4874 value1 value2 = (output9740, value4875, value1))
    (child9745 : Flapjack.WordAlloc.removeDeadStructural input9745 value4875 value1 value2 = (output9745, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9746 value4874 value1 value2 = (output9746, value5, value1) := by
  rw [input9746_def, output9746_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9740]
  dsimp only
  rw [child9745]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9740_skip, output9745_skip]
  kernel_rfl

theorem node9747_cond_eq
    (child9739 : Flapjack.WordAlloc.removeDeadStructural input9739 value4872 value1 value2 = (output9739, value4874, value1))
    (child9746 : Flapjack.WordAlloc.removeDeadStructural input9746 value4874 value1 value2 = (output9746, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9747 value4872 value1 value2 = (output9747, value5, value1) := by
  rw [input9747_def, output9747_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9739]
  dsimp only
  rw [child9746]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9739_skip, output9746_skip]
  kernel_rfl

theorem node9748_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9748 value5 value1 value2 = (output9748, value4878, value1) := by
  rw [input9748_def, output9748_def]
  kernel_rfl

theorem node9749_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9749 value4878 value1 value2 = (output9749, value4879, value1) := by
  rw [input9749_def, output9749_def]
  kernel_rfl

theorem node9750_cond_eq
    (child9748 : Flapjack.WordAlloc.removeDeadStructural input9748 value5 value1 value2 = (output9748, value4878, value1))
    (child9749 : Flapjack.WordAlloc.removeDeadStructural input9749 value4878 value1 value2 = (output9749, value4879, value1)) : Flapjack.WordAlloc.removeDeadStructural input9750 value5 value1 value2 = (output9750, value4879, value1) := by
  rw [input9750_def, output9750_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9748]
  dsimp only
  rw [child9749]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9748_skip, output9749_skip]
  kernel_rfl

theorem node9751_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9751 value4879 value1 value2 = (output9751, value4880, value1) := by
  rw [input9751_def, output9751_def]
  kernel_rfl

theorem node9752_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9752 value4880 value1 value2 = (output9752, value4880, value1) := by
  rw [input9752_def, output9752_def]
  kernel_rfl

theorem node9753_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9753 value4880 value1 value2 = (output9753, value4881, value1) := by
  rw [input9753_def, output9753_def]
  kernel_rfl

theorem node9754_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9754 value4881 value1 value2 = (output9754, value4882, value1) := by
  rw [input9754_def, output9754_def]
  kernel_rfl

theorem node9755_cond_eq
    (child9753 : Flapjack.WordAlloc.removeDeadStructural input9753 value4880 value1 value2 = (output9753, value4881, value1))
    (child9754 : Flapjack.WordAlloc.removeDeadStructural input9754 value4881 value1 value2 = (output9754, value4882, value1)) : Flapjack.WordAlloc.removeDeadStructural input9755 value4880 value1 value2 = (output9755, value4882, value1) := by
  rw [input9755_def, output9755_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9753]
  dsimp only
  rw [child9754]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9753_skip, output9754_skip]
  kernel_rfl

theorem node9756_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9756 value4882 value1 value2 = (output9756, value4883, value1) := by
  rw [input9756_def, output9756_def]
  kernel_rfl

theorem node9757_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9757 value4883 value1 value2 = (output9757, value4884, value1) := by
  rw [input9757_def, output9757_def]
  kernel_rfl

theorem node9758_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9758 value4884 value1 value2 = (output9758, value4885, value1) := by
  rw [input9758_def, output9758_def]
  kernel_rfl

theorem node9759_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9759 value4885 value1 value2 = (output9759, value5, value1) := by
  rw [input9759_def, output9759_def]
  kernel_rfl

theorem node9760_cond_eq
    (child9758 : Flapjack.WordAlloc.removeDeadStructural input9758 value4884 value1 value2 = (output9758, value4885, value1))
    (child9759 : Flapjack.WordAlloc.removeDeadStructural input9759 value4885 value1 value2 = (output9759, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9760 value4884 value1 value2 = (output9760, value5, value1) := by
  rw [input9760_def, output9760_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9758]
  dsimp only
  rw [child9759]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9758_skip, output9759_skip]
  kernel_rfl

theorem node9761_cond_eq
    (child9757 : Flapjack.WordAlloc.removeDeadStructural input9757 value4883 value1 value2 = (output9757, value4884, value1))
    (child9760 : Flapjack.WordAlloc.removeDeadStructural input9760 value4884 value1 value2 = (output9760, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9761 value4883 value1 value2 = (output9761, value5, value1) := by
  rw [input9761_def, output9761_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9757]
  dsimp only
  rw [child9760]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9757_skip, output9760_skip]
  kernel_rfl

theorem node9762_cond_eq
    (child9756 : Flapjack.WordAlloc.removeDeadStructural input9756 value4882 value1 value2 = (output9756, value4883, value1))
    (child9761 : Flapjack.WordAlloc.removeDeadStructural input9761 value4883 value1 value2 = (output9761, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9762 value4882 value1 value2 = (output9762, value5, value1) := by
  rw [input9762_def, output9762_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9756]
  dsimp only
  rw [child9761]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9756_skip, output9761_skip]
  kernel_rfl

theorem node9763_cond_eq
    (child9755 : Flapjack.WordAlloc.removeDeadStructural input9755 value4880 value1 value2 = (output9755, value4882, value1))
    (child9762 : Flapjack.WordAlloc.removeDeadStructural input9762 value4882 value1 value2 = (output9762, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9763 value4880 value1 value2 = (output9763, value5, value1) := by
  rw [input9763_def, output9763_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9755]
  dsimp only
  rw [child9762]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9755_skip, output9762_skip]
  kernel_rfl

theorem node9764_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9764 value5 value1 value2 = (output9764, value4886, value1) := by
  rw [input9764_def, output9764_def]
  kernel_rfl

theorem node9765_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9765 value4886 value1 value2 = (output9765, value4887, value1) := by
  rw [input9765_def, output9765_def]
  kernel_rfl

theorem node9766_cond_eq
    (child9764 : Flapjack.WordAlloc.removeDeadStructural input9764 value5 value1 value2 = (output9764, value4886, value1))
    (child9765 : Flapjack.WordAlloc.removeDeadStructural input9765 value4886 value1 value2 = (output9765, value4887, value1)) : Flapjack.WordAlloc.removeDeadStructural input9766 value5 value1 value2 = (output9766, value4887, value1) := by
  rw [input9766_def, output9766_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9764]
  dsimp only
  rw [child9765]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9764_skip, output9765_skip]
  kernel_rfl

theorem node9767_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9767 value4887 value1 value2 = (output9767, value4888, value1) := by
  rw [input9767_def, output9767_def]
  kernel_rfl

theorem node9768_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9768 value4888 value1 value2 = (output9768, value4888, value1) := by
  rw [input9768_def, output9768_def]
  kernel_rfl

theorem node9769_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9769 value4888 value1 value2 = (output9769, value4889, value1) := by
  rw [input9769_def, output9769_def]
  kernel_rfl

theorem node9770_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9770 value4889 value1 value2 = (output9770, value4890, value1) := by
  rw [input9770_def, output9770_def]
  kernel_rfl

theorem node9771_cond_eq
    (child9769 : Flapjack.WordAlloc.removeDeadStructural input9769 value4888 value1 value2 = (output9769, value4889, value1))
    (child9770 : Flapjack.WordAlloc.removeDeadStructural input9770 value4889 value1 value2 = (output9770, value4890, value1)) : Flapjack.WordAlloc.removeDeadStructural input9771 value4888 value1 value2 = (output9771, value4890, value1) := by
  rw [input9771_def, output9771_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9769]
  dsimp only
  rw [child9770]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9769_skip, output9770_skip]
  kernel_rfl

theorem node9772_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9772 value4890 value1 value2 = (output9772, value4891, value1) := by
  rw [input9772_def, output9772_def]
  kernel_rfl

theorem node9773_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9773 value4891 value1 value2 = (output9773, value4892, value1) := by
  rw [input9773_def, output9773_def]
  kernel_rfl

theorem node9774_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9774 value4892 value1 value2 = (output9774, value4893, value1) := by
  rw [input9774_def, output9774_def]
  kernel_rfl

theorem node9775_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9775 value4893 value1 value2 = (output9775, value5, value1) := by
  rw [input9775_def, output9775_def]
  kernel_rfl

theorem node9776_cond_eq
    (child9774 : Flapjack.WordAlloc.removeDeadStructural input9774 value4892 value1 value2 = (output9774, value4893, value1))
    (child9775 : Flapjack.WordAlloc.removeDeadStructural input9775 value4893 value1 value2 = (output9775, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9776 value4892 value1 value2 = (output9776, value5, value1) := by
  rw [input9776_def, output9776_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9774]
  dsimp only
  rw [child9775]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9774_skip, output9775_skip]
  kernel_rfl

theorem node9777_cond_eq
    (child9773 : Flapjack.WordAlloc.removeDeadStructural input9773 value4891 value1 value2 = (output9773, value4892, value1))
    (child9776 : Flapjack.WordAlloc.removeDeadStructural input9776 value4892 value1 value2 = (output9776, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9777 value4891 value1 value2 = (output9777, value5, value1) := by
  rw [input9777_def, output9777_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9773]
  dsimp only
  rw [child9776]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9773_skip, output9776_skip]
  kernel_rfl

theorem node9778_cond_eq
    (child9772 : Flapjack.WordAlloc.removeDeadStructural input9772 value4890 value1 value2 = (output9772, value4891, value1))
    (child9777 : Flapjack.WordAlloc.removeDeadStructural input9777 value4891 value1 value2 = (output9777, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9778 value4890 value1 value2 = (output9778, value5, value1) := by
  rw [input9778_def, output9778_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9772]
  dsimp only
  rw [child9777]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9772_skip, output9777_skip]
  kernel_rfl

theorem node9779_cond_eq
    (child9771 : Flapjack.WordAlloc.removeDeadStructural input9771 value4888 value1 value2 = (output9771, value4890, value1))
    (child9778 : Flapjack.WordAlloc.removeDeadStructural input9778 value4890 value1 value2 = (output9778, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9779 value4888 value1 value2 = (output9779, value5, value1) := by
  rw [input9779_def, output9779_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9771]
  dsimp only
  rw [child9778]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9771_skip, output9778_skip]
  kernel_rfl

theorem node9780_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9780 value5 value1 value2 = (output9780, value4894, value1) := by
  rw [input9780_def, output9780_def]
  kernel_rfl

theorem node9781_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9781 value4894 value1 value2 = (output9781, value4895, value1) := by
  rw [input9781_def, output9781_def]
  kernel_rfl

theorem node9782_cond_eq
    (child9780 : Flapjack.WordAlloc.removeDeadStructural input9780 value5 value1 value2 = (output9780, value4894, value1))
    (child9781 : Flapjack.WordAlloc.removeDeadStructural input9781 value4894 value1 value2 = (output9781, value4895, value1)) : Flapjack.WordAlloc.removeDeadStructural input9782 value5 value1 value2 = (output9782, value4895, value1) := by
  rw [input9782_def, output9782_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9780]
  dsimp only
  rw [child9781]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9780_skip, output9781_skip]
  kernel_rfl

theorem node9783_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9783 value4895 value1 value2 = (output9783, value4896, value1) := by
  rw [input9783_def, output9783_def]
  kernel_rfl

theorem node9784_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9784 value4896 value1 value2 = (output9784, value4896, value1) := by
  rw [input9784_def, output9784_def]
  kernel_rfl

theorem node9785_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9785 value4896 value1 value2 = (output9785, value4897, value1) := by
  rw [input9785_def, output9785_def]
  kernel_rfl

theorem node9786_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9786 value4897 value1 value2 = (output9786, value4898, value1) := by
  rw [input9786_def, output9786_def]
  kernel_rfl

theorem node9787_cond_eq
    (child9785 : Flapjack.WordAlloc.removeDeadStructural input9785 value4896 value1 value2 = (output9785, value4897, value1))
    (child9786 : Flapjack.WordAlloc.removeDeadStructural input9786 value4897 value1 value2 = (output9786, value4898, value1)) : Flapjack.WordAlloc.removeDeadStructural input9787 value4896 value1 value2 = (output9787, value4898, value1) := by
  rw [input9787_def, output9787_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9785]
  dsimp only
  rw [child9786]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9785_skip, output9786_skip]
  kernel_rfl

theorem node9788_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9788 value4898 value1 value2 = (output9788, value4899, value1) := by
  rw [input9788_def, output9788_def]
  kernel_rfl

theorem node9789_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9789 value4899 value1 value2 = (output9789, value4900, value1) := by
  rw [input9789_def, output9789_def]
  kernel_rfl

theorem node9790_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9790 value4900 value1 value2 = (output9790, value4901, value1) := by
  rw [input9790_def, output9790_def]
  kernel_rfl

theorem node9791_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9791 value4901 value1 value2 = (output9791, value5, value1) := by
  rw [input9791_def, output9791_def]
  kernel_rfl

theorem node9792_cond_eq
    (child9790 : Flapjack.WordAlloc.removeDeadStructural input9790 value4900 value1 value2 = (output9790, value4901, value1))
    (child9791 : Flapjack.WordAlloc.removeDeadStructural input9791 value4901 value1 value2 = (output9791, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9792 value4900 value1 value2 = (output9792, value5, value1) := by
  rw [input9792_def, output9792_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9790]
  dsimp only
  rw [child9791]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9790_skip, output9791_skip]
  kernel_rfl

theorem node9793_cond_eq
    (child9789 : Flapjack.WordAlloc.removeDeadStructural input9789 value4899 value1 value2 = (output9789, value4900, value1))
    (child9792 : Flapjack.WordAlloc.removeDeadStructural input9792 value4900 value1 value2 = (output9792, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9793 value4899 value1 value2 = (output9793, value5, value1) := by
  rw [input9793_def, output9793_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9789]
  dsimp only
  rw [child9792]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9789_skip, output9792_skip]
  kernel_rfl

theorem node9794_cond_eq
    (child9788 : Flapjack.WordAlloc.removeDeadStructural input9788 value4898 value1 value2 = (output9788, value4899, value1))
    (child9793 : Flapjack.WordAlloc.removeDeadStructural input9793 value4899 value1 value2 = (output9793, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9794 value4898 value1 value2 = (output9794, value5, value1) := by
  rw [input9794_def, output9794_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9788]
  dsimp only
  rw [child9793]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9788_skip, output9793_skip]
  kernel_rfl

theorem node9795_cond_eq
    (child9787 : Flapjack.WordAlloc.removeDeadStructural input9787 value4896 value1 value2 = (output9787, value4898, value1))
    (child9794 : Flapjack.WordAlloc.removeDeadStructural input9794 value4898 value1 value2 = (output9794, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9795 value4896 value1 value2 = (output9795, value5, value1) := by
  rw [input9795_def, output9795_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9787]
  dsimp only
  rw [child9794]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9787_skip, output9794_skip]
  kernel_rfl

theorem node9796_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9796 value5 value1 value2 = (output9796, value4902, value1) := by
  rw [input9796_def, output9796_def]
  kernel_rfl

theorem node9797_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9797 value4902 value1 value2 = (output9797, value4903, value1) := by
  rw [input9797_def, output9797_def]
  kernel_rfl

theorem node9798_cond_eq
    (child9796 : Flapjack.WordAlloc.removeDeadStructural input9796 value5 value1 value2 = (output9796, value4902, value1))
    (child9797 : Flapjack.WordAlloc.removeDeadStructural input9797 value4902 value1 value2 = (output9797, value4903, value1)) : Flapjack.WordAlloc.removeDeadStructural input9798 value5 value1 value2 = (output9798, value4903, value1) := by
  rw [input9798_def, output9798_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9796]
  dsimp only
  rw [child9797]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9796_skip, output9797_skip]
  kernel_rfl

theorem node9799_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9799 value4903 value1 value2 = (output9799, value4904, value1) := by
  rw [input9799_def, output9799_def]
  kernel_rfl

theorem node9800_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9800 value4904 value1 value2 = (output9800, value4904, value1) := by
  rw [input9800_def, output9800_def]
  kernel_rfl

theorem node9801_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9801 value4904 value1 value2 = (output9801, value4905, value1) := by
  rw [input9801_def, output9801_def]
  kernel_rfl

theorem node9802_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9802 value4905 value1 value2 = (output9802, value4906, value1) := by
  rw [input9802_def, output9802_def]
  kernel_rfl

theorem node9803_cond_eq
    (child9801 : Flapjack.WordAlloc.removeDeadStructural input9801 value4904 value1 value2 = (output9801, value4905, value1))
    (child9802 : Flapjack.WordAlloc.removeDeadStructural input9802 value4905 value1 value2 = (output9802, value4906, value1)) : Flapjack.WordAlloc.removeDeadStructural input9803 value4904 value1 value2 = (output9803, value4906, value1) := by
  rw [input9803_def, output9803_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9801]
  dsimp only
  rw [child9802]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9801_skip, output9802_skip]
  kernel_rfl

theorem node9804_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9804 value4906 value1 value2 = (output9804, value4907, value1) := by
  rw [input9804_def, output9804_def]
  kernel_rfl

theorem node9805_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9805 value4907 value1 value2 = (output9805, value4908, value1) := by
  rw [input9805_def, output9805_def]
  kernel_rfl

theorem node9806_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9806 value4908 value1 value2 = (output9806, value4909, value1) := by
  rw [input9806_def, output9806_def]
  kernel_rfl

theorem node9807_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9807 value4909 value1 value2 = (output9807, value5, value1) := by
  rw [input9807_def, output9807_def]
  kernel_rfl

theorem node9808_cond_eq
    (child9806 : Flapjack.WordAlloc.removeDeadStructural input9806 value4908 value1 value2 = (output9806, value4909, value1))
    (child9807 : Flapjack.WordAlloc.removeDeadStructural input9807 value4909 value1 value2 = (output9807, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9808 value4908 value1 value2 = (output9808, value5, value1) := by
  rw [input9808_def, output9808_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9806]
  dsimp only
  rw [child9807]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9806_skip, output9807_skip]
  kernel_rfl

theorem node9809_cond_eq
    (child9805 : Flapjack.WordAlloc.removeDeadStructural input9805 value4907 value1 value2 = (output9805, value4908, value1))
    (child9808 : Flapjack.WordAlloc.removeDeadStructural input9808 value4908 value1 value2 = (output9808, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9809 value4907 value1 value2 = (output9809, value5, value1) := by
  rw [input9809_def, output9809_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9805]
  dsimp only
  rw [child9808]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9805_skip, output9808_skip]
  kernel_rfl

theorem node9810_cond_eq
    (child9804 : Flapjack.WordAlloc.removeDeadStructural input9804 value4906 value1 value2 = (output9804, value4907, value1))
    (child9809 : Flapjack.WordAlloc.removeDeadStructural input9809 value4907 value1 value2 = (output9809, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9810 value4906 value1 value2 = (output9810, value5, value1) := by
  rw [input9810_def, output9810_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9804]
  dsimp only
  rw [child9809]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9804_skip, output9809_skip]
  kernel_rfl

theorem node9811_cond_eq
    (child9803 : Flapjack.WordAlloc.removeDeadStructural input9803 value4904 value1 value2 = (output9803, value4906, value1))
    (child9810 : Flapjack.WordAlloc.removeDeadStructural input9810 value4906 value1 value2 = (output9810, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9811 value4904 value1 value2 = (output9811, value5, value1) := by
  rw [input9811_def, output9811_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9803]
  dsimp only
  rw [child9810]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9803_skip, output9810_skip]
  kernel_rfl

theorem node9812_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9812 value5 value1 value2 = (output9812, value4910, value1) := by
  rw [input9812_def, output9812_def]
  kernel_rfl

theorem node9813_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9813 value4910 value1 value2 = (output9813, value4911, value1) := by
  rw [input9813_def, output9813_def]
  kernel_rfl

theorem node9814_cond_eq
    (child9812 : Flapjack.WordAlloc.removeDeadStructural input9812 value5 value1 value2 = (output9812, value4910, value1))
    (child9813 : Flapjack.WordAlloc.removeDeadStructural input9813 value4910 value1 value2 = (output9813, value4911, value1)) : Flapjack.WordAlloc.removeDeadStructural input9814 value5 value1 value2 = (output9814, value4911, value1) := by
  rw [input9814_def, output9814_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9812]
  dsimp only
  rw [child9813]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9812_skip, output9813_skip]
  kernel_rfl

theorem node9815_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9815 value4911 value1 value2 = (output9815, value4912, value1) := by
  rw [input9815_def, output9815_def]
  kernel_rfl

theorem node9816_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9816 value4912 value1 value2 = (output9816, value4912, value1) := by
  rw [input9816_def, output9816_def]
  kernel_rfl

theorem node9817_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9817 value4912 value1 value2 = (output9817, value4913, value1) := by
  rw [input9817_def, output9817_def]
  kernel_rfl

theorem node9818_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9818 value4913 value1 value2 = (output9818, value4914, value1) := by
  rw [input9818_def, output9818_def]
  kernel_rfl

theorem node9819_cond_eq
    (child9817 : Flapjack.WordAlloc.removeDeadStructural input9817 value4912 value1 value2 = (output9817, value4913, value1))
    (child9818 : Flapjack.WordAlloc.removeDeadStructural input9818 value4913 value1 value2 = (output9818, value4914, value1)) : Flapjack.WordAlloc.removeDeadStructural input9819 value4912 value1 value2 = (output9819, value4914, value1) := by
  rw [input9819_def, output9819_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9817]
  dsimp only
  rw [child9818]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9817_skip, output9818_skip]
  kernel_rfl

theorem node9820_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9820 value4914 value1 value2 = (output9820, value4915, value1) := by
  rw [input9820_def, output9820_def]
  kernel_rfl

theorem node9821_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9821 value4915 value1 value2 = (output9821, value4916, value1) := by
  rw [input9821_def, output9821_def]
  kernel_rfl

theorem node9822_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9822 value4916 value1 value2 = (output9822, value4917, value1) := by
  rw [input9822_def, output9822_def]
  kernel_rfl

theorem node9823_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9823 value4917 value1 value2 = (output9823, value5, value1) := by
  rw [input9823_def, output9823_def]
  kernel_rfl

theorem node9824_cond_eq
    (child9822 : Flapjack.WordAlloc.removeDeadStructural input9822 value4916 value1 value2 = (output9822, value4917, value1))
    (child9823 : Flapjack.WordAlloc.removeDeadStructural input9823 value4917 value1 value2 = (output9823, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9824 value4916 value1 value2 = (output9824, value5, value1) := by
  rw [input9824_def, output9824_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9822]
  dsimp only
  rw [child9823]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9822_skip, output9823_skip]
  kernel_rfl

theorem node9825_cond_eq
    (child9821 : Flapjack.WordAlloc.removeDeadStructural input9821 value4915 value1 value2 = (output9821, value4916, value1))
    (child9824 : Flapjack.WordAlloc.removeDeadStructural input9824 value4916 value1 value2 = (output9824, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9825 value4915 value1 value2 = (output9825, value5, value1) := by
  rw [input9825_def, output9825_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9821]
  dsimp only
  rw [child9824]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9821_skip, output9824_skip]
  kernel_rfl

theorem node9826_cond_eq
    (child9820 : Flapjack.WordAlloc.removeDeadStructural input9820 value4914 value1 value2 = (output9820, value4915, value1))
    (child9825 : Flapjack.WordAlloc.removeDeadStructural input9825 value4915 value1 value2 = (output9825, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9826 value4914 value1 value2 = (output9826, value5, value1) := by
  rw [input9826_def, output9826_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9820]
  dsimp only
  rw [child9825]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9820_skip, output9825_skip]
  kernel_rfl

theorem node9827_cond_eq
    (child9819 : Flapjack.WordAlloc.removeDeadStructural input9819 value4912 value1 value2 = (output9819, value4914, value1))
    (child9826 : Flapjack.WordAlloc.removeDeadStructural input9826 value4914 value1 value2 = (output9826, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9827 value4912 value1 value2 = (output9827, value5, value1) := by
  rw [input9827_def, output9827_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9819]
  dsimp only
  rw [child9826]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9819_skip, output9826_skip]
  kernel_rfl

theorem node9828_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9828 value5 value1 value2 = (output9828, value4918, value1) := by
  rw [input9828_def, output9828_def]
  kernel_rfl

theorem node9829_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9829 value4918 value1 value2 = (output9829, value4919, value1) := by
  rw [input9829_def, output9829_def]
  kernel_rfl

theorem node9830_cond_eq
    (child9828 : Flapjack.WordAlloc.removeDeadStructural input9828 value5 value1 value2 = (output9828, value4918, value1))
    (child9829 : Flapjack.WordAlloc.removeDeadStructural input9829 value4918 value1 value2 = (output9829, value4919, value1)) : Flapjack.WordAlloc.removeDeadStructural input9830 value5 value1 value2 = (output9830, value4919, value1) := by
  rw [input9830_def, output9830_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9828]
  dsimp only
  rw [child9829]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9828_skip, output9829_skip]
  kernel_rfl

theorem node9831_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9831 value4919 value1 value2 = (output9831, value4920, value1) := by
  rw [input9831_def, output9831_def]
  kernel_rfl

theorem node9832_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9832 value4920 value1 value2 = (output9832, value4920, value1) := by
  rw [input9832_def, output9832_def]
  kernel_rfl

theorem node9833_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9833 value4920 value1 value2 = (output9833, value4921, value1) := by
  rw [input9833_def, output9833_def]
  kernel_rfl

theorem node9834_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9834 value4921 value1 value2 = (output9834, value4922, value1) := by
  rw [input9834_def, output9834_def]
  kernel_rfl

theorem node9835_cond_eq
    (child9833 : Flapjack.WordAlloc.removeDeadStructural input9833 value4920 value1 value2 = (output9833, value4921, value1))
    (child9834 : Flapjack.WordAlloc.removeDeadStructural input9834 value4921 value1 value2 = (output9834, value4922, value1)) : Flapjack.WordAlloc.removeDeadStructural input9835 value4920 value1 value2 = (output9835, value4922, value1) := by
  rw [input9835_def, output9835_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9833]
  dsimp only
  rw [child9834]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9833_skip, output9834_skip]
  kernel_rfl

theorem node9836_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9836 value4922 value1 value2 = (output9836, value4923, value1) := by
  rw [input9836_def, output9836_def]
  kernel_rfl

theorem node9837_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9837 value4923 value1 value2 = (output9837, value4924, value1) := by
  rw [input9837_def, output9837_def]
  kernel_rfl

theorem node9838_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9838 value4924 value1 value2 = (output9838, value4925, value1) := by
  rw [input9838_def, output9838_def]
  kernel_rfl

theorem node9839_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9839 value4925 value1 value2 = (output9839, value5, value1) := by
  rw [input9839_def, output9839_def]
  kernel_rfl

theorem node9840_cond_eq
    (child9838 : Flapjack.WordAlloc.removeDeadStructural input9838 value4924 value1 value2 = (output9838, value4925, value1))
    (child9839 : Flapjack.WordAlloc.removeDeadStructural input9839 value4925 value1 value2 = (output9839, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9840 value4924 value1 value2 = (output9840, value5, value1) := by
  rw [input9840_def, output9840_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9838]
  dsimp only
  rw [child9839]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9838_skip, output9839_skip]
  kernel_rfl

theorem node9841_cond_eq
    (child9837 : Flapjack.WordAlloc.removeDeadStructural input9837 value4923 value1 value2 = (output9837, value4924, value1))
    (child9840 : Flapjack.WordAlloc.removeDeadStructural input9840 value4924 value1 value2 = (output9840, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9841 value4923 value1 value2 = (output9841, value5, value1) := by
  rw [input9841_def, output9841_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9837]
  dsimp only
  rw [child9840]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9837_skip, output9840_skip]
  kernel_rfl

theorem node9842_cond_eq
    (child9836 : Flapjack.WordAlloc.removeDeadStructural input9836 value4922 value1 value2 = (output9836, value4923, value1))
    (child9841 : Flapjack.WordAlloc.removeDeadStructural input9841 value4923 value1 value2 = (output9841, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9842 value4922 value1 value2 = (output9842, value5, value1) := by
  rw [input9842_def, output9842_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9836]
  dsimp only
  rw [child9841]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9836_skip, output9841_skip]
  kernel_rfl

theorem node9843_cond_eq
    (child9835 : Flapjack.WordAlloc.removeDeadStructural input9835 value4920 value1 value2 = (output9835, value4922, value1))
    (child9842 : Flapjack.WordAlloc.removeDeadStructural input9842 value4922 value1 value2 = (output9842, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9843 value4920 value1 value2 = (output9843, value5, value1) := by
  rw [input9843_def, output9843_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9835]
  dsimp only
  rw [child9842]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9835_skip, output9842_skip]
  kernel_rfl

theorem node9844_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9844 value5 value1 value2 = (output9844, value4926, value1) := by
  rw [input9844_def, output9844_def]
  kernel_rfl

theorem node9845_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9845 value4926 value1 value2 = (output9845, value4927, value1) := by
  rw [input9845_def, output9845_def]
  kernel_rfl

theorem node9846_cond_eq
    (child9844 : Flapjack.WordAlloc.removeDeadStructural input9844 value5 value1 value2 = (output9844, value4926, value1))
    (child9845 : Flapjack.WordAlloc.removeDeadStructural input9845 value4926 value1 value2 = (output9845, value4927, value1)) : Flapjack.WordAlloc.removeDeadStructural input9846 value5 value1 value2 = (output9846, value4927, value1) := by
  rw [input9846_def, output9846_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9844]
  dsimp only
  rw [child9845]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9844_skip, output9845_skip]
  kernel_rfl

theorem node9847_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9847 value4927 value1 value2 = (output9847, value4928, value1) := by
  rw [input9847_def, output9847_def]
  kernel_rfl

theorem node9848_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9848 value4928 value1 value2 = (output9848, value4928, value1) := by
  rw [input9848_def, output9848_def]
  kernel_rfl

theorem node9849_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9849 value4928 value1 value2 = (output9849, value4929, value1) := by
  rw [input9849_def, output9849_def]
  kernel_rfl

theorem node9850_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9850 value4929 value1 value2 = (output9850, value4930, value1) := by
  rw [input9850_def, output9850_def]
  kernel_rfl

theorem node9851_cond_eq
    (child9849 : Flapjack.WordAlloc.removeDeadStructural input9849 value4928 value1 value2 = (output9849, value4929, value1))
    (child9850 : Flapjack.WordAlloc.removeDeadStructural input9850 value4929 value1 value2 = (output9850, value4930, value1)) : Flapjack.WordAlloc.removeDeadStructural input9851 value4928 value1 value2 = (output9851, value4930, value1) := by
  rw [input9851_def, output9851_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9849]
  dsimp only
  rw [child9850]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9849_skip, output9850_skip]
  kernel_rfl

theorem node9852_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9852 value4930 value1 value2 = (output9852, value4931, value1) := by
  rw [input9852_def, output9852_def]
  kernel_rfl

theorem node9853_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9853 value4931 value1 value2 = (output9853, value4932, value1) := by
  rw [input9853_def, output9853_def]
  kernel_rfl

theorem node9854_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9854 value4932 value1 value2 = (output9854, value4933, value1) := by
  rw [input9854_def, output9854_def]
  kernel_rfl

theorem node9855_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9855 value4933 value1 value2 = (output9855, value5, value1) := by
  rw [input9855_def, output9855_def]
  kernel_rfl

theorem node9856_cond_eq
    (child9854 : Flapjack.WordAlloc.removeDeadStructural input9854 value4932 value1 value2 = (output9854, value4933, value1))
    (child9855 : Flapjack.WordAlloc.removeDeadStructural input9855 value4933 value1 value2 = (output9855, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9856 value4932 value1 value2 = (output9856, value5, value1) := by
  rw [input9856_def, output9856_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9854]
  dsimp only
  rw [child9855]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9854_skip, output9855_skip]
  kernel_rfl

theorem node9857_cond_eq
    (child9853 : Flapjack.WordAlloc.removeDeadStructural input9853 value4931 value1 value2 = (output9853, value4932, value1))
    (child9856 : Flapjack.WordAlloc.removeDeadStructural input9856 value4932 value1 value2 = (output9856, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9857 value4931 value1 value2 = (output9857, value5, value1) := by
  rw [input9857_def, output9857_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9853]
  dsimp only
  rw [child9856]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9853_skip, output9856_skip]
  kernel_rfl

theorem node9858_cond_eq
    (child9852 : Flapjack.WordAlloc.removeDeadStructural input9852 value4930 value1 value2 = (output9852, value4931, value1))
    (child9857 : Flapjack.WordAlloc.removeDeadStructural input9857 value4931 value1 value2 = (output9857, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9858 value4930 value1 value2 = (output9858, value5, value1) := by
  rw [input9858_def, output9858_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9852]
  dsimp only
  rw [child9857]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9852_skip, output9857_skip]
  kernel_rfl

theorem node9859_cond_eq
    (child9851 : Flapjack.WordAlloc.removeDeadStructural input9851 value4928 value1 value2 = (output9851, value4930, value1))
    (child9858 : Flapjack.WordAlloc.removeDeadStructural input9858 value4930 value1 value2 = (output9858, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9859 value4928 value1 value2 = (output9859, value5, value1) := by
  rw [input9859_def, output9859_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9851]
  dsimp only
  rw [child9858]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9851_skip, output9858_skip]
  kernel_rfl

theorem node9860_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9860 value5 value1 value2 = (output9860, value4934, value1) := by
  rw [input9860_def, output9860_def]
  kernel_rfl

theorem node9861_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9861 value4934 value1 value2 = (output9861, value4935, value1) := by
  rw [input9861_def, output9861_def]
  kernel_rfl

theorem node9862_cond_eq
    (child9860 : Flapjack.WordAlloc.removeDeadStructural input9860 value5 value1 value2 = (output9860, value4934, value1))
    (child9861 : Flapjack.WordAlloc.removeDeadStructural input9861 value4934 value1 value2 = (output9861, value4935, value1)) : Flapjack.WordAlloc.removeDeadStructural input9862 value5 value1 value2 = (output9862, value4935, value1) := by
  rw [input9862_def, output9862_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9860]
  dsimp only
  rw [child9861]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9860_skip, output9861_skip]
  kernel_rfl

theorem node9863_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9863 value4935 value1 value2 = (output9863, value4936, value1) := by
  rw [input9863_def, output9863_def]
  kernel_rfl

theorem node9864_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9864 value4936 value1 value2 = (output9864, value4936, value1) := by
  rw [input9864_def, output9864_def]
  kernel_rfl

theorem node9865_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9865 value4936 value1 value2 = (output9865, value4937, value1) := by
  rw [input9865_def, output9865_def]
  kernel_rfl

theorem node9866_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9866 value4937 value1 value2 = (output9866, value4938, value1) := by
  rw [input9866_def, output9866_def]
  kernel_rfl

theorem node9867_cond_eq
    (child9865 : Flapjack.WordAlloc.removeDeadStructural input9865 value4936 value1 value2 = (output9865, value4937, value1))
    (child9866 : Flapjack.WordAlloc.removeDeadStructural input9866 value4937 value1 value2 = (output9866, value4938, value1)) : Flapjack.WordAlloc.removeDeadStructural input9867 value4936 value1 value2 = (output9867, value4938, value1) := by
  rw [input9867_def, output9867_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9865]
  dsimp only
  rw [child9866]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9865_skip, output9866_skip]
  kernel_rfl

theorem node9868_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9868 value4938 value1 value2 = (output9868, value4939, value1) := by
  rw [input9868_def, output9868_def]
  kernel_rfl

theorem node9869_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9869 value4939 value1 value2 = (output9869, value4940, value1) := by
  rw [input9869_def, output9869_def]
  kernel_rfl

theorem node9870_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9870 value4940 value1 value2 = (output9870, value4941, value1) := by
  rw [input9870_def, output9870_def]
  kernel_rfl

theorem node9871_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9871 value4941 value1 value2 = (output9871, value5, value1) := by
  rw [input9871_def, output9871_def]
  kernel_rfl

theorem node9872_cond_eq
    (child9870 : Flapjack.WordAlloc.removeDeadStructural input9870 value4940 value1 value2 = (output9870, value4941, value1))
    (child9871 : Flapjack.WordAlloc.removeDeadStructural input9871 value4941 value1 value2 = (output9871, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9872 value4940 value1 value2 = (output9872, value5, value1) := by
  rw [input9872_def, output9872_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9870]
  dsimp only
  rw [child9871]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9870_skip, output9871_skip]
  kernel_rfl

theorem node9873_cond_eq
    (child9869 : Flapjack.WordAlloc.removeDeadStructural input9869 value4939 value1 value2 = (output9869, value4940, value1))
    (child9872 : Flapjack.WordAlloc.removeDeadStructural input9872 value4940 value1 value2 = (output9872, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9873 value4939 value1 value2 = (output9873, value5, value1) := by
  rw [input9873_def, output9873_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9869]
  dsimp only
  rw [child9872]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9869_skip, output9872_skip]
  kernel_rfl

theorem node9874_cond_eq
    (child9868 : Flapjack.WordAlloc.removeDeadStructural input9868 value4938 value1 value2 = (output9868, value4939, value1))
    (child9873 : Flapjack.WordAlloc.removeDeadStructural input9873 value4939 value1 value2 = (output9873, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9874 value4938 value1 value2 = (output9874, value5, value1) := by
  rw [input9874_def, output9874_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9868]
  dsimp only
  rw [child9873]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9868_skip, output9873_skip]
  kernel_rfl

theorem node9875_cond_eq
    (child9867 : Flapjack.WordAlloc.removeDeadStructural input9867 value4936 value1 value2 = (output9867, value4938, value1))
    (child9874 : Flapjack.WordAlloc.removeDeadStructural input9874 value4938 value1 value2 = (output9874, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9875 value4936 value1 value2 = (output9875, value5, value1) := by
  rw [input9875_def, output9875_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9867]
  dsimp only
  rw [child9874]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9867_skip, output9874_skip]
  kernel_rfl

theorem node9876_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9876 value5 value1 value2 = (output9876, value4942, value1) := by
  rw [input9876_def, output9876_def]
  kernel_rfl

theorem node9877_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9877 value4942 value1 value2 = (output9877, value4943, value1) := by
  rw [input9877_def, output9877_def]
  kernel_rfl

theorem node9878_cond_eq
    (child9876 : Flapjack.WordAlloc.removeDeadStructural input9876 value5 value1 value2 = (output9876, value4942, value1))
    (child9877 : Flapjack.WordAlloc.removeDeadStructural input9877 value4942 value1 value2 = (output9877, value4943, value1)) : Flapjack.WordAlloc.removeDeadStructural input9878 value5 value1 value2 = (output9878, value4943, value1) := by
  rw [input9878_def, output9878_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9876]
  dsimp only
  rw [child9877]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9876_skip, output9877_skip]
  kernel_rfl

theorem node9879_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9879 value4943 value1 value2 = (output9879, value4944, value1) := by
  rw [input9879_def, output9879_def]
  kernel_rfl

theorem node9880_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9880 value4944 value1 value2 = (output9880, value4944, value1) := by
  rw [input9880_def, output9880_def]
  kernel_rfl

theorem node9881_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9881 value4944 value1 value2 = (output9881, value4945, value1) := by
  rw [input9881_def, output9881_def]
  kernel_rfl

theorem node9882_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9882 value4945 value1 value2 = (output9882, value4946, value1) := by
  rw [input9882_def, output9882_def]
  kernel_rfl

theorem node9883_cond_eq
    (child9881 : Flapjack.WordAlloc.removeDeadStructural input9881 value4944 value1 value2 = (output9881, value4945, value1))
    (child9882 : Flapjack.WordAlloc.removeDeadStructural input9882 value4945 value1 value2 = (output9882, value4946, value1)) : Flapjack.WordAlloc.removeDeadStructural input9883 value4944 value1 value2 = (output9883, value4946, value1) := by
  rw [input9883_def, output9883_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9881]
  dsimp only
  rw [child9882]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9881_skip, output9882_skip]
  kernel_rfl

theorem node9884_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9884 value4946 value1 value2 = (output9884, value4947, value1) := by
  rw [input9884_def, output9884_def]
  kernel_rfl

theorem node9885_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9885 value4947 value1 value2 = (output9885, value4948, value1) := by
  rw [input9885_def, output9885_def]
  kernel_rfl

theorem node9886_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9886 value4948 value1 value2 = (output9886, value4949, value1) := by
  rw [input9886_def, output9886_def]
  kernel_rfl

theorem node9887_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9887 value4949 value1 value2 = (output9887, value5, value1) := by
  rw [input9887_def, output9887_def]
  kernel_rfl

theorem node9888_cond_eq
    (child9886 : Flapjack.WordAlloc.removeDeadStructural input9886 value4948 value1 value2 = (output9886, value4949, value1))
    (child9887 : Flapjack.WordAlloc.removeDeadStructural input9887 value4949 value1 value2 = (output9887, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9888 value4948 value1 value2 = (output9888, value5, value1) := by
  rw [input9888_def, output9888_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9886]
  dsimp only
  rw [child9887]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9886_skip, output9887_skip]
  kernel_rfl

theorem node9889_cond_eq
    (child9885 : Flapjack.WordAlloc.removeDeadStructural input9885 value4947 value1 value2 = (output9885, value4948, value1))
    (child9888 : Flapjack.WordAlloc.removeDeadStructural input9888 value4948 value1 value2 = (output9888, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9889 value4947 value1 value2 = (output9889, value5, value1) := by
  rw [input9889_def, output9889_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9885]
  dsimp only
  rw [child9888]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9885_skip, output9888_skip]
  kernel_rfl

theorem node9890_cond_eq
    (child9884 : Flapjack.WordAlloc.removeDeadStructural input9884 value4946 value1 value2 = (output9884, value4947, value1))
    (child9889 : Flapjack.WordAlloc.removeDeadStructural input9889 value4947 value1 value2 = (output9889, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9890 value4946 value1 value2 = (output9890, value5, value1) := by
  rw [input9890_def, output9890_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9884]
  dsimp only
  rw [child9889]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9884_skip, output9889_skip]
  kernel_rfl

theorem node9891_cond_eq
    (child9883 : Flapjack.WordAlloc.removeDeadStructural input9883 value4944 value1 value2 = (output9883, value4946, value1))
    (child9890 : Flapjack.WordAlloc.removeDeadStructural input9890 value4946 value1 value2 = (output9890, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9891 value4944 value1 value2 = (output9891, value5, value1) := by
  rw [input9891_def, output9891_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9883]
  dsimp only
  rw [child9890]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9883_skip, output9890_skip]
  kernel_rfl

theorem node9892_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9892 value5 value1 value2 = (output9892, value4950, value1) := by
  rw [input9892_def, output9892_def]
  kernel_rfl

theorem node9893_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9893 value4950 value1 value2 = (output9893, value4951, value1) := by
  rw [input9893_def, output9893_def]
  kernel_rfl

theorem node9894_cond_eq
    (child9892 : Flapjack.WordAlloc.removeDeadStructural input9892 value5 value1 value2 = (output9892, value4950, value1))
    (child9893 : Flapjack.WordAlloc.removeDeadStructural input9893 value4950 value1 value2 = (output9893, value4951, value1)) : Flapjack.WordAlloc.removeDeadStructural input9894 value5 value1 value2 = (output9894, value4951, value1) := by
  rw [input9894_def, output9894_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9892]
  dsimp only
  rw [child9893]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9892_skip, output9893_skip]
  kernel_rfl

theorem node9895_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9895 value4951 value1 value2 = (output9895, value4952, value1) := by
  rw [input9895_def, output9895_def]
  kernel_rfl

theorem node9896_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9896 value4952 value1 value2 = (output9896, value4952, value1) := by
  rw [input9896_def, output9896_def]
  kernel_rfl

theorem node9897_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9897 value4952 value1 value2 = (output9897, value4953, value1) := by
  rw [input9897_def, output9897_def]
  kernel_rfl

theorem node9898_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9898 value4953 value1 value2 = (output9898, value4954, value1) := by
  rw [input9898_def, output9898_def]
  kernel_rfl

theorem node9899_cond_eq
    (child9897 : Flapjack.WordAlloc.removeDeadStructural input9897 value4952 value1 value2 = (output9897, value4953, value1))
    (child9898 : Flapjack.WordAlloc.removeDeadStructural input9898 value4953 value1 value2 = (output9898, value4954, value1)) : Flapjack.WordAlloc.removeDeadStructural input9899 value4952 value1 value2 = (output9899, value4954, value1) := by
  rw [input9899_def, output9899_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9897]
  dsimp only
  rw [child9898]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9897_skip, output9898_skip]
  kernel_rfl

theorem node9900_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9900 value4954 value1 value2 = (output9900, value4955, value1) := by
  rw [input9900_def, output9900_def]
  kernel_rfl

theorem node9901_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9901 value4955 value1 value2 = (output9901, value4956, value1) := by
  rw [input9901_def, output9901_def]
  kernel_rfl

theorem node9902_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9902 value4956 value1 value2 = (output9902, value4957, value1) := by
  rw [input9902_def, output9902_def]
  kernel_rfl

theorem node9903_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9903 value4957 value1 value2 = (output9903, value5, value1) := by
  rw [input9903_def, output9903_def]
  kernel_rfl

theorem node9904_cond_eq
    (child9902 : Flapjack.WordAlloc.removeDeadStructural input9902 value4956 value1 value2 = (output9902, value4957, value1))
    (child9903 : Flapjack.WordAlloc.removeDeadStructural input9903 value4957 value1 value2 = (output9903, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9904 value4956 value1 value2 = (output9904, value5, value1) := by
  rw [input9904_def, output9904_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9902]
  dsimp only
  rw [child9903]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9902_skip, output9903_skip]
  kernel_rfl

theorem node9905_cond_eq
    (child9901 : Flapjack.WordAlloc.removeDeadStructural input9901 value4955 value1 value2 = (output9901, value4956, value1))
    (child9904 : Flapjack.WordAlloc.removeDeadStructural input9904 value4956 value1 value2 = (output9904, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9905 value4955 value1 value2 = (output9905, value5, value1) := by
  rw [input9905_def, output9905_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9901]
  dsimp only
  rw [child9904]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9901_skip, output9904_skip]
  kernel_rfl

theorem node9906_cond_eq
    (child9900 : Flapjack.WordAlloc.removeDeadStructural input9900 value4954 value1 value2 = (output9900, value4955, value1))
    (child9905 : Flapjack.WordAlloc.removeDeadStructural input9905 value4955 value1 value2 = (output9905, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9906 value4954 value1 value2 = (output9906, value5, value1) := by
  rw [input9906_def, output9906_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9900]
  dsimp only
  rw [child9905]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9900_skip, output9905_skip]
  kernel_rfl

theorem node9907_cond_eq
    (child9899 : Flapjack.WordAlloc.removeDeadStructural input9899 value4952 value1 value2 = (output9899, value4954, value1))
    (child9906 : Flapjack.WordAlloc.removeDeadStructural input9906 value4954 value1 value2 = (output9906, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9907 value4952 value1 value2 = (output9907, value5, value1) := by
  rw [input9907_def, output9907_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9899]
  dsimp only
  rw [child9906]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9899_skip, output9906_skip]
  kernel_rfl

theorem node9908_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9908 value5 value1 value2 = (output9908, value4958, value1) := by
  rw [input9908_def, output9908_def]
  kernel_rfl

theorem node9909_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9909 value4958 value1 value2 = (output9909, value4959, value1) := by
  rw [input9909_def, output9909_def]
  kernel_rfl

theorem node9910_cond_eq
    (child9908 : Flapjack.WordAlloc.removeDeadStructural input9908 value5 value1 value2 = (output9908, value4958, value1))
    (child9909 : Flapjack.WordAlloc.removeDeadStructural input9909 value4958 value1 value2 = (output9909, value4959, value1)) : Flapjack.WordAlloc.removeDeadStructural input9910 value5 value1 value2 = (output9910, value4959, value1) := by
  rw [input9910_def, output9910_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9908]
  dsimp only
  rw [child9909]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9908_skip, output9909_skip]
  kernel_rfl

theorem node9911_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9911 value4959 value1 value2 = (output9911, value4960, value1) := by
  rw [input9911_def, output9911_def]
  kernel_rfl

theorem node9912_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9912 value4960 value1 value2 = (output9912, value4960, value1) := by
  rw [input9912_def, output9912_def]
  kernel_rfl

theorem node9913_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9913 value4960 value1 value2 = (output9913, value4961, value1) := by
  rw [input9913_def, output9913_def]
  kernel_rfl

theorem node9914_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9914 value4961 value1 value2 = (output9914, value4962, value1) := by
  rw [input9914_def, output9914_def]
  kernel_rfl

theorem node9915_cond_eq
    (child9913 : Flapjack.WordAlloc.removeDeadStructural input9913 value4960 value1 value2 = (output9913, value4961, value1))
    (child9914 : Flapjack.WordAlloc.removeDeadStructural input9914 value4961 value1 value2 = (output9914, value4962, value1)) : Flapjack.WordAlloc.removeDeadStructural input9915 value4960 value1 value2 = (output9915, value4962, value1) := by
  rw [input9915_def, output9915_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9913]
  dsimp only
  rw [child9914]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9913_skip, output9914_skip]
  kernel_rfl

theorem node9916_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9916 value4962 value1 value2 = (output9916, value4963, value1) := by
  rw [input9916_def, output9916_def]
  kernel_rfl

theorem node9917_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9917 value4963 value1 value2 = (output9917, value4964, value1) := by
  rw [input9917_def, output9917_def]
  kernel_rfl

theorem node9918_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9918 value4964 value1 value2 = (output9918, value4965, value1) := by
  rw [input9918_def, output9918_def]
  kernel_rfl

theorem node9919_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9919 value4965 value1 value2 = (output9919, value5, value1) := by
  rw [input9919_def, output9919_def]
  kernel_rfl

theorem node9920_cond_eq
    (child9918 : Flapjack.WordAlloc.removeDeadStructural input9918 value4964 value1 value2 = (output9918, value4965, value1))
    (child9919 : Flapjack.WordAlloc.removeDeadStructural input9919 value4965 value1 value2 = (output9919, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9920 value4964 value1 value2 = (output9920, value5, value1) := by
  rw [input9920_def, output9920_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9918]
  dsimp only
  rw [child9919]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9918_skip, output9919_skip]
  kernel_rfl

theorem node9921_cond_eq
    (child9917 : Flapjack.WordAlloc.removeDeadStructural input9917 value4963 value1 value2 = (output9917, value4964, value1))
    (child9920 : Flapjack.WordAlloc.removeDeadStructural input9920 value4964 value1 value2 = (output9920, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9921 value4963 value1 value2 = (output9921, value5, value1) := by
  rw [input9921_def, output9921_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9917]
  dsimp only
  rw [child9920]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9917_skip, output9920_skip]
  kernel_rfl

theorem node9922_cond_eq
    (child9916 : Flapjack.WordAlloc.removeDeadStructural input9916 value4962 value1 value2 = (output9916, value4963, value1))
    (child9921 : Flapjack.WordAlloc.removeDeadStructural input9921 value4963 value1 value2 = (output9921, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9922 value4962 value1 value2 = (output9922, value5, value1) := by
  rw [input9922_def, output9922_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9916]
  dsimp only
  rw [child9921]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9916_skip, output9921_skip]
  kernel_rfl

theorem node9923_cond_eq
    (child9915 : Flapjack.WordAlloc.removeDeadStructural input9915 value4960 value1 value2 = (output9915, value4962, value1))
    (child9922 : Flapjack.WordAlloc.removeDeadStructural input9922 value4962 value1 value2 = (output9922, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9923 value4960 value1 value2 = (output9923, value5, value1) := by
  rw [input9923_def, output9923_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9915]
  dsimp only
  rw [child9922]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9915_skip, output9922_skip]
  kernel_rfl

theorem node9924_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9924 value5 value1 value2 = (output9924, value4966, value1) := by
  rw [input9924_def, output9924_def]
  kernel_rfl

theorem node9925_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9925 value4966 value1 value2 = (output9925, value4967, value1) := by
  rw [input9925_def, output9925_def]
  kernel_rfl

theorem node9926_cond_eq
    (child9924 : Flapjack.WordAlloc.removeDeadStructural input9924 value5 value1 value2 = (output9924, value4966, value1))
    (child9925 : Flapjack.WordAlloc.removeDeadStructural input9925 value4966 value1 value2 = (output9925, value4967, value1)) : Flapjack.WordAlloc.removeDeadStructural input9926 value5 value1 value2 = (output9926, value4967, value1) := by
  rw [input9926_def, output9926_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9924]
  dsimp only
  rw [child9925]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9924_skip, output9925_skip]
  kernel_rfl

theorem node9927_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9927 value4967 value1 value2 = (output9927, value4968, value1) := by
  rw [input9927_def, output9927_def]
  kernel_rfl

theorem node9928_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9928 value4968 value1 value2 = (output9928, value4968, value1) := by
  rw [input9928_def, output9928_def]
  kernel_rfl

theorem node9929_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9929 value4968 value1 value2 = (output9929, value4969, value1) := by
  rw [input9929_def, output9929_def]
  kernel_rfl

theorem node9930_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9930 value4969 value1 value2 = (output9930, value4970, value1) := by
  rw [input9930_def, output9930_def]
  kernel_rfl

theorem node9931_cond_eq
    (child9929 : Flapjack.WordAlloc.removeDeadStructural input9929 value4968 value1 value2 = (output9929, value4969, value1))
    (child9930 : Flapjack.WordAlloc.removeDeadStructural input9930 value4969 value1 value2 = (output9930, value4970, value1)) : Flapjack.WordAlloc.removeDeadStructural input9931 value4968 value1 value2 = (output9931, value4970, value1) := by
  rw [input9931_def, output9931_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9929]
  dsimp only
  rw [child9930]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9929_skip, output9930_skip]
  kernel_rfl

theorem node9932_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9932 value4970 value1 value2 = (output9932, value4971, value1) := by
  rw [input9932_def, output9932_def]
  kernel_rfl

theorem node9933_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9933 value4971 value1 value2 = (output9933, value4972, value1) := by
  rw [input9933_def, output9933_def]
  kernel_rfl

theorem node9934_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9934 value4972 value1 value2 = (output9934, value4973, value1) := by
  rw [input9934_def, output9934_def]
  kernel_rfl

theorem node9935_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9935 value4973 value1 value2 = (output9935, value5, value1) := by
  rw [input9935_def, output9935_def]
  kernel_rfl

theorem node9936_cond_eq
    (child9934 : Flapjack.WordAlloc.removeDeadStructural input9934 value4972 value1 value2 = (output9934, value4973, value1))
    (child9935 : Flapjack.WordAlloc.removeDeadStructural input9935 value4973 value1 value2 = (output9935, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9936 value4972 value1 value2 = (output9936, value5, value1) := by
  rw [input9936_def, output9936_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9934]
  dsimp only
  rw [child9935]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9934_skip, output9935_skip]
  kernel_rfl

theorem node9937_cond_eq
    (child9933 : Flapjack.WordAlloc.removeDeadStructural input9933 value4971 value1 value2 = (output9933, value4972, value1))
    (child9936 : Flapjack.WordAlloc.removeDeadStructural input9936 value4972 value1 value2 = (output9936, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9937 value4971 value1 value2 = (output9937, value5, value1) := by
  rw [input9937_def, output9937_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9933]
  dsimp only
  rw [child9936]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9933_skip, output9936_skip]
  kernel_rfl

theorem node9938_cond_eq
    (child9932 : Flapjack.WordAlloc.removeDeadStructural input9932 value4970 value1 value2 = (output9932, value4971, value1))
    (child9937 : Flapjack.WordAlloc.removeDeadStructural input9937 value4971 value1 value2 = (output9937, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9938 value4970 value1 value2 = (output9938, value5, value1) := by
  rw [input9938_def, output9938_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9932]
  dsimp only
  rw [child9937]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9932_skip, output9937_skip]
  kernel_rfl

theorem node9939_cond_eq
    (child9931 : Flapjack.WordAlloc.removeDeadStructural input9931 value4968 value1 value2 = (output9931, value4970, value1))
    (child9938 : Flapjack.WordAlloc.removeDeadStructural input9938 value4970 value1 value2 = (output9938, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9939 value4968 value1 value2 = (output9939, value5, value1) := by
  rw [input9939_def, output9939_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9931]
  dsimp only
  rw [child9938]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9931_skip, output9938_skip]
  kernel_rfl

theorem node9940_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9940 value5 value1 value2 = (output9940, value4974, value1) := by
  rw [input9940_def, output9940_def]
  kernel_rfl

theorem node9941_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9941 value4974 value1 value2 = (output9941, value4975, value1) := by
  rw [input9941_def, output9941_def]
  kernel_rfl

theorem node9942_cond_eq
    (child9940 : Flapjack.WordAlloc.removeDeadStructural input9940 value5 value1 value2 = (output9940, value4974, value1))
    (child9941 : Flapjack.WordAlloc.removeDeadStructural input9941 value4974 value1 value2 = (output9941, value4975, value1)) : Flapjack.WordAlloc.removeDeadStructural input9942 value5 value1 value2 = (output9942, value4975, value1) := by
  rw [input9942_def, output9942_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9940]
  dsimp only
  rw [child9941]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9940_skip, output9941_skip]
  kernel_rfl

theorem node9943_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9943 value4975 value1 value2 = (output9943, value4976, value1) := by
  rw [input9943_def, output9943_def]
  kernel_rfl

theorem node9944_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9944 value4976 value1 value2 = (output9944, value4976, value1) := by
  rw [input9944_def, output9944_def]
  kernel_rfl

theorem node9945_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9945 value4976 value1 value2 = (output9945, value4977, value1) := by
  rw [input9945_def, output9945_def]
  kernel_rfl

theorem node9946_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9946 value4977 value1 value2 = (output9946, value4978, value1) := by
  rw [input9946_def, output9946_def]
  kernel_rfl

theorem node9947_cond_eq
    (child9945 : Flapjack.WordAlloc.removeDeadStructural input9945 value4976 value1 value2 = (output9945, value4977, value1))
    (child9946 : Flapjack.WordAlloc.removeDeadStructural input9946 value4977 value1 value2 = (output9946, value4978, value1)) : Flapjack.WordAlloc.removeDeadStructural input9947 value4976 value1 value2 = (output9947, value4978, value1) := by
  rw [input9947_def, output9947_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9945]
  dsimp only
  rw [child9946]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9945_skip, output9946_skip]
  kernel_rfl

theorem node9948_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9948 value4978 value1 value2 = (output9948, value4979, value1) := by
  rw [input9948_def, output9948_def]
  kernel_rfl

theorem node9949_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9949 value4979 value1 value2 = (output9949, value4980, value1) := by
  rw [input9949_def, output9949_def]
  kernel_rfl

theorem node9950_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9950 value4980 value1 value2 = (output9950, value4981, value1) := by
  rw [input9950_def, output9950_def]
  kernel_rfl

theorem node9951_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9951 value4981 value1 value2 = (output9951, value5, value1) := by
  rw [input9951_def, output9951_def]
  kernel_rfl

theorem node9952_cond_eq
    (child9950 : Flapjack.WordAlloc.removeDeadStructural input9950 value4980 value1 value2 = (output9950, value4981, value1))
    (child9951 : Flapjack.WordAlloc.removeDeadStructural input9951 value4981 value1 value2 = (output9951, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9952 value4980 value1 value2 = (output9952, value5, value1) := by
  rw [input9952_def, output9952_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9950]
  dsimp only
  rw [child9951]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9950_skip, output9951_skip]
  kernel_rfl

theorem node9953_cond_eq
    (child9949 : Flapjack.WordAlloc.removeDeadStructural input9949 value4979 value1 value2 = (output9949, value4980, value1))
    (child9952 : Flapjack.WordAlloc.removeDeadStructural input9952 value4980 value1 value2 = (output9952, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9953 value4979 value1 value2 = (output9953, value5, value1) := by
  rw [input9953_def, output9953_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9949]
  dsimp only
  rw [child9952]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9949_skip, output9952_skip]
  kernel_rfl

theorem node9954_cond_eq
    (child9948 : Flapjack.WordAlloc.removeDeadStructural input9948 value4978 value1 value2 = (output9948, value4979, value1))
    (child9953 : Flapjack.WordAlloc.removeDeadStructural input9953 value4979 value1 value2 = (output9953, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9954 value4978 value1 value2 = (output9954, value5, value1) := by
  rw [input9954_def, output9954_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9948]
  dsimp only
  rw [child9953]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9948_skip, output9953_skip]
  kernel_rfl

theorem node9955_cond_eq
    (child9947 : Flapjack.WordAlloc.removeDeadStructural input9947 value4976 value1 value2 = (output9947, value4978, value1))
    (child9954 : Flapjack.WordAlloc.removeDeadStructural input9954 value4978 value1 value2 = (output9954, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9955 value4976 value1 value2 = (output9955, value5, value1) := by
  rw [input9955_def, output9955_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9947]
  dsimp only
  rw [child9954]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9947_skip, output9954_skip]
  kernel_rfl

theorem node9956_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9956 value5 value1 value2 = (output9956, value4982, value1) := by
  rw [input9956_def, output9956_def]
  kernel_rfl

theorem node9957_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9957 value4982 value1 value2 = (output9957, value4983, value1) := by
  rw [input9957_def, output9957_def]
  kernel_rfl

theorem node9958_cond_eq
    (child9956 : Flapjack.WordAlloc.removeDeadStructural input9956 value5 value1 value2 = (output9956, value4982, value1))
    (child9957 : Flapjack.WordAlloc.removeDeadStructural input9957 value4982 value1 value2 = (output9957, value4983, value1)) : Flapjack.WordAlloc.removeDeadStructural input9958 value5 value1 value2 = (output9958, value4983, value1) := by
  rw [input9958_def, output9958_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9956]
  dsimp only
  rw [child9957]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9956_skip, output9957_skip]
  kernel_rfl

theorem node9959_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9959 value4983 value1 value2 = (output9959, value4984, value1) := by
  rw [input9959_def, output9959_def]
  kernel_rfl

theorem node9960_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9960 value4984 value1 value2 = (output9960, value4984, value1) := by
  rw [input9960_def, output9960_def]
  kernel_rfl

theorem node9961_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9961 value4984 value1 value2 = (output9961, value4985, value1) := by
  rw [input9961_def, output9961_def]
  kernel_rfl

theorem node9962_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9962 value4985 value1 value2 = (output9962, value4986, value1) := by
  rw [input9962_def, output9962_def]
  kernel_rfl

theorem node9963_cond_eq
    (child9961 : Flapjack.WordAlloc.removeDeadStructural input9961 value4984 value1 value2 = (output9961, value4985, value1))
    (child9962 : Flapjack.WordAlloc.removeDeadStructural input9962 value4985 value1 value2 = (output9962, value4986, value1)) : Flapjack.WordAlloc.removeDeadStructural input9963 value4984 value1 value2 = (output9963, value4986, value1) := by
  rw [input9963_def, output9963_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9961]
  dsimp only
  rw [child9962]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9961_skip, output9962_skip]
  kernel_rfl

theorem node9964_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9964 value4986 value1 value2 = (output9964, value4987, value1) := by
  rw [input9964_def, output9964_def]
  kernel_rfl

theorem node9965_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9965 value4987 value1 value2 = (output9965, value4988, value1) := by
  rw [input9965_def, output9965_def]
  kernel_rfl

theorem node9966_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9966 value4988 value1 value2 = (output9966, value4989, value1) := by
  rw [input9966_def, output9966_def]
  kernel_rfl

theorem node9967_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9967 value4989 value1 value2 = (output9967, value5, value1) := by
  rw [input9967_def, output9967_def]
  kernel_rfl

theorem node9968_cond_eq
    (child9966 : Flapjack.WordAlloc.removeDeadStructural input9966 value4988 value1 value2 = (output9966, value4989, value1))
    (child9967 : Flapjack.WordAlloc.removeDeadStructural input9967 value4989 value1 value2 = (output9967, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9968 value4988 value1 value2 = (output9968, value5, value1) := by
  rw [input9968_def, output9968_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9966]
  dsimp only
  rw [child9967]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9966_skip, output9967_skip]
  kernel_rfl

theorem node9969_cond_eq
    (child9965 : Flapjack.WordAlloc.removeDeadStructural input9965 value4987 value1 value2 = (output9965, value4988, value1))
    (child9968 : Flapjack.WordAlloc.removeDeadStructural input9968 value4988 value1 value2 = (output9968, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9969 value4987 value1 value2 = (output9969, value5, value1) := by
  rw [input9969_def, output9969_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9965]
  dsimp only
  rw [child9968]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9965_skip, output9968_skip]
  kernel_rfl

theorem node9970_cond_eq
    (child9964 : Flapjack.WordAlloc.removeDeadStructural input9964 value4986 value1 value2 = (output9964, value4987, value1))
    (child9969 : Flapjack.WordAlloc.removeDeadStructural input9969 value4987 value1 value2 = (output9969, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9970 value4986 value1 value2 = (output9970, value5, value1) := by
  rw [input9970_def, output9970_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9964]
  dsimp only
  rw [child9969]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9964_skip, output9969_skip]
  kernel_rfl

theorem node9971_cond_eq
    (child9963 : Flapjack.WordAlloc.removeDeadStructural input9963 value4984 value1 value2 = (output9963, value4986, value1))
    (child9970 : Flapjack.WordAlloc.removeDeadStructural input9970 value4986 value1 value2 = (output9970, value5, value1)) : Flapjack.WordAlloc.removeDeadStructural input9971 value4984 value1 value2 = (output9971, value5, value1) := by
  rw [input9971_def, output9971_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9963]
  dsimp only
  rw [child9970]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9963_skip, output9970_skip]
  kernel_rfl

theorem node9972_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9972 value5 value1 value2 = (output9972, value4990, value1) := by
  rw [input9972_def, output9972_def]
  kernel_rfl

theorem node9973_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9973 value4990 value1 value2 = (output9973, value4991, value1) := by
  rw [input9973_def, output9973_def]
  kernel_rfl

theorem node9974_cond_eq
    (child9972 : Flapjack.WordAlloc.removeDeadStructural input9972 value5 value1 value2 = (output9972, value4990, value1))
    (child9973 : Flapjack.WordAlloc.removeDeadStructural input9973 value4990 value1 value2 = (output9973, value4991, value1)) : Flapjack.WordAlloc.removeDeadStructural input9974 value5 value1 value2 = (output9974, value4991, value1) := by
  rw [input9974_def, output9974_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9972]
  dsimp only
  rw [child9973]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9972_skip, output9973_skip]
  kernel_rfl

theorem node9975_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9975 value4991 value1 value2 = (output9975, value4992, value1) := by
  rw [input9975_def, output9975_def]
  kernel_rfl

theorem node9976_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9976 value4992 value1 value2 = (output9976, value4992, value1) := by
  rw [input9976_def, output9976_def]
  kernel_rfl

theorem node9977_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9977 value4992 value1 value2 = (output9977, value4993, value1) := by
  rw [input9977_def, output9977_def]
  kernel_rfl

theorem node9978_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9978 value4993 value1 value2 = (output9978, value4994, value1) := by
  rw [input9978_def, output9978_def]
  kernel_rfl

theorem node9979_cond_eq
    (child9977 : Flapjack.WordAlloc.removeDeadStructural input9977 value4992 value1 value2 = (output9977, value4993, value1))
    (child9978 : Flapjack.WordAlloc.removeDeadStructural input9978 value4993 value1 value2 = (output9978, value4994, value1)) : Flapjack.WordAlloc.removeDeadStructural input9979 value4992 value1 value2 = (output9979, value4994, value1) := by
  rw [input9979_def, output9979_def]
  rw [Flapjack.WordAlloc.removeDeadStructural]
  rw [child9977]
  dsimp only
  rw [child9978]
  dsimp only
  try simp only [Flapjack.WordAlloc.joinSeq, Flapjack.WordAlloc.joinIte, output9977_skip, output9978_skip]
  kernel_rfl

theorem node9980_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9980 value4994 value1 value2 = (output9980, value4995, value1) := by
  rw [input9980_def, output9980_def]
  kernel_rfl

theorem node9981_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9981 value4995 value1 value2 = (output9981, value4996, value1) := by
  rw [input9981_def, output9981_def]
  kernel_rfl

theorem node9982_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9982 value4996 value1 value2 = (output9982, value4997, value1) := by
  rw [input9982_def, output9982_def]
  kernel_rfl

theorem node9983_cond_eq : Flapjack.WordAlloc.removeDeadStructural input9983 value4997 value1 value2 = (output9983, value5, value1) := by
  rw [input9983_def, output9983_def]
  kernel_rfl

#print axioms node9983_cond_eq
end InitECandidate.Proofs.DeadStages713.Parallel
