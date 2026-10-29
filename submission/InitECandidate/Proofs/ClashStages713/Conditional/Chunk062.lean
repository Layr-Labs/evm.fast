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
theorem tree5952_agree_conditional
    (child0 : tree5950 = literal5950)
    (child1 : tree5951 = literal5951) : tree5952 = literal5952 := by
  rw [tree5952_def, child0, child1]
  rfl
theorem node5952_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5950 live5950 coloured5950 = result5950)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5951 live5951 coloured5951 = result5951) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5952 live5952 coloured5952 = result5952 := by
  rw [tree5952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5950 coloured5950 at child
  try dsimp only [live5952, coloured5952]
  rw [child]
  dsimp only [result5950]
  have child := child1
  unfold live5951 coloured5951 at child
  try dsimp only [live5952, coloured5952]
  rw [child]
  dsimp only [result5951]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5953_agree_conditional : tree5953 = literal5953 := by
  rw [tree5953_def]
  rfl
theorem node5953_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5953 live5953 coloured5953 = result5953 := by
  rw [tree5953_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5954_agree_conditional
    (child0 : tree5952 = literal5952)
    (child1 : tree5953 = literal5953) : tree5954 = literal5954 := by
  rw [tree5954_def, child0, child1]
  rfl
theorem node5954_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5952 live5952 coloured5952 = result5952)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5953 live5953 coloured5953 = result5953) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5954 live5954 coloured5954 = result5954 := by
  rw [tree5954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5952 coloured5952 at child
  try dsimp only [live5954, coloured5954]
  rw [child]
  dsimp only [result5952]
  have child := child1
  unfold live5953 coloured5953 at child
  try dsimp only [live5954, coloured5954]
  rw [child]
  dsimp only [result5953]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5955_agree_conditional : tree5955 = literal5955 := by
  rw [tree5955_def]
  rfl
theorem node5955_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5955 live5955 coloured5955 = result5955 := by
  rw [tree5955_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5956_agree_conditional
    (child0 : tree5954 = literal5954)
    (child1 : tree5955 = literal5955) : tree5956 = literal5956 := by
  rw [tree5956_def, child0, child1]
  rfl
theorem node5956_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5954 live5954 coloured5954 = result5954)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5955 live5955 coloured5955 = result5955) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5956 live5956 coloured5956 = result5956 := by
  rw [tree5956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5954 coloured5954 at child
  try dsimp only [live5956, coloured5956]
  rw [child]
  dsimp only [result5954]
  have child := child1
  unfold live5955 coloured5955 at child
  try dsimp only [live5956, coloured5956]
  rw [child]
  dsimp only [result5955]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5957_agree_conditional : tree5957 = literal5957 := by
  rw [tree5957_def]
  rfl
theorem node5957_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5957 live5957 coloured5957 = result5957 := by
  rw [tree5957_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5958_agree_conditional
    (child0 : tree5956 = literal5956)
    (child1 : tree5957 = literal5957) : tree5958 = literal5958 := by
  rw [tree5958_def, child0, child1]
  rfl
theorem node5958_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5956 live5956 coloured5956 = result5956)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5957 live5957 coloured5957 = result5957) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5958 live5958 coloured5958 = result5958 := by
  rw [tree5958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5956 coloured5956 at child
  try dsimp only [live5958, coloured5958]
  rw [child]
  dsimp only [result5956]
  have child := child1
  unfold live5957 coloured5957 at child
  try dsimp only [live5958, coloured5958]
  rw [child]
  dsimp only [result5957]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5959_agree_conditional : tree5959 = literal5959 := by
  rw [tree5959_def]
  rfl
theorem node5959_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5959 live5959 coloured5959 = result5959 := by
  rw [tree5959_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5960_agree_conditional
    (child0 : tree5958 = literal5958)
    (child1 : tree5959 = literal5959) : tree5960 = literal5960 := by
  rw [tree5960_def, child0, child1]
  rfl
theorem node5960_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5958 live5958 coloured5958 = result5958)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5959 live5959 coloured5959 = result5959) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5960 live5960 coloured5960 = result5960 := by
  rw [tree5960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5958 coloured5958 at child
  try dsimp only [live5960, coloured5960]
  rw [child]
  dsimp only [result5958]
  have child := child1
  unfold live5959 coloured5959 at child
  try dsimp only [live5960, coloured5960]
  rw [child]
  dsimp only [result5959]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5961_agree_conditional : tree5961 = literal5961 := by
  rw [tree5961_def]
  rfl
theorem node5961_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5961 live5961 coloured5961 = result5961 := by
  rw [tree5961_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5962_agree_conditional
    (child0 : tree5960 = literal5960)
    (child1 : tree5961 = literal5961) : tree5962 = literal5962 := by
  rw [tree5962_def, child0, child1]
  rfl
theorem node5962_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5960 live5960 coloured5960 = result5960)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5961 live5961 coloured5961 = result5961) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5962 live5962 coloured5962 = result5962 := by
  rw [tree5962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5960 coloured5960 at child
  try dsimp only [live5962, coloured5962]
  rw [child]
  dsimp only [result5960]
  have child := child1
  unfold live5961 coloured5961 at child
  try dsimp only [live5962, coloured5962]
  rw [child]
  dsimp only [result5961]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5963_agree_conditional : tree5963 = literal5963 := by
  rw [tree5963_def]
  rfl
theorem node5963_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5963 live5963 coloured5963 = result5963 := by
  rw [tree5963_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5964_agree_conditional
    (child0 : tree5962 = literal5962)
    (child1 : tree5963 = literal5963) : tree5964 = literal5964 := by
  rw [tree5964_def, child0, child1]
  rfl
theorem node5964_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5962 live5962 coloured5962 = result5962)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5963 live5963 coloured5963 = result5963) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5964 live5964 coloured5964 = result5964 := by
  rw [tree5964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5962 coloured5962 at child
  try dsimp only [live5964, coloured5964]
  rw [child]
  dsimp only [result5962]
  have child := child1
  unfold live5963 coloured5963 at child
  try dsimp only [live5964, coloured5964]
  rw [child]
  dsimp only [result5963]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5965_agree_conditional : tree5965 = literal5965 := by
  rw [tree5965_def]
  rfl
theorem node5965_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5965 live5965 coloured5965 = result5965 := by
  rw [tree5965_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5966_agree_conditional
    (child0 : tree5964 = literal5964)
    (child1 : tree5965 = literal5965) : tree5966 = literal5966 := by
  rw [tree5966_def, child0, child1]
  rfl
theorem node5966_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5964 live5964 coloured5964 = result5964)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5965 live5965 coloured5965 = result5965) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5966 live5966 coloured5966 = result5966 := by
  rw [tree5966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5964 coloured5964 at child
  try dsimp only [live5966, coloured5966]
  rw [child]
  dsimp only [result5964]
  have child := child1
  unfold live5965 coloured5965 at child
  try dsimp only [live5966, coloured5966]
  rw [child]
  dsimp only [result5965]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5967_agree_conditional : tree5967 = literal5967 := by
  rw [tree5967_def]
  rfl
theorem node5967_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5967 live5967 coloured5967 = result5967 := by
  rw [tree5967_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5968_agree_conditional
    (child0 : tree5966 = literal5966)
    (child1 : tree5967 = literal5967) : tree5968 = literal5968 := by
  rw [tree5968_def, child0, child1]
  rfl
theorem node5968_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5966 live5966 coloured5966 = result5966)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5967 live5967 coloured5967 = result5967) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5968 live5968 coloured5968 = result5968 := by
  rw [tree5968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5966 coloured5966 at child
  try dsimp only [live5968, coloured5968]
  rw [child]
  dsimp only [result5966]
  have child := child1
  unfold live5967 coloured5967 at child
  try dsimp only [live5968, coloured5968]
  rw [child]
  dsimp only [result5967]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5969_agree_conditional : tree5969 = literal5969 := by
  rw [tree5969_def]
  rfl
theorem node5969_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5969 live5969 coloured5969 = result5969 := by
  rw [tree5969_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5970_agree_conditional
    (child0 : tree5968 = literal5968)
    (child1 : tree5969 = literal5969) : tree5970 = literal5970 := by
  rw [tree5970_def, child0, child1]
  rfl
theorem node5970_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5968 live5968 coloured5968 = result5968)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5969 live5969 coloured5969 = result5969) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5970 live5970 coloured5970 = result5970 := by
  rw [tree5970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5968 coloured5968 at child
  try dsimp only [live5970, coloured5970]
  rw [child]
  dsimp only [result5968]
  have child := child1
  unfold live5969 coloured5969 at child
  try dsimp only [live5970, coloured5970]
  rw [child]
  dsimp only [result5969]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5971_agree_conditional : tree5971 = literal5971 := by
  rw [tree5971_def]
  rfl
theorem node5971_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5971 live5971 coloured5971 = result5971 := by
  rw [tree5971_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5972_agree_conditional
    (child0 : tree5970 = literal5970)
    (child1 : tree5971 = literal5971) : tree5972 = literal5972 := by
  rw [tree5972_def, child0, child1]
  rfl
theorem node5972_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5970 live5970 coloured5970 = result5970)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5971 live5971 coloured5971 = result5971) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5972 live5972 coloured5972 = result5972 := by
  rw [tree5972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5970 coloured5970 at child
  try dsimp only [live5972, coloured5972]
  rw [child]
  dsimp only [result5970]
  have child := child1
  unfold live5971 coloured5971 at child
  try dsimp only [live5972, coloured5972]
  rw [child]
  dsimp only [result5971]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5973_agree_conditional : tree5973 = literal5973 := by
  rw [tree5973_def]
  rfl
theorem node5973_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5973 live5973 coloured5973 = result5973 := by
  rw [tree5973_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5974_agree_conditional
    (child0 : tree5972 = literal5972)
    (child1 : tree5973 = literal5973) : tree5974 = literal5974 := by
  rw [tree5974_def, child0, child1]
  rfl
theorem node5974_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5972 live5972 coloured5972 = result5972)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5973 live5973 coloured5973 = result5973) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5974 live5974 coloured5974 = result5974 := by
  rw [tree5974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5972 coloured5972 at child
  try dsimp only [live5974, coloured5974]
  rw [child]
  dsimp only [result5972]
  have child := child1
  unfold live5973 coloured5973 at child
  try dsimp only [live5974, coloured5974]
  rw [child]
  dsimp only [result5973]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5975_agree_conditional : tree5975 = literal5975 := by
  rw [tree5975_def]
  rfl
theorem node5975_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5975 live5975 coloured5975 = result5975 := by
  rw [tree5975_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5976_agree_conditional
    (child0 : tree5974 = literal5974)
    (child1 : tree5975 = literal5975) : tree5976 = literal5976 := by
  rw [tree5976_def, child0, child1]
  rfl
theorem node5976_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5974 live5974 coloured5974 = result5974)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5975 live5975 coloured5975 = result5975) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5976 live5976 coloured5976 = result5976 := by
  rw [tree5976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5974 coloured5974 at child
  try dsimp only [live5976, coloured5976]
  rw [child]
  dsimp only [result5974]
  have child := child1
  unfold live5975 coloured5975 at child
  try dsimp only [live5976, coloured5976]
  rw [child]
  dsimp only [result5975]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5977_agree_conditional : tree5977 = literal5977 := by
  rw [tree5977_def]
  rfl
theorem node5977_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5977 live5977 coloured5977 = result5977 := by
  rw [tree5977_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5978_agree_conditional
    (child0 : tree5976 = literal5976)
    (child1 : tree5977 = literal5977) : tree5978 = literal5978 := by
  rw [tree5978_def, child0, child1]
  rfl
theorem node5978_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5976 live5976 coloured5976 = result5976)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5977 live5977 coloured5977 = result5977) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5978 live5978 coloured5978 = result5978 := by
  rw [tree5978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5976 coloured5976 at child
  try dsimp only [live5978, coloured5978]
  rw [child]
  dsimp only [result5976]
  have child := child1
  unfold live5977 coloured5977 at child
  try dsimp only [live5978, coloured5978]
  rw [child]
  dsimp only [result5977]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5979_agree_conditional : tree5979 = literal5979 := by
  rw [tree5979_def]
  rfl
theorem node5979_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5979 live5979 coloured5979 = result5979 := by
  rw [tree5979_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5980_agree_conditional
    (child0 : tree5978 = literal5978)
    (child1 : tree5979 = literal5979) : tree5980 = literal5980 := by
  rw [tree5980_def, child0, child1]
  rfl
theorem node5980_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5978 live5978 coloured5978 = result5978)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5979 live5979 coloured5979 = result5979) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5980 live5980 coloured5980 = result5980 := by
  rw [tree5980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5978 coloured5978 at child
  try dsimp only [live5980, coloured5980]
  rw [child]
  dsimp only [result5978]
  have child := child1
  unfold live5979 coloured5979 at child
  try dsimp only [live5980, coloured5980]
  rw [child]
  dsimp only [result5979]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5981_agree_conditional : tree5981 = literal5981 := by
  rw [tree5981_def]
  rfl
theorem node5981_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5981 live5981 coloured5981 = result5981 := by
  rw [tree5981_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5982_agree_conditional
    (child0 : tree5980 = literal5980)
    (child1 : tree5981 = literal5981) : tree5982 = literal5982 := by
  rw [tree5982_def, child0, child1]
  rfl
theorem node5982_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5980 live5980 coloured5980 = result5980)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5981 live5981 coloured5981 = result5981) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5982 live5982 coloured5982 = result5982 := by
  rw [tree5982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5980 coloured5980 at child
  try dsimp only [live5982, coloured5982]
  rw [child]
  dsimp only [result5980]
  have child := child1
  unfold live5981 coloured5981 at child
  try dsimp only [live5982, coloured5982]
  rw [child]
  dsimp only [result5981]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5983_agree_conditional : tree5983 = literal5983 := by
  rw [tree5983_def]
  rfl
theorem node5983_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5983 live5983 coloured5983 = result5983 := by
  rw [tree5983_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5984_agree_conditional
    (child0 : tree5982 = literal5982)
    (child1 : tree5983 = literal5983) : tree5984 = literal5984 := by
  rw [tree5984_def, child0, child1]
  rfl
theorem node5984_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5982 live5982 coloured5982 = result5982)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5983 live5983 coloured5983 = result5983) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5984 live5984 coloured5984 = result5984 := by
  rw [tree5984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5982 coloured5982 at child
  try dsimp only [live5984, coloured5984]
  rw [child]
  dsimp only [result5982]
  have child := child1
  unfold live5983 coloured5983 at child
  try dsimp only [live5984, coloured5984]
  rw [child]
  dsimp only [result5983]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5985_agree_conditional : tree5985 = literal5985 := by
  rw [tree5985_def]
  rfl
theorem node5985_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5985 live5985 coloured5985 = result5985 := by
  rw [tree5985_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5986_agree_conditional
    (child0 : tree5984 = literal5984)
    (child1 : tree5985 = literal5985) : tree5986 = literal5986 := by
  rw [tree5986_def, child0, child1]
  rfl
theorem node5986_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5984 live5984 coloured5984 = result5984)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5985 live5985 coloured5985 = result5985) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5986 live5986 coloured5986 = result5986 := by
  rw [tree5986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5984 coloured5984 at child
  try dsimp only [live5986, coloured5986]
  rw [child]
  dsimp only [result5984]
  have child := child1
  unfold live5985 coloured5985 at child
  try dsimp only [live5986, coloured5986]
  rw [child]
  dsimp only [result5985]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5987_agree_conditional : tree5987 = literal5987 := by
  rw [tree5987_def]
  rfl
theorem node5987_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5987 live5987 coloured5987 = result5987 := by
  rw [tree5987_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5988_agree_conditional
    (child0 : tree5986 = literal5986)
    (child1 : tree5987 = literal5987) : tree5988 = literal5988 := by
  rw [tree5988_def, child0, child1]
  rfl
theorem node5988_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5986 live5986 coloured5986 = result5986)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5987 live5987 coloured5987 = result5987) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5988 live5988 coloured5988 = result5988 := by
  rw [tree5988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5986 coloured5986 at child
  try dsimp only [live5988, coloured5988]
  rw [child]
  dsimp only [result5986]
  have child := child1
  unfold live5987 coloured5987 at child
  try dsimp only [live5988, coloured5988]
  rw [child]
  dsimp only [result5987]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5989_agree_conditional : tree5989 = literal5989 := by
  rw [tree5989_def]
  rfl
theorem node5989_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5989 live5989 coloured5989 = result5989 := by
  rw [tree5989_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5990_agree_conditional
    (child0 : tree5988 = literal5988)
    (child1 : tree5989 = literal5989) : tree5990 = literal5990 := by
  rw [tree5990_def, child0, child1]
  rfl
theorem node5990_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5988 live5988 coloured5988 = result5988)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5989 live5989 coloured5989 = result5989) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5990 live5990 coloured5990 = result5990 := by
  rw [tree5990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5988 coloured5988 at child
  try dsimp only [live5990, coloured5990]
  rw [child]
  dsimp only [result5988]
  have child := child1
  unfold live5989 coloured5989 at child
  try dsimp only [live5990, coloured5990]
  rw [child]
  dsimp only [result5989]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5991_agree_conditional : tree5991 = literal5991 := by
  rw [tree5991_def]
  rfl
theorem node5991_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5991 live5991 coloured5991 = result5991 := by
  rw [tree5991_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5992_agree_conditional
    (child0 : tree5990 = literal5990)
    (child1 : tree5991 = literal5991) : tree5992 = literal5992 := by
  rw [tree5992_def, child0, child1]
  rfl
theorem node5992_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5990 live5990 coloured5990 = result5990)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5991 live5991 coloured5991 = result5991) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5992 live5992 coloured5992 = result5992 := by
  rw [tree5992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5990 coloured5990 at child
  try dsimp only [live5992, coloured5992]
  rw [child]
  dsimp only [result5990]
  have child := child1
  unfold live5991 coloured5991 at child
  try dsimp only [live5992, coloured5992]
  rw [child]
  dsimp only [result5991]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5993_agree_conditional : tree5993 = literal5993 := by
  rw [tree5993_def]
  rfl
theorem node5993_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5993 live5993 coloured5993 = result5993 := by
  rw [tree5993_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5994_agree_conditional
    (child0 : tree5992 = literal5992)
    (child1 : tree5993 = literal5993) : tree5994 = literal5994 := by
  rw [tree5994_def, child0, child1]
  rfl
theorem node5994_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5992 live5992 coloured5992 = result5992)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5993 live5993 coloured5993 = result5993) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5994 live5994 coloured5994 = result5994 := by
  rw [tree5994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5992 coloured5992 at child
  try dsimp only [live5994, coloured5994]
  rw [child]
  dsimp only [result5992]
  have child := child1
  unfold live5993 coloured5993 at child
  try dsimp only [live5994, coloured5994]
  rw [child]
  dsimp only [result5993]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5995_agree_conditional : tree5995 = literal5995 := by
  rw [tree5995_def]
  rfl
theorem node5995_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5995 live5995 coloured5995 = result5995 := by
  rw [tree5995_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5996_agree_conditional
    (child0 : tree5994 = literal5994)
    (child1 : tree5995 = literal5995) : tree5996 = literal5996 := by
  rw [tree5996_def, child0, child1]
  rfl
theorem node5996_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5994 live5994 coloured5994 = result5994)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5995 live5995 coloured5995 = result5995) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5996 live5996 coloured5996 = result5996 := by
  rw [tree5996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5994 coloured5994 at child
  try dsimp only [live5996, coloured5996]
  rw [child]
  dsimp only [result5994]
  have child := child1
  unfold live5995 coloured5995 at child
  try dsimp only [live5996, coloured5996]
  rw [child]
  dsimp only [result5995]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5997_agree_conditional : tree5997 = literal5997 := by
  rw [tree5997_def]
  rfl
theorem node5997_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5997 live5997 coloured5997 = result5997 := by
  rw [tree5997_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5998_agree_conditional
    (child0 : tree5996 = literal5996)
    (child1 : tree5997 = literal5997) : tree5998 = literal5998 := by
  rw [tree5998_def, child0, child1]
  rfl
theorem node5998_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5996 live5996 coloured5996 = result5996)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5997 live5997 coloured5997 = result5997) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5998 live5998 coloured5998 = result5998 := by
  rw [tree5998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5996 coloured5996 at child
  try dsimp only [live5998, coloured5998]
  rw [child]
  dsimp only [result5996]
  have child := child1
  unfold live5997 coloured5997 at child
  try dsimp only [live5998, coloured5998]
  rw [child]
  dsimp only [result5997]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree5999_agree_conditional : tree5999 = literal5999 := by
  rw [tree5999_def]
  rfl
theorem node5999_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5999 live5999 coloured5999 = result5999 := by
  rw [tree5999_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6000_agree_conditional
    (child0 : tree5998 = literal5998)
    (child1 : tree5999 = literal5999) : tree6000 = literal6000 := by
  rw [tree6000_def, child0, child1]
  rfl
theorem node6000_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5998 live5998 coloured5998 = result5998)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree5999 live5999 coloured5999 = result5999) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6000 live6000 coloured6000 = result6000 := by
  rw [tree6000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live5998 coloured5998 at child
  try dsimp only [live6000, coloured6000]
  rw [child]
  dsimp only [result5998]
  have child := child1
  unfold live5999 coloured5999 at child
  try dsimp only [live6000, coloured6000]
  rw [child]
  dsimp only [result5999]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6001_agree_conditional : tree6001 = literal6001 := by
  rw [tree6001_def]
  rfl
theorem node6001_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6001 live6001 coloured6001 = result6001 := by
  rw [tree6001_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6002_agree_conditional
    (child0 : tree6000 = literal6000)
    (child1 : tree6001 = literal6001) : tree6002 = literal6002 := by
  rw [tree6002_def, child0, child1]
  rfl
theorem node6002_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6000 live6000 coloured6000 = result6000)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6001 live6001 coloured6001 = result6001) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6002 live6002 coloured6002 = result6002 := by
  rw [tree6002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6000 coloured6000 at child
  try dsimp only [live6002, coloured6002]
  rw [child]
  dsimp only [result6000]
  have child := child1
  unfold live6001 coloured6001 at child
  try dsimp only [live6002, coloured6002]
  rw [child]
  dsimp only [result6001]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6003_agree_conditional : tree6003 = literal6003 := by
  rw [tree6003_def]
  rfl
theorem node6003_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6003 live6003 coloured6003 = result6003 := by
  rw [tree6003_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6004_agree_conditional
    (child0 : tree6002 = literal6002)
    (child1 : tree6003 = literal6003) : tree6004 = literal6004 := by
  rw [tree6004_def, child0, child1]
  rfl
theorem node6004_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6002 live6002 coloured6002 = result6002)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6003 live6003 coloured6003 = result6003) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6004 live6004 coloured6004 = result6004 := by
  rw [tree6004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6002 coloured6002 at child
  try dsimp only [live6004, coloured6004]
  rw [child]
  dsimp only [result6002]
  have child := child1
  unfold live6003 coloured6003 at child
  try dsimp only [live6004, coloured6004]
  rw [child]
  dsimp only [result6003]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6005_agree_conditional : tree6005 = literal6005 := by
  rw [tree6005_def]
  rfl
theorem node6005_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6005 live6005 coloured6005 = result6005 := by
  rw [tree6005_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6006_agree_conditional
    (child0 : tree6004 = literal6004)
    (child1 : tree6005 = literal6005) : tree6006 = literal6006 := by
  rw [tree6006_def, child0, child1]
  rfl
theorem node6006_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6004 live6004 coloured6004 = result6004)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6005 live6005 coloured6005 = result6005) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6006 live6006 coloured6006 = result6006 := by
  rw [tree6006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6004 coloured6004 at child
  try dsimp only [live6006, coloured6006]
  rw [child]
  dsimp only [result6004]
  have child := child1
  unfold live6005 coloured6005 at child
  try dsimp only [live6006, coloured6006]
  rw [child]
  dsimp only [result6005]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6007_agree_conditional : tree6007 = literal6007 := by
  rw [tree6007_def]
  rfl
theorem node6007_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6007 live6007 coloured6007 = result6007 := by
  rw [tree6007_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6008_agree_conditional
    (child0 : tree6006 = literal6006)
    (child1 : tree6007 = literal6007) : tree6008 = literal6008 := by
  rw [tree6008_def, child0, child1]
  rfl
theorem node6008_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6006 live6006 coloured6006 = result6006)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6007 live6007 coloured6007 = result6007) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6008 live6008 coloured6008 = result6008 := by
  rw [tree6008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6006 coloured6006 at child
  try dsimp only [live6008, coloured6008]
  rw [child]
  dsimp only [result6006]
  have child := child1
  unfold live6007 coloured6007 at child
  try dsimp only [live6008, coloured6008]
  rw [child]
  dsimp only [result6007]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6009_agree_conditional : tree6009 = literal6009 := by
  rw [tree6009_def]
  rfl
theorem node6009_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6009 live6009 coloured6009 = result6009 := by
  rw [tree6009_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6010_agree_conditional
    (child0 : tree6008 = literal6008)
    (child1 : tree6009 = literal6009) : tree6010 = literal6010 := by
  rw [tree6010_def, child0, child1]
  rfl
theorem node6010_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6008 live6008 coloured6008 = result6008)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6009 live6009 coloured6009 = result6009) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6010 live6010 coloured6010 = result6010 := by
  rw [tree6010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6008 coloured6008 at child
  try dsimp only [live6010, coloured6010]
  rw [child]
  dsimp only [result6008]
  have child := child1
  unfold live6009 coloured6009 at child
  try dsimp only [live6010, coloured6010]
  rw [child]
  dsimp only [result6009]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6011_agree_conditional : tree6011 = literal6011 := by
  rw [tree6011_def]
  rfl
theorem node6011_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6011 live6011 coloured6011 = result6011 := by
  rw [tree6011_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6012_agree_conditional
    (child0 : tree6010 = literal6010)
    (child1 : tree6011 = literal6011) : tree6012 = literal6012 := by
  rw [tree6012_def, child0, child1]
  rfl
theorem node6012_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6010 live6010 coloured6010 = result6010)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6011 live6011 coloured6011 = result6011) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6012 live6012 coloured6012 = result6012 := by
  rw [tree6012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6010 coloured6010 at child
  try dsimp only [live6012, coloured6012]
  rw [child]
  dsimp only [result6010]
  have child := child1
  unfold live6011 coloured6011 at child
  try dsimp only [live6012, coloured6012]
  rw [child]
  dsimp only [result6011]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6013_agree_conditional : tree6013 = literal6013 := by
  rw [tree6013_def]
  rfl
theorem node6013_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6013 live6013 coloured6013 = result6013 := by
  rw [tree6013_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6014_agree_conditional
    (child0 : tree6012 = literal6012)
    (child1 : tree6013 = literal6013) : tree6014 = literal6014 := by
  rw [tree6014_def, child0, child1]
  rfl
theorem node6014_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6012 live6012 coloured6012 = result6012)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6013 live6013 coloured6013 = result6013) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6014 live6014 coloured6014 = result6014 := by
  rw [tree6014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6012 coloured6012 at child
  try dsimp only [live6014, coloured6014]
  rw [child]
  dsimp only [result6012]
  have child := child1
  unfold live6013 coloured6013 at child
  try dsimp only [live6014, coloured6014]
  rw [child]
  dsimp only [result6013]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6015_agree_conditional : tree6015 = literal6015 := by
  rw [tree6015_def]
  rfl
theorem node6015_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6015 live6015 coloured6015 = result6015 := by
  rw [tree6015_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6016_agree_conditional
    (child0 : tree6014 = literal6014)
    (child1 : tree6015 = literal6015) : tree6016 = literal6016 := by
  rw [tree6016_def, child0, child1]
  rfl
theorem node6016_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6014 live6014 coloured6014 = result6014)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6015 live6015 coloured6015 = result6015) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6016 live6016 coloured6016 = result6016 := by
  rw [tree6016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6014 coloured6014 at child
  try dsimp only [live6016, coloured6016]
  rw [child]
  dsimp only [result6014]
  have child := child1
  unfold live6015 coloured6015 at child
  try dsimp only [live6016, coloured6016]
  rw [child]
  dsimp only [result6015]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6017_agree_conditional : tree6017 = literal6017 := by
  rw [tree6017_def]
  rfl
theorem node6017_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6017 live6017 coloured6017 = result6017 := by
  rw [tree6017_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6018_agree_conditional
    (child0 : tree6016 = literal6016)
    (child1 : tree6017 = literal6017) : tree6018 = literal6018 := by
  rw [tree6018_def, child0, child1]
  rfl
theorem node6018_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6016 live6016 coloured6016 = result6016)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6017 live6017 coloured6017 = result6017) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6018 live6018 coloured6018 = result6018 := by
  rw [tree6018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6016 coloured6016 at child
  try dsimp only [live6018, coloured6018]
  rw [child]
  dsimp only [result6016]
  have child := child1
  unfold live6017 coloured6017 at child
  try dsimp only [live6018, coloured6018]
  rw [child]
  dsimp only [result6017]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6019_agree_conditional : tree6019 = literal6019 := by
  rw [tree6019_def]
  rfl
theorem node6019_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6019 live6019 coloured6019 = result6019 := by
  rw [tree6019_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6020_agree_conditional
    (child0 : tree6018 = literal6018)
    (child1 : tree6019 = literal6019) : tree6020 = literal6020 := by
  rw [tree6020_def, child0, child1]
  rfl
theorem node6020_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6018 live6018 coloured6018 = result6018)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6019 live6019 coloured6019 = result6019) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6020 live6020 coloured6020 = result6020 := by
  rw [tree6020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6018 coloured6018 at child
  try dsimp only [live6020, coloured6020]
  rw [child]
  dsimp only [result6018]
  have child := child1
  unfold live6019 coloured6019 at child
  try dsimp only [live6020, coloured6020]
  rw [child]
  dsimp only [result6019]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6021_agree_conditional : tree6021 = literal6021 := by
  rw [tree6021_def]
  rfl
theorem node6021_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6021 live6021 coloured6021 = result6021 := by
  rw [tree6021_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6022_agree_conditional
    (child0 : tree6020 = literal6020)
    (child1 : tree6021 = literal6021) : tree6022 = literal6022 := by
  rw [tree6022_def, child0, child1]
  rfl
theorem node6022_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6020 live6020 coloured6020 = result6020)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6021 live6021 coloured6021 = result6021) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6022 live6022 coloured6022 = result6022 := by
  rw [tree6022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6020 coloured6020 at child
  try dsimp only [live6022, coloured6022]
  rw [child]
  dsimp only [result6020]
  have child := child1
  unfold live6021 coloured6021 at child
  try dsimp only [live6022, coloured6022]
  rw [child]
  dsimp only [result6021]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6023_agree_conditional : tree6023 = literal6023 := by
  rw [tree6023_def]
  rfl
theorem node6023_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6023 live6023 coloured6023 = result6023 := by
  rw [tree6023_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6024_agree_conditional
    (child0 : tree6022 = literal6022)
    (child1 : tree6023 = literal6023) : tree6024 = literal6024 := by
  rw [tree6024_def, child0, child1]
  rfl
theorem node6024_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6022 live6022 coloured6022 = result6022)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6023 live6023 coloured6023 = result6023) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6024 live6024 coloured6024 = result6024 := by
  rw [tree6024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6022 coloured6022 at child
  try dsimp only [live6024, coloured6024]
  rw [child]
  dsimp only [result6022]
  have child := child1
  unfold live6023 coloured6023 at child
  try dsimp only [live6024, coloured6024]
  rw [child]
  dsimp only [result6023]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6025_agree_conditional : tree6025 = literal6025 := by
  rw [tree6025_def]
  rfl
theorem node6025_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6025 live6025 coloured6025 = result6025 := by
  rw [tree6025_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6026_agree_conditional
    (child0 : tree6024 = literal6024)
    (child1 : tree6025 = literal6025) : tree6026 = literal6026 := by
  rw [tree6026_def, child0, child1]
  rfl
theorem node6026_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6024 live6024 coloured6024 = result6024)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6025 live6025 coloured6025 = result6025) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6026 live6026 coloured6026 = result6026 := by
  rw [tree6026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6024 coloured6024 at child
  try dsimp only [live6026, coloured6026]
  rw [child]
  dsimp only [result6024]
  have child := child1
  unfold live6025 coloured6025 at child
  try dsimp only [live6026, coloured6026]
  rw [child]
  dsimp only [result6025]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6027_agree_conditional : tree6027 = literal6027 := by
  rw [tree6027_def]
  rfl
theorem node6027_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6027 live6027 coloured6027 = result6027 := by
  rw [tree6027_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6028_agree_conditional
    (child0 : tree6026 = literal6026)
    (child1 : tree6027 = literal6027) : tree6028 = literal6028 := by
  rw [tree6028_def, child0, child1]
  rfl
theorem node6028_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6026 live6026 coloured6026 = result6026)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6027 live6027 coloured6027 = result6027) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6028 live6028 coloured6028 = result6028 := by
  rw [tree6028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6026 coloured6026 at child
  try dsimp only [live6028, coloured6028]
  rw [child]
  dsimp only [result6026]
  have child := child1
  unfold live6027 coloured6027 at child
  try dsimp only [live6028, coloured6028]
  rw [child]
  dsimp only [result6027]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6029_agree_conditional : tree6029 = literal6029 := by
  rw [tree6029_def]
  rfl
theorem node6029_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6029 live6029 coloured6029 = result6029 := by
  rw [tree6029_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6030_agree_conditional
    (child0 : tree6028 = literal6028)
    (child1 : tree6029 = literal6029) : tree6030 = literal6030 := by
  rw [tree6030_def, child0, child1]
  rfl
theorem node6030_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6028 live6028 coloured6028 = result6028)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6029 live6029 coloured6029 = result6029) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6030 live6030 coloured6030 = result6030 := by
  rw [tree6030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6028 coloured6028 at child
  try dsimp only [live6030, coloured6030]
  rw [child]
  dsimp only [result6028]
  have child := child1
  unfold live6029 coloured6029 at child
  try dsimp only [live6030, coloured6030]
  rw [child]
  dsimp only [result6029]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6031_agree_conditional : tree6031 = literal6031 := by
  rw [tree6031_def]
  rfl
theorem node6031_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6031 live6031 coloured6031 = result6031 := by
  rw [tree6031_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6032_agree_conditional
    (child0 : tree6030 = literal6030)
    (child1 : tree6031 = literal6031) : tree6032 = literal6032 := by
  rw [tree6032_def, child0, child1]
  rfl
theorem node6032_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6030 live6030 coloured6030 = result6030)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6031 live6031 coloured6031 = result6031) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6032 live6032 coloured6032 = result6032 := by
  rw [tree6032_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6030 coloured6030 at child
  try dsimp only [live6032, coloured6032]
  rw [child]
  dsimp only [result6030]
  have child := child1
  unfold live6031 coloured6031 at child
  try dsimp only [live6032, coloured6032]
  rw [child]
  dsimp only [result6031]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6033_agree_conditional : tree6033 = literal6033 := by
  rw [tree6033_def]
  rfl
theorem node6033_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6033 live6033 coloured6033 = result6033 := by
  rw [tree6033_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6034_agree_conditional
    (child0 : tree6032 = literal6032)
    (child1 : tree6033 = literal6033) : tree6034 = literal6034 := by
  rw [tree6034_def, child0, child1]
  rfl
theorem node6034_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6032 live6032 coloured6032 = result6032)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6033 live6033 coloured6033 = result6033) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6034 live6034 coloured6034 = result6034 := by
  rw [tree6034_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6032 coloured6032 at child
  try dsimp only [live6034, coloured6034]
  rw [child]
  dsimp only [result6032]
  have child := child1
  unfold live6033 coloured6033 at child
  try dsimp only [live6034, coloured6034]
  rw [child]
  dsimp only [result6033]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6035_agree_conditional : tree6035 = literal6035 := by
  rw [tree6035_def]
  rfl
theorem node6035_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6035 live6035 coloured6035 = result6035 := by
  rw [tree6035_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6036_agree_conditional
    (child0 : tree6034 = literal6034)
    (child1 : tree6035 = literal6035) : tree6036 = literal6036 := by
  rw [tree6036_def, child0, child1]
  rfl
theorem node6036_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6034 live6034 coloured6034 = result6034)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6035 live6035 coloured6035 = result6035) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6036 live6036 coloured6036 = result6036 := by
  rw [tree6036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6034 coloured6034 at child
  try dsimp only [live6036, coloured6036]
  rw [child]
  dsimp only [result6034]
  have child := child1
  unfold live6035 coloured6035 at child
  try dsimp only [live6036, coloured6036]
  rw [child]
  dsimp only [result6035]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6037_agree_conditional : tree6037 = literal6037 := by
  rw [tree6037_def]
  rfl
theorem node6037_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6037 live6037 coloured6037 = result6037 := by
  rw [tree6037_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6038_agree_conditional
    (child0 : tree6036 = literal6036)
    (child1 : tree6037 = literal6037) : tree6038 = literal6038 := by
  rw [tree6038_def, child0, child1]
  rfl
theorem node6038_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6036 live6036 coloured6036 = result6036)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6037 live6037 coloured6037 = result6037) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6038 live6038 coloured6038 = result6038 := by
  rw [tree6038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6036 coloured6036 at child
  try dsimp only [live6038, coloured6038]
  rw [child]
  dsimp only [result6036]
  have child := child1
  unfold live6037 coloured6037 at child
  try dsimp only [live6038, coloured6038]
  rw [child]
  dsimp only [result6037]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6039_agree_conditional : tree6039 = literal6039 := by
  rw [tree6039_def]
  rfl
theorem node6039_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6039 live6039 coloured6039 = result6039 := by
  rw [tree6039_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6040_agree_conditional
    (child0 : tree6038 = literal6038)
    (child1 : tree6039 = literal6039) : tree6040 = literal6040 := by
  rw [tree6040_def, child0, child1]
  rfl
theorem node6040_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6038 live6038 coloured6038 = result6038)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6039 live6039 coloured6039 = result6039) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6040 live6040 coloured6040 = result6040 := by
  rw [tree6040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6038 coloured6038 at child
  try dsimp only [live6040, coloured6040]
  rw [child]
  dsimp only [result6038]
  have child := child1
  unfold live6039 coloured6039 at child
  try dsimp only [live6040, coloured6040]
  rw [child]
  dsimp only [result6039]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6041_agree_conditional : tree6041 = literal6041 := by
  rw [tree6041_def]
  rfl
theorem node6041_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6041 live6041 coloured6041 = result6041 := by
  rw [tree6041_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6042_agree_conditional
    (child0 : tree6040 = literal6040)
    (child1 : tree6041 = literal6041) : tree6042 = literal6042 := by
  rw [tree6042_def, child0, child1]
  rfl
theorem node6042_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6040 live6040 coloured6040 = result6040)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6041 live6041 coloured6041 = result6041) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6042 live6042 coloured6042 = result6042 := by
  rw [tree6042_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6040 coloured6040 at child
  try dsimp only [live6042, coloured6042]
  rw [child]
  dsimp only [result6040]
  have child := child1
  unfold live6041 coloured6041 at child
  try dsimp only [live6042, coloured6042]
  rw [child]
  dsimp only [result6041]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6043_agree_conditional : tree6043 = literal6043 := by
  rw [tree6043_def]
  rfl
theorem node6043_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6043 live6043 coloured6043 = result6043 := by
  rw [tree6043_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6044_agree_conditional
    (child0 : tree6042 = literal6042)
    (child1 : tree6043 = literal6043) : tree6044 = literal6044 := by
  rw [tree6044_def, child0, child1]
  rfl
theorem node6044_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6042 live6042 coloured6042 = result6042)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6043 live6043 coloured6043 = result6043) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6044 live6044 coloured6044 = result6044 := by
  rw [tree6044_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6042 coloured6042 at child
  try dsimp only [live6044, coloured6044]
  rw [child]
  dsimp only [result6042]
  have child := child1
  unfold live6043 coloured6043 at child
  try dsimp only [live6044, coloured6044]
  rw [child]
  dsimp only [result6043]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6045_agree_conditional : tree6045 = literal6045 := by
  rw [tree6045_def]
  rfl
theorem node6045_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6045 live6045 coloured6045 = result6045 := by
  rw [tree6045_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6046_agree_conditional
    (child0 : tree6044 = literal6044)
    (child1 : tree6045 = literal6045) : tree6046 = literal6046 := by
  rw [tree6046_def, child0, child1]
  rfl
theorem node6046_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6044 live6044 coloured6044 = result6044)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6045 live6045 coloured6045 = result6045) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6046 live6046 coloured6046 = result6046 := by
  rw [tree6046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live6044 coloured6044 at child
  try dsimp only [live6046, coloured6046]
  rw [child]
  dsimp only [result6044]
  have child := child1
  unfold live6045 coloured6045 at child
  try dsimp only [live6046, coloured6046]
  rw [child]
  dsimp only [result6045]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree6047_agree_conditional : tree6047 = literal6047 := by
  rw [tree6047_def]
  rfl
theorem node6047_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree6047 live6047 coloured6047 = result6047 := by
  rw [tree6047_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
