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
theorem tree8928_agree_conditional
    (child0 : tree8926 = literal8926)
    (child1 : tree8927 = literal8927) : tree8928 = literal8928 := by
  rw [tree8928_def, child0, child1]
  rfl
theorem node8928_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8926 live8926 coloured8926 = result8926)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8927 live8927 coloured8927 = result8927) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8928 live8928 coloured8928 = result8928 := by
  rw [tree8928_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8926 coloured8926 at child
  try dsimp only [live8928, coloured8928]
  rw [child]
  dsimp only [result8926]
  have child := child1
  unfold live8927 coloured8927 at child
  try dsimp only [live8928, coloured8928]
  rw [child]
  dsimp only [result8927]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8929_agree_conditional : tree8929 = literal8929 := by
  rw [tree8929_def]
  rfl
theorem node8929_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8929 live8929 coloured8929 = result8929 := by
  rw [tree8929_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8930_agree_conditional
    (child0 : tree8928 = literal8928)
    (child1 : tree8929 = literal8929) : tree8930 = literal8930 := by
  rw [tree8930_def, child0, child1]
  rfl
theorem node8930_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8928 live8928 coloured8928 = result8928)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8929 live8929 coloured8929 = result8929) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8930 live8930 coloured8930 = result8930 := by
  rw [tree8930_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8928 coloured8928 at child
  try dsimp only [live8930, coloured8930]
  rw [child]
  dsimp only [result8928]
  have child := child1
  unfold live8929 coloured8929 at child
  try dsimp only [live8930, coloured8930]
  rw [child]
  dsimp only [result8929]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8931_agree_conditional : tree8931 = literal8931 := by
  rw [tree8931_def]
  rfl
theorem node8931_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8931 live8931 coloured8931 = result8931 := by
  rw [tree8931_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8932_agree_conditional
    (child0 : tree8930 = literal8930)
    (child1 : tree8931 = literal8931) : tree8932 = literal8932 := by
  rw [tree8932_def, child0, child1]
  rfl
theorem node8932_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8930 live8930 coloured8930 = result8930)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8931 live8931 coloured8931 = result8931) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8932 live8932 coloured8932 = result8932 := by
  rw [tree8932_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8930 coloured8930 at child
  try dsimp only [live8932, coloured8932]
  rw [child]
  dsimp only [result8930]
  have child := child1
  unfold live8931 coloured8931 at child
  try dsimp only [live8932, coloured8932]
  rw [child]
  dsimp only [result8931]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8933_agree_conditional : tree8933 = literal8933 := by
  rw [tree8933_def]
  rfl
theorem node8933_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8933 live8933 coloured8933 = result8933 := by
  rw [tree8933_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8934_agree_conditional
    (child0 : tree8932 = literal8932)
    (child1 : tree8933 = literal8933) : tree8934 = literal8934 := by
  rw [tree8934_def, child0, child1]
  rfl
theorem node8934_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8932 live8932 coloured8932 = result8932)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8933 live8933 coloured8933 = result8933) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8934 live8934 coloured8934 = result8934 := by
  rw [tree8934_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8932 coloured8932 at child
  try dsimp only [live8934, coloured8934]
  rw [child]
  dsimp only [result8932]
  have child := child1
  unfold live8933 coloured8933 at child
  try dsimp only [live8934, coloured8934]
  rw [child]
  dsimp only [result8933]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8935_agree_conditional : tree8935 = literal8935 := by
  rw [tree8935_def]
  rfl
theorem node8935_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8935 live8935 coloured8935 = result8935 := by
  rw [tree8935_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8936_agree_conditional
    (child0 : tree8934 = literal8934)
    (child1 : tree8935 = literal8935) : tree8936 = literal8936 := by
  rw [tree8936_def, child0, child1]
  rfl
theorem node8936_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8934 live8934 coloured8934 = result8934)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8935 live8935 coloured8935 = result8935) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8936 live8936 coloured8936 = result8936 := by
  rw [tree8936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8934 coloured8934 at child
  try dsimp only [live8936, coloured8936]
  rw [child]
  dsimp only [result8934]
  have child := child1
  unfold live8935 coloured8935 at child
  try dsimp only [live8936, coloured8936]
  rw [child]
  dsimp only [result8935]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8937_agree_conditional : tree8937 = literal8937 := by
  rw [tree8937_def]
  rfl
theorem node8937_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8937 live8937 coloured8937 = result8937 := by
  rw [tree8937_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8938_agree_conditional
    (child0 : tree8936 = literal8936)
    (child1 : tree8937 = literal8937) : tree8938 = literal8938 := by
  rw [tree8938_def, child0, child1]
  rfl
theorem node8938_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8936 live8936 coloured8936 = result8936)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8937 live8937 coloured8937 = result8937) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8938 live8938 coloured8938 = result8938 := by
  rw [tree8938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8936 coloured8936 at child
  try dsimp only [live8938, coloured8938]
  rw [child]
  dsimp only [result8936]
  have child := child1
  unfold live8937 coloured8937 at child
  try dsimp only [live8938, coloured8938]
  rw [child]
  dsimp only [result8937]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8939_agree_conditional : tree8939 = literal8939 := by
  rw [tree8939_def]
  rfl
theorem node8939_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8939 live8939 coloured8939 = result8939 := by
  rw [tree8939_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8940_agree_conditional
    (child0 : tree8938 = literal8938)
    (child1 : tree8939 = literal8939) : tree8940 = literal8940 := by
  rw [tree8940_def, child0, child1]
  rfl
theorem node8940_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8938 live8938 coloured8938 = result8938)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8939 live8939 coloured8939 = result8939) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8940 live8940 coloured8940 = result8940 := by
  rw [tree8940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8938 coloured8938 at child
  try dsimp only [live8940, coloured8940]
  rw [child]
  dsimp only [result8938]
  have child := child1
  unfold live8939 coloured8939 at child
  try dsimp only [live8940, coloured8940]
  rw [child]
  dsimp only [result8939]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8941_agree_conditional : tree8941 = literal8941 := by
  rw [tree8941_def]
  rfl
theorem node8941_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8941 live8941 coloured8941 = result8941 := by
  rw [tree8941_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8942_agree_conditional
    (child0 : tree8940 = literal8940)
    (child1 : tree8941 = literal8941) : tree8942 = literal8942 := by
  rw [tree8942_def, child0, child1]
  rfl
theorem node8942_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8940 live8940 coloured8940 = result8940)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8941 live8941 coloured8941 = result8941) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8942 live8942 coloured8942 = result8942 := by
  rw [tree8942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8940 coloured8940 at child
  try dsimp only [live8942, coloured8942]
  rw [child]
  dsimp only [result8940]
  have child := child1
  unfold live8941 coloured8941 at child
  try dsimp only [live8942, coloured8942]
  rw [child]
  dsimp only [result8941]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8943_agree_conditional : tree8943 = literal8943 := by
  rw [tree8943_def]
  rfl
theorem node8943_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8943 live8943 coloured8943 = result8943 := by
  rw [tree8943_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8944_agree_conditional
    (child0 : tree8942 = literal8942)
    (child1 : tree8943 = literal8943) : tree8944 = literal8944 := by
  rw [tree8944_def, child0, child1]
  rfl
theorem node8944_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8942 live8942 coloured8942 = result8942)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8943 live8943 coloured8943 = result8943) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8944 live8944 coloured8944 = result8944 := by
  rw [tree8944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8942 coloured8942 at child
  try dsimp only [live8944, coloured8944]
  rw [child]
  dsimp only [result8942]
  have child := child1
  unfold live8943 coloured8943 at child
  try dsimp only [live8944, coloured8944]
  rw [child]
  dsimp only [result8943]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8945_agree_conditional : tree8945 = literal8945 := by
  rw [tree8945_def]
  rfl
theorem node8945_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8945 live8945 coloured8945 = result8945 := by
  rw [tree8945_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8946_agree_conditional
    (child0 : tree8944 = literal8944)
    (child1 : tree8945 = literal8945) : tree8946 = literal8946 := by
  rw [tree8946_def, child0, child1]
  rfl
theorem node8946_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8944 live8944 coloured8944 = result8944)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8945 live8945 coloured8945 = result8945) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8946 live8946 coloured8946 = result8946 := by
  rw [tree8946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8944 coloured8944 at child
  try dsimp only [live8946, coloured8946]
  rw [child]
  dsimp only [result8944]
  have child := child1
  unfold live8945 coloured8945 at child
  try dsimp only [live8946, coloured8946]
  rw [child]
  dsimp only [result8945]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8947_agree_conditional : tree8947 = literal8947 := by
  rw [tree8947_def]
  rfl
theorem node8947_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8947 live8947 coloured8947 = result8947 := by
  rw [tree8947_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8948_agree_conditional
    (child0 : tree8946 = literal8946)
    (child1 : tree8947 = literal8947) : tree8948 = literal8948 := by
  rw [tree8948_def, child0, child1]
  rfl
theorem node8948_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8946 live8946 coloured8946 = result8946)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8947 live8947 coloured8947 = result8947) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8948 live8948 coloured8948 = result8948 := by
  rw [tree8948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8946 coloured8946 at child
  try dsimp only [live8948, coloured8948]
  rw [child]
  dsimp only [result8946]
  have child := child1
  unfold live8947 coloured8947 at child
  try dsimp only [live8948, coloured8948]
  rw [child]
  dsimp only [result8947]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8949_agree_conditional : tree8949 = literal8949 := by
  rw [tree8949_def]
  rfl
theorem node8949_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8949 live8949 coloured8949 = result8949 := by
  rw [tree8949_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8950_agree_conditional
    (child0 : tree8948 = literal8948)
    (child1 : tree8949 = literal8949) : tree8950 = literal8950 := by
  rw [tree8950_def, child0, child1]
  rfl
theorem node8950_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8948 live8948 coloured8948 = result8948)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8949 live8949 coloured8949 = result8949) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8950 live8950 coloured8950 = result8950 := by
  rw [tree8950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8948 coloured8948 at child
  try dsimp only [live8950, coloured8950]
  rw [child]
  dsimp only [result8948]
  have child := child1
  unfold live8949 coloured8949 at child
  try dsimp only [live8950, coloured8950]
  rw [child]
  dsimp only [result8949]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8951_agree_conditional : tree8951 = literal8951 := by
  rw [tree8951_def]
  rfl
theorem node8951_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8951 live8951 coloured8951 = result8951 := by
  rw [tree8951_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8952_agree_conditional
    (child0 : tree8950 = literal8950)
    (child1 : tree8951 = literal8951) : tree8952 = literal8952 := by
  rw [tree8952_def, child0, child1]
  rfl
theorem node8952_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8950 live8950 coloured8950 = result8950)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8951 live8951 coloured8951 = result8951) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8952 live8952 coloured8952 = result8952 := by
  rw [tree8952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8950 coloured8950 at child
  try dsimp only [live8952, coloured8952]
  rw [child]
  dsimp only [result8950]
  have child := child1
  unfold live8951 coloured8951 at child
  try dsimp only [live8952, coloured8952]
  rw [child]
  dsimp only [result8951]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8953_agree_conditional : tree8953 = literal8953 := by
  rw [tree8953_def]
  rfl
theorem node8953_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8953 live8953 coloured8953 = result8953 := by
  rw [tree8953_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8954_agree_conditional
    (child0 : tree8952 = literal8952)
    (child1 : tree8953 = literal8953) : tree8954 = literal8954 := by
  rw [tree8954_def, child0, child1]
  rfl
theorem node8954_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8952 live8952 coloured8952 = result8952)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8953 live8953 coloured8953 = result8953) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8954 live8954 coloured8954 = result8954 := by
  rw [tree8954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8952 coloured8952 at child
  try dsimp only [live8954, coloured8954]
  rw [child]
  dsimp only [result8952]
  have child := child1
  unfold live8953 coloured8953 at child
  try dsimp only [live8954, coloured8954]
  rw [child]
  dsimp only [result8953]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8955_agree_conditional : tree8955 = literal8955 := by
  rw [tree8955_def]
  rfl
theorem node8955_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8955 live8955 coloured8955 = result8955 := by
  rw [tree8955_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8956_agree_conditional
    (child0 : tree8954 = literal8954)
    (child1 : tree8955 = literal8955) : tree8956 = literal8956 := by
  rw [tree8956_def, child0, child1]
  rfl
theorem node8956_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8954 live8954 coloured8954 = result8954)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8955 live8955 coloured8955 = result8955) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8956 live8956 coloured8956 = result8956 := by
  rw [tree8956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8954 coloured8954 at child
  try dsimp only [live8956, coloured8956]
  rw [child]
  dsimp only [result8954]
  have child := child1
  unfold live8955 coloured8955 at child
  try dsimp only [live8956, coloured8956]
  rw [child]
  dsimp only [result8955]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8957_agree_conditional : tree8957 = literal8957 := by
  rw [tree8957_def]
  rfl
theorem node8957_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8957 live8957 coloured8957 = result8957 := by
  rw [tree8957_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8958_agree_conditional
    (child0 : tree8956 = literal8956)
    (child1 : tree8957 = literal8957) : tree8958 = literal8958 := by
  rw [tree8958_def, child0, child1]
  rfl
theorem node8958_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8956 live8956 coloured8956 = result8956)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8957 live8957 coloured8957 = result8957) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8958 live8958 coloured8958 = result8958 := by
  rw [tree8958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8956 coloured8956 at child
  try dsimp only [live8958, coloured8958]
  rw [child]
  dsimp only [result8956]
  have child := child1
  unfold live8957 coloured8957 at child
  try dsimp only [live8958, coloured8958]
  rw [child]
  dsimp only [result8957]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8959_agree_conditional : tree8959 = literal8959 := by
  rw [tree8959_def]
  rfl
theorem node8959_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8959 live8959 coloured8959 = result8959 := by
  rw [tree8959_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8960_agree_conditional
    (child0 : tree8958 = literal8958)
    (child1 : tree8959 = literal8959) : tree8960 = literal8960 := by
  rw [tree8960_def, child0, child1]
  rfl
theorem node8960_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8958 live8958 coloured8958 = result8958)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8959 live8959 coloured8959 = result8959) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8960 live8960 coloured8960 = result8960 := by
  rw [tree8960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8958 coloured8958 at child
  try dsimp only [live8960, coloured8960]
  rw [child]
  dsimp only [result8958]
  have child := child1
  unfold live8959 coloured8959 at child
  try dsimp only [live8960, coloured8960]
  rw [child]
  dsimp only [result8959]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8961_agree_conditional : tree8961 = literal8961 := by
  rw [tree8961_def]
  rfl
theorem node8961_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8961 live8961 coloured8961 = result8961 := by
  rw [tree8961_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8962_agree_conditional
    (child0 : tree8960 = literal8960)
    (child1 : tree8961 = literal8961) : tree8962 = literal8962 := by
  rw [tree8962_def, child0, child1]
  rfl
theorem node8962_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8960 live8960 coloured8960 = result8960)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8961 live8961 coloured8961 = result8961) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8962 live8962 coloured8962 = result8962 := by
  rw [tree8962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8960 coloured8960 at child
  try dsimp only [live8962, coloured8962]
  rw [child]
  dsimp only [result8960]
  have child := child1
  unfold live8961 coloured8961 at child
  try dsimp only [live8962, coloured8962]
  rw [child]
  dsimp only [result8961]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8963_agree_conditional : tree8963 = literal8963 := by
  rw [tree8963_def]
  rfl
theorem node8963_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8963 live8963 coloured8963 = result8963 := by
  rw [tree8963_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8964_agree_conditional
    (child0 : tree8962 = literal8962)
    (child1 : tree8963 = literal8963) : tree8964 = literal8964 := by
  rw [tree8964_def, child0, child1]
  rfl
theorem node8964_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8962 live8962 coloured8962 = result8962)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8963 live8963 coloured8963 = result8963) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8964 live8964 coloured8964 = result8964 := by
  rw [tree8964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8962 coloured8962 at child
  try dsimp only [live8964, coloured8964]
  rw [child]
  dsimp only [result8962]
  have child := child1
  unfold live8963 coloured8963 at child
  try dsimp only [live8964, coloured8964]
  rw [child]
  dsimp only [result8963]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8965_agree_conditional : tree8965 = literal8965 := by
  rw [tree8965_def]
  rfl
theorem node8965_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8965 live8965 coloured8965 = result8965 := by
  rw [tree8965_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8966_agree_conditional
    (child0 : tree8964 = literal8964)
    (child1 : tree8965 = literal8965) : tree8966 = literal8966 := by
  rw [tree8966_def, child0, child1]
  rfl
theorem node8966_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8964 live8964 coloured8964 = result8964)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8965 live8965 coloured8965 = result8965) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8966 live8966 coloured8966 = result8966 := by
  rw [tree8966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8964 coloured8964 at child
  try dsimp only [live8966, coloured8966]
  rw [child]
  dsimp only [result8964]
  have child := child1
  unfold live8965 coloured8965 at child
  try dsimp only [live8966, coloured8966]
  rw [child]
  dsimp only [result8965]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8967_agree_conditional : tree8967 = literal8967 := by
  rw [tree8967_def]
  rfl
theorem node8967_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8967 live8967 coloured8967 = result8967 := by
  rw [tree8967_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8968_agree_conditional
    (child0 : tree8966 = literal8966)
    (child1 : tree8967 = literal8967) : tree8968 = literal8968 := by
  rw [tree8968_def, child0, child1]
  rfl
theorem node8968_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8966 live8966 coloured8966 = result8966)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8967 live8967 coloured8967 = result8967) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8968 live8968 coloured8968 = result8968 := by
  rw [tree8968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8966 coloured8966 at child
  try dsimp only [live8968, coloured8968]
  rw [child]
  dsimp only [result8966]
  have child := child1
  unfold live8967 coloured8967 at child
  try dsimp only [live8968, coloured8968]
  rw [child]
  dsimp only [result8967]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8969_agree_conditional : tree8969 = literal8969 := by
  rw [tree8969_def]
  rfl
theorem node8969_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8969 live8969 coloured8969 = result8969 := by
  rw [tree8969_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8970_agree_conditional
    (child0 : tree8968 = literal8968)
    (child1 : tree8969 = literal8969) : tree8970 = literal8970 := by
  rw [tree8970_def, child0, child1]
  rfl
theorem node8970_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8968 live8968 coloured8968 = result8968)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8969 live8969 coloured8969 = result8969) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8970 live8970 coloured8970 = result8970 := by
  rw [tree8970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8968 coloured8968 at child
  try dsimp only [live8970, coloured8970]
  rw [child]
  dsimp only [result8968]
  have child := child1
  unfold live8969 coloured8969 at child
  try dsimp only [live8970, coloured8970]
  rw [child]
  dsimp only [result8969]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8971_agree_conditional : tree8971 = literal8971 := by
  rw [tree8971_def]
  rfl
theorem node8971_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8971 live8971 coloured8971 = result8971 := by
  rw [tree8971_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8972_agree_conditional
    (child0 : tree8970 = literal8970)
    (child1 : tree8971 = literal8971) : tree8972 = literal8972 := by
  rw [tree8972_def, child0, child1]
  rfl
theorem node8972_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8970 live8970 coloured8970 = result8970)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8971 live8971 coloured8971 = result8971) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8972 live8972 coloured8972 = result8972 := by
  rw [tree8972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8970 coloured8970 at child
  try dsimp only [live8972, coloured8972]
  rw [child]
  dsimp only [result8970]
  have child := child1
  unfold live8971 coloured8971 at child
  try dsimp only [live8972, coloured8972]
  rw [child]
  dsimp only [result8971]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8973_agree_conditional : tree8973 = literal8973 := by
  rw [tree8973_def]
  rfl
theorem node8973_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8973 live8973 coloured8973 = result8973 := by
  rw [tree8973_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8974_agree_conditional
    (child0 : tree8972 = literal8972)
    (child1 : tree8973 = literal8973) : tree8974 = literal8974 := by
  rw [tree8974_def, child0, child1]
  rfl
theorem node8974_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8972 live8972 coloured8972 = result8972)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8973 live8973 coloured8973 = result8973) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8974 live8974 coloured8974 = result8974 := by
  rw [tree8974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8972 coloured8972 at child
  try dsimp only [live8974, coloured8974]
  rw [child]
  dsimp only [result8972]
  have child := child1
  unfold live8973 coloured8973 at child
  try dsimp only [live8974, coloured8974]
  rw [child]
  dsimp only [result8973]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8975_agree_conditional : tree8975 = literal8975 := by
  rw [tree8975_def]
  rfl
theorem node8975_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8975 live8975 coloured8975 = result8975 := by
  rw [tree8975_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8976_agree_conditional
    (child0 : tree8974 = literal8974)
    (child1 : tree8975 = literal8975) : tree8976 = literal8976 := by
  rw [tree8976_def, child0, child1]
  rfl
theorem node8976_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8974 live8974 coloured8974 = result8974)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8975 live8975 coloured8975 = result8975) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8976 live8976 coloured8976 = result8976 := by
  rw [tree8976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8974 coloured8974 at child
  try dsimp only [live8976, coloured8976]
  rw [child]
  dsimp only [result8974]
  have child := child1
  unfold live8975 coloured8975 at child
  try dsimp only [live8976, coloured8976]
  rw [child]
  dsimp only [result8975]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8977_agree_conditional : tree8977 = literal8977 := by
  rw [tree8977_def]
  rfl
theorem node8977_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8977 live8977 coloured8977 = result8977 := by
  rw [tree8977_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8978_agree_conditional
    (child0 : tree8976 = literal8976)
    (child1 : tree8977 = literal8977) : tree8978 = literal8978 := by
  rw [tree8978_def, child0, child1]
  rfl
theorem node8978_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8976 live8976 coloured8976 = result8976)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8977 live8977 coloured8977 = result8977) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8978 live8978 coloured8978 = result8978 := by
  rw [tree8978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8976 coloured8976 at child
  try dsimp only [live8978, coloured8978]
  rw [child]
  dsimp only [result8976]
  have child := child1
  unfold live8977 coloured8977 at child
  try dsimp only [live8978, coloured8978]
  rw [child]
  dsimp only [result8977]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8979_agree_conditional : tree8979 = literal8979 := by
  rw [tree8979_def]
  rfl
theorem node8979_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8979 live8979 coloured8979 = result8979 := by
  rw [tree8979_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8980_agree_conditional
    (child0 : tree8978 = literal8978)
    (child1 : tree8979 = literal8979) : tree8980 = literal8980 := by
  rw [tree8980_def, child0, child1]
  rfl
theorem node8980_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8978 live8978 coloured8978 = result8978)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8979 live8979 coloured8979 = result8979) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8980 live8980 coloured8980 = result8980 := by
  rw [tree8980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8978 coloured8978 at child
  try dsimp only [live8980, coloured8980]
  rw [child]
  dsimp only [result8978]
  have child := child1
  unfold live8979 coloured8979 at child
  try dsimp only [live8980, coloured8980]
  rw [child]
  dsimp only [result8979]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8981_agree_conditional : tree8981 = literal8981 := by
  rw [tree8981_def]
  rfl
theorem node8981_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8981 live8981 coloured8981 = result8981 := by
  rw [tree8981_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8982_agree_conditional
    (child0 : tree8980 = literal8980)
    (child1 : tree8981 = literal8981) : tree8982 = literal8982 := by
  rw [tree8982_def, child0, child1]
  rfl
theorem node8982_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8980 live8980 coloured8980 = result8980)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8981 live8981 coloured8981 = result8981) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8982 live8982 coloured8982 = result8982 := by
  rw [tree8982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8980 coloured8980 at child
  try dsimp only [live8982, coloured8982]
  rw [child]
  dsimp only [result8980]
  have child := child1
  unfold live8981 coloured8981 at child
  try dsimp only [live8982, coloured8982]
  rw [child]
  dsimp only [result8981]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8983_agree_conditional : tree8983 = literal8983 := by
  rw [tree8983_def]
  rfl
theorem node8983_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8983 live8983 coloured8983 = result8983 := by
  rw [tree8983_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8984_agree_conditional
    (child0 : tree8982 = literal8982)
    (child1 : tree8983 = literal8983) : tree8984 = literal8984 := by
  rw [tree8984_def, child0, child1]
  rfl
theorem node8984_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8982 live8982 coloured8982 = result8982)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8983 live8983 coloured8983 = result8983) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8984 live8984 coloured8984 = result8984 := by
  rw [tree8984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8982 coloured8982 at child
  try dsimp only [live8984, coloured8984]
  rw [child]
  dsimp only [result8982]
  have child := child1
  unfold live8983 coloured8983 at child
  try dsimp only [live8984, coloured8984]
  rw [child]
  dsimp only [result8983]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8985_agree_conditional : tree8985 = literal8985 := by
  rw [tree8985_def]
  rfl
theorem node8985_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8985 live8985 coloured8985 = result8985 := by
  rw [tree8985_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8986_agree_conditional
    (child0 : tree8984 = literal8984)
    (child1 : tree8985 = literal8985) : tree8986 = literal8986 := by
  rw [tree8986_def, child0, child1]
  rfl
theorem node8986_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8984 live8984 coloured8984 = result8984)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8985 live8985 coloured8985 = result8985) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8986 live8986 coloured8986 = result8986 := by
  rw [tree8986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8984 coloured8984 at child
  try dsimp only [live8986, coloured8986]
  rw [child]
  dsimp only [result8984]
  have child := child1
  unfold live8985 coloured8985 at child
  try dsimp only [live8986, coloured8986]
  rw [child]
  dsimp only [result8985]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8987_agree_conditional : tree8987 = literal8987 := by
  rw [tree8987_def]
  rfl
theorem node8987_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8987 live8987 coloured8987 = result8987 := by
  rw [tree8987_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8988_agree_conditional
    (child0 : tree8986 = literal8986)
    (child1 : tree8987 = literal8987) : tree8988 = literal8988 := by
  rw [tree8988_def, child0, child1]
  rfl
theorem node8988_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8986 live8986 coloured8986 = result8986)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8987 live8987 coloured8987 = result8987) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8988 live8988 coloured8988 = result8988 := by
  rw [tree8988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8986 coloured8986 at child
  try dsimp only [live8988, coloured8988]
  rw [child]
  dsimp only [result8986]
  have child := child1
  unfold live8987 coloured8987 at child
  try dsimp only [live8988, coloured8988]
  rw [child]
  dsimp only [result8987]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8989_agree_conditional : tree8989 = literal8989 := by
  rw [tree8989_def]
  rfl
theorem node8989_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8989 live8989 coloured8989 = result8989 := by
  rw [tree8989_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8990_agree_conditional
    (child0 : tree8988 = literal8988)
    (child1 : tree8989 = literal8989) : tree8990 = literal8990 := by
  rw [tree8990_def, child0, child1]
  rfl
theorem node8990_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8988 live8988 coloured8988 = result8988)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8989 live8989 coloured8989 = result8989) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8990 live8990 coloured8990 = result8990 := by
  rw [tree8990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8988 coloured8988 at child
  try dsimp only [live8990, coloured8990]
  rw [child]
  dsimp only [result8988]
  have child := child1
  unfold live8989 coloured8989 at child
  try dsimp only [live8990, coloured8990]
  rw [child]
  dsimp only [result8989]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8991_agree_conditional : tree8991 = literal8991 := by
  rw [tree8991_def]
  rfl
theorem node8991_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8991 live8991 coloured8991 = result8991 := by
  rw [tree8991_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8992_agree_conditional
    (child0 : tree8990 = literal8990)
    (child1 : tree8991 = literal8991) : tree8992 = literal8992 := by
  rw [tree8992_def, child0, child1]
  rfl
theorem node8992_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8990 live8990 coloured8990 = result8990)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8991 live8991 coloured8991 = result8991) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8992 live8992 coloured8992 = result8992 := by
  rw [tree8992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8990 coloured8990 at child
  try dsimp only [live8992, coloured8992]
  rw [child]
  dsimp only [result8990]
  have child := child1
  unfold live8991 coloured8991 at child
  try dsimp only [live8992, coloured8992]
  rw [child]
  dsimp only [result8991]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8993_agree_conditional : tree8993 = literal8993 := by
  rw [tree8993_def]
  rfl
theorem node8993_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8993 live8993 coloured8993 = result8993 := by
  rw [tree8993_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8994_agree_conditional
    (child0 : tree8992 = literal8992)
    (child1 : tree8993 = literal8993) : tree8994 = literal8994 := by
  rw [tree8994_def, child0, child1]
  rfl
theorem node8994_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8992 live8992 coloured8992 = result8992)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8993 live8993 coloured8993 = result8993) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8994 live8994 coloured8994 = result8994 := by
  rw [tree8994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8992 coloured8992 at child
  try dsimp only [live8994, coloured8994]
  rw [child]
  dsimp only [result8992]
  have child := child1
  unfold live8993 coloured8993 at child
  try dsimp only [live8994, coloured8994]
  rw [child]
  dsimp only [result8993]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8995_agree_conditional : tree8995 = literal8995 := by
  rw [tree8995_def]
  rfl
theorem node8995_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8995 live8995 coloured8995 = result8995 := by
  rw [tree8995_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8996_agree_conditional
    (child0 : tree8994 = literal8994)
    (child1 : tree8995 = literal8995) : tree8996 = literal8996 := by
  rw [tree8996_def, child0, child1]
  rfl
theorem node8996_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8994 live8994 coloured8994 = result8994)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8995 live8995 coloured8995 = result8995) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8996 live8996 coloured8996 = result8996 := by
  rw [tree8996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8994 coloured8994 at child
  try dsimp only [live8996, coloured8996]
  rw [child]
  dsimp only [result8994]
  have child := child1
  unfold live8995 coloured8995 at child
  try dsimp only [live8996, coloured8996]
  rw [child]
  dsimp only [result8995]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8997_agree_conditional : tree8997 = literal8997 := by
  rw [tree8997_def]
  rfl
theorem node8997_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8997 live8997 coloured8997 = result8997 := by
  rw [tree8997_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8998_agree_conditional
    (child0 : tree8996 = literal8996)
    (child1 : tree8997 = literal8997) : tree8998 = literal8998 := by
  rw [tree8998_def, child0, child1]
  rfl
theorem node8998_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8996 live8996 coloured8996 = result8996)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8997 live8997 coloured8997 = result8997) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8998 live8998 coloured8998 = result8998 := by
  rw [tree8998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8996 coloured8996 at child
  try dsimp only [live8998, coloured8998]
  rw [child]
  dsimp only [result8996]
  have child := child1
  unfold live8997 coloured8997 at child
  try dsimp only [live8998, coloured8998]
  rw [child]
  dsimp only [result8997]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8999_agree_conditional : tree8999 = literal8999 := by
  rw [tree8999_def]
  rfl
theorem node8999_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8999 live8999 coloured8999 = result8999 := by
  rw [tree8999_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9000_agree_conditional
    (child0 : tree8998 = literal8998)
    (child1 : tree8999 = literal8999) : tree9000 = literal9000 := by
  rw [tree9000_def, child0, child1]
  rfl
theorem node9000_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8998 live8998 coloured8998 = result8998)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8999 live8999 coloured8999 = result8999) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9000 live9000 coloured9000 = result9000 := by
  rw [tree9000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8998 coloured8998 at child
  try dsimp only [live9000, coloured9000]
  rw [child]
  dsimp only [result8998]
  have child := child1
  unfold live8999 coloured8999 at child
  try dsimp only [live9000, coloured9000]
  rw [child]
  dsimp only [result8999]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9001_agree_conditional : tree9001 = literal9001 := by
  rw [tree9001_def]
  rfl
theorem node9001_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9001 live9001 coloured9001 = result9001 := by
  rw [tree9001_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9002_agree_conditional
    (child0 : tree9000 = literal9000)
    (child1 : tree9001 = literal9001) : tree9002 = literal9002 := by
  rw [tree9002_def, child0, child1]
  rfl
theorem node9002_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9000 live9000 coloured9000 = result9000)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9001 live9001 coloured9001 = result9001) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9002 live9002 coloured9002 = result9002 := by
  rw [tree9002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9000 coloured9000 at child
  try dsimp only [live9002, coloured9002]
  rw [child]
  dsimp only [result9000]
  have child := child1
  unfold live9001 coloured9001 at child
  try dsimp only [live9002, coloured9002]
  rw [child]
  dsimp only [result9001]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9003_agree_conditional : tree9003 = literal9003 := by
  rw [tree9003_def]
  rfl
theorem node9003_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9003 live9003 coloured9003 = result9003 := by
  rw [tree9003_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9004_agree_conditional
    (child0 : tree9002 = literal9002)
    (child1 : tree9003 = literal9003) : tree9004 = literal9004 := by
  rw [tree9004_def, child0, child1]
  rfl
theorem node9004_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9002 live9002 coloured9002 = result9002)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9003 live9003 coloured9003 = result9003) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9004 live9004 coloured9004 = result9004 := by
  rw [tree9004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9002 coloured9002 at child
  try dsimp only [live9004, coloured9004]
  rw [child]
  dsimp only [result9002]
  have child := child1
  unfold live9003 coloured9003 at child
  try dsimp only [live9004, coloured9004]
  rw [child]
  dsimp only [result9003]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9005_agree_conditional : tree9005 = literal9005 := by
  rw [tree9005_def]
  rfl
theorem node9005_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9005 live9005 coloured9005 = result9005 := by
  rw [tree9005_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9006_agree_conditional
    (child0 : tree9004 = literal9004)
    (child1 : tree9005 = literal9005) : tree9006 = literal9006 := by
  rw [tree9006_def, child0, child1]
  rfl
theorem node9006_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9004 live9004 coloured9004 = result9004)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9005 live9005 coloured9005 = result9005) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9006 live9006 coloured9006 = result9006 := by
  rw [tree9006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9004 coloured9004 at child
  try dsimp only [live9006, coloured9006]
  rw [child]
  dsimp only [result9004]
  have child := child1
  unfold live9005 coloured9005 at child
  try dsimp only [live9006, coloured9006]
  rw [child]
  dsimp only [result9005]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9007_agree_conditional : tree9007 = literal9007 := by
  rw [tree9007_def]
  rfl
theorem node9007_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9007 live9007 coloured9007 = result9007 := by
  rw [tree9007_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9008_agree_conditional
    (child0 : tree9006 = literal9006)
    (child1 : tree9007 = literal9007) : tree9008 = literal9008 := by
  rw [tree9008_def, child0, child1]
  rfl
theorem node9008_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9006 live9006 coloured9006 = result9006)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9007 live9007 coloured9007 = result9007) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9008 live9008 coloured9008 = result9008 := by
  rw [tree9008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9006 coloured9006 at child
  try dsimp only [live9008, coloured9008]
  rw [child]
  dsimp only [result9006]
  have child := child1
  unfold live9007 coloured9007 at child
  try dsimp only [live9008, coloured9008]
  rw [child]
  dsimp only [result9007]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9009_agree_conditional : tree9009 = literal9009 := by
  rw [tree9009_def]
  rfl
theorem node9009_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9009 live9009 coloured9009 = result9009 := by
  rw [tree9009_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9010_agree_conditional
    (child0 : tree9008 = literal9008)
    (child1 : tree9009 = literal9009) : tree9010 = literal9010 := by
  rw [tree9010_def, child0, child1]
  rfl
theorem node9010_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9008 live9008 coloured9008 = result9008)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9009 live9009 coloured9009 = result9009) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9010 live9010 coloured9010 = result9010 := by
  rw [tree9010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9008 coloured9008 at child
  try dsimp only [live9010, coloured9010]
  rw [child]
  dsimp only [result9008]
  have child := child1
  unfold live9009 coloured9009 at child
  try dsimp only [live9010, coloured9010]
  rw [child]
  dsimp only [result9009]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9011_agree_conditional : tree9011 = literal9011 := by
  rw [tree9011_def]
  rfl
theorem node9011_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9011 live9011 coloured9011 = result9011 := by
  rw [tree9011_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9012_agree_conditional
    (child0 : tree9010 = literal9010)
    (child1 : tree9011 = literal9011) : tree9012 = literal9012 := by
  rw [tree9012_def, child0, child1]
  rfl
theorem node9012_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9010 live9010 coloured9010 = result9010)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9011 live9011 coloured9011 = result9011) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9012 live9012 coloured9012 = result9012 := by
  rw [tree9012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9010 coloured9010 at child
  try dsimp only [live9012, coloured9012]
  rw [child]
  dsimp only [result9010]
  have child := child1
  unfold live9011 coloured9011 at child
  try dsimp only [live9012, coloured9012]
  rw [child]
  dsimp only [result9011]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9013_agree_conditional : tree9013 = literal9013 := by
  rw [tree9013_def]
  rfl
theorem node9013_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9013 live9013 coloured9013 = result9013 := by
  rw [tree9013_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9014_agree_conditional
    (child0 : tree9012 = literal9012)
    (child1 : tree9013 = literal9013) : tree9014 = literal9014 := by
  rw [tree9014_def, child0, child1]
  rfl
theorem node9014_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9012 live9012 coloured9012 = result9012)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9013 live9013 coloured9013 = result9013) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9014 live9014 coloured9014 = result9014 := by
  rw [tree9014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9012 coloured9012 at child
  try dsimp only [live9014, coloured9014]
  rw [child]
  dsimp only [result9012]
  have child := child1
  unfold live9013 coloured9013 at child
  try dsimp only [live9014, coloured9014]
  rw [child]
  dsimp only [result9013]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9015_agree_conditional : tree9015 = literal9015 := by
  rw [tree9015_def]
  rfl
theorem node9015_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9015 live9015 coloured9015 = result9015 := by
  rw [tree9015_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9016_agree_conditional
    (child0 : tree9014 = literal9014)
    (child1 : tree9015 = literal9015) : tree9016 = literal9016 := by
  rw [tree9016_def, child0, child1]
  rfl
theorem node9016_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9014 live9014 coloured9014 = result9014)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9015 live9015 coloured9015 = result9015) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9016 live9016 coloured9016 = result9016 := by
  rw [tree9016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9014 coloured9014 at child
  try dsimp only [live9016, coloured9016]
  rw [child]
  dsimp only [result9014]
  have child := child1
  unfold live9015 coloured9015 at child
  try dsimp only [live9016, coloured9016]
  rw [child]
  dsimp only [result9015]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9017_agree_conditional : tree9017 = literal9017 := by
  rw [tree9017_def]
  rfl
theorem node9017_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9017 live9017 coloured9017 = result9017 := by
  rw [tree9017_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9018_agree_conditional
    (child0 : tree9016 = literal9016)
    (child1 : tree9017 = literal9017) : tree9018 = literal9018 := by
  rw [tree9018_def, child0, child1]
  rfl
theorem node9018_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9016 live9016 coloured9016 = result9016)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9017 live9017 coloured9017 = result9017) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9018 live9018 coloured9018 = result9018 := by
  rw [tree9018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9016 coloured9016 at child
  try dsimp only [live9018, coloured9018]
  rw [child]
  dsimp only [result9016]
  have child := child1
  unfold live9017 coloured9017 at child
  try dsimp only [live9018, coloured9018]
  rw [child]
  dsimp only [result9017]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9019_agree_conditional : tree9019 = literal9019 := by
  rw [tree9019_def]
  rfl
theorem node9019_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9019 live9019 coloured9019 = result9019 := by
  rw [tree9019_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9020_agree_conditional
    (child0 : tree9018 = literal9018)
    (child1 : tree9019 = literal9019) : tree9020 = literal9020 := by
  rw [tree9020_def, child0, child1]
  rfl
theorem node9020_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9018 live9018 coloured9018 = result9018)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9019 live9019 coloured9019 = result9019) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9020 live9020 coloured9020 = result9020 := by
  rw [tree9020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9018 coloured9018 at child
  try dsimp only [live9020, coloured9020]
  rw [child]
  dsimp only [result9018]
  have child := child1
  unfold live9019 coloured9019 at child
  try dsimp only [live9020, coloured9020]
  rw [child]
  dsimp only [result9019]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9021_agree_conditional : tree9021 = literal9021 := by
  rw [tree9021_def]
  rfl
theorem node9021_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9021 live9021 coloured9021 = result9021 := by
  rw [tree9021_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9022_agree_conditional
    (child0 : tree9020 = literal9020)
    (child1 : tree9021 = literal9021) : tree9022 = literal9022 := by
  rw [tree9022_def, child0, child1]
  rfl
theorem node9022_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9020 live9020 coloured9020 = result9020)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9021 live9021 coloured9021 = result9021) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9022 live9022 coloured9022 = result9022 := by
  rw [tree9022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live9020 coloured9020 at child
  try dsimp only [live9022, coloured9022]
  rw [child]
  dsimp only [result9020]
  have child := child1
  unfold live9021 coloured9021 at child
  try dsimp only [live9022, coloured9022]
  rw [child]
  dsimp only [result9021]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree9023_agree_conditional : tree9023 = literal9023 := by
  rw [tree9023_def]
  rfl
theorem node9023_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree9023 live9023 coloured9023 = result9023 := by
  rw [tree9023_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
