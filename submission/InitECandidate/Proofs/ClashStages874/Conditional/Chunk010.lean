import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages874.Data
import InitECandidate.Proofs.ClashComputation
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages874
theorem tree960_agree_conditional
    (child0 : tree958 = literal958)
    (child1 : tree959 = literal959) : tree960 = literal960 := by
  rw [tree960_def, child0, child1]
  rfl
theorem node960_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree958 live958 coloured958 = result958)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree959 live959 coloured959 = result959) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree960 live960 coloured960 = result960 := by
  rw [tree960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live958 coloured958 at child
  try dsimp only [live960, coloured960]
  rw [child]
  dsimp only [result958]
  have child := child1
  unfold live959 coloured959 at child
  try dsimp only [live960, coloured960]
  rw [child]
  dsimp only [result959]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree961_agree_conditional : tree961 = literal961 := by
  rw [tree961_def]
  rfl
theorem node961_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree961 live961 coloured961 = result961 := by
  rw [tree961_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree962_agree_conditional : tree962 = literal962 := by
  rw [tree962_def]
  rfl
theorem node962_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree962 live962 coloured962 = result962 := by
  rw [tree962_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree963_agree_conditional
    (child0 : tree961 = literal961)
    (child1 : tree962 = literal962) : tree963 = literal963 := by
  rw [tree963_def, child0, child1]
  rfl
theorem node963_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree961 live961 coloured961 = result961)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree962 live962 coloured962 = result962) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree963 live963 coloured963 = result963 := by
  rw [tree963_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live961 coloured961 at child
  try dsimp only [live963, coloured963]
  rw [child]
  dsimp only [result961]
  have child := child1
  unfold live962 coloured962 at child
  try dsimp only [live963, coloured963]
  rw [child]
  dsimp only [result962]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree964_agree_conditional : tree964 = literal964 := by
  rw [tree964_def]
  rfl
theorem node964_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree964 live964 coloured964 = result964 := by
  rw [tree964_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree965_agree_conditional : tree965 = literal965 := by
  rw [tree965_def]
  rfl
theorem node965_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree965 live965 coloured965 = result965 := by
  rw [tree965_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree966_agree_conditional
    (child0 : tree964 = literal964)
    (child1 : tree965 = literal965) : tree966 = literal966 := by
  rw [tree966_def, child0, child1]
  rfl
theorem node966_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree964 live964 coloured964 = result964)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree965 live965 coloured965 = result965) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree966 live966 coloured966 = result966 := by
  rw [tree966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live964 coloured964 at child
  try dsimp only [live966, coloured966]
  rw [child]
  dsimp only [result964]
  have child := child1
  unfold live965 coloured965 at child
  try dsimp only [live966, coloured966]
  rw [child]
  dsimp only [result965]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree967_agree_conditional
    (child0 : tree963 = literal963)
    (child1 : tree966 = literal966) : tree967 = literal967 := by
  rw [tree967_def, child0, child1]
  rfl
theorem node967_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree963 live963 coloured963 = result963)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree966 live966 coloured966 = result966) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree967 live967 coloured967 = result967 := by
  rw [tree967_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live963 coloured963 at child
  try dsimp only [live967, coloured967]
  rw [child]
  dsimp only [result963]
  have child := child1
  unfold live966 coloured966 at child
  try dsimp only [live967, coloured967]
  rw [child]
  dsimp only [result966]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree968_agree_conditional : tree968 = literal968 := by
  rw [tree968_def]
  rfl
theorem node968_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree968 live968 coloured968 = result968 := by
  rw [tree968_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree969_agree_conditional
    (child0 : tree967 = literal967)
    (child1 : tree968 = literal968) : tree969 = literal969 := by
  rw [tree969_def, child0, child1]
  rfl
theorem node969_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree967 live967 coloured967 = result967)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree968 live968 coloured968 = result968) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree969 live969 coloured969 = result969 := by
  rw [tree969_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live967 coloured967 at child
  try dsimp only [live969, coloured969]
  rw [child]
  dsimp only [result967]
  have child := child1
  unfold live968 coloured968 at child
  try dsimp only [live969, coloured969]
  rw [child]
  dsimp only [result968]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree970_agree_conditional
    (child0 : tree960 = literal960)
    (child1 : tree969 = literal969) : tree970 = literal970 := by
  rw [tree970_def, child0, child1]
  rfl
theorem node970_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree960 live960 coloured960 = result960)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree969 live969 coloured969 = result969) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree970 live970 coloured970 = result970 := by
  rw [tree970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live960 coloured960 at child
  try dsimp only [live970, coloured970]
  rw [child]
  dsimp only [result960]
  have child := child1
  unfold live969 coloured969 at child
  try dsimp only [live970, coloured970]
  rw [child]
  dsimp only [result969]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree971_agree_conditional : tree971 = literal971 := by
  rw [tree971_def]
  rfl
theorem node971_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree971 live971 coloured971 = result971 := by
  rw [tree971_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree972_agree_conditional
    (child0 : tree970 = literal970)
    (child1 : tree971 = literal971) : tree972 = literal972 := by
  rw [tree972_def, child0, child1]
  rfl
theorem node972_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree970 live970 coloured970 = result970)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree971 live971 coloured971 = result971) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree972 live972 coloured972 = result972 := by
  rw [tree972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live970 coloured970 at child
  try dsimp only [live972, coloured972]
  rw [child]
  dsimp only [result970]
  have child := child1
  unfold live971 coloured971 at child
  try dsimp only [live972, coloured972]
  rw [child]
  dsimp only [result971]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree973_agree_conditional : tree973 = literal973 := by
  rw [tree973_def]
  rfl
theorem node973_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree973 live973 coloured973 = result973 := by
  rw [tree973_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree974_agree_conditional
    (child0 : tree972 = literal972)
    (child1 : tree973 = literal973) : tree974 = literal974 := by
  rw [tree974_def, child0, child1]
  rfl
theorem node974_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree972 live972 coloured972 = result972)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree973 live973 coloured973 = result973) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree974 live974 coloured974 = result974 := by
  rw [tree974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live972 coloured972 at child
  try dsimp only [live974, coloured974]
  rw [child]
  dsimp only [result972]
  have child := child1
  unfold live973 coloured973 at child
  try dsimp only [live974, coloured974]
  rw [child]
  dsimp only [result973]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree975_agree_conditional : tree975 = literal975 := by
  rw [tree975_def]
  rfl
theorem node975_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree975 live975 coloured975 = result975 := by
  rw [tree975_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree976_agree_conditional
    (child0 : tree974 = literal974)
    (child1 : tree975 = literal975) : tree976 = literal976 := by
  rw [tree976_def, child0, child1]
  rfl
theorem node976_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree974 live974 coloured974 = result974)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree975 live975 coloured975 = result975) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree976 live976 coloured976 = result976 := by
  rw [tree976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live974 coloured974 at child
  try dsimp only [live976, coloured976]
  rw [child]
  dsimp only [result974]
  have child := child1
  unfold live975 coloured975 at child
  try dsimp only [live976, coloured976]
  rw [child]
  dsimp only [result975]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree977_agree_conditional : tree977 = literal977 := by
  rw [tree977_def]
  rfl
theorem node977_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree977 live977 coloured977 = result977 := by
  rw [tree977_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree978_agree_conditional
    (child0 : tree976 = literal976)
    (child1 : tree977 = literal977) : tree978 = literal978 := by
  rw [tree978_def, child0, child1]
  rfl
theorem node978_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree976 live976 coloured976 = result976)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree977 live977 coloured977 = result977) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree978 live978 coloured978 = result978 := by
  rw [tree978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live976 coloured976 at child
  try dsimp only [live978, coloured978]
  rw [child]
  dsimp only [result976]
  have child := child1
  unfold live977 coloured977 at child
  try dsimp only [live978, coloured978]
  rw [child]
  dsimp only [result977]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree979_agree_conditional : tree979 = literal979 := by
  rw [tree979_def]
  rfl
theorem node979_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree979 live979 coloured979 = result979 := by
  rw [tree979_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree980_agree_conditional
    (child0 : tree978 = literal978)
    (child1 : tree979 = literal979) : tree980 = literal980 := by
  rw [tree980_def, child0, child1]
  rfl
theorem node980_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree978 live978 coloured978 = result978)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree979 live979 coloured979 = result979) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree980 live980 coloured980 = result980 := by
  rw [tree980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live978 coloured978 at child
  try dsimp only [live980, coloured980]
  rw [child]
  dsimp only [result978]
  have child := child1
  unfold live979 coloured979 at child
  try dsimp only [live980, coloured980]
  rw [child]
  dsimp only [result979]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree981_agree_conditional : tree981 = literal981 := by
  rw [tree981_def]
  rfl
theorem node981_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree981 live981 coloured981 = result981 := by
  rw [tree981_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree982_agree_conditional
    (child0 : tree980 = literal980)
    (child1 : tree981 = literal981) : tree982 = literal982 := by
  rw [tree982_def, child0, child1]
  rfl
theorem node982_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree980 live980 coloured980 = result980)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree981 live981 coloured981 = result981) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree982 live982 coloured982 = result982 := by
  rw [tree982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live980 coloured980 at child
  try dsimp only [live982, coloured982]
  rw [child]
  dsimp only [result980]
  have child := child1
  unfold live981 coloured981 at child
  try dsimp only [live982, coloured982]
  rw [child]
  dsimp only [result981]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree983_agree_conditional : tree983 = literal983 := by
  rw [tree983_def]
  rfl
theorem node983_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree983 live983 coloured983 = result983 := by
  rw [tree983_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree984_agree_conditional
    (child0 : tree982 = literal982)
    (child1 : tree983 = literal983) : tree984 = literal984 := by
  rw [tree984_def, child0, child1]
  rfl
theorem node984_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree982 live982 coloured982 = result982)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree983 live983 coloured983 = result983) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree984 live984 coloured984 = result984 := by
  rw [tree984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live982 coloured982 at child
  try dsimp only [live984, coloured984]
  rw [child]
  dsimp only [result982]
  have child := child1
  unfold live983 coloured983 at child
  try dsimp only [live984, coloured984]
  rw [child]
  dsimp only [result983]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree985_agree_conditional : tree985 = literal985 := by
  rw [tree985_def]
  rfl
theorem node985_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree985 live985 coloured985 = result985 := by
  rw [tree985_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree986_agree_conditional
    (child0 : tree984 = literal984)
    (child1 : tree985 = literal985) : tree986 = literal986 := by
  rw [tree986_def, child0, child1]
  rfl
theorem node986_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree984 live984 coloured984 = result984)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree985 live985 coloured985 = result985) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree986 live986 coloured986 = result986 := by
  rw [tree986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live984 coloured984 at child
  try dsimp only [live986, coloured986]
  rw [child]
  dsimp only [result984]
  have child := child1
  unfold live985 coloured985 at child
  try dsimp only [live986, coloured986]
  rw [child]
  dsimp only [result985]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree987_agree_conditional : tree987 = literal987 := by
  rw [tree987_def]
  rfl
theorem node987_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree987 live987 coloured987 = result987 := by
  rw [tree987_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree988_agree_conditional
    (child0 : tree986 = literal986)
    (child1 : tree987 = literal987) : tree988 = literal988 := by
  rw [tree988_def, child0, child1]
  rfl
theorem node988_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree986 live986 coloured986 = result986)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree987 live987 coloured987 = result987) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree988 live988 coloured988 = result988 := by
  rw [tree988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live986 coloured986 at child
  try dsimp only [live988, coloured988]
  rw [child]
  dsimp only [result986]
  have child := child1
  unfold live987 coloured987 at child
  try dsimp only [live988, coloured988]
  rw [child]
  dsimp only [result987]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree989_agree_conditional : tree989 = literal989 := by
  rw [tree989_def]
  rfl
theorem node989_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree989 live989 coloured989 = result989 := by
  rw [tree989_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree990_agree_conditional
    (child0 : tree988 = literal988)
    (child1 : tree989 = literal989) : tree990 = literal990 := by
  rw [tree990_def, child0, child1]
  rfl
theorem node990_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree988 live988 coloured988 = result988)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree989 live989 coloured989 = result989) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree990 live990 coloured990 = result990 := by
  rw [tree990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live988 coloured988 at child
  try dsimp only [live990, coloured990]
  rw [child]
  dsimp only [result988]
  have child := child1
  unfold live989 coloured989 at child
  try dsimp only [live990, coloured990]
  rw [child]
  dsimp only [result989]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree991_agree_conditional : tree991 = literal991 := by
  rw [tree991_def]
  rfl
theorem node991_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree991 live991 coloured991 = result991 := by
  rw [tree991_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree992_agree_conditional
    (child0 : tree990 = literal990)
    (child1 : tree991 = literal991) : tree992 = literal992 := by
  rw [tree992_def, child0, child1]
  rfl
theorem node992_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree990 live990 coloured990 = result990)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree991 live991 coloured991 = result991) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree992 live992 coloured992 = result992 := by
  rw [tree992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live990 coloured990 at child
  try dsimp only [live992, coloured992]
  rw [child]
  dsimp only [result990]
  have child := child1
  unfold live991 coloured991 at child
  try dsimp only [live992, coloured992]
  rw [child]
  dsimp only [result991]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree993_agree_conditional : tree993 = literal993 := by
  rw [tree993_def]
  rfl
theorem node993_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree993 live993 coloured993 = result993 := by
  rw [tree993_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree994_agree_conditional
    (child0 : tree992 = literal992)
    (child1 : tree993 = literal993) : tree994 = literal994 := by
  rw [tree994_def, child0, child1]
  rfl
theorem node994_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree992 live992 coloured992 = result992)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree993 live993 coloured993 = result993) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree994 live994 coloured994 = result994 := by
  rw [tree994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live992 coloured992 at child
  try dsimp only [live994, coloured994]
  rw [child]
  dsimp only [result992]
  have child := child1
  unfold live993 coloured993 at child
  try dsimp only [live994, coloured994]
  rw [child]
  dsimp only [result993]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree995_agree_conditional : tree995 = literal995 := by
  rw [tree995_def]
  rfl
theorem node995_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree995 live995 coloured995 = result995 := by
  rw [tree995_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree996_agree_conditional
    (child0 : tree994 = literal994)
    (child1 : tree995 = literal995) : tree996 = literal996 := by
  rw [tree996_def, child0, child1]
  rfl
theorem node996_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree994 live994 coloured994 = result994)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree995 live995 coloured995 = result995) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree996 live996 coloured996 = result996 := by
  rw [tree996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live994 coloured994 at child
  try dsimp only [live996, coloured996]
  rw [child]
  dsimp only [result994]
  have child := child1
  unfold live995 coloured995 at child
  try dsimp only [live996, coloured996]
  rw [child]
  dsimp only [result995]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree997_agree_conditional : tree997 = literal997 := by
  rw [tree997_def]
  rfl
theorem node997_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree997 live997 coloured997 = result997 := by
  rw [tree997_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree998_agree_conditional
    (child0 : tree996 = literal996)
    (child1 : tree997 = literal997) : tree998 = literal998 := by
  rw [tree998_def, child0, child1]
  rfl
theorem node998_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree996 live996 coloured996 = result996)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree997 live997 coloured997 = result997) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree998 live998 coloured998 = result998 := by
  rw [tree998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live996 coloured996 at child
  try dsimp only [live998, coloured998]
  rw [child]
  dsimp only [result996]
  have child := child1
  unfold live997 coloured997 at child
  try dsimp only [live998, coloured998]
  rw [child]
  dsimp only [result997]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree999_agree_conditional : tree999 = literal999 := by
  rw [tree999_def]
  rfl
theorem node999_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree999 live999 coloured999 = result999 := by
  rw [tree999_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1000_agree_conditional
    (child0 : tree998 = literal998)
    (child1 : tree999 = literal999) : tree1000 = literal1000 := by
  rw [tree1000_def, child0, child1]
  rfl
theorem node1000_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree998 live998 coloured998 = result998)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree999 live999 coloured999 = result999) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1000 live1000 coloured1000 = result1000 := by
  rw [tree1000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live998 coloured998 at child
  try dsimp only [live1000, coloured1000]
  rw [child]
  dsimp only [result998]
  have child := child1
  unfold live999 coloured999 at child
  try dsimp only [live1000, coloured1000]
  rw [child]
  dsimp only [result999]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1001_agree_conditional : tree1001 = literal1001 := by
  rw [tree1001_def]
  rfl
theorem node1001_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1001 live1001 coloured1001 = result1001 := by
  rw [tree1001_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1002_agree_conditional
    (child0 : tree1000 = literal1000)
    (child1 : tree1001 = literal1001) : tree1002 = literal1002 := by
  rw [tree1002_def, child0, child1]
  rfl
theorem node1002_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1000 live1000 coloured1000 = result1000)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1001 live1001 coloured1001 = result1001) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1002 live1002 coloured1002 = result1002 := by
  rw [tree1002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1000 coloured1000 at child
  try dsimp only [live1002, coloured1002]
  rw [child]
  dsimp only [result1000]
  have child := child1
  unfold live1001 coloured1001 at child
  try dsimp only [live1002, coloured1002]
  rw [child]
  dsimp only [result1001]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1003_agree_conditional : tree1003 = literal1003 := by
  rw [tree1003_def]
  rfl
theorem node1003_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1003 live1003 coloured1003 = result1003 := by
  rw [tree1003_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1004_agree_conditional : tree1004 = literal1004 := by
  rw [tree1004_def]
  rfl
theorem node1004_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1004 live1004 coloured1004 = result1004 := by
  rw [tree1004_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1005_agree_conditional
    (child0 : tree1003 = literal1003)
    (child1 : tree1004 = literal1004) : tree1005 = literal1005 := by
  rw [tree1005_def, child0, child1]
  rfl
theorem node1005_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1003 live1003 coloured1003 = result1003)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1004 live1004 coloured1004 = result1004) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1005 live1005 coloured1005 = result1005 := by
  rw [tree1005_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1003 coloured1003 at child
  try dsimp only [live1005, coloured1005]
  rw [child]
  dsimp only [result1003]
  have child := child1
  unfold live1004 coloured1004 at child
  try dsimp only [live1005, coloured1005]
  rw [child]
  dsimp only [result1004]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1006_agree_conditional : tree1006 = literal1006 := by
  rw [tree1006_def]
  rfl
theorem node1006_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1006 live1006 coloured1006 = result1006 := by
  rw [tree1006_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1007_agree_conditional : tree1007 = literal1007 := by
  rw [tree1007_def]
  rfl
theorem node1007_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1007 live1007 coloured1007 = result1007 := by
  rw [tree1007_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1008_agree_conditional
    (child0 : tree1006 = literal1006)
    (child1 : tree1007 = literal1007) : tree1008 = literal1008 := by
  rw [tree1008_def, child0, child1]
  rfl
theorem node1008_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1006 live1006 coloured1006 = result1006)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1007 live1007 coloured1007 = result1007) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1008 live1008 coloured1008 = result1008 := by
  rw [tree1008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1006 coloured1006 at child
  try dsimp only [live1008, coloured1008]
  rw [child]
  dsimp only [result1006]
  have child := child1
  unfold live1007 coloured1007 at child
  try dsimp only [live1008, coloured1008]
  rw [child]
  dsimp only [result1007]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1009_agree_conditional : tree1009 = literal1009 := by
  rw [tree1009_def]
  rfl
theorem node1009_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1009 live1009 coloured1009 = result1009 := by
  rw [tree1009_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1010_agree_conditional
    (child0 : tree1008 = literal1008)
    (child1 : tree1009 = literal1009) : tree1010 = literal1010 := by
  rw [tree1010_def, child0, child1]
  rfl
theorem node1010_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1008 live1008 coloured1008 = result1008)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1009 live1009 coloured1009 = result1009) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1010 live1010 coloured1010 = result1010 := by
  rw [tree1010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1008 coloured1008 at child
  try dsimp only [live1010, coloured1010]
  rw [child]
  dsimp only [result1008]
  have child := child1
  unfold live1009 coloured1009 at child
  try dsimp only [live1010, coloured1010]
  rw [child]
  dsimp only [result1009]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1011_agree_conditional
    (child0 : tree1005 = literal1005)
    (child1 : tree1010 = literal1010) : tree1011 = literal1011 := by
  rw [tree1011_def, child0, child1]
  rfl
theorem node1011_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1005 live1005 coloured1005 = result1005)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1010 live1010 coloured1010 = result1010) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1011 live1011 coloured1011 = result1011 := by
  rw [tree1011_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1005 coloured1005 at child
  try dsimp only [live1011, coloured1011]
  rw [child]
  dsimp only [result1005]
  have child := child1
  unfold live1010 coloured1010 at child
  try dsimp only [live1011, coloured1011]
  rw [child]
  dsimp only [result1010]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1012_agree_conditional
    (child0 : tree1002 = literal1002)
    (child1 : tree1011 = literal1011) : tree1012 = literal1012 := by
  rw [tree1012_def, child0, child1]
  rfl
theorem node1012_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1002 live1002 coloured1002 = result1002)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1011 live1011 coloured1011 = result1011) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1012 live1012 coloured1012 = result1012 := by
  rw [tree1012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1002 coloured1002 at child
  try dsimp only [live1012, coloured1012]
  rw [child]
  dsimp only [result1002]
  have child := child1
  unfold live1011 coloured1011 at child
  try dsimp only [live1012, coloured1012]
  rw [child]
  dsimp only [result1011]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1013_agree_conditional : tree1013 = literal1013 := by
  rw [tree1013_def]
  rfl
theorem node1013_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1013 live1013 coloured1013 = result1013 := by
  rw [tree1013_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1014_agree_conditional
    (child0 : tree1012 = literal1012)
    (child1 : tree1013 = literal1013) : tree1014 = literal1014 := by
  rw [tree1014_def, child0, child1]
  rfl
theorem node1014_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1012 live1012 coloured1012 = result1012)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1013 live1013 coloured1013 = result1013) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1014 live1014 coloured1014 = result1014 := by
  rw [tree1014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1012 coloured1012 at child
  try dsimp only [live1014, coloured1014]
  rw [child]
  dsimp only [result1012]
  have child := child1
  unfold live1013 coloured1013 at child
  try dsimp only [live1014, coloured1014]
  rw [child]
  dsimp only [result1013]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1015_agree_conditional : tree1015 = literal1015 := by
  rw [tree1015_def]
  rfl
theorem node1015_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1015 live1015 coloured1015 = result1015 := by
  rw [tree1015_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1016_agree_conditional
    (child0 : tree1014 = literal1014)
    (child1 : tree1015 = literal1015) : tree1016 = literal1016 := by
  rw [tree1016_def, child0, child1]
  rfl
theorem node1016_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1014 live1014 coloured1014 = result1014)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1015 live1015 coloured1015 = result1015) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1016 live1016 coloured1016 = result1016 := by
  rw [tree1016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1014 coloured1014 at child
  try dsimp only [live1016, coloured1016]
  rw [child]
  dsimp only [result1014]
  have child := child1
  unfold live1015 coloured1015 at child
  try dsimp only [live1016, coloured1016]
  rw [child]
  dsimp only [result1015]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1017_agree_conditional : tree1017 = literal1017 := by
  rw [tree1017_def]
  rfl
theorem node1017_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1017 live1017 coloured1017 = result1017 := by
  rw [tree1017_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1018_agree_conditional
    (child0 : tree1016 = literal1016)
    (child1 : tree1017 = literal1017) : tree1018 = literal1018 := by
  rw [tree1018_def, child0, child1]
  rfl
theorem node1018_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1016 live1016 coloured1016 = result1016)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1017 live1017 coloured1017 = result1017) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1018 live1018 coloured1018 = result1018 := by
  rw [tree1018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1016 coloured1016 at child
  try dsimp only [live1018, coloured1018]
  rw [child]
  dsimp only [result1016]
  have child := child1
  unfold live1017 coloured1017 at child
  try dsimp only [live1018, coloured1018]
  rw [child]
  dsimp only [result1017]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1019_agree_conditional : tree1019 = literal1019 := by
  rw [tree1019_def]
  rfl
theorem node1019_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1019 live1019 coloured1019 = result1019 := by
  rw [tree1019_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1020_agree_conditional : tree1020 = literal1020 := by
  rw [tree1020_def]
  rfl
theorem node1020_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1020 live1020 coloured1020 = result1020 := by
  rw [tree1020_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1021_agree_conditional
    (child0 : tree1019 = literal1019)
    (child1 : tree1020 = literal1020) : tree1021 = literal1021 := by
  rw [tree1021_def, child0, child1]
  rfl
theorem node1021_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1019 live1019 coloured1019 = result1019)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1020 live1020 coloured1020 = result1020) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1021 live1021 coloured1021 = result1021 := by
  rw [tree1021_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1019 coloured1019 at child
  try dsimp only [live1021, coloured1021]
  rw [child]
  dsimp only [result1019]
  have child := child1
  unfold live1020 coloured1020 at child
  try dsimp only [live1021, coloured1021]
  rw [child]
  dsimp only [result1020]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1022_agree_conditional : tree1022 = literal1022 := by
  rw [tree1022_def]
  rfl
theorem node1022_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1022 live1022 coloured1022 = result1022 := by
  rw [tree1022_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1023_agree_conditional
    (child0 : tree1021 = literal1021)
    (child1 : tree1022 = literal1022) : tree1023 = literal1023 := by
  rw [tree1023_def, child0, child1]
  rfl
theorem node1023_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1021 live1021 coloured1021 = result1021)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1022 live1022 coloured1022 = result1022) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1023 live1023 coloured1023 = result1023 := by
  rw [tree1023_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1021 coloured1021 at child
  try dsimp only [live1023, coloured1023]
  rw [child]
  dsimp only [result1021]
  have child := child1
  unfold live1022 coloured1022 at child
  try dsimp only [live1023, coloured1023]
  rw [child]
  dsimp only [result1022]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1024_agree_conditional : tree1024 = literal1024 := by
  rw [tree1024_def]
  rfl
theorem node1024_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1024 live1024 coloured1024 = result1024 := by
  rw [tree1024_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1025_agree_conditional
    (child0 : tree1023 = literal1023)
    (child1 : tree1024 = literal1024) : tree1025 = literal1025 := by
  rw [tree1025_def, child0, child1]
  rfl
theorem node1025_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1023 live1023 coloured1023 = result1023)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1024 live1024 coloured1024 = result1024) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1025 live1025 coloured1025 = result1025 := by
  rw [tree1025_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1023 coloured1023 at child
  try dsimp only [live1025, coloured1025]
  rw [child]
  dsimp only [result1023]
  have child := child1
  unfold live1024 coloured1024 at child
  try dsimp only [live1025, coloured1025]
  rw [child]
  dsimp only [result1024]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1026_agree_conditional : tree1026 = literal1026 := by
  rw [tree1026_def]
  rfl
theorem node1026_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1026 live1026 coloured1026 = result1026 := by
  rw [tree1026_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1027_agree_conditional
    (child0 : tree1025 = literal1025)
    (child1 : tree1026 = literal1026) : tree1027 = literal1027 := by
  rw [tree1027_def, child0, child1]
  rfl
theorem node1027_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1025 live1025 coloured1025 = result1025)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1026 live1026 coloured1026 = result1026) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1027 live1027 coloured1027 = result1027 := by
  rw [tree1027_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1025 coloured1025 at child
  try dsimp only [live1027, coloured1027]
  rw [child]
  dsimp only [result1025]
  have child := child1
  unfold live1026 coloured1026 at child
  try dsimp only [live1027, coloured1027]
  rw [child]
  dsimp only [result1026]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1028_agree_conditional : tree1028 = literal1028 := by
  rw [tree1028_def]
  rfl
theorem node1028_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1028 live1028 coloured1028 = result1028 := by
  rw [tree1028_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1029_agree_conditional
    (child0 : tree1027 = literal1027)
    (child1 : tree1028 = literal1028) : tree1029 = literal1029 := by
  rw [tree1029_def, child0, child1]
  rfl
theorem node1029_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1027 live1027 coloured1027 = result1027)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1028 live1028 coloured1028 = result1028) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1029 live1029 coloured1029 = result1029 := by
  rw [tree1029_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1027 coloured1027 at child
  try dsimp only [live1029, coloured1029]
  rw [child]
  dsimp only [result1027]
  have child := child1
  unfold live1028 coloured1028 at child
  try dsimp only [live1029, coloured1029]
  rw [child]
  dsimp only [result1028]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1030_agree_conditional : tree1030 = literal1030 := by
  rw [tree1030_def]
  rfl
theorem node1030_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1030 live1030 coloured1030 = result1030 := by
  rw [tree1030_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1031_agree_conditional
    (child0 : tree1029 = literal1029)
    (child1 : tree1030 = literal1030) : tree1031 = literal1031 := by
  rw [tree1031_def, child0, child1]
  rfl
theorem node1031_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1029 live1029 coloured1029 = result1029)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1030 live1030 coloured1030 = result1030) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1031 live1031 coloured1031 = result1031 := by
  rw [tree1031_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1029 coloured1029 at child
  try dsimp only [live1031, coloured1031]
  rw [child]
  dsimp only [result1029]
  have child := child1
  unfold live1030 coloured1030 at child
  try dsimp only [live1031, coloured1031]
  rw [child]
  dsimp only [result1030]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1032_agree_conditional : tree1032 = literal1032 := by
  rw [tree1032_def]
  rfl
theorem node1032_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1032 live1032 coloured1032 = result1032 := by
  rw [tree1032_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1033_agree_conditional
    (child0 : tree1031 = literal1031)
    (child1 : tree1032 = literal1032) : tree1033 = literal1033 := by
  rw [tree1033_def, child0, child1]
  rfl
theorem node1033_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1031 live1031 coloured1031 = result1031)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1032 live1032 coloured1032 = result1032) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1033 live1033 coloured1033 = result1033 := by
  rw [tree1033_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1031 coloured1031 at child
  try dsimp only [live1033, coloured1033]
  rw [child]
  dsimp only [result1031]
  have child := child1
  unfold live1032 coloured1032 at child
  try dsimp only [live1033, coloured1033]
  rw [child]
  dsimp only [result1032]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1034_agree_conditional : tree1034 = literal1034 := by
  rw [tree1034_def]
  rfl
theorem node1034_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1034 live1034 coloured1034 = result1034 := by
  rw [tree1034_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1035_agree_conditional
    (child0 : tree1033 = literal1033)
    (child1 : tree1034 = literal1034) : tree1035 = literal1035 := by
  rw [tree1035_def, child0, child1]
  rfl
theorem node1035_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1033 live1033 coloured1033 = result1033)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1034 live1034 coloured1034 = result1034) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1035 live1035 coloured1035 = result1035 := by
  rw [tree1035_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1033 coloured1033 at child
  try dsimp only [live1035, coloured1035]
  rw [child]
  dsimp only [result1033]
  have child := child1
  unfold live1034 coloured1034 at child
  try dsimp only [live1035, coloured1035]
  rw [child]
  dsimp only [result1034]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1036_agree_conditional
    (child0 : tree1018 = literal1018)
    (child1 : tree1035 = literal1035) : tree1036 = literal1036 := by
  rw [tree1036_def, child0, child1]
  rfl
theorem node1036_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1018 live1018 coloured1018 = result1018)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1035 live1035 coloured1035 = result1035) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1036 live1036 coloured1036 = result1036 := by
  rw [tree1036_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1018 coloured1018 at child
  try dsimp only [live1036, coloured1036]
  rw [child]
  dsimp only [result1018]
  have child := child1
  unfold live1035 coloured1035 at child
  try dsimp only [live1036, coloured1036]
  rw [child]
  dsimp only [result1035]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1037_agree_conditional : tree1037 = literal1037 := by
  rw [tree1037_def]
  rfl
theorem node1037_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1037 live1037 coloured1037 = result1037 := by
  rw [tree1037_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1038_agree_conditional
    (child0 : tree1036 = literal1036)
    (child1 : tree1037 = literal1037) : tree1038 = literal1038 := by
  rw [tree1038_def, child0, child1]
  rfl
theorem node1038_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1036 live1036 coloured1036 = result1036)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1037 live1037 coloured1037 = result1037) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1038 live1038 coloured1038 = result1038 := by
  rw [tree1038_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1036 coloured1036 at child
  try dsimp only [live1038, coloured1038]
  rw [child]
  dsimp only [result1036]
  have child := child1
  unfold live1037 coloured1037 at child
  try dsimp only [live1038, coloured1038]
  rw [child]
  dsimp only [result1037]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1039_agree_conditional : tree1039 = literal1039 := by
  rw [tree1039_def]
  rfl
theorem node1039_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1039 live1039 coloured1039 = result1039 := by
  rw [tree1039_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1040_agree_conditional
    (child0 : tree1038 = literal1038)
    (child1 : tree1039 = literal1039) : tree1040 = literal1040 := by
  rw [tree1040_def, child0, child1]
  rfl
theorem node1040_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1038 live1038 coloured1038 = result1038)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1039 live1039 coloured1039 = result1039) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1040 live1040 coloured1040 = result1040 := by
  rw [tree1040_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1038 coloured1038 at child
  try dsimp only [live1040, coloured1040]
  rw [child]
  dsimp only [result1038]
  have child := child1
  unfold live1039 coloured1039 at child
  try dsimp only [live1040, coloured1040]
  rw [child]
  dsimp only [result1039]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1041_agree_conditional : tree1041 = literal1041 := by
  rw [tree1041_def]
  rfl
theorem node1041_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1041 live1041 coloured1041 = result1041 := by
  rw [tree1041_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1042_agree_conditional : tree1042 = literal1042 := by
  rw [tree1042_def]
  rfl
theorem node1042_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1042 live1042 coloured1042 = result1042 := by
  rw [tree1042_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1043_agree_conditional
    (child0 : tree1041 = literal1041)
    (child1 : tree1042 = literal1042) : tree1043 = literal1043 := by
  rw [tree1043_def, child0, child1]
  rfl
theorem node1043_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1041 live1041 coloured1041 = result1041)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1042 live1042 coloured1042 = result1042) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1043 live1043 coloured1043 = result1043 := by
  rw [tree1043_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1041 coloured1041 at child
  try dsimp only [live1043, coloured1043]
  rw [child]
  dsimp only [result1041]
  have child := child1
  unfold live1042 coloured1042 at child
  try dsimp only [live1043, coloured1043]
  rw [child]
  dsimp only [result1042]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1044_agree_conditional : tree1044 = literal1044 := by
  rw [tree1044_def]
  rfl
theorem node1044_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1044 live1044 coloured1044 = result1044 := by
  rw [tree1044_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1045_agree_conditional : tree1045 = literal1045 := by
  rw [tree1045_def]
  rfl
theorem node1045_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1045 live1045 coloured1045 = result1045 := by
  rw [tree1045_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1046_agree_conditional
    (child0 : tree1044 = literal1044)
    (child1 : tree1045 = literal1045) : tree1046 = literal1046 := by
  rw [tree1046_def, child0, child1]
  rfl
theorem node1046_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1044 live1044 coloured1044 = result1044)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1045 live1045 coloured1045 = result1045) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1046 live1046 coloured1046 = result1046 := by
  rw [tree1046_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1044 coloured1044 at child
  try dsimp only [live1046, coloured1046]
  rw [child]
  dsimp only [result1044]
  have child := child1
  unfold live1045 coloured1045 at child
  try dsimp only [live1046, coloured1046]
  rw [child]
  dsimp only [result1045]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1047_agree_conditional : tree1047 = literal1047 := by
  rw [tree1047_def]
  rfl
theorem node1047_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1047 live1047 coloured1047 = result1047 := by
  rw [tree1047_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1048_agree_conditional
    (child0 : tree1046 = literal1046)
    (child1 : tree1047 = literal1047) : tree1048 = literal1048 := by
  rw [tree1048_def, child0, child1]
  rfl
theorem node1048_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1046 live1046 coloured1046 = result1046)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1047 live1047 coloured1047 = result1047) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1048 live1048 coloured1048 = result1048 := by
  rw [tree1048_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1046 coloured1046 at child
  try dsimp only [live1048, coloured1048]
  rw [child]
  dsimp only [result1046]
  have child := child1
  unfold live1047 coloured1047 at child
  try dsimp only [live1048, coloured1048]
  rw [child]
  dsimp only [result1047]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1049_agree_conditional
    (child0 : tree1043 = literal1043)
    (child1 : tree1048 = literal1048) : tree1049 = literal1049 := by
  rw [tree1049_def, child0, child1]
  rfl
theorem node1049_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1043 live1043 coloured1043 = result1043)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1048 live1048 coloured1048 = result1048) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1049 live1049 coloured1049 = result1049 := by
  rw [tree1049_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1043 coloured1043 at child
  try dsimp only [live1049, coloured1049]
  rw [child]
  dsimp only [result1043]
  have child := child1
  unfold live1048 coloured1048 at child
  try dsimp only [live1049, coloured1049]
  rw [child]
  dsimp only [result1048]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1050_agree_conditional
    (child0 : tree1040 = literal1040)
    (child1 : tree1049 = literal1049) : tree1050 = literal1050 := by
  rw [tree1050_def, child0, child1]
  rfl
theorem node1050_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1040 live1040 coloured1040 = result1040)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1049 live1049 coloured1049 = result1049) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1050 live1050 coloured1050 = result1050 := by
  rw [tree1050_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1040 coloured1040 at child
  try dsimp only [live1050, coloured1050]
  rw [child]
  dsimp only [result1040]
  have child := child1
  unfold live1049 coloured1049 at child
  try dsimp only [live1050, coloured1050]
  rw [child]
  dsimp only [result1049]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1051_agree_conditional : tree1051 = literal1051 := by
  rw [tree1051_def]
  rfl
theorem node1051_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1051 live1051 coloured1051 = result1051 := by
  rw [tree1051_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1052_agree_conditional
    (child0 : tree1050 = literal1050)
    (child1 : tree1051 = literal1051) : tree1052 = literal1052 := by
  rw [tree1052_def, child0, child1]
  rfl
theorem node1052_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1050 live1050 coloured1050 = result1050)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1051 live1051 coloured1051 = result1051) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1052 live1052 coloured1052 = result1052 := by
  rw [tree1052_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1050 coloured1050 at child
  try dsimp only [live1052, coloured1052]
  rw [child]
  dsimp only [result1050]
  have child := child1
  unfold live1051 coloured1051 at child
  try dsimp only [live1052, coloured1052]
  rw [child]
  dsimp only [result1051]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1053_agree_conditional : tree1053 = literal1053 := by
  rw [tree1053_def]
  rfl
theorem node1053_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1053 live1053 coloured1053 = result1053 := by
  rw [tree1053_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1054_agree_conditional
    (child0 : tree1052 = literal1052)
    (child1 : tree1053 = literal1053) : tree1054 = literal1054 := by
  rw [tree1054_def, child0, child1]
  rfl
theorem node1054_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1052 live1052 coloured1052 = result1052)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1053 live1053 coloured1053 = result1053) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1054 live1054 coloured1054 = result1054 := by
  rw [tree1054_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live1052 coloured1052 at child
  try dsimp only [live1054, coloured1054]
  rw [child]
  dsimp only [result1052]
  have child := child1
  unfold live1053 coloured1053 at child
  try dsimp only [live1054, coloured1054]
  rw [child]
  dsimp only [result1053]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree1055_agree_conditional : tree1055 = literal1055 := by
  rw [tree1055_def]
  rfl
theorem node1055_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree1055 live1055 coloured1055 = result1055 := by
  rw [tree1055_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages874
