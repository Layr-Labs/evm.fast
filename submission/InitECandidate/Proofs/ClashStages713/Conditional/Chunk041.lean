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
theorem tree3936_agree_conditional
    (child0 : tree3934 = literal3934)
    (child1 : tree3935 = literal3935) : tree3936 = literal3936 := by
  rw [tree3936_def, child0, child1]
  rfl
theorem node3936_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3934 live3934 coloured3934 = result3934)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3935 live3935 coloured3935 = result3935) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3936 live3936 coloured3936 = result3936 := by
  rw [tree3936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3934 coloured3934 at child
  try dsimp only [live3936, coloured3936]
  rw [child]
  dsimp only [result3934]
  have child := child1
  unfold live3935 coloured3935 at child
  try dsimp only [live3936, coloured3936]
  rw [child]
  dsimp only [result3935]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3937_agree_conditional : tree3937 = literal3937 := by
  rw [tree3937_def]
  rfl
theorem node3937_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3937 live3937 coloured3937 = result3937 := by
  rw [tree3937_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3938_agree_conditional
    (child0 : tree3936 = literal3936)
    (child1 : tree3937 = literal3937) : tree3938 = literal3938 := by
  rw [tree3938_def, child0, child1]
  rfl
theorem node3938_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3936 live3936 coloured3936 = result3936)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3937 live3937 coloured3937 = result3937) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3938 live3938 coloured3938 = result3938 := by
  rw [tree3938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3936 coloured3936 at child
  try dsimp only [live3938, coloured3938]
  rw [child]
  dsimp only [result3936]
  have child := child1
  unfold live3937 coloured3937 at child
  try dsimp only [live3938, coloured3938]
  rw [child]
  dsimp only [result3937]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3939_agree_conditional : tree3939 = literal3939 := by
  rw [tree3939_def]
  rfl
theorem node3939_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3939 live3939 coloured3939 = result3939 := by
  rw [tree3939_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3940_agree_conditional
    (child0 : tree3938 = literal3938)
    (child1 : tree3939 = literal3939) : tree3940 = literal3940 := by
  rw [tree3940_def, child0, child1]
  rfl
theorem node3940_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3938 live3938 coloured3938 = result3938)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3939 live3939 coloured3939 = result3939) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3940 live3940 coloured3940 = result3940 := by
  rw [tree3940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3938 coloured3938 at child
  try dsimp only [live3940, coloured3940]
  rw [child]
  dsimp only [result3938]
  have child := child1
  unfold live3939 coloured3939 at child
  try dsimp only [live3940, coloured3940]
  rw [child]
  dsimp only [result3939]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3941_agree_conditional : tree3941 = literal3941 := by
  rw [tree3941_def]
  rfl
theorem node3941_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3941 live3941 coloured3941 = result3941 := by
  rw [tree3941_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3942_agree_conditional
    (child0 : tree3940 = literal3940)
    (child1 : tree3941 = literal3941) : tree3942 = literal3942 := by
  rw [tree3942_def, child0, child1]
  rfl
theorem node3942_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3940 live3940 coloured3940 = result3940)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3941 live3941 coloured3941 = result3941) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3942 live3942 coloured3942 = result3942 := by
  rw [tree3942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3940 coloured3940 at child
  try dsimp only [live3942, coloured3942]
  rw [child]
  dsimp only [result3940]
  have child := child1
  unfold live3941 coloured3941 at child
  try dsimp only [live3942, coloured3942]
  rw [child]
  dsimp only [result3941]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3943_agree_conditional : tree3943 = literal3943 := by
  rw [tree3943_def]
  rfl
theorem node3943_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3943 live3943 coloured3943 = result3943 := by
  rw [tree3943_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3944_agree_conditional
    (child0 : tree3942 = literal3942)
    (child1 : tree3943 = literal3943) : tree3944 = literal3944 := by
  rw [tree3944_def, child0, child1]
  rfl
theorem node3944_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3942 live3942 coloured3942 = result3942)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3943 live3943 coloured3943 = result3943) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3944 live3944 coloured3944 = result3944 := by
  rw [tree3944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3942 coloured3942 at child
  try dsimp only [live3944, coloured3944]
  rw [child]
  dsimp only [result3942]
  have child := child1
  unfold live3943 coloured3943 at child
  try dsimp only [live3944, coloured3944]
  rw [child]
  dsimp only [result3943]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3945_agree_conditional : tree3945 = literal3945 := by
  rw [tree3945_def]
  rfl
theorem node3945_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3945 live3945 coloured3945 = result3945 := by
  rw [tree3945_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3946_agree_conditional
    (child0 : tree3944 = literal3944)
    (child1 : tree3945 = literal3945) : tree3946 = literal3946 := by
  rw [tree3946_def, child0, child1]
  rfl
theorem node3946_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3944 live3944 coloured3944 = result3944)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3945 live3945 coloured3945 = result3945) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3946 live3946 coloured3946 = result3946 := by
  rw [tree3946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3944 coloured3944 at child
  try dsimp only [live3946, coloured3946]
  rw [child]
  dsimp only [result3944]
  have child := child1
  unfold live3945 coloured3945 at child
  try dsimp only [live3946, coloured3946]
  rw [child]
  dsimp only [result3945]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3947_agree_conditional : tree3947 = literal3947 := by
  rw [tree3947_def]
  rfl
theorem node3947_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3947 live3947 coloured3947 = result3947 := by
  rw [tree3947_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3948_agree_conditional
    (child0 : tree3946 = literal3946)
    (child1 : tree3947 = literal3947) : tree3948 = literal3948 := by
  rw [tree3948_def, child0, child1]
  rfl
theorem node3948_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3946 live3946 coloured3946 = result3946)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3947 live3947 coloured3947 = result3947) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3948 live3948 coloured3948 = result3948 := by
  rw [tree3948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3946 coloured3946 at child
  try dsimp only [live3948, coloured3948]
  rw [child]
  dsimp only [result3946]
  have child := child1
  unfold live3947 coloured3947 at child
  try dsimp only [live3948, coloured3948]
  rw [child]
  dsimp only [result3947]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3949_agree_conditional : tree3949 = literal3949 := by
  rw [tree3949_def]
  rfl
theorem node3949_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3949 live3949 coloured3949 = result3949 := by
  rw [tree3949_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3950_agree_conditional
    (child0 : tree3948 = literal3948)
    (child1 : tree3949 = literal3949) : tree3950 = literal3950 := by
  rw [tree3950_def, child0, child1]
  rfl
theorem node3950_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3948 live3948 coloured3948 = result3948)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3949 live3949 coloured3949 = result3949) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3950 live3950 coloured3950 = result3950 := by
  rw [tree3950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3948 coloured3948 at child
  try dsimp only [live3950, coloured3950]
  rw [child]
  dsimp only [result3948]
  have child := child1
  unfold live3949 coloured3949 at child
  try dsimp only [live3950, coloured3950]
  rw [child]
  dsimp only [result3949]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3951_agree_conditional : tree3951 = literal3951 := by
  rw [tree3951_def]
  rfl
theorem node3951_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3951 live3951 coloured3951 = result3951 := by
  rw [tree3951_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3952_agree_conditional
    (child0 : tree3950 = literal3950)
    (child1 : tree3951 = literal3951) : tree3952 = literal3952 := by
  rw [tree3952_def, child0, child1]
  rfl
theorem node3952_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3950 live3950 coloured3950 = result3950)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3951 live3951 coloured3951 = result3951) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3952 live3952 coloured3952 = result3952 := by
  rw [tree3952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3950 coloured3950 at child
  try dsimp only [live3952, coloured3952]
  rw [child]
  dsimp only [result3950]
  have child := child1
  unfold live3951 coloured3951 at child
  try dsimp only [live3952, coloured3952]
  rw [child]
  dsimp only [result3951]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3953_agree_conditional : tree3953 = literal3953 := by
  rw [tree3953_def]
  rfl
theorem node3953_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3953 live3953 coloured3953 = result3953 := by
  rw [tree3953_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3954_agree_conditional
    (child0 : tree3952 = literal3952)
    (child1 : tree3953 = literal3953) : tree3954 = literal3954 := by
  rw [tree3954_def, child0, child1]
  rfl
theorem node3954_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3952 live3952 coloured3952 = result3952)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3953 live3953 coloured3953 = result3953) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3954 live3954 coloured3954 = result3954 := by
  rw [tree3954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3952 coloured3952 at child
  try dsimp only [live3954, coloured3954]
  rw [child]
  dsimp only [result3952]
  have child := child1
  unfold live3953 coloured3953 at child
  try dsimp only [live3954, coloured3954]
  rw [child]
  dsimp only [result3953]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3955_agree_conditional : tree3955 = literal3955 := by
  rw [tree3955_def]
  rfl
theorem node3955_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3955 live3955 coloured3955 = result3955 := by
  rw [tree3955_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3956_agree_conditional
    (child0 : tree3954 = literal3954)
    (child1 : tree3955 = literal3955) : tree3956 = literal3956 := by
  rw [tree3956_def, child0, child1]
  rfl
theorem node3956_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3954 live3954 coloured3954 = result3954)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3955 live3955 coloured3955 = result3955) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3956 live3956 coloured3956 = result3956 := by
  rw [tree3956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3954 coloured3954 at child
  try dsimp only [live3956, coloured3956]
  rw [child]
  dsimp only [result3954]
  have child := child1
  unfold live3955 coloured3955 at child
  try dsimp only [live3956, coloured3956]
  rw [child]
  dsimp only [result3955]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3957_agree_conditional : tree3957 = literal3957 := by
  rw [tree3957_def]
  rfl
theorem node3957_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3957 live3957 coloured3957 = result3957 := by
  rw [tree3957_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3958_agree_conditional
    (child0 : tree3956 = literal3956)
    (child1 : tree3957 = literal3957) : tree3958 = literal3958 := by
  rw [tree3958_def, child0, child1]
  rfl
theorem node3958_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3956 live3956 coloured3956 = result3956)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3957 live3957 coloured3957 = result3957) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3958 live3958 coloured3958 = result3958 := by
  rw [tree3958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3956 coloured3956 at child
  try dsimp only [live3958, coloured3958]
  rw [child]
  dsimp only [result3956]
  have child := child1
  unfold live3957 coloured3957 at child
  try dsimp only [live3958, coloured3958]
  rw [child]
  dsimp only [result3957]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3959_agree_conditional : tree3959 = literal3959 := by
  rw [tree3959_def]
  rfl
theorem node3959_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3959 live3959 coloured3959 = result3959 := by
  rw [tree3959_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3960_agree_conditional
    (child0 : tree3958 = literal3958)
    (child1 : tree3959 = literal3959) : tree3960 = literal3960 := by
  rw [tree3960_def, child0, child1]
  rfl
theorem node3960_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3958 live3958 coloured3958 = result3958)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3959 live3959 coloured3959 = result3959) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3960 live3960 coloured3960 = result3960 := by
  rw [tree3960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3958 coloured3958 at child
  try dsimp only [live3960, coloured3960]
  rw [child]
  dsimp only [result3958]
  have child := child1
  unfold live3959 coloured3959 at child
  try dsimp only [live3960, coloured3960]
  rw [child]
  dsimp only [result3959]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3961_agree_conditional : tree3961 = literal3961 := by
  rw [tree3961_def]
  rfl
theorem node3961_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3961 live3961 coloured3961 = result3961 := by
  rw [tree3961_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3962_agree_conditional
    (child0 : tree3960 = literal3960)
    (child1 : tree3961 = literal3961) : tree3962 = literal3962 := by
  rw [tree3962_def, child0, child1]
  rfl
theorem node3962_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3960 live3960 coloured3960 = result3960)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3961 live3961 coloured3961 = result3961) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3962 live3962 coloured3962 = result3962 := by
  rw [tree3962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3960 coloured3960 at child
  try dsimp only [live3962, coloured3962]
  rw [child]
  dsimp only [result3960]
  have child := child1
  unfold live3961 coloured3961 at child
  try dsimp only [live3962, coloured3962]
  rw [child]
  dsimp only [result3961]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3963_agree_conditional : tree3963 = literal3963 := by
  rw [tree3963_def]
  rfl
theorem node3963_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3963 live3963 coloured3963 = result3963 := by
  rw [tree3963_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3964_agree_conditional
    (child0 : tree3962 = literal3962)
    (child1 : tree3963 = literal3963) : tree3964 = literal3964 := by
  rw [tree3964_def, child0, child1]
  rfl
theorem node3964_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3962 live3962 coloured3962 = result3962)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3963 live3963 coloured3963 = result3963) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3964 live3964 coloured3964 = result3964 := by
  rw [tree3964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3962 coloured3962 at child
  try dsimp only [live3964, coloured3964]
  rw [child]
  dsimp only [result3962]
  have child := child1
  unfold live3963 coloured3963 at child
  try dsimp only [live3964, coloured3964]
  rw [child]
  dsimp only [result3963]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3965_agree_conditional : tree3965 = literal3965 := by
  rw [tree3965_def]
  rfl
theorem node3965_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3965 live3965 coloured3965 = result3965 := by
  rw [tree3965_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3966_agree_conditional
    (child0 : tree3964 = literal3964)
    (child1 : tree3965 = literal3965) : tree3966 = literal3966 := by
  rw [tree3966_def, child0, child1]
  rfl
theorem node3966_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3964 live3964 coloured3964 = result3964)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3965 live3965 coloured3965 = result3965) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3966 live3966 coloured3966 = result3966 := by
  rw [tree3966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3964 coloured3964 at child
  try dsimp only [live3966, coloured3966]
  rw [child]
  dsimp only [result3964]
  have child := child1
  unfold live3965 coloured3965 at child
  try dsimp only [live3966, coloured3966]
  rw [child]
  dsimp only [result3965]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3967_agree_conditional : tree3967 = literal3967 := by
  rw [tree3967_def]
  rfl
theorem node3967_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3967 live3967 coloured3967 = result3967 := by
  rw [tree3967_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3968_agree_conditional
    (child0 : tree3966 = literal3966)
    (child1 : tree3967 = literal3967) : tree3968 = literal3968 := by
  rw [tree3968_def, child0, child1]
  rfl
theorem node3968_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3966 live3966 coloured3966 = result3966)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3967 live3967 coloured3967 = result3967) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3968 live3968 coloured3968 = result3968 := by
  rw [tree3968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3966 coloured3966 at child
  try dsimp only [live3968, coloured3968]
  rw [child]
  dsimp only [result3966]
  have child := child1
  unfold live3967 coloured3967 at child
  try dsimp only [live3968, coloured3968]
  rw [child]
  dsimp only [result3967]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3969_agree_conditional : tree3969 = literal3969 := by
  rw [tree3969_def]
  rfl
theorem node3969_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3969 live3969 coloured3969 = result3969 := by
  rw [tree3969_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3970_agree_conditional
    (child0 : tree3968 = literal3968)
    (child1 : tree3969 = literal3969) : tree3970 = literal3970 := by
  rw [tree3970_def, child0, child1]
  rfl
theorem node3970_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3968 live3968 coloured3968 = result3968)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3969 live3969 coloured3969 = result3969) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3970 live3970 coloured3970 = result3970 := by
  rw [tree3970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3968 coloured3968 at child
  try dsimp only [live3970, coloured3970]
  rw [child]
  dsimp only [result3968]
  have child := child1
  unfold live3969 coloured3969 at child
  try dsimp only [live3970, coloured3970]
  rw [child]
  dsimp only [result3969]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3971_agree_conditional : tree3971 = literal3971 := by
  rw [tree3971_def]
  rfl
theorem node3971_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3971 live3971 coloured3971 = result3971 := by
  rw [tree3971_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3972_agree_conditional
    (child0 : tree3970 = literal3970)
    (child1 : tree3971 = literal3971) : tree3972 = literal3972 := by
  rw [tree3972_def, child0, child1]
  rfl
theorem node3972_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3970 live3970 coloured3970 = result3970)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3971 live3971 coloured3971 = result3971) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3972 live3972 coloured3972 = result3972 := by
  rw [tree3972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3970 coloured3970 at child
  try dsimp only [live3972, coloured3972]
  rw [child]
  dsimp only [result3970]
  have child := child1
  unfold live3971 coloured3971 at child
  try dsimp only [live3972, coloured3972]
  rw [child]
  dsimp only [result3971]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3973_agree_conditional : tree3973 = literal3973 := by
  rw [tree3973_def]
  rfl
theorem node3973_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3973 live3973 coloured3973 = result3973 := by
  rw [tree3973_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3974_agree_conditional
    (child0 : tree3972 = literal3972)
    (child1 : tree3973 = literal3973) : tree3974 = literal3974 := by
  rw [tree3974_def, child0, child1]
  rfl
theorem node3974_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3972 live3972 coloured3972 = result3972)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3973 live3973 coloured3973 = result3973) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3974 live3974 coloured3974 = result3974 := by
  rw [tree3974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3972 coloured3972 at child
  try dsimp only [live3974, coloured3974]
  rw [child]
  dsimp only [result3972]
  have child := child1
  unfold live3973 coloured3973 at child
  try dsimp only [live3974, coloured3974]
  rw [child]
  dsimp only [result3973]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3975_agree_conditional : tree3975 = literal3975 := by
  rw [tree3975_def]
  rfl
theorem node3975_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3975 live3975 coloured3975 = result3975 := by
  rw [tree3975_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3976_agree_conditional
    (child0 : tree3974 = literal3974)
    (child1 : tree3975 = literal3975) : tree3976 = literal3976 := by
  rw [tree3976_def, child0, child1]
  rfl
theorem node3976_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3974 live3974 coloured3974 = result3974)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3975 live3975 coloured3975 = result3975) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3976 live3976 coloured3976 = result3976 := by
  rw [tree3976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3974 coloured3974 at child
  try dsimp only [live3976, coloured3976]
  rw [child]
  dsimp only [result3974]
  have child := child1
  unfold live3975 coloured3975 at child
  try dsimp only [live3976, coloured3976]
  rw [child]
  dsimp only [result3975]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3977_agree_conditional : tree3977 = literal3977 := by
  rw [tree3977_def]
  rfl
theorem node3977_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3977 live3977 coloured3977 = result3977 := by
  rw [tree3977_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3978_agree_conditional
    (child0 : tree3976 = literal3976)
    (child1 : tree3977 = literal3977) : tree3978 = literal3978 := by
  rw [tree3978_def, child0, child1]
  rfl
theorem node3978_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3976 live3976 coloured3976 = result3976)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3977 live3977 coloured3977 = result3977) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3978 live3978 coloured3978 = result3978 := by
  rw [tree3978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3976 coloured3976 at child
  try dsimp only [live3978, coloured3978]
  rw [child]
  dsimp only [result3976]
  have child := child1
  unfold live3977 coloured3977 at child
  try dsimp only [live3978, coloured3978]
  rw [child]
  dsimp only [result3977]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3979_agree_conditional : tree3979 = literal3979 := by
  rw [tree3979_def]
  rfl
theorem node3979_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3979 live3979 coloured3979 = result3979 := by
  rw [tree3979_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3980_agree_conditional
    (child0 : tree3978 = literal3978)
    (child1 : tree3979 = literal3979) : tree3980 = literal3980 := by
  rw [tree3980_def, child0, child1]
  rfl
theorem node3980_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3978 live3978 coloured3978 = result3978)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3979 live3979 coloured3979 = result3979) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3980 live3980 coloured3980 = result3980 := by
  rw [tree3980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3978 coloured3978 at child
  try dsimp only [live3980, coloured3980]
  rw [child]
  dsimp only [result3978]
  have child := child1
  unfold live3979 coloured3979 at child
  try dsimp only [live3980, coloured3980]
  rw [child]
  dsimp only [result3979]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3981_agree_conditional : tree3981 = literal3981 := by
  rw [tree3981_def]
  rfl
theorem node3981_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3981 live3981 coloured3981 = result3981 := by
  rw [tree3981_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3982_agree_conditional
    (child0 : tree3980 = literal3980)
    (child1 : tree3981 = literal3981) : tree3982 = literal3982 := by
  rw [tree3982_def, child0, child1]
  rfl
theorem node3982_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3980 live3980 coloured3980 = result3980)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3981 live3981 coloured3981 = result3981) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3982 live3982 coloured3982 = result3982 := by
  rw [tree3982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3980 coloured3980 at child
  try dsimp only [live3982, coloured3982]
  rw [child]
  dsimp only [result3980]
  have child := child1
  unfold live3981 coloured3981 at child
  try dsimp only [live3982, coloured3982]
  rw [child]
  dsimp only [result3981]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3983_agree_conditional : tree3983 = literal3983 := by
  rw [tree3983_def]
  rfl
theorem node3983_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3983 live3983 coloured3983 = result3983 := by
  rw [tree3983_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3984_agree_conditional
    (child0 : tree3982 = literal3982)
    (child1 : tree3983 = literal3983) : tree3984 = literal3984 := by
  rw [tree3984_def, child0, child1]
  rfl
theorem node3984_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3982 live3982 coloured3982 = result3982)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3983 live3983 coloured3983 = result3983) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3984 live3984 coloured3984 = result3984 := by
  rw [tree3984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3982 coloured3982 at child
  try dsimp only [live3984, coloured3984]
  rw [child]
  dsimp only [result3982]
  have child := child1
  unfold live3983 coloured3983 at child
  try dsimp only [live3984, coloured3984]
  rw [child]
  dsimp only [result3983]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3985_agree_conditional : tree3985 = literal3985 := by
  rw [tree3985_def]
  rfl
theorem node3985_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3985 live3985 coloured3985 = result3985 := by
  rw [tree3985_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3986_agree_conditional
    (child0 : tree3984 = literal3984)
    (child1 : tree3985 = literal3985) : tree3986 = literal3986 := by
  rw [tree3986_def, child0, child1]
  rfl
theorem node3986_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3984 live3984 coloured3984 = result3984)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3985 live3985 coloured3985 = result3985) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3986 live3986 coloured3986 = result3986 := by
  rw [tree3986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3984 coloured3984 at child
  try dsimp only [live3986, coloured3986]
  rw [child]
  dsimp only [result3984]
  have child := child1
  unfold live3985 coloured3985 at child
  try dsimp only [live3986, coloured3986]
  rw [child]
  dsimp only [result3985]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3987_agree_conditional : tree3987 = literal3987 := by
  rw [tree3987_def]
  rfl
theorem node3987_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3987 live3987 coloured3987 = result3987 := by
  rw [tree3987_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3988_agree_conditional
    (child0 : tree3986 = literal3986)
    (child1 : tree3987 = literal3987) : tree3988 = literal3988 := by
  rw [tree3988_def, child0, child1]
  rfl
theorem node3988_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3986 live3986 coloured3986 = result3986)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3987 live3987 coloured3987 = result3987) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3988 live3988 coloured3988 = result3988 := by
  rw [tree3988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3986 coloured3986 at child
  try dsimp only [live3988, coloured3988]
  rw [child]
  dsimp only [result3986]
  have child := child1
  unfold live3987 coloured3987 at child
  try dsimp only [live3988, coloured3988]
  rw [child]
  dsimp only [result3987]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3989_agree_conditional : tree3989 = literal3989 := by
  rw [tree3989_def]
  rfl
theorem node3989_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3989 live3989 coloured3989 = result3989 := by
  rw [tree3989_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3990_agree_conditional
    (child0 : tree3988 = literal3988)
    (child1 : tree3989 = literal3989) : tree3990 = literal3990 := by
  rw [tree3990_def, child0, child1]
  rfl
theorem node3990_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3988 live3988 coloured3988 = result3988)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3989 live3989 coloured3989 = result3989) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3990 live3990 coloured3990 = result3990 := by
  rw [tree3990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3988 coloured3988 at child
  try dsimp only [live3990, coloured3990]
  rw [child]
  dsimp only [result3988]
  have child := child1
  unfold live3989 coloured3989 at child
  try dsimp only [live3990, coloured3990]
  rw [child]
  dsimp only [result3989]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3991_agree_conditional : tree3991 = literal3991 := by
  rw [tree3991_def]
  rfl
theorem node3991_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3991 live3991 coloured3991 = result3991 := by
  rw [tree3991_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3992_agree_conditional
    (child0 : tree3990 = literal3990)
    (child1 : tree3991 = literal3991) : tree3992 = literal3992 := by
  rw [tree3992_def, child0, child1]
  rfl
theorem node3992_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3990 live3990 coloured3990 = result3990)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3991 live3991 coloured3991 = result3991) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3992 live3992 coloured3992 = result3992 := by
  rw [tree3992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3990 coloured3990 at child
  try dsimp only [live3992, coloured3992]
  rw [child]
  dsimp only [result3990]
  have child := child1
  unfold live3991 coloured3991 at child
  try dsimp only [live3992, coloured3992]
  rw [child]
  dsimp only [result3991]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3993_agree_conditional : tree3993 = literal3993 := by
  rw [tree3993_def]
  rfl
theorem node3993_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3993 live3993 coloured3993 = result3993 := by
  rw [tree3993_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3994_agree_conditional
    (child0 : tree3992 = literal3992)
    (child1 : tree3993 = literal3993) : tree3994 = literal3994 := by
  rw [tree3994_def, child0, child1]
  rfl
theorem node3994_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3992 live3992 coloured3992 = result3992)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3993 live3993 coloured3993 = result3993) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3994 live3994 coloured3994 = result3994 := by
  rw [tree3994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3992 coloured3992 at child
  try dsimp only [live3994, coloured3994]
  rw [child]
  dsimp only [result3992]
  have child := child1
  unfold live3993 coloured3993 at child
  try dsimp only [live3994, coloured3994]
  rw [child]
  dsimp only [result3993]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3995_agree_conditional : tree3995 = literal3995 := by
  rw [tree3995_def]
  rfl
theorem node3995_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3995 live3995 coloured3995 = result3995 := by
  rw [tree3995_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3996_agree_conditional
    (child0 : tree3994 = literal3994)
    (child1 : tree3995 = literal3995) : tree3996 = literal3996 := by
  rw [tree3996_def, child0, child1]
  rfl
theorem node3996_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3994 live3994 coloured3994 = result3994)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3995 live3995 coloured3995 = result3995) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3996 live3996 coloured3996 = result3996 := by
  rw [tree3996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3994 coloured3994 at child
  try dsimp only [live3996, coloured3996]
  rw [child]
  dsimp only [result3994]
  have child := child1
  unfold live3995 coloured3995 at child
  try dsimp only [live3996, coloured3996]
  rw [child]
  dsimp only [result3995]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3997_agree_conditional : tree3997 = literal3997 := by
  rw [tree3997_def]
  rfl
theorem node3997_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3997 live3997 coloured3997 = result3997 := by
  rw [tree3997_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3998_agree_conditional
    (child0 : tree3996 = literal3996)
    (child1 : tree3997 = literal3997) : tree3998 = literal3998 := by
  rw [tree3998_def, child0, child1]
  rfl
theorem node3998_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3996 live3996 coloured3996 = result3996)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3997 live3997 coloured3997 = result3997) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3998 live3998 coloured3998 = result3998 := by
  rw [tree3998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3996 coloured3996 at child
  try dsimp only [live3998, coloured3998]
  rw [child]
  dsimp only [result3996]
  have child := child1
  unfold live3997 coloured3997 at child
  try dsimp only [live3998, coloured3998]
  rw [child]
  dsimp only [result3997]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree3999_agree_conditional : tree3999 = literal3999 := by
  rw [tree3999_def]
  rfl
theorem node3999_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3999 live3999 coloured3999 = result3999 := by
  rw [tree3999_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4000_agree_conditional
    (child0 : tree3998 = literal3998)
    (child1 : tree3999 = literal3999) : tree4000 = literal4000 := by
  rw [tree4000_def, child0, child1]
  rfl
theorem node4000_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3998 live3998 coloured3998 = result3998)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3999 live3999 coloured3999 = result3999) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4000 live4000 coloured4000 = result4000 := by
  rw [tree4000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live3998 coloured3998 at child
  try dsimp only [live4000, coloured4000]
  rw [child]
  dsimp only [result3998]
  have child := child1
  unfold live3999 coloured3999 at child
  try dsimp only [live4000, coloured4000]
  rw [child]
  dsimp only [result3999]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4001_agree_conditional : tree4001 = literal4001 := by
  rw [tree4001_def]
  rfl
theorem node4001_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4001 live4001 coloured4001 = result4001 := by
  rw [tree4001_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4002_agree_conditional
    (child0 : tree4000 = literal4000)
    (child1 : tree4001 = literal4001) : tree4002 = literal4002 := by
  rw [tree4002_def, child0, child1]
  rfl
theorem node4002_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4000 live4000 coloured4000 = result4000)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4001 live4001 coloured4001 = result4001) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4002 live4002 coloured4002 = result4002 := by
  rw [tree4002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4000 coloured4000 at child
  try dsimp only [live4002, coloured4002]
  rw [child]
  dsimp only [result4000]
  have child := child1
  unfold live4001 coloured4001 at child
  try dsimp only [live4002, coloured4002]
  rw [child]
  dsimp only [result4001]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4003_agree_conditional : tree4003 = literal4003 := by
  rw [tree4003_def]
  rfl
theorem node4003_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4003 live4003 coloured4003 = result4003 := by
  rw [tree4003_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4004_agree_conditional
    (child0 : tree4002 = literal4002)
    (child1 : tree4003 = literal4003) : tree4004 = literal4004 := by
  rw [tree4004_def, child0, child1]
  rfl
theorem node4004_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4002 live4002 coloured4002 = result4002)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4003 live4003 coloured4003 = result4003) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4004 live4004 coloured4004 = result4004 := by
  rw [tree4004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4002 coloured4002 at child
  try dsimp only [live4004, coloured4004]
  rw [child]
  dsimp only [result4002]
  have child := child1
  unfold live4003 coloured4003 at child
  try dsimp only [live4004, coloured4004]
  rw [child]
  dsimp only [result4003]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4005_agree_conditional : tree4005 = literal4005 := by
  rw [tree4005_def]
  rfl
theorem node4005_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4005 live4005 coloured4005 = result4005 := by
  rw [tree4005_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4006_agree_conditional
    (child0 : tree4004 = literal4004)
    (child1 : tree4005 = literal4005) : tree4006 = literal4006 := by
  rw [tree4006_def, child0, child1]
  rfl
theorem node4006_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4004 live4004 coloured4004 = result4004)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4005 live4005 coloured4005 = result4005) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4006 live4006 coloured4006 = result4006 := by
  rw [tree4006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4004 coloured4004 at child
  try dsimp only [live4006, coloured4006]
  rw [child]
  dsimp only [result4004]
  have child := child1
  unfold live4005 coloured4005 at child
  try dsimp only [live4006, coloured4006]
  rw [child]
  dsimp only [result4005]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4007_agree_conditional : tree4007 = literal4007 := by
  rw [tree4007_def]
  rfl
theorem node4007_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4007 live4007 coloured4007 = result4007 := by
  rw [tree4007_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4008_agree_conditional
    (child0 : tree4006 = literal4006)
    (child1 : tree4007 = literal4007) : tree4008 = literal4008 := by
  rw [tree4008_def, child0, child1]
  rfl
theorem node4008_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4006 live4006 coloured4006 = result4006)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4007 live4007 coloured4007 = result4007) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4008 live4008 coloured4008 = result4008 := by
  rw [tree4008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4006 coloured4006 at child
  try dsimp only [live4008, coloured4008]
  rw [child]
  dsimp only [result4006]
  have child := child1
  unfold live4007 coloured4007 at child
  try dsimp only [live4008, coloured4008]
  rw [child]
  dsimp only [result4007]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4009_agree_conditional : tree4009 = literal4009 := by
  rw [tree4009_def]
  rfl
theorem node4009_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4009 live4009 coloured4009 = result4009 := by
  rw [tree4009_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4010_agree_conditional
    (child0 : tree4008 = literal4008)
    (child1 : tree4009 = literal4009) : tree4010 = literal4010 := by
  rw [tree4010_def, child0, child1]
  rfl
theorem node4010_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4008 live4008 coloured4008 = result4008)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4009 live4009 coloured4009 = result4009) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4010 live4010 coloured4010 = result4010 := by
  rw [tree4010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4008 coloured4008 at child
  try dsimp only [live4010, coloured4010]
  rw [child]
  dsimp only [result4008]
  have child := child1
  unfold live4009 coloured4009 at child
  try dsimp only [live4010, coloured4010]
  rw [child]
  dsimp only [result4009]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4011_agree_conditional : tree4011 = literal4011 := by
  rw [tree4011_def]
  rfl
theorem node4011_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4011 live4011 coloured4011 = result4011 := by
  rw [tree4011_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4012_agree_conditional
    (child0 : tree4010 = literal4010)
    (child1 : tree4011 = literal4011) : tree4012 = literal4012 := by
  rw [tree4012_def, child0, child1]
  rfl
theorem node4012_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4010 live4010 coloured4010 = result4010)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4011 live4011 coloured4011 = result4011) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4012 live4012 coloured4012 = result4012 := by
  rw [tree4012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4010 coloured4010 at child
  try dsimp only [live4012, coloured4012]
  rw [child]
  dsimp only [result4010]
  have child := child1
  unfold live4011 coloured4011 at child
  try dsimp only [live4012, coloured4012]
  rw [child]
  dsimp only [result4011]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4013_agree_conditional : tree4013 = literal4013 := by
  rw [tree4013_def]
  rfl
theorem node4013_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4013 live4013 coloured4013 = result4013 := by
  rw [tree4013_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4014_agree_conditional
    (child0 : tree4012 = literal4012)
    (child1 : tree4013 = literal4013) : tree4014 = literal4014 := by
  rw [tree4014_def, child0, child1]
  rfl
theorem node4014_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4012 live4012 coloured4012 = result4012)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4013 live4013 coloured4013 = result4013) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4014 live4014 coloured4014 = result4014 := by
  rw [tree4014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4012 coloured4012 at child
  try dsimp only [live4014, coloured4014]
  rw [child]
  dsimp only [result4012]
  have child := child1
  unfold live4013 coloured4013 at child
  try dsimp only [live4014, coloured4014]
  rw [child]
  dsimp only [result4013]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4015_agree_conditional : tree4015 = literal4015 := by
  rw [tree4015_def]
  rfl
theorem node4015_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4015 live4015 coloured4015 = result4015 := by
  rw [tree4015_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4016_agree_conditional
    (child0 : tree4014 = literal4014)
    (child1 : tree4015 = literal4015) : tree4016 = literal4016 := by
  rw [tree4016_def, child0, child1]
  rfl
theorem node4016_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4014 live4014 coloured4014 = result4014)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4015 live4015 coloured4015 = result4015) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4016 live4016 coloured4016 = result4016 := by
  rw [tree4016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4014 coloured4014 at child
  try dsimp only [live4016, coloured4016]
  rw [child]
  dsimp only [result4014]
  have child := child1
  unfold live4015 coloured4015 at child
  try dsimp only [live4016, coloured4016]
  rw [child]
  dsimp only [result4015]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4017_agree_conditional : tree4017 = literal4017 := by
  rw [tree4017_def]
  rfl
theorem node4017_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4017 live4017 coloured4017 = result4017 := by
  rw [tree4017_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4018_agree_conditional
    (child0 : tree4016 = literal4016)
    (child1 : tree4017 = literal4017) : tree4018 = literal4018 := by
  rw [tree4018_def, child0, child1]
  rfl
theorem node4018_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4016 live4016 coloured4016 = result4016)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4017 live4017 coloured4017 = result4017) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4018 live4018 coloured4018 = result4018 := by
  rw [tree4018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4016 coloured4016 at child
  try dsimp only [live4018, coloured4018]
  rw [child]
  dsimp only [result4016]
  have child := child1
  unfold live4017 coloured4017 at child
  try dsimp only [live4018, coloured4018]
  rw [child]
  dsimp only [result4017]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4019_agree_conditional : tree4019 = literal4019 := by
  rw [tree4019_def]
  rfl
theorem node4019_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4019 live4019 coloured4019 = result4019 := by
  rw [tree4019_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4020_agree_conditional
    (child0 : tree4018 = literal4018)
    (child1 : tree4019 = literal4019) : tree4020 = literal4020 := by
  rw [tree4020_def, child0, child1]
  rfl
theorem node4020_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4018 live4018 coloured4018 = result4018)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4019 live4019 coloured4019 = result4019) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4020 live4020 coloured4020 = result4020 := by
  rw [tree4020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4018 coloured4018 at child
  try dsimp only [live4020, coloured4020]
  rw [child]
  dsimp only [result4018]
  have child := child1
  unfold live4019 coloured4019 at child
  try dsimp only [live4020, coloured4020]
  rw [child]
  dsimp only [result4019]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4021_agree_conditional : tree4021 = literal4021 := by
  rw [tree4021_def]
  rfl
theorem node4021_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4021 live4021 coloured4021 = result4021 := by
  rw [tree4021_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4022_agree_conditional
    (child0 : tree4020 = literal4020)
    (child1 : tree4021 = literal4021) : tree4022 = literal4022 := by
  rw [tree4022_def, child0, child1]
  rfl
theorem node4022_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4020 live4020 coloured4020 = result4020)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4021 live4021 coloured4021 = result4021) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4022 live4022 coloured4022 = result4022 := by
  rw [tree4022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4020 coloured4020 at child
  try dsimp only [live4022, coloured4022]
  rw [child]
  dsimp only [result4020]
  have child := child1
  unfold live4021 coloured4021 at child
  try dsimp only [live4022, coloured4022]
  rw [child]
  dsimp only [result4021]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4023_agree_conditional : tree4023 = literal4023 := by
  rw [tree4023_def]
  rfl
theorem node4023_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4023 live4023 coloured4023 = result4023 := by
  rw [tree4023_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4024_agree_conditional
    (child0 : tree4022 = literal4022)
    (child1 : tree4023 = literal4023) : tree4024 = literal4024 := by
  rw [tree4024_def, child0, child1]
  rfl
theorem node4024_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4022 live4022 coloured4022 = result4022)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4023 live4023 coloured4023 = result4023) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4024 live4024 coloured4024 = result4024 := by
  rw [tree4024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4022 coloured4022 at child
  try dsimp only [live4024, coloured4024]
  rw [child]
  dsimp only [result4022]
  have child := child1
  unfold live4023 coloured4023 at child
  try dsimp only [live4024, coloured4024]
  rw [child]
  dsimp only [result4023]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4025_agree_conditional : tree4025 = literal4025 := by
  rw [tree4025_def]
  rfl
theorem node4025_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4025 live4025 coloured4025 = result4025 := by
  rw [tree4025_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4026_agree_conditional
    (child0 : tree4024 = literal4024)
    (child1 : tree4025 = literal4025) : tree4026 = literal4026 := by
  rw [tree4026_def, child0, child1]
  rfl
theorem node4026_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4024 live4024 coloured4024 = result4024)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4025 live4025 coloured4025 = result4025) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4026 live4026 coloured4026 = result4026 := by
  rw [tree4026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4024 coloured4024 at child
  try dsimp only [live4026, coloured4026]
  rw [child]
  dsimp only [result4024]
  have child := child1
  unfold live4025 coloured4025 at child
  try dsimp only [live4026, coloured4026]
  rw [child]
  dsimp only [result4025]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4027_agree_conditional : tree4027 = literal4027 := by
  rw [tree4027_def]
  rfl
theorem node4027_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4027 live4027 coloured4027 = result4027 := by
  rw [tree4027_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4028_agree_conditional
    (child0 : tree4026 = literal4026)
    (child1 : tree4027 = literal4027) : tree4028 = literal4028 := by
  rw [tree4028_def, child0, child1]
  rfl
theorem node4028_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4026 live4026 coloured4026 = result4026)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4027 live4027 coloured4027 = result4027) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4028 live4028 coloured4028 = result4028 := by
  rw [tree4028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4026 coloured4026 at child
  try dsimp only [live4028, coloured4028]
  rw [child]
  dsimp only [result4026]
  have child := child1
  unfold live4027 coloured4027 at child
  try dsimp only [live4028, coloured4028]
  rw [child]
  dsimp only [result4027]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4029_agree_conditional : tree4029 = literal4029 := by
  rw [tree4029_def]
  rfl
theorem node4029_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4029 live4029 coloured4029 = result4029 := by
  rw [tree4029_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4030_agree_conditional
    (child0 : tree4028 = literal4028)
    (child1 : tree4029 = literal4029) : tree4030 = literal4030 := by
  rw [tree4030_def, child0, child1]
  rfl
theorem node4030_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4028 live4028 coloured4028 = result4028)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4029 live4029 coloured4029 = result4029) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4030 live4030 coloured4030 = result4030 := by
  rw [tree4030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live4028 coloured4028 at child
  try dsimp only [live4030, coloured4030]
  rw [child]
  dsimp only [result4028]
  have child := child1
  unfold live4029 coloured4029 at child
  try dsimp only [live4030, coloured4030]
  rw [child]
  dsimp only [result4029]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree4031_agree_conditional : tree4031 = literal4031 := by
  rw [tree4031_def]
  rfl
theorem node4031_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4031 live4031 coloured4031 = result4031 := by
  rw [tree4031_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
