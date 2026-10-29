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
theorem tree10944_agree_conditional
    (child0 : tree10942 = literal10942)
    (child1 : tree10943 = literal10943) : tree10944 = literal10944 := by
  rw [tree10944_def, child0, child1]
  rfl
theorem node10944_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10942 live10942 coloured10942 = result10942)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10943 live10943 coloured10943 = result10943) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10944 live10944 coloured10944 = result10944 := by
  rw [tree10944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10942 coloured10942 at child
  try dsimp only [live10944, coloured10944]
  rw [child]
  dsimp only [result10942]
  have child := child1
  unfold live10943 coloured10943 at child
  try dsimp only [live10944, coloured10944]
  rw [child]
  dsimp only [result10943]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10945_agree_conditional : tree10945 = literal10945 := by
  rw [tree10945_def]
  rfl
theorem node10945_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10945 live10945 coloured10945 = result10945 := by
  rw [tree10945_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10946_agree_conditional
    (child0 : tree10944 = literal10944)
    (child1 : tree10945 = literal10945) : tree10946 = literal10946 := by
  rw [tree10946_def, child0, child1]
  rfl
theorem node10946_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10944 live10944 coloured10944 = result10944)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10945 live10945 coloured10945 = result10945) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10946 live10946 coloured10946 = result10946 := by
  rw [tree10946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10944 coloured10944 at child
  try dsimp only [live10946, coloured10946]
  rw [child]
  dsimp only [result10944]
  have child := child1
  unfold live10945 coloured10945 at child
  try dsimp only [live10946, coloured10946]
  rw [child]
  dsimp only [result10945]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10947_agree_conditional : tree10947 = literal10947 := by
  rw [tree10947_def]
  rfl
theorem node10947_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10947 live10947 coloured10947 = result10947 := by
  rw [tree10947_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10948_agree_conditional
    (child0 : tree10946 = literal10946)
    (child1 : tree10947 = literal10947) : tree10948 = literal10948 := by
  rw [tree10948_def, child0, child1]
  rfl
theorem node10948_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10946 live10946 coloured10946 = result10946)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10947 live10947 coloured10947 = result10947) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10948 live10948 coloured10948 = result10948 := by
  rw [tree10948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10946 coloured10946 at child
  try dsimp only [live10948, coloured10948]
  rw [child]
  dsimp only [result10946]
  have child := child1
  unfold live10947 coloured10947 at child
  try dsimp only [live10948, coloured10948]
  rw [child]
  dsimp only [result10947]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10949_agree_conditional : tree10949 = literal10949 := by
  rw [tree10949_def]
  rfl
theorem node10949_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10949 live10949 coloured10949 = result10949 := by
  rw [tree10949_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10950_agree_conditional
    (child0 : tree10948 = literal10948)
    (child1 : tree10949 = literal10949) : tree10950 = literal10950 := by
  rw [tree10950_def, child0, child1]
  rfl
theorem node10950_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10948 live10948 coloured10948 = result10948)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10949 live10949 coloured10949 = result10949) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10950 live10950 coloured10950 = result10950 := by
  rw [tree10950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10948 coloured10948 at child
  try dsimp only [live10950, coloured10950]
  rw [child]
  dsimp only [result10948]
  have child := child1
  unfold live10949 coloured10949 at child
  try dsimp only [live10950, coloured10950]
  rw [child]
  dsimp only [result10949]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10951_agree_conditional : tree10951 = literal10951 := by
  rw [tree10951_def]
  rfl
theorem node10951_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10951 live10951 coloured10951 = result10951 := by
  rw [tree10951_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10952_agree_conditional
    (child0 : tree10950 = literal10950)
    (child1 : tree10951 = literal10951) : tree10952 = literal10952 := by
  rw [tree10952_def, child0, child1]
  rfl
theorem node10952_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10950 live10950 coloured10950 = result10950)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10951 live10951 coloured10951 = result10951) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10952 live10952 coloured10952 = result10952 := by
  rw [tree10952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10950 coloured10950 at child
  try dsimp only [live10952, coloured10952]
  rw [child]
  dsimp only [result10950]
  have child := child1
  unfold live10951 coloured10951 at child
  try dsimp only [live10952, coloured10952]
  rw [child]
  dsimp only [result10951]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10953_agree_conditional : tree10953 = literal10953 := by
  rw [tree10953_def]
  rfl
theorem node10953_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10953 live10953 coloured10953 = result10953 := by
  rw [tree10953_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10954_agree_conditional
    (child0 : tree10952 = literal10952)
    (child1 : tree10953 = literal10953) : tree10954 = literal10954 := by
  rw [tree10954_def, child0, child1]
  rfl
theorem node10954_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10952 live10952 coloured10952 = result10952)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10953 live10953 coloured10953 = result10953) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10954 live10954 coloured10954 = result10954 := by
  rw [tree10954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10952 coloured10952 at child
  try dsimp only [live10954, coloured10954]
  rw [child]
  dsimp only [result10952]
  have child := child1
  unfold live10953 coloured10953 at child
  try dsimp only [live10954, coloured10954]
  rw [child]
  dsimp only [result10953]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10955_agree_conditional : tree10955 = literal10955 := by
  rw [tree10955_def]
  rfl
theorem node10955_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10955 live10955 coloured10955 = result10955 := by
  rw [tree10955_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10956_agree_conditional
    (child0 : tree10954 = literal10954)
    (child1 : tree10955 = literal10955) : tree10956 = literal10956 := by
  rw [tree10956_def, child0, child1]
  rfl
theorem node10956_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10954 live10954 coloured10954 = result10954)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10955 live10955 coloured10955 = result10955) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10956 live10956 coloured10956 = result10956 := by
  rw [tree10956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10954 coloured10954 at child
  try dsimp only [live10956, coloured10956]
  rw [child]
  dsimp only [result10954]
  have child := child1
  unfold live10955 coloured10955 at child
  try dsimp only [live10956, coloured10956]
  rw [child]
  dsimp only [result10955]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10957_agree_conditional : tree10957 = literal10957 := by
  rw [tree10957_def]
  rfl
theorem node10957_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10957 live10957 coloured10957 = result10957 := by
  rw [tree10957_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10958_agree_conditional
    (child0 : tree10956 = literal10956)
    (child1 : tree10957 = literal10957) : tree10958 = literal10958 := by
  rw [tree10958_def, child0, child1]
  rfl
theorem node10958_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10956 live10956 coloured10956 = result10956)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10957 live10957 coloured10957 = result10957) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10958 live10958 coloured10958 = result10958 := by
  rw [tree10958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10956 coloured10956 at child
  try dsimp only [live10958, coloured10958]
  rw [child]
  dsimp only [result10956]
  have child := child1
  unfold live10957 coloured10957 at child
  try dsimp only [live10958, coloured10958]
  rw [child]
  dsimp only [result10957]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10959_agree_conditional : tree10959 = literal10959 := by
  rw [tree10959_def]
  rfl
theorem node10959_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10959 live10959 coloured10959 = result10959 := by
  rw [tree10959_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10960_agree_conditional
    (child0 : tree10958 = literal10958)
    (child1 : tree10959 = literal10959) : tree10960 = literal10960 := by
  rw [tree10960_def, child0, child1]
  rfl
theorem node10960_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10958 live10958 coloured10958 = result10958)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10959 live10959 coloured10959 = result10959) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10960 live10960 coloured10960 = result10960 := by
  rw [tree10960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10958 coloured10958 at child
  try dsimp only [live10960, coloured10960]
  rw [child]
  dsimp only [result10958]
  have child := child1
  unfold live10959 coloured10959 at child
  try dsimp only [live10960, coloured10960]
  rw [child]
  dsimp only [result10959]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10961_agree_conditional : tree10961 = literal10961 := by
  rw [tree10961_def]
  rfl
theorem node10961_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10961 live10961 coloured10961 = result10961 := by
  rw [tree10961_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10962_agree_conditional
    (child0 : tree10960 = literal10960)
    (child1 : tree10961 = literal10961) : tree10962 = literal10962 := by
  rw [tree10962_def, child0, child1]
  rfl
theorem node10962_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10960 live10960 coloured10960 = result10960)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10961 live10961 coloured10961 = result10961) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10962 live10962 coloured10962 = result10962 := by
  rw [tree10962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10960 coloured10960 at child
  try dsimp only [live10962, coloured10962]
  rw [child]
  dsimp only [result10960]
  have child := child1
  unfold live10961 coloured10961 at child
  try dsimp only [live10962, coloured10962]
  rw [child]
  dsimp only [result10961]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10963_agree_conditional : tree10963 = literal10963 := by
  rw [tree10963_def]
  rfl
theorem node10963_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10963 live10963 coloured10963 = result10963 := by
  rw [tree10963_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10964_agree_conditional
    (child0 : tree10962 = literal10962)
    (child1 : tree10963 = literal10963) : tree10964 = literal10964 := by
  rw [tree10964_def, child0, child1]
  rfl
theorem node10964_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10962 live10962 coloured10962 = result10962)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10963 live10963 coloured10963 = result10963) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10964 live10964 coloured10964 = result10964 := by
  rw [tree10964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10962 coloured10962 at child
  try dsimp only [live10964, coloured10964]
  rw [child]
  dsimp only [result10962]
  have child := child1
  unfold live10963 coloured10963 at child
  try dsimp only [live10964, coloured10964]
  rw [child]
  dsimp only [result10963]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10965_agree_conditional : tree10965 = literal10965 := by
  rw [tree10965_def]
  rfl
theorem node10965_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10965 live10965 coloured10965 = result10965 := by
  rw [tree10965_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10966_agree_conditional
    (child0 : tree10964 = literal10964)
    (child1 : tree10965 = literal10965) : tree10966 = literal10966 := by
  rw [tree10966_def, child0, child1]
  rfl
theorem node10966_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10964 live10964 coloured10964 = result10964)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10965 live10965 coloured10965 = result10965) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10966 live10966 coloured10966 = result10966 := by
  rw [tree10966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10964 coloured10964 at child
  try dsimp only [live10966, coloured10966]
  rw [child]
  dsimp only [result10964]
  have child := child1
  unfold live10965 coloured10965 at child
  try dsimp only [live10966, coloured10966]
  rw [child]
  dsimp only [result10965]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10967_agree_conditional : tree10967 = literal10967 := by
  rw [tree10967_def]
  rfl
theorem node10967_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10967 live10967 coloured10967 = result10967 := by
  rw [tree10967_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10968_agree_conditional
    (child0 : tree10966 = literal10966)
    (child1 : tree10967 = literal10967) : tree10968 = literal10968 := by
  rw [tree10968_def, child0, child1]
  rfl
theorem node10968_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10966 live10966 coloured10966 = result10966)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10967 live10967 coloured10967 = result10967) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10968 live10968 coloured10968 = result10968 := by
  rw [tree10968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10966 coloured10966 at child
  try dsimp only [live10968, coloured10968]
  rw [child]
  dsimp only [result10966]
  have child := child1
  unfold live10967 coloured10967 at child
  try dsimp only [live10968, coloured10968]
  rw [child]
  dsimp only [result10967]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10969_agree_conditional : tree10969 = literal10969 := by
  rw [tree10969_def]
  rfl
theorem node10969_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10969 live10969 coloured10969 = result10969 := by
  rw [tree10969_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10970_agree_conditional
    (child0 : tree10968 = literal10968)
    (child1 : tree10969 = literal10969) : tree10970 = literal10970 := by
  rw [tree10970_def, child0, child1]
  rfl
theorem node10970_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10968 live10968 coloured10968 = result10968)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10969 live10969 coloured10969 = result10969) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10970 live10970 coloured10970 = result10970 := by
  rw [tree10970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10968 coloured10968 at child
  try dsimp only [live10970, coloured10970]
  rw [child]
  dsimp only [result10968]
  have child := child1
  unfold live10969 coloured10969 at child
  try dsimp only [live10970, coloured10970]
  rw [child]
  dsimp only [result10969]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10971_agree_conditional : tree10971 = literal10971 := by
  rw [tree10971_def]
  rfl
theorem node10971_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10971 live10971 coloured10971 = result10971 := by
  rw [tree10971_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10972_agree_conditional
    (child0 : tree10970 = literal10970)
    (child1 : tree10971 = literal10971) : tree10972 = literal10972 := by
  rw [tree10972_def, child0, child1]
  rfl
theorem node10972_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10970 live10970 coloured10970 = result10970)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10971 live10971 coloured10971 = result10971) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10972 live10972 coloured10972 = result10972 := by
  rw [tree10972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10970 coloured10970 at child
  try dsimp only [live10972, coloured10972]
  rw [child]
  dsimp only [result10970]
  have child := child1
  unfold live10971 coloured10971 at child
  try dsimp only [live10972, coloured10972]
  rw [child]
  dsimp only [result10971]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10973_agree_conditional : tree10973 = literal10973 := by
  rw [tree10973_def]
  rfl
theorem node10973_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10973 live10973 coloured10973 = result10973 := by
  rw [tree10973_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10974_agree_conditional
    (child0 : tree10972 = literal10972)
    (child1 : tree10973 = literal10973) : tree10974 = literal10974 := by
  rw [tree10974_def, child0, child1]
  rfl
theorem node10974_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10972 live10972 coloured10972 = result10972)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10973 live10973 coloured10973 = result10973) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10974 live10974 coloured10974 = result10974 := by
  rw [tree10974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10972 coloured10972 at child
  try dsimp only [live10974, coloured10974]
  rw [child]
  dsimp only [result10972]
  have child := child1
  unfold live10973 coloured10973 at child
  try dsimp only [live10974, coloured10974]
  rw [child]
  dsimp only [result10973]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10975_agree_conditional : tree10975 = literal10975 := by
  rw [tree10975_def]
  rfl
theorem node10975_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10975 live10975 coloured10975 = result10975 := by
  rw [tree10975_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10976_agree_conditional
    (child0 : tree10974 = literal10974)
    (child1 : tree10975 = literal10975) : tree10976 = literal10976 := by
  rw [tree10976_def, child0, child1]
  rfl
theorem node10976_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10974 live10974 coloured10974 = result10974)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10975 live10975 coloured10975 = result10975) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10976 live10976 coloured10976 = result10976 := by
  rw [tree10976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10974 coloured10974 at child
  try dsimp only [live10976, coloured10976]
  rw [child]
  dsimp only [result10974]
  have child := child1
  unfold live10975 coloured10975 at child
  try dsimp only [live10976, coloured10976]
  rw [child]
  dsimp only [result10975]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10977_agree_conditional : tree10977 = literal10977 := by
  rw [tree10977_def]
  rfl
theorem node10977_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10977 live10977 coloured10977 = result10977 := by
  rw [tree10977_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10978_agree_conditional
    (child0 : tree10976 = literal10976)
    (child1 : tree10977 = literal10977) : tree10978 = literal10978 := by
  rw [tree10978_def, child0, child1]
  rfl
theorem node10978_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10976 live10976 coloured10976 = result10976)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10977 live10977 coloured10977 = result10977) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10978 live10978 coloured10978 = result10978 := by
  rw [tree10978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10976 coloured10976 at child
  try dsimp only [live10978, coloured10978]
  rw [child]
  dsimp only [result10976]
  have child := child1
  unfold live10977 coloured10977 at child
  try dsimp only [live10978, coloured10978]
  rw [child]
  dsimp only [result10977]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10979_agree_conditional : tree10979 = literal10979 := by
  rw [tree10979_def]
  rfl
theorem node10979_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10979 live10979 coloured10979 = result10979 := by
  rw [tree10979_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10980_agree_conditional
    (child0 : tree10978 = literal10978)
    (child1 : tree10979 = literal10979) : tree10980 = literal10980 := by
  rw [tree10980_def, child0, child1]
  rfl
theorem node10980_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10978 live10978 coloured10978 = result10978)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10979 live10979 coloured10979 = result10979) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10980 live10980 coloured10980 = result10980 := by
  rw [tree10980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10978 coloured10978 at child
  try dsimp only [live10980, coloured10980]
  rw [child]
  dsimp only [result10978]
  have child := child1
  unfold live10979 coloured10979 at child
  try dsimp only [live10980, coloured10980]
  rw [child]
  dsimp only [result10979]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10981_agree_conditional : tree10981 = literal10981 := by
  rw [tree10981_def]
  rfl
theorem node10981_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10981 live10981 coloured10981 = result10981 := by
  rw [tree10981_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10982_agree_conditional
    (child0 : tree10980 = literal10980)
    (child1 : tree10981 = literal10981) : tree10982 = literal10982 := by
  rw [tree10982_def, child0, child1]
  rfl
theorem node10982_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10980 live10980 coloured10980 = result10980)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10981 live10981 coloured10981 = result10981) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10982 live10982 coloured10982 = result10982 := by
  rw [tree10982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10980 coloured10980 at child
  try dsimp only [live10982, coloured10982]
  rw [child]
  dsimp only [result10980]
  have child := child1
  unfold live10981 coloured10981 at child
  try dsimp only [live10982, coloured10982]
  rw [child]
  dsimp only [result10981]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10983_agree_conditional : tree10983 = literal10983 := by
  rw [tree10983_def]
  rfl
theorem node10983_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10983 live10983 coloured10983 = result10983 := by
  rw [tree10983_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10984_agree_conditional
    (child0 : tree10982 = literal10982)
    (child1 : tree10983 = literal10983) : tree10984 = literal10984 := by
  rw [tree10984_def, child0, child1]
  rfl
theorem node10984_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10982 live10982 coloured10982 = result10982)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10983 live10983 coloured10983 = result10983) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10984 live10984 coloured10984 = result10984 := by
  rw [tree10984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10982 coloured10982 at child
  try dsimp only [live10984, coloured10984]
  rw [child]
  dsimp only [result10982]
  have child := child1
  unfold live10983 coloured10983 at child
  try dsimp only [live10984, coloured10984]
  rw [child]
  dsimp only [result10983]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10985_agree_conditional : tree10985 = literal10985 := by
  rw [tree10985_def]
  rfl
theorem node10985_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10985 live10985 coloured10985 = result10985 := by
  rw [tree10985_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10986_agree_conditional
    (child0 : tree10984 = literal10984)
    (child1 : tree10985 = literal10985) : tree10986 = literal10986 := by
  rw [tree10986_def, child0, child1]
  rfl
theorem node10986_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10984 live10984 coloured10984 = result10984)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10985 live10985 coloured10985 = result10985) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10986 live10986 coloured10986 = result10986 := by
  rw [tree10986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10984 coloured10984 at child
  try dsimp only [live10986, coloured10986]
  rw [child]
  dsimp only [result10984]
  have child := child1
  unfold live10985 coloured10985 at child
  try dsimp only [live10986, coloured10986]
  rw [child]
  dsimp only [result10985]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10987_agree_conditional : tree10987 = literal10987 := by
  rw [tree10987_def]
  rfl
theorem node10987_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10987 live10987 coloured10987 = result10987 := by
  rw [tree10987_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10988_agree_conditional
    (child0 : tree10986 = literal10986)
    (child1 : tree10987 = literal10987) : tree10988 = literal10988 := by
  rw [tree10988_def, child0, child1]
  rfl
theorem node10988_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10986 live10986 coloured10986 = result10986)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10987 live10987 coloured10987 = result10987) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10988 live10988 coloured10988 = result10988 := by
  rw [tree10988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10986 coloured10986 at child
  try dsimp only [live10988, coloured10988]
  rw [child]
  dsimp only [result10986]
  have child := child1
  unfold live10987 coloured10987 at child
  try dsimp only [live10988, coloured10988]
  rw [child]
  dsimp only [result10987]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10989_agree_conditional : tree10989 = literal10989 := by
  rw [tree10989_def]
  rfl
theorem node10989_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10989 live10989 coloured10989 = result10989 := by
  rw [tree10989_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10990_agree_conditional
    (child0 : tree10988 = literal10988)
    (child1 : tree10989 = literal10989) : tree10990 = literal10990 := by
  rw [tree10990_def, child0, child1]
  rfl
theorem node10990_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10988 live10988 coloured10988 = result10988)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10989 live10989 coloured10989 = result10989) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10990 live10990 coloured10990 = result10990 := by
  rw [tree10990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10988 coloured10988 at child
  try dsimp only [live10990, coloured10990]
  rw [child]
  dsimp only [result10988]
  have child := child1
  unfold live10989 coloured10989 at child
  try dsimp only [live10990, coloured10990]
  rw [child]
  dsimp only [result10989]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10991_agree_conditional : tree10991 = literal10991 := by
  rw [tree10991_def]
  rfl
theorem node10991_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10991 live10991 coloured10991 = result10991 := by
  rw [tree10991_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10992_agree_conditional
    (child0 : tree10990 = literal10990)
    (child1 : tree10991 = literal10991) : tree10992 = literal10992 := by
  rw [tree10992_def, child0, child1]
  rfl
theorem node10992_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10990 live10990 coloured10990 = result10990)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10991 live10991 coloured10991 = result10991) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10992 live10992 coloured10992 = result10992 := by
  rw [tree10992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10990 coloured10990 at child
  try dsimp only [live10992, coloured10992]
  rw [child]
  dsimp only [result10990]
  have child := child1
  unfold live10991 coloured10991 at child
  try dsimp only [live10992, coloured10992]
  rw [child]
  dsimp only [result10991]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10993_agree_conditional : tree10993 = literal10993 := by
  rw [tree10993_def]
  rfl
theorem node10993_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10993 live10993 coloured10993 = result10993 := by
  rw [tree10993_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10994_agree_conditional
    (child0 : tree10992 = literal10992)
    (child1 : tree10993 = literal10993) : tree10994 = literal10994 := by
  rw [tree10994_def, child0, child1]
  rfl
theorem node10994_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10992 live10992 coloured10992 = result10992)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10993 live10993 coloured10993 = result10993) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10994 live10994 coloured10994 = result10994 := by
  rw [tree10994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10992 coloured10992 at child
  try dsimp only [live10994, coloured10994]
  rw [child]
  dsimp only [result10992]
  have child := child1
  unfold live10993 coloured10993 at child
  try dsimp only [live10994, coloured10994]
  rw [child]
  dsimp only [result10993]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10995_agree_conditional : tree10995 = literal10995 := by
  rw [tree10995_def]
  rfl
theorem node10995_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10995 live10995 coloured10995 = result10995 := by
  rw [tree10995_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10996_agree_conditional
    (child0 : tree10994 = literal10994)
    (child1 : tree10995 = literal10995) : tree10996 = literal10996 := by
  rw [tree10996_def, child0, child1]
  rfl
theorem node10996_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10994 live10994 coloured10994 = result10994)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10995 live10995 coloured10995 = result10995) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10996 live10996 coloured10996 = result10996 := by
  rw [tree10996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10994 coloured10994 at child
  try dsimp only [live10996, coloured10996]
  rw [child]
  dsimp only [result10994]
  have child := child1
  unfold live10995 coloured10995 at child
  try dsimp only [live10996, coloured10996]
  rw [child]
  dsimp only [result10995]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10997_agree_conditional : tree10997 = literal10997 := by
  rw [tree10997_def]
  rfl
theorem node10997_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10997 live10997 coloured10997 = result10997 := by
  rw [tree10997_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10998_agree_conditional
    (child0 : tree10996 = literal10996)
    (child1 : tree10997 = literal10997) : tree10998 = literal10998 := by
  rw [tree10998_def, child0, child1]
  rfl
theorem node10998_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10996 live10996 coloured10996 = result10996)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10997 live10997 coloured10997 = result10997) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10998 live10998 coloured10998 = result10998 := by
  rw [tree10998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10996 coloured10996 at child
  try dsimp only [live10998, coloured10998]
  rw [child]
  dsimp only [result10996]
  have child := child1
  unfold live10997 coloured10997 at child
  try dsimp only [live10998, coloured10998]
  rw [child]
  dsimp only [result10997]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree10999_agree_conditional : tree10999 = literal10999 := by
  rw [tree10999_def]
  rfl
theorem node10999_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10999 live10999 coloured10999 = result10999 := by
  rw [tree10999_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11000_agree_conditional
    (child0 : tree10998 = literal10998)
    (child1 : tree10999 = literal10999) : tree11000 = literal11000 := by
  rw [tree11000_def, child0, child1]
  rfl
theorem node11000_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10998 live10998 coloured10998 = result10998)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree10999 live10999 coloured10999 = result10999) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11000 live11000 coloured11000 = result11000 := by
  rw [tree11000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live10998 coloured10998 at child
  try dsimp only [live11000, coloured11000]
  rw [child]
  dsimp only [result10998]
  have child := child1
  unfold live10999 coloured10999 at child
  try dsimp only [live11000, coloured11000]
  rw [child]
  dsimp only [result10999]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11001_agree_conditional : tree11001 = literal11001 := by
  rw [tree11001_def]
  rfl
theorem node11001_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11001 live11001 coloured11001 = result11001 := by
  rw [tree11001_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11002_agree_conditional
    (child0 : tree11000 = literal11000)
    (child1 : tree11001 = literal11001) : tree11002 = literal11002 := by
  rw [tree11002_def, child0, child1]
  rfl
theorem node11002_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11000 live11000 coloured11000 = result11000)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11001 live11001 coloured11001 = result11001) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11002 live11002 coloured11002 = result11002 := by
  rw [tree11002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11000 coloured11000 at child
  try dsimp only [live11002, coloured11002]
  rw [child]
  dsimp only [result11000]
  have child := child1
  unfold live11001 coloured11001 at child
  try dsimp only [live11002, coloured11002]
  rw [child]
  dsimp only [result11001]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11003_agree_conditional : tree11003 = literal11003 := by
  rw [tree11003_def]
  rfl
theorem node11003_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11003 live11003 coloured11003 = result11003 := by
  rw [tree11003_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11004_agree_conditional
    (child0 : tree11002 = literal11002)
    (child1 : tree11003 = literal11003) : tree11004 = literal11004 := by
  rw [tree11004_def, child0, child1]
  rfl
theorem node11004_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11002 live11002 coloured11002 = result11002)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11003 live11003 coloured11003 = result11003) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11004 live11004 coloured11004 = result11004 := by
  rw [tree11004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11002 coloured11002 at child
  try dsimp only [live11004, coloured11004]
  rw [child]
  dsimp only [result11002]
  have child := child1
  unfold live11003 coloured11003 at child
  try dsimp only [live11004, coloured11004]
  rw [child]
  dsimp only [result11003]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11005_agree_conditional : tree11005 = literal11005 := by
  rw [tree11005_def]
  rfl
theorem node11005_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11005 live11005 coloured11005 = result11005 := by
  rw [tree11005_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11006_agree_conditional
    (child0 : tree11004 = literal11004)
    (child1 : tree11005 = literal11005) : tree11006 = literal11006 := by
  rw [tree11006_def, child0, child1]
  rfl
theorem node11006_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11004 live11004 coloured11004 = result11004)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11005 live11005 coloured11005 = result11005) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11006 live11006 coloured11006 = result11006 := by
  rw [tree11006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11004 coloured11004 at child
  try dsimp only [live11006, coloured11006]
  rw [child]
  dsimp only [result11004]
  have child := child1
  unfold live11005 coloured11005 at child
  try dsimp only [live11006, coloured11006]
  rw [child]
  dsimp only [result11005]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11007_agree_conditional : tree11007 = literal11007 := by
  rw [tree11007_def]
  rfl
theorem node11007_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11007 live11007 coloured11007 = result11007 := by
  rw [tree11007_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11008_agree_conditional
    (child0 : tree11006 = literal11006)
    (child1 : tree11007 = literal11007) : tree11008 = literal11008 := by
  rw [tree11008_def, child0, child1]
  rfl
theorem node11008_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11006 live11006 coloured11006 = result11006)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11007 live11007 coloured11007 = result11007) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11008 live11008 coloured11008 = result11008 := by
  rw [tree11008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11006 coloured11006 at child
  try dsimp only [live11008, coloured11008]
  rw [child]
  dsimp only [result11006]
  have child := child1
  unfold live11007 coloured11007 at child
  try dsimp only [live11008, coloured11008]
  rw [child]
  dsimp only [result11007]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11009_agree_conditional : tree11009 = literal11009 := by
  rw [tree11009_def]
  rfl
theorem node11009_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11009 live11009 coloured11009 = result11009 := by
  rw [tree11009_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11010_agree_conditional
    (child0 : tree11008 = literal11008)
    (child1 : tree11009 = literal11009) : tree11010 = literal11010 := by
  rw [tree11010_def, child0, child1]
  rfl
theorem node11010_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11008 live11008 coloured11008 = result11008)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11009 live11009 coloured11009 = result11009) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11010 live11010 coloured11010 = result11010 := by
  rw [tree11010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11008 coloured11008 at child
  try dsimp only [live11010, coloured11010]
  rw [child]
  dsimp only [result11008]
  have child := child1
  unfold live11009 coloured11009 at child
  try dsimp only [live11010, coloured11010]
  rw [child]
  dsimp only [result11009]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11011_agree_conditional : tree11011 = literal11011 := by
  rw [tree11011_def]
  rfl
theorem node11011_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11011 live11011 coloured11011 = result11011 := by
  rw [tree11011_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11012_agree_conditional
    (child0 : tree11010 = literal11010)
    (child1 : tree11011 = literal11011) : tree11012 = literal11012 := by
  rw [tree11012_def, child0, child1]
  rfl
theorem node11012_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11010 live11010 coloured11010 = result11010)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11011 live11011 coloured11011 = result11011) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11012 live11012 coloured11012 = result11012 := by
  rw [tree11012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11010 coloured11010 at child
  try dsimp only [live11012, coloured11012]
  rw [child]
  dsimp only [result11010]
  have child := child1
  unfold live11011 coloured11011 at child
  try dsimp only [live11012, coloured11012]
  rw [child]
  dsimp only [result11011]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11013_agree_conditional : tree11013 = literal11013 := by
  rw [tree11013_def]
  rfl
theorem node11013_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11013 live11013 coloured11013 = result11013 := by
  rw [tree11013_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11014_agree_conditional
    (child0 : tree11012 = literal11012)
    (child1 : tree11013 = literal11013) : tree11014 = literal11014 := by
  rw [tree11014_def, child0, child1]
  rfl
theorem node11014_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11012 live11012 coloured11012 = result11012)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11013 live11013 coloured11013 = result11013) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11014 live11014 coloured11014 = result11014 := by
  rw [tree11014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11012 coloured11012 at child
  try dsimp only [live11014, coloured11014]
  rw [child]
  dsimp only [result11012]
  have child := child1
  unfold live11013 coloured11013 at child
  try dsimp only [live11014, coloured11014]
  rw [child]
  dsimp only [result11013]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11015_agree_conditional : tree11015 = literal11015 := by
  rw [tree11015_def]
  rfl
theorem node11015_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11015 live11015 coloured11015 = result11015 := by
  rw [tree11015_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11016_agree_conditional
    (child0 : tree11014 = literal11014)
    (child1 : tree11015 = literal11015) : tree11016 = literal11016 := by
  rw [tree11016_def, child0, child1]
  rfl
theorem node11016_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11014 live11014 coloured11014 = result11014)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11015 live11015 coloured11015 = result11015) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11016 live11016 coloured11016 = result11016 := by
  rw [tree11016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11014 coloured11014 at child
  try dsimp only [live11016, coloured11016]
  rw [child]
  dsimp only [result11014]
  have child := child1
  unfold live11015 coloured11015 at child
  try dsimp only [live11016, coloured11016]
  rw [child]
  dsimp only [result11015]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11017_agree_conditional : tree11017 = literal11017 := by
  rw [tree11017_def]
  rfl
theorem node11017_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11017 live11017 coloured11017 = result11017 := by
  rw [tree11017_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11018_agree_conditional
    (child0 : tree11016 = literal11016)
    (child1 : tree11017 = literal11017) : tree11018 = literal11018 := by
  rw [tree11018_def, child0, child1]
  rfl
theorem node11018_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11016 live11016 coloured11016 = result11016)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11017 live11017 coloured11017 = result11017) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11018 live11018 coloured11018 = result11018 := by
  rw [tree11018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11016 coloured11016 at child
  try dsimp only [live11018, coloured11018]
  rw [child]
  dsimp only [result11016]
  have child := child1
  unfold live11017 coloured11017 at child
  try dsimp only [live11018, coloured11018]
  rw [child]
  dsimp only [result11017]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11019_agree_conditional : tree11019 = literal11019 := by
  rw [tree11019_def]
  rfl
theorem node11019_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11019 live11019 coloured11019 = result11019 := by
  rw [tree11019_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11020_agree_conditional
    (child0 : tree11018 = literal11018)
    (child1 : tree11019 = literal11019) : tree11020 = literal11020 := by
  rw [tree11020_def, child0, child1]
  rfl
theorem node11020_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11018 live11018 coloured11018 = result11018)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11019 live11019 coloured11019 = result11019) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11020 live11020 coloured11020 = result11020 := by
  rw [tree11020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11018 coloured11018 at child
  try dsimp only [live11020, coloured11020]
  rw [child]
  dsimp only [result11018]
  have child := child1
  unfold live11019 coloured11019 at child
  try dsimp only [live11020, coloured11020]
  rw [child]
  dsimp only [result11019]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11021_agree_conditional : tree11021 = literal11021 := by
  rw [tree11021_def]
  rfl
theorem node11021_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11021 live11021 coloured11021 = result11021 := by
  rw [tree11021_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11022_agree_conditional
    (child0 : tree11020 = literal11020)
    (child1 : tree11021 = literal11021) : tree11022 = literal11022 := by
  rw [tree11022_def, child0, child1]
  rfl
theorem node11022_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11020 live11020 coloured11020 = result11020)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11021 live11021 coloured11021 = result11021) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11022 live11022 coloured11022 = result11022 := by
  rw [tree11022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11020 coloured11020 at child
  try dsimp only [live11022, coloured11022]
  rw [child]
  dsimp only [result11020]
  have child := child1
  unfold live11021 coloured11021 at child
  try dsimp only [live11022, coloured11022]
  rw [child]
  dsimp only [result11021]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11023_agree_conditional : tree11023 = literal11023 := by
  rw [tree11023_def]
  rfl
theorem node11023_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11023 live11023 coloured11023 = result11023 := by
  rw [tree11023_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11024_agree_conditional
    (child0 : tree11022 = literal11022)
    (child1 : tree11023 = literal11023) : tree11024 = literal11024 := by
  rw [tree11024_def, child0, child1]
  rfl
theorem node11024_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11022 live11022 coloured11022 = result11022)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11023 live11023 coloured11023 = result11023) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11024 live11024 coloured11024 = result11024 := by
  rw [tree11024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11022 coloured11022 at child
  try dsimp only [live11024, coloured11024]
  rw [child]
  dsimp only [result11022]
  have child := child1
  unfold live11023 coloured11023 at child
  try dsimp only [live11024, coloured11024]
  rw [child]
  dsimp only [result11023]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11025_agree_conditional : tree11025 = literal11025 := by
  rw [tree11025_def]
  rfl
theorem node11025_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11025 live11025 coloured11025 = result11025 := by
  rw [tree11025_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11026_agree_conditional
    (child0 : tree11024 = literal11024)
    (child1 : tree11025 = literal11025) : tree11026 = literal11026 := by
  rw [tree11026_def, child0, child1]
  rfl
theorem node11026_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11024 live11024 coloured11024 = result11024)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11025 live11025 coloured11025 = result11025) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11026 live11026 coloured11026 = result11026 := by
  rw [tree11026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11024 coloured11024 at child
  try dsimp only [live11026, coloured11026]
  rw [child]
  dsimp only [result11024]
  have child := child1
  unfold live11025 coloured11025 at child
  try dsimp only [live11026, coloured11026]
  rw [child]
  dsimp only [result11025]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11027_agree_conditional : tree11027 = literal11027 := by
  rw [tree11027_def]
  rfl
theorem node11027_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11027 live11027 coloured11027 = result11027 := by
  rw [tree11027_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11028_agree_conditional
    (child0 : tree11026 = literal11026)
    (child1 : tree11027 = literal11027) : tree11028 = literal11028 := by
  rw [tree11028_def, child0, child1]
  rfl
theorem node11028_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11026 live11026 coloured11026 = result11026)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11027 live11027 coloured11027 = result11027) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11028 live11028 coloured11028 = result11028 := by
  rw [tree11028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11026 coloured11026 at child
  try dsimp only [live11028, coloured11028]
  rw [child]
  dsimp only [result11026]
  have child := child1
  unfold live11027 coloured11027 at child
  try dsimp only [live11028, coloured11028]
  rw [child]
  dsimp only [result11027]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11029_agree_conditional : tree11029 = literal11029 := by
  rw [tree11029_def]
  rfl
theorem node11029_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11029 live11029 coloured11029 = result11029 := by
  rw [tree11029_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11030_agree_conditional
    (child0 : tree11028 = literal11028)
    (child1 : tree11029 = literal11029) : tree11030 = literal11030 := by
  rw [tree11030_def, child0, child1]
  rfl
theorem node11030_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11028 live11028 coloured11028 = result11028)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11029 live11029 coloured11029 = result11029) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11030 live11030 coloured11030 = result11030 := by
  rw [tree11030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11028 coloured11028 at child
  try dsimp only [live11030, coloured11030]
  rw [child]
  dsimp only [result11028]
  have child := child1
  unfold live11029 coloured11029 at child
  try dsimp only [live11030, coloured11030]
  rw [child]
  dsimp only [result11029]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11031_agree_conditional : tree11031 = literal11031 := by
  rw [tree11031_def]
  rfl
theorem node11031_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11031 live11031 coloured11031 = result11031 := by
  rw [tree11031_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11032_agree_conditional
    (child0 : tree11030 = literal11030)
    (child1 : tree11031 = literal11031) : tree11032 = literal11032 := by
  rw [tree11032_def, child0, child1]
  rfl
theorem node11032_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11030 live11030 coloured11030 = result11030)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11031 live11031 coloured11031 = result11031) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11032 live11032 coloured11032 = result11032 := by
  rw [tree11032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11030 coloured11030 at child
  try dsimp only [live11032, coloured11032]
  rw [child]
  dsimp only [result11030]
  have child := child1
  unfold live11031 coloured11031 at child
  try dsimp only [live11032, coloured11032]
  rw [child]
  dsimp only [result11031]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11033_agree_conditional : tree11033 = literal11033 := by
  rw [tree11033_def]
  rfl
theorem node11033_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11033 live11033 coloured11033 = result11033 := by
  rw [tree11033_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11034_agree_conditional
    (child0 : tree11032 = literal11032)
    (child1 : tree11033 = literal11033) : tree11034 = literal11034 := by
  rw [tree11034_def, child0, child1]
  rfl
theorem node11034_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11032 live11032 coloured11032 = result11032)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11033 live11033 coloured11033 = result11033) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11034 live11034 coloured11034 = result11034 := by
  rw [tree11034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11032 coloured11032 at child
  try dsimp only [live11034, coloured11034]
  rw [child]
  dsimp only [result11032]
  have child := child1
  unfold live11033 coloured11033 at child
  try dsimp only [live11034, coloured11034]
  rw [child]
  dsimp only [result11033]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11035_agree_conditional : tree11035 = literal11035 := by
  rw [tree11035_def]
  rfl
theorem node11035_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11035 live11035 coloured11035 = result11035 := by
  rw [tree11035_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11036_agree_conditional
    (child0 : tree11034 = literal11034)
    (child1 : tree11035 = literal11035) : tree11036 = literal11036 := by
  rw [tree11036_def, child0, child1]
  rfl
theorem node11036_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11034 live11034 coloured11034 = result11034)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11035 live11035 coloured11035 = result11035) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11036 live11036 coloured11036 = result11036 := by
  rw [tree11036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11034 coloured11034 at child
  try dsimp only [live11036, coloured11036]
  rw [child]
  dsimp only [result11034]
  have child := child1
  unfold live11035 coloured11035 at child
  try dsimp only [live11036, coloured11036]
  rw [child]
  dsimp only [result11035]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11037_agree_conditional : tree11037 = literal11037 := by
  rw [tree11037_def]
  rfl
theorem node11037_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11037 live11037 coloured11037 = result11037 := by
  rw [tree11037_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11038_agree_conditional
    (child0 : tree11036 = literal11036)
    (child1 : tree11037 = literal11037) : tree11038 = literal11038 := by
  rw [tree11038_def, child0, child1]
  rfl
theorem node11038_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11036 live11036 coloured11036 = result11036)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11037 live11037 coloured11037 = result11037) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11038 live11038 coloured11038 = result11038 := by
  rw [tree11038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live11036 coloured11036 at child
  try dsimp only [live11038, coloured11038]
  rw [child]
  dsimp only [result11036]
  have child := child1
  unfold live11037 coloured11037 at child
  try dsimp only [live11038, coloured11038]
  rw [child]
  dsimp only [result11037]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree11039_agree_conditional : tree11039 = literal11039 := by
  rw [tree11039_def]
  rfl
theorem node11039_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree11039 live11039 coloured11039 = result11039 := by
  rw [tree11039_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
