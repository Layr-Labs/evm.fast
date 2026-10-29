import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages713.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages713
theorem tree6912_agree_conditional
    (child0 : tree6910 = literal6910)
    (child1 : tree6911 = literal6911) : tree6912 = literal6912 := by
  rw [tree6912_def, child0, child1]
  rfl
theorem node6912_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6910 live6910 coloured6910 = result6910)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6911 live6911 coloured6911 = result6911) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6912 live6912 coloured6912 = result6912 := by
  rw [tree6912_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6910 coloured6910 at child
  try dsimp only [live6912, coloured6912]
  rw [child]
  dsimp only [result6910]
  have child := child1
  unfold live6911 coloured6911 at child
  try dsimp only [live6912, coloured6912]
  rw [child]
  dsimp only [result6911]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6913_agree_conditional : tree6913 = literal6913 := by
  rw [tree6913_def]
  rfl
theorem node6913_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6913 live6913 coloured6913 = result6913 := by
  rw [tree6913_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6914_agree_conditional
    (child0 : tree6912 = literal6912)
    (child1 : tree6913 = literal6913) : tree6914 = literal6914 := by
  rw [tree6914_def, child0, child1]
  rfl
theorem node6914_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6912 live6912 coloured6912 = result6912)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6913 live6913 coloured6913 = result6913) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6914 live6914 coloured6914 = result6914 := by
  rw [tree6914_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6912 coloured6912 at child
  try dsimp only [live6914, coloured6914]
  rw [child]
  dsimp only [result6912]
  have child := child1
  unfold live6913 coloured6913 at child
  try dsimp only [live6914, coloured6914]
  rw [child]
  dsimp only [result6913]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6915_agree_conditional : tree6915 = literal6915 := by
  rw [tree6915_def]
  rfl
theorem node6915_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6915 live6915 coloured6915 = result6915 := by
  rw [tree6915_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6916_agree_conditional
    (child0 : tree6914 = literal6914)
    (child1 : tree6915 = literal6915) : tree6916 = literal6916 := by
  rw [tree6916_def, child0, child1]
  rfl
theorem node6916_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6914 live6914 coloured6914 = result6914)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6915 live6915 coloured6915 = result6915) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6916 live6916 coloured6916 = result6916 := by
  rw [tree6916_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6914 coloured6914 at child
  try dsimp only [live6916, coloured6916]
  rw [child]
  dsimp only [result6914]
  have child := child1
  unfold live6915 coloured6915 at child
  try dsimp only [live6916, coloured6916]
  rw [child]
  dsimp only [result6915]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6917_agree_conditional : tree6917 = literal6917 := by
  rw [tree6917_def]
  rfl
theorem node6917_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6917 live6917 coloured6917 = result6917 := by
  rw [tree6917_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6918_agree_conditional
    (child0 : tree6916 = literal6916)
    (child1 : tree6917 = literal6917) : tree6918 = literal6918 := by
  rw [tree6918_def, child0, child1]
  rfl
theorem node6918_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6916 live6916 coloured6916 = result6916)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6917 live6917 coloured6917 = result6917) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6918 live6918 coloured6918 = result6918 := by
  rw [tree6918_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6916 coloured6916 at child
  try dsimp only [live6918, coloured6918]
  rw [child]
  dsimp only [result6916]
  have child := child1
  unfold live6917 coloured6917 at child
  try dsimp only [live6918, coloured6918]
  rw [child]
  dsimp only [result6917]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6919_agree_conditional : tree6919 = literal6919 := by
  rw [tree6919_def]
  rfl
theorem node6919_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6919 live6919 coloured6919 = result6919 := by
  rw [tree6919_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6920_agree_conditional
    (child0 : tree6918 = literal6918)
    (child1 : tree6919 = literal6919) : tree6920 = literal6920 := by
  rw [tree6920_def, child0, child1]
  rfl
theorem node6920_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6918 live6918 coloured6918 = result6918)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6919 live6919 coloured6919 = result6919) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6920 live6920 coloured6920 = result6920 := by
  rw [tree6920_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6918 coloured6918 at child
  try dsimp only [live6920, coloured6920]
  rw [child]
  dsimp only [result6918]
  have child := child1
  unfold live6919 coloured6919 at child
  try dsimp only [live6920, coloured6920]
  rw [child]
  dsimp only [result6919]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6921_agree_conditional : tree6921 = literal6921 := by
  rw [tree6921_def]
  rfl
theorem node6921_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6921 live6921 coloured6921 = result6921 := by
  rw [tree6921_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6922_agree_conditional
    (child0 : tree6920 = literal6920)
    (child1 : tree6921 = literal6921) : tree6922 = literal6922 := by
  rw [tree6922_def, child0, child1]
  rfl
theorem node6922_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6920 live6920 coloured6920 = result6920)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6921 live6921 coloured6921 = result6921) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6922 live6922 coloured6922 = result6922 := by
  rw [tree6922_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6920 coloured6920 at child
  try dsimp only [live6922, coloured6922]
  rw [child]
  dsimp only [result6920]
  have child := child1
  unfold live6921 coloured6921 at child
  try dsimp only [live6922, coloured6922]
  rw [child]
  dsimp only [result6921]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6923_agree_conditional : tree6923 = literal6923 := by
  rw [tree6923_def]
  rfl
theorem node6923_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6923 live6923 coloured6923 = result6923 := by
  rw [tree6923_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6924_agree_conditional
    (child0 : tree6922 = literal6922)
    (child1 : tree6923 = literal6923) : tree6924 = literal6924 := by
  rw [tree6924_def, child0, child1]
  rfl
theorem node6924_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6922 live6922 coloured6922 = result6922)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6923 live6923 coloured6923 = result6923) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6924 live6924 coloured6924 = result6924 := by
  rw [tree6924_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6922 coloured6922 at child
  try dsimp only [live6924, coloured6924]
  rw [child]
  dsimp only [result6922]
  have child := child1
  unfold live6923 coloured6923 at child
  try dsimp only [live6924, coloured6924]
  rw [child]
  dsimp only [result6923]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6925_agree_conditional : tree6925 = literal6925 := by
  rw [tree6925_def]
  rfl
theorem node6925_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6925 live6925 coloured6925 = result6925 := by
  rw [tree6925_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6926_agree_conditional
    (child0 : tree6924 = literal6924)
    (child1 : tree6925 = literal6925) : tree6926 = literal6926 := by
  rw [tree6926_def, child0, child1]
  rfl
theorem node6926_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6924 live6924 coloured6924 = result6924)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6925 live6925 coloured6925 = result6925) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6926 live6926 coloured6926 = result6926 := by
  rw [tree6926_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6924 coloured6924 at child
  try dsimp only [live6926, coloured6926]
  rw [child]
  dsimp only [result6924]
  have child := child1
  unfold live6925 coloured6925 at child
  try dsimp only [live6926, coloured6926]
  rw [child]
  dsimp only [result6925]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6927_agree_conditional : tree6927 = literal6927 := by
  rw [tree6927_def]
  rfl
theorem node6927_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6927 live6927 coloured6927 = result6927 := by
  rw [tree6927_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6928_agree_conditional
    (child0 : tree6926 = literal6926)
    (child1 : tree6927 = literal6927) : tree6928 = literal6928 := by
  rw [tree6928_def, child0, child1]
  rfl
theorem node6928_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6926 live6926 coloured6926 = result6926)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6927 live6927 coloured6927 = result6927) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6928 live6928 coloured6928 = result6928 := by
  rw [tree6928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6926 coloured6926 at child
  try dsimp only [live6928, coloured6928]
  rw [child]
  dsimp only [result6926]
  have child := child1
  unfold live6927 coloured6927 at child
  try dsimp only [live6928, coloured6928]
  rw [child]
  dsimp only [result6927]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6929_agree_conditional : tree6929 = literal6929 := by
  rw [tree6929_def]
  rfl
theorem node6929_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6929 live6929 coloured6929 = result6929 := by
  rw [tree6929_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6930_agree_conditional
    (child0 : tree6928 = literal6928)
    (child1 : tree6929 = literal6929) : tree6930 = literal6930 := by
  rw [tree6930_def, child0, child1]
  rfl
theorem node6930_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6928 live6928 coloured6928 = result6928)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6929 live6929 coloured6929 = result6929) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6930 live6930 coloured6930 = result6930 := by
  rw [tree6930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6928 coloured6928 at child
  try dsimp only [live6930, coloured6930]
  rw [child]
  dsimp only [result6928]
  have child := child1
  unfold live6929 coloured6929 at child
  try dsimp only [live6930, coloured6930]
  rw [child]
  dsimp only [result6929]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6931_agree_conditional : tree6931 = literal6931 := by
  rw [tree6931_def]
  rfl
theorem node6931_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6931 live6931 coloured6931 = result6931 := by
  rw [tree6931_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6932_agree_conditional
    (child0 : tree6930 = literal6930)
    (child1 : tree6931 = literal6931) : tree6932 = literal6932 := by
  rw [tree6932_def, child0, child1]
  rfl
theorem node6932_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6930 live6930 coloured6930 = result6930)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6931 live6931 coloured6931 = result6931) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6932 live6932 coloured6932 = result6932 := by
  rw [tree6932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6930 coloured6930 at child
  try dsimp only [live6932, coloured6932]
  rw [child]
  dsimp only [result6930]
  have child := child1
  unfold live6931 coloured6931 at child
  try dsimp only [live6932, coloured6932]
  rw [child]
  dsimp only [result6931]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6933_agree_conditional : tree6933 = literal6933 := by
  rw [tree6933_def]
  rfl
theorem node6933_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6933 live6933 coloured6933 = result6933 := by
  rw [tree6933_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6934_agree_conditional
    (child0 : tree6932 = literal6932)
    (child1 : tree6933 = literal6933) : tree6934 = literal6934 := by
  rw [tree6934_def, child0, child1]
  rfl
theorem node6934_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6932 live6932 coloured6932 = result6932)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6933 live6933 coloured6933 = result6933) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6934 live6934 coloured6934 = result6934 := by
  rw [tree6934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6932 coloured6932 at child
  try dsimp only [live6934, coloured6934]
  rw [child]
  dsimp only [result6932]
  have child := child1
  unfold live6933 coloured6933 at child
  try dsimp only [live6934, coloured6934]
  rw [child]
  dsimp only [result6933]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6935_agree_conditional : tree6935 = literal6935 := by
  rw [tree6935_def]
  rfl
theorem node6935_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6935 live6935 coloured6935 = result6935 := by
  rw [tree6935_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6936_agree_conditional
    (child0 : tree6934 = literal6934)
    (child1 : tree6935 = literal6935) : tree6936 = literal6936 := by
  rw [tree6936_def, child0, child1]
  rfl
theorem node6936_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6934 live6934 coloured6934 = result6934)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6935 live6935 coloured6935 = result6935) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6936 live6936 coloured6936 = result6936 := by
  rw [tree6936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6934 coloured6934 at child
  try dsimp only [live6936, coloured6936]
  rw [child]
  dsimp only [result6934]
  have child := child1
  unfold live6935 coloured6935 at child
  try dsimp only [live6936, coloured6936]
  rw [child]
  dsimp only [result6935]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6937_agree_conditional : tree6937 = literal6937 := by
  rw [tree6937_def]
  rfl
theorem node6937_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6937 live6937 coloured6937 = result6937 := by
  rw [tree6937_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6938_agree_conditional
    (child0 : tree6936 = literal6936)
    (child1 : tree6937 = literal6937) : tree6938 = literal6938 := by
  rw [tree6938_def, child0, child1]
  rfl
theorem node6938_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6936 live6936 coloured6936 = result6936)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6937 live6937 coloured6937 = result6937) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6938 live6938 coloured6938 = result6938 := by
  rw [tree6938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6936 coloured6936 at child
  try dsimp only [live6938, coloured6938]
  rw [child]
  dsimp only [result6936]
  have child := child1
  unfold live6937 coloured6937 at child
  try dsimp only [live6938, coloured6938]
  rw [child]
  dsimp only [result6937]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6939_agree_conditional : tree6939 = literal6939 := by
  rw [tree6939_def]
  rfl
theorem node6939_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6939 live6939 coloured6939 = result6939 := by
  rw [tree6939_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6940_agree_conditional
    (child0 : tree6938 = literal6938)
    (child1 : tree6939 = literal6939) : tree6940 = literal6940 := by
  rw [tree6940_def, child0, child1]
  rfl
theorem node6940_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6938 live6938 coloured6938 = result6938)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6939 live6939 coloured6939 = result6939) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6940 live6940 coloured6940 = result6940 := by
  rw [tree6940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6938 coloured6938 at child
  try dsimp only [live6940, coloured6940]
  rw [child]
  dsimp only [result6938]
  have child := child1
  unfold live6939 coloured6939 at child
  try dsimp only [live6940, coloured6940]
  rw [child]
  dsimp only [result6939]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6941_agree_conditional : tree6941 = literal6941 := by
  rw [tree6941_def]
  rfl
theorem node6941_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6941 live6941 coloured6941 = result6941 := by
  rw [tree6941_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6942_agree_conditional
    (child0 : tree6940 = literal6940)
    (child1 : tree6941 = literal6941) : tree6942 = literal6942 := by
  rw [tree6942_def, child0, child1]
  rfl
theorem node6942_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6940 live6940 coloured6940 = result6940)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6941 live6941 coloured6941 = result6941) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6942 live6942 coloured6942 = result6942 := by
  rw [tree6942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6940 coloured6940 at child
  try dsimp only [live6942, coloured6942]
  rw [child]
  dsimp only [result6940]
  have child := child1
  unfold live6941 coloured6941 at child
  try dsimp only [live6942, coloured6942]
  rw [child]
  dsimp only [result6941]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6943_agree_conditional : tree6943 = literal6943 := by
  rw [tree6943_def]
  rfl
theorem node6943_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6943 live6943 coloured6943 = result6943 := by
  rw [tree6943_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6944_agree_conditional
    (child0 : tree6942 = literal6942)
    (child1 : tree6943 = literal6943) : tree6944 = literal6944 := by
  rw [tree6944_def, child0, child1]
  rfl
theorem node6944_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6942 live6942 coloured6942 = result6942)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6943 live6943 coloured6943 = result6943) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6944 live6944 coloured6944 = result6944 := by
  rw [tree6944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6942 coloured6942 at child
  try dsimp only [live6944, coloured6944]
  rw [child]
  dsimp only [result6942]
  have child := child1
  unfold live6943 coloured6943 at child
  try dsimp only [live6944, coloured6944]
  rw [child]
  dsimp only [result6943]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6945_agree_conditional : tree6945 = literal6945 := by
  rw [tree6945_def]
  rfl
theorem node6945_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6945 live6945 coloured6945 = result6945 := by
  rw [tree6945_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6946_agree_conditional
    (child0 : tree6944 = literal6944)
    (child1 : tree6945 = literal6945) : tree6946 = literal6946 := by
  rw [tree6946_def, child0, child1]
  rfl
theorem node6946_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6944 live6944 coloured6944 = result6944)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6945 live6945 coloured6945 = result6945) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6946 live6946 coloured6946 = result6946 := by
  rw [tree6946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6944 coloured6944 at child
  try dsimp only [live6946, coloured6946]
  rw [child]
  dsimp only [result6944]
  have child := child1
  unfold live6945 coloured6945 at child
  try dsimp only [live6946, coloured6946]
  rw [child]
  dsimp only [result6945]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6947_agree_conditional : tree6947 = literal6947 := by
  rw [tree6947_def]
  rfl
theorem node6947_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6947 live6947 coloured6947 = result6947 := by
  rw [tree6947_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6948_agree_conditional
    (child0 : tree6946 = literal6946)
    (child1 : tree6947 = literal6947) : tree6948 = literal6948 := by
  rw [tree6948_def, child0, child1]
  rfl
theorem node6948_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6946 live6946 coloured6946 = result6946)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6947 live6947 coloured6947 = result6947) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6948 live6948 coloured6948 = result6948 := by
  rw [tree6948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6946 coloured6946 at child
  try dsimp only [live6948, coloured6948]
  rw [child]
  dsimp only [result6946]
  have child := child1
  unfold live6947 coloured6947 at child
  try dsimp only [live6948, coloured6948]
  rw [child]
  dsimp only [result6947]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6949_agree_conditional : tree6949 = literal6949 := by
  rw [tree6949_def]
  rfl
theorem node6949_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6949 live6949 coloured6949 = result6949 := by
  rw [tree6949_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6950_agree_conditional
    (child0 : tree6948 = literal6948)
    (child1 : tree6949 = literal6949) : tree6950 = literal6950 := by
  rw [tree6950_def, child0, child1]
  rfl
theorem node6950_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6948 live6948 coloured6948 = result6948)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6949 live6949 coloured6949 = result6949) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6950 live6950 coloured6950 = result6950 := by
  rw [tree6950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6948 coloured6948 at child
  try dsimp only [live6950, coloured6950]
  rw [child]
  dsimp only [result6948]
  have child := child1
  unfold live6949 coloured6949 at child
  try dsimp only [live6950, coloured6950]
  rw [child]
  dsimp only [result6949]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6951_agree_conditional : tree6951 = literal6951 := by
  rw [tree6951_def]
  rfl
theorem node6951_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6951 live6951 coloured6951 = result6951 := by
  rw [tree6951_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6952_agree_conditional
    (child0 : tree6950 = literal6950)
    (child1 : tree6951 = literal6951) : tree6952 = literal6952 := by
  rw [tree6952_def, child0, child1]
  rfl
theorem node6952_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6950 live6950 coloured6950 = result6950)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6951 live6951 coloured6951 = result6951) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6952 live6952 coloured6952 = result6952 := by
  rw [tree6952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6950 coloured6950 at child
  try dsimp only [live6952, coloured6952]
  rw [child]
  dsimp only [result6950]
  have child := child1
  unfold live6951 coloured6951 at child
  try dsimp only [live6952, coloured6952]
  rw [child]
  dsimp only [result6951]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6953_agree_conditional : tree6953 = literal6953 := by
  rw [tree6953_def]
  rfl
theorem node6953_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6953 live6953 coloured6953 = result6953 := by
  rw [tree6953_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6954_agree_conditional
    (child0 : tree6952 = literal6952)
    (child1 : tree6953 = literal6953) : tree6954 = literal6954 := by
  rw [tree6954_def, child0, child1]
  rfl
theorem node6954_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6952 live6952 coloured6952 = result6952)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6953 live6953 coloured6953 = result6953) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6954 live6954 coloured6954 = result6954 := by
  rw [tree6954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6952 coloured6952 at child
  try dsimp only [live6954, coloured6954]
  rw [child]
  dsimp only [result6952]
  have child := child1
  unfold live6953 coloured6953 at child
  try dsimp only [live6954, coloured6954]
  rw [child]
  dsimp only [result6953]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6955_agree_conditional : tree6955 = literal6955 := by
  rw [tree6955_def]
  rfl
theorem node6955_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6955 live6955 coloured6955 = result6955 := by
  rw [tree6955_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6956_agree_conditional
    (child0 : tree6954 = literal6954)
    (child1 : tree6955 = literal6955) : tree6956 = literal6956 := by
  rw [tree6956_def, child0, child1]
  rfl
theorem node6956_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6954 live6954 coloured6954 = result6954)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6955 live6955 coloured6955 = result6955) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6956 live6956 coloured6956 = result6956 := by
  rw [tree6956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6954 coloured6954 at child
  try dsimp only [live6956, coloured6956]
  rw [child]
  dsimp only [result6954]
  have child := child1
  unfold live6955 coloured6955 at child
  try dsimp only [live6956, coloured6956]
  rw [child]
  dsimp only [result6955]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6957_agree_conditional : tree6957 = literal6957 := by
  rw [tree6957_def]
  rfl
theorem node6957_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6957 live6957 coloured6957 = result6957 := by
  rw [tree6957_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6958_agree_conditional
    (child0 : tree6956 = literal6956)
    (child1 : tree6957 = literal6957) : tree6958 = literal6958 := by
  rw [tree6958_def, child0, child1]
  rfl
theorem node6958_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6956 live6956 coloured6956 = result6956)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6957 live6957 coloured6957 = result6957) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6958 live6958 coloured6958 = result6958 := by
  rw [tree6958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6956 coloured6956 at child
  try dsimp only [live6958, coloured6958]
  rw [child]
  dsimp only [result6956]
  have child := child1
  unfold live6957 coloured6957 at child
  try dsimp only [live6958, coloured6958]
  rw [child]
  dsimp only [result6957]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6959_agree_conditional : tree6959 = literal6959 := by
  rw [tree6959_def]
  rfl
theorem node6959_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6959 live6959 coloured6959 = result6959 := by
  rw [tree6959_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6960_agree_conditional
    (child0 : tree6958 = literal6958)
    (child1 : tree6959 = literal6959) : tree6960 = literal6960 := by
  rw [tree6960_def, child0, child1]
  rfl
theorem node6960_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6958 live6958 coloured6958 = result6958)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6959 live6959 coloured6959 = result6959) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6960 live6960 coloured6960 = result6960 := by
  rw [tree6960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6958 coloured6958 at child
  try dsimp only [live6960, coloured6960]
  rw [child]
  dsimp only [result6958]
  have child := child1
  unfold live6959 coloured6959 at child
  try dsimp only [live6960, coloured6960]
  rw [child]
  dsimp only [result6959]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6961_agree_conditional : tree6961 = literal6961 := by
  rw [tree6961_def]
  rfl
theorem node6961_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6961 live6961 coloured6961 = result6961 := by
  rw [tree6961_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6962_agree_conditional
    (child0 : tree6960 = literal6960)
    (child1 : tree6961 = literal6961) : tree6962 = literal6962 := by
  rw [tree6962_def, child0, child1]
  rfl
theorem node6962_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6960 live6960 coloured6960 = result6960)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6961 live6961 coloured6961 = result6961) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6962 live6962 coloured6962 = result6962 := by
  rw [tree6962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6960 coloured6960 at child
  try dsimp only [live6962, coloured6962]
  rw [child]
  dsimp only [result6960]
  have child := child1
  unfold live6961 coloured6961 at child
  try dsimp only [live6962, coloured6962]
  rw [child]
  dsimp only [result6961]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6963_agree_conditional : tree6963 = literal6963 := by
  rw [tree6963_def]
  rfl
theorem node6963_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6963 live6963 coloured6963 = result6963 := by
  rw [tree6963_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6964_agree_conditional
    (child0 : tree6962 = literal6962)
    (child1 : tree6963 = literal6963) : tree6964 = literal6964 := by
  rw [tree6964_def, child0, child1]
  rfl
theorem node6964_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6962 live6962 coloured6962 = result6962)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6963 live6963 coloured6963 = result6963) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6964 live6964 coloured6964 = result6964 := by
  rw [tree6964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6962 coloured6962 at child
  try dsimp only [live6964, coloured6964]
  rw [child]
  dsimp only [result6962]
  have child := child1
  unfold live6963 coloured6963 at child
  try dsimp only [live6964, coloured6964]
  rw [child]
  dsimp only [result6963]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6965_agree_conditional : tree6965 = literal6965 := by
  rw [tree6965_def]
  rfl
theorem node6965_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6965 live6965 coloured6965 = result6965 := by
  rw [tree6965_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6966_agree_conditional
    (child0 : tree6964 = literal6964)
    (child1 : tree6965 = literal6965) : tree6966 = literal6966 := by
  rw [tree6966_def, child0, child1]
  rfl
theorem node6966_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6964 live6964 coloured6964 = result6964)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6965 live6965 coloured6965 = result6965) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6966 live6966 coloured6966 = result6966 := by
  rw [tree6966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6964 coloured6964 at child
  try dsimp only [live6966, coloured6966]
  rw [child]
  dsimp only [result6964]
  have child := child1
  unfold live6965 coloured6965 at child
  try dsimp only [live6966, coloured6966]
  rw [child]
  dsimp only [result6965]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6967_agree_conditional : tree6967 = literal6967 := by
  rw [tree6967_def]
  rfl
theorem node6967_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6967 live6967 coloured6967 = result6967 := by
  rw [tree6967_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6968_agree_conditional
    (child0 : tree6966 = literal6966)
    (child1 : tree6967 = literal6967) : tree6968 = literal6968 := by
  rw [tree6968_def, child0, child1]
  rfl
theorem node6968_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6966 live6966 coloured6966 = result6966)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6967 live6967 coloured6967 = result6967) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6968 live6968 coloured6968 = result6968 := by
  rw [tree6968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6966 coloured6966 at child
  try dsimp only [live6968, coloured6968]
  rw [child]
  dsimp only [result6966]
  have child := child1
  unfold live6967 coloured6967 at child
  try dsimp only [live6968, coloured6968]
  rw [child]
  dsimp only [result6967]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6969_agree_conditional : tree6969 = literal6969 := by
  rw [tree6969_def]
  rfl
theorem node6969_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6969 live6969 coloured6969 = result6969 := by
  rw [tree6969_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6970_agree_conditional
    (child0 : tree6968 = literal6968)
    (child1 : tree6969 = literal6969) : tree6970 = literal6970 := by
  rw [tree6970_def, child0, child1]
  rfl
theorem node6970_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6968 live6968 coloured6968 = result6968)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6969 live6969 coloured6969 = result6969) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6970 live6970 coloured6970 = result6970 := by
  rw [tree6970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6968 coloured6968 at child
  try dsimp only [live6970, coloured6970]
  rw [child]
  dsimp only [result6968]
  have child := child1
  unfold live6969 coloured6969 at child
  try dsimp only [live6970, coloured6970]
  rw [child]
  dsimp only [result6969]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6971_agree_conditional : tree6971 = literal6971 := by
  rw [tree6971_def]
  rfl
theorem node6971_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6971 live6971 coloured6971 = result6971 := by
  rw [tree6971_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6972_agree_conditional
    (child0 : tree6970 = literal6970)
    (child1 : tree6971 = literal6971) : tree6972 = literal6972 := by
  rw [tree6972_def, child0, child1]
  rfl
theorem node6972_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6970 live6970 coloured6970 = result6970)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6971 live6971 coloured6971 = result6971) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6972 live6972 coloured6972 = result6972 := by
  rw [tree6972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6970 coloured6970 at child
  try dsimp only [live6972, coloured6972]
  rw [child]
  dsimp only [result6970]
  have child := child1
  unfold live6971 coloured6971 at child
  try dsimp only [live6972, coloured6972]
  rw [child]
  dsimp only [result6971]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6973_agree_conditional : tree6973 = literal6973 := by
  rw [tree6973_def]
  rfl
theorem node6973_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6973 live6973 coloured6973 = result6973 := by
  rw [tree6973_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6974_agree_conditional
    (child0 : tree6972 = literal6972)
    (child1 : tree6973 = literal6973) : tree6974 = literal6974 := by
  rw [tree6974_def, child0, child1]
  rfl
theorem node6974_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6972 live6972 coloured6972 = result6972)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6973 live6973 coloured6973 = result6973) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6974 live6974 coloured6974 = result6974 := by
  rw [tree6974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6972 coloured6972 at child
  try dsimp only [live6974, coloured6974]
  rw [child]
  dsimp only [result6972]
  have child := child1
  unfold live6973 coloured6973 at child
  try dsimp only [live6974, coloured6974]
  rw [child]
  dsimp only [result6973]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6975_agree_conditional : tree6975 = literal6975 := by
  rw [tree6975_def]
  rfl
theorem node6975_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6975 live6975 coloured6975 = result6975 := by
  rw [tree6975_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6976_agree_conditional
    (child0 : tree6974 = literal6974)
    (child1 : tree6975 = literal6975) : tree6976 = literal6976 := by
  rw [tree6976_def, child0, child1]
  rfl
theorem node6976_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6974 live6974 coloured6974 = result6974)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6975 live6975 coloured6975 = result6975) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6976 live6976 coloured6976 = result6976 := by
  rw [tree6976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6974 coloured6974 at child
  try dsimp only [live6976, coloured6976]
  rw [child]
  dsimp only [result6974]
  have child := child1
  unfold live6975 coloured6975 at child
  try dsimp only [live6976, coloured6976]
  rw [child]
  dsimp only [result6975]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6977_agree_conditional : tree6977 = literal6977 := by
  rw [tree6977_def]
  rfl
theorem node6977_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6977 live6977 coloured6977 = result6977 := by
  rw [tree6977_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6978_agree_conditional
    (child0 : tree6976 = literal6976)
    (child1 : tree6977 = literal6977) : tree6978 = literal6978 := by
  rw [tree6978_def, child0, child1]
  rfl
theorem node6978_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6976 live6976 coloured6976 = result6976)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6977 live6977 coloured6977 = result6977) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6978 live6978 coloured6978 = result6978 := by
  rw [tree6978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6976 coloured6976 at child
  try dsimp only [live6978, coloured6978]
  rw [child]
  dsimp only [result6976]
  have child := child1
  unfold live6977 coloured6977 at child
  try dsimp only [live6978, coloured6978]
  rw [child]
  dsimp only [result6977]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6979_agree_conditional : tree6979 = literal6979 := by
  rw [tree6979_def]
  rfl
theorem node6979_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6979 live6979 coloured6979 = result6979 := by
  rw [tree6979_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6980_agree_conditional
    (child0 : tree6978 = literal6978)
    (child1 : tree6979 = literal6979) : tree6980 = literal6980 := by
  rw [tree6980_def, child0, child1]
  rfl
theorem node6980_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6978 live6978 coloured6978 = result6978)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6979 live6979 coloured6979 = result6979) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6980 live6980 coloured6980 = result6980 := by
  rw [tree6980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6978 coloured6978 at child
  try dsimp only [live6980, coloured6980]
  rw [child]
  dsimp only [result6978]
  have child := child1
  unfold live6979 coloured6979 at child
  try dsimp only [live6980, coloured6980]
  rw [child]
  dsimp only [result6979]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6981_agree_conditional : tree6981 = literal6981 := by
  rw [tree6981_def]
  rfl
theorem node6981_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6981 live6981 coloured6981 = result6981 := by
  rw [tree6981_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6982_agree_conditional
    (child0 : tree6980 = literal6980)
    (child1 : tree6981 = literal6981) : tree6982 = literal6982 := by
  rw [tree6982_def, child0, child1]
  rfl
theorem node6982_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6980 live6980 coloured6980 = result6980)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6981 live6981 coloured6981 = result6981) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6982 live6982 coloured6982 = result6982 := by
  rw [tree6982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6980 coloured6980 at child
  try dsimp only [live6982, coloured6982]
  rw [child]
  dsimp only [result6980]
  have child := child1
  unfold live6981 coloured6981 at child
  try dsimp only [live6982, coloured6982]
  rw [child]
  dsimp only [result6981]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6983_agree_conditional : tree6983 = literal6983 := by
  rw [tree6983_def]
  rfl
theorem node6983_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6983 live6983 coloured6983 = result6983 := by
  rw [tree6983_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6984_agree_conditional
    (child0 : tree6982 = literal6982)
    (child1 : tree6983 = literal6983) : tree6984 = literal6984 := by
  rw [tree6984_def, child0, child1]
  rfl
theorem node6984_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6982 live6982 coloured6982 = result6982)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6983 live6983 coloured6983 = result6983) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6984 live6984 coloured6984 = result6984 := by
  rw [tree6984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6982 coloured6982 at child
  try dsimp only [live6984, coloured6984]
  rw [child]
  dsimp only [result6982]
  have child := child1
  unfold live6983 coloured6983 at child
  try dsimp only [live6984, coloured6984]
  rw [child]
  dsimp only [result6983]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6985_agree_conditional : tree6985 = literal6985 := by
  rw [tree6985_def]
  rfl
theorem node6985_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6985 live6985 coloured6985 = result6985 := by
  rw [tree6985_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6986_agree_conditional
    (child0 : tree6984 = literal6984)
    (child1 : tree6985 = literal6985) : tree6986 = literal6986 := by
  rw [tree6986_def, child0, child1]
  rfl
theorem node6986_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6984 live6984 coloured6984 = result6984)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6985 live6985 coloured6985 = result6985) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6986 live6986 coloured6986 = result6986 := by
  rw [tree6986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6984 coloured6984 at child
  try dsimp only [live6986, coloured6986]
  rw [child]
  dsimp only [result6984]
  have child := child1
  unfold live6985 coloured6985 at child
  try dsimp only [live6986, coloured6986]
  rw [child]
  dsimp only [result6985]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6987_agree_conditional : tree6987 = literal6987 := by
  rw [tree6987_def]
  rfl
theorem node6987_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6987 live6987 coloured6987 = result6987 := by
  rw [tree6987_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6988_agree_conditional
    (child0 : tree6986 = literal6986)
    (child1 : tree6987 = literal6987) : tree6988 = literal6988 := by
  rw [tree6988_def, child0, child1]
  rfl
theorem node6988_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6986 live6986 coloured6986 = result6986)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6987 live6987 coloured6987 = result6987) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6988 live6988 coloured6988 = result6988 := by
  rw [tree6988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6986 coloured6986 at child
  try dsimp only [live6988, coloured6988]
  rw [child]
  dsimp only [result6986]
  have child := child1
  unfold live6987 coloured6987 at child
  try dsimp only [live6988, coloured6988]
  rw [child]
  dsimp only [result6987]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6989_agree_conditional : tree6989 = literal6989 := by
  rw [tree6989_def]
  rfl
theorem node6989_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6989 live6989 coloured6989 = result6989 := by
  rw [tree6989_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6990_agree_conditional
    (child0 : tree6988 = literal6988)
    (child1 : tree6989 = literal6989) : tree6990 = literal6990 := by
  rw [tree6990_def, child0, child1]
  rfl
theorem node6990_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6988 live6988 coloured6988 = result6988)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6989 live6989 coloured6989 = result6989) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6990 live6990 coloured6990 = result6990 := by
  rw [tree6990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6988 coloured6988 at child
  try dsimp only [live6990, coloured6990]
  rw [child]
  dsimp only [result6988]
  have child := child1
  unfold live6989 coloured6989 at child
  try dsimp only [live6990, coloured6990]
  rw [child]
  dsimp only [result6989]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6991_agree_conditional : tree6991 = literal6991 := by
  rw [tree6991_def]
  rfl
theorem node6991_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6991 live6991 coloured6991 = result6991 := by
  rw [tree6991_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6992_agree_conditional
    (child0 : tree6990 = literal6990)
    (child1 : tree6991 = literal6991) : tree6992 = literal6992 := by
  rw [tree6992_def, child0, child1]
  rfl
theorem node6992_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6990 live6990 coloured6990 = result6990)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6991 live6991 coloured6991 = result6991) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6992 live6992 coloured6992 = result6992 := by
  rw [tree6992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6990 coloured6990 at child
  try dsimp only [live6992, coloured6992]
  rw [child]
  dsimp only [result6990]
  have child := child1
  unfold live6991 coloured6991 at child
  try dsimp only [live6992, coloured6992]
  rw [child]
  dsimp only [result6991]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6993_agree_conditional : tree6993 = literal6993 := by
  rw [tree6993_def]
  rfl
theorem node6993_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6993 live6993 coloured6993 = result6993 := by
  rw [tree6993_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6994_agree_conditional
    (child0 : tree6992 = literal6992)
    (child1 : tree6993 = literal6993) : tree6994 = literal6994 := by
  rw [tree6994_def, child0, child1]
  rfl
theorem node6994_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6992 live6992 coloured6992 = result6992)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6993 live6993 coloured6993 = result6993) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6994 live6994 coloured6994 = result6994 := by
  rw [tree6994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6992 coloured6992 at child
  try dsimp only [live6994, coloured6994]
  rw [child]
  dsimp only [result6992]
  have child := child1
  unfold live6993 coloured6993 at child
  try dsimp only [live6994, coloured6994]
  rw [child]
  dsimp only [result6993]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6995_agree_conditional : tree6995 = literal6995 := by
  rw [tree6995_def]
  rfl
theorem node6995_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6995 live6995 coloured6995 = result6995 := by
  rw [tree6995_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6996_agree_conditional
    (child0 : tree6994 = literal6994)
    (child1 : tree6995 = literal6995) : tree6996 = literal6996 := by
  rw [tree6996_def, child0, child1]
  rfl
theorem node6996_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6994 live6994 coloured6994 = result6994)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6995 live6995 coloured6995 = result6995) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6996 live6996 coloured6996 = result6996 := by
  rw [tree6996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6994 coloured6994 at child
  try dsimp only [live6996, coloured6996]
  rw [child]
  dsimp only [result6994]
  have child := child1
  unfold live6995 coloured6995 at child
  try dsimp only [live6996, coloured6996]
  rw [child]
  dsimp only [result6995]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6997_agree_conditional : tree6997 = literal6997 := by
  rw [tree6997_def]
  rfl
theorem node6997_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6997 live6997 coloured6997 = result6997 := by
  rw [tree6997_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6998_agree_conditional
    (child0 : tree6996 = literal6996)
    (child1 : tree6997 = literal6997) : tree6998 = literal6998 := by
  rw [tree6998_def, child0, child1]
  rfl
theorem node6998_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6996 live6996 coloured6996 = result6996)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6997 live6997 coloured6997 = result6997) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6998 live6998 coloured6998 = result6998 := by
  rw [tree6998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6996 coloured6996 at child
  try dsimp only [live6998, coloured6998]
  rw [child]
  dsimp only [result6996]
  have child := child1
  unfold live6997 coloured6997 at child
  try dsimp only [live6998, coloured6998]
  rw [child]
  dsimp only [result6997]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6999_agree_conditional : tree6999 = literal6999 := by
  rw [tree6999_def]
  rfl
theorem node6999_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6999 live6999 coloured6999 = result6999 := by
  rw [tree6999_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7000_agree_conditional
    (child0 : tree6998 = literal6998)
    (child1 : tree6999 = literal6999) : tree7000 = literal7000 := by
  rw [tree7000_def, child0, child1]
  rfl
theorem node7000_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6998 live6998 coloured6998 = result6998)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6999 live6999 coloured6999 = result6999) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7000 live7000 coloured7000 = result7000 := by
  rw [tree7000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6998 coloured6998 at child
  try dsimp only [live7000, coloured7000]
  rw [child]
  dsimp only [result6998]
  have child := child1
  unfold live6999 coloured6999 at child
  try dsimp only [live7000, coloured7000]
  rw [child]
  dsimp only [result6999]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7001_agree_conditional : tree7001 = literal7001 := by
  rw [tree7001_def]
  rfl
theorem node7001_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7001 live7001 coloured7001 = result7001 := by
  rw [tree7001_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7002_agree_conditional
    (child0 : tree7000 = literal7000)
    (child1 : tree7001 = literal7001) : tree7002 = literal7002 := by
  rw [tree7002_def, child0, child1]
  rfl
theorem node7002_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7000 live7000 coloured7000 = result7000)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7001 live7001 coloured7001 = result7001) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7002 live7002 coloured7002 = result7002 := by
  rw [tree7002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7000 coloured7000 at child
  try dsimp only [live7002, coloured7002]
  rw [child]
  dsimp only [result7000]
  have child := child1
  unfold live7001 coloured7001 at child
  try dsimp only [live7002, coloured7002]
  rw [child]
  dsimp only [result7001]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7003_agree_conditional : tree7003 = literal7003 := by
  rw [tree7003_def]
  rfl
theorem node7003_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7003 live7003 coloured7003 = result7003 := by
  rw [tree7003_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7004_agree_conditional
    (child0 : tree7002 = literal7002)
    (child1 : tree7003 = literal7003) : tree7004 = literal7004 := by
  rw [tree7004_def, child0, child1]
  rfl
theorem node7004_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7002 live7002 coloured7002 = result7002)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7003 live7003 coloured7003 = result7003) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7004 live7004 coloured7004 = result7004 := by
  rw [tree7004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7002 coloured7002 at child
  try dsimp only [live7004, coloured7004]
  rw [child]
  dsimp only [result7002]
  have child := child1
  unfold live7003 coloured7003 at child
  try dsimp only [live7004, coloured7004]
  rw [child]
  dsimp only [result7003]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7005_agree_conditional : tree7005 = literal7005 := by
  rw [tree7005_def]
  rfl
theorem node7005_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7005 live7005 coloured7005 = result7005 := by
  rw [tree7005_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7006_agree_conditional
    (child0 : tree7004 = literal7004)
    (child1 : tree7005 = literal7005) : tree7006 = literal7006 := by
  rw [tree7006_def, child0, child1]
  rfl
theorem node7006_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7004 live7004 coloured7004 = result7004)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7005 live7005 coloured7005 = result7005) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7006 live7006 coloured7006 = result7006 := by
  rw [tree7006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live7004 coloured7004 at child
  try dsimp only [live7006, coloured7006]
  rw [child]
  dsimp only [result7004]
  have child := child1
  unfold live7005 coloured7005 at child
  try dsimp only [live7006, coloured7006]
  rw [child]
  dsimp only [result7005]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree7007_agree_conditional : tree7007 = literal7007 := by
  rw [tree7007_def]
  rfl
theorem node7007_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree7007 live7007 coloured7007 = result7007 := by
  rw [tree7007_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
