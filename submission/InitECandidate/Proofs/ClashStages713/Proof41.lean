import InitECandidate.Proofs.ClashStages713.Proof40
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
namespace InitECandidate.Proofs.ClashStages713
theorem tree3936_agree : tree3936 = literal3936 := by
  rw [tree3936_def, tree3934_agree, tree3935_agree]
  rfl
theorem node3936_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3936 live3936 coloured3936 = result3936 := by
  rw [tree3936_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3934_eq
  unfold live3934 coloured3934 at child
  try dsimp only [live3936, coloured3936]
  rw [child]
  dsimp only [result3934]
  have child := node3935_eq
  unfold live3935 coloured3935 at child
  try dsimp only [live3936, coloured3936]
  rw [child]
  dsimp only [result3935]
  try dsimp only [colour, result3936]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3937_agree : tree3937 = literal3937 := by
  rw [tree3937_def]
  rfl
theorem node3937_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3937 live3937 coloured3937 = result3937 := by
  rw [tree3937_def]
  try dsimp only [colour, result3937]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3938_agree : tree3938 = literal3938 := by
  rw [tree3938_def, tree3936_agree, tree3937_agree]
  rfl
theorem node3938_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3938 live3938 coloured3938 = result3938 := by
  rw [tree3938_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3936_eq
  unfold live3936 coloured3936 at child
  try dsimp only [live3938, coloured3938]
  rw [child]
  dsimp only [result3936]
  have child := node3937_eq
  unfold live3937 coloured3937 at child
  try dsimp only [live3938, coloured3938]
  rw [child]
  dsimp only [result3937]
  try dsimp only [colour, result3938]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3939_agree : tree3939 = literal3939 := by
  rw [tree3939_def]
  rfl
theorem node3939_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3939 live3939 coloured3939 = result3939 := by
  rw [tree3939_def]
  try dsimp only [colour, result3939]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3940_agree : tree3940 = literal3940 := by
  rw [tree3940_def, tree3938_agree, tree3939_agree]
  rfl
theorem node3940_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3940 live3940 coloured3940 = result3940 := by
  rw [tree3940_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3938_eq
  unfold live3938 coloured3938 at child
  try dsimp only [live3940, coloured3940]
  rw [child]
  dsimp only [result3938]
  have child := node3939_eq
  unfold live3939 coloured3939 at child
  try dsimp only [live3940, coloured3940]
  rw [child]
  dsimp only [result3939]
  try dsimp only [colour, result3940]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3941_agree : tree3941 = literal3941 := by
  rw [tree3941_def]
  rfl
theorem node3941_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3941 live3941 coloured3941 = result3941 := by
  rw [tree3941_def]
  try dsimp only [colour, result3941]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3942_agree : tree3942 = literal3942 := by
  rw [tree3942_def, tree3940_agree, tree3941_agree]
  rfl
theorem node3942_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3942 live3942 coloured3942 = result3942 := by
  rw [tree3942_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3940_eq
  unfold live3940 coloured3940 at child
  try dsimp only [live3942, coloured3942]
  rw [child]
  dsimp only [result3940]
  have child := node3941_eq
  unfold live3941 coloured3941 at child
  try dsimp only [live3942, coloured3942]
  rw [child]
  dsimp only [result3941]
  try dsimp only [colour, result3942]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3943_agree : tree3943 = literal3943 := by
  rw [tree3943_def]
  rfl
theorem node3943_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3943 live3943 coloured3943 = result3943 := by
  rw [tree3943_def]
  try dsimp only [colour, result3943]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3944_agree : tree3944 = literal3944 := by
  rw [tree3944_def, tree3942_agree, tree3943_agree]
  rfl
theorem node3944_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3944 live3944 coloured3944 = result3944 := by
  rw [tree3944_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3942_eq
  unfold live3942 coloured3942 at child
  try dsimp only [live3944, coloured3944]
  rw [child]
  dsimp only [result3942]
  have child := node3943_eq
  unfold live3943 coloured3943 at child
  try dsimp only [live3944, coloured3944]
  rw [child]
  dsimp only [result3943]
  try dsimp only [colour, result3944]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3945_agree : tree3945 = literal3945 := by
  rw [tree3945_def]
  rfl
theorem node3945_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3945 live3945 coloured3945 = result3945 := by
  rw [tree3945_def]
  try dsimp only [colour, result3945]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3946_agree : tree3946 = literal3946 := by
  rw [tree3946_def, tree3944_agree, tree3945_agree]
  rfl
theorem node3946_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3946 live3946 coloured3946 = result3946 := by
  rw [tree3946_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3944_eq
  unfold live3944 coloured3944 at child
  try dsimp only [live3946, coloured3946]
  rw [child]
  dsimp only [result3944]
  have child := node3945_eq
  unfold live3945 coloured3945 at child
  try dsimp only [live3946, coloured3946]
  rw [child]
  dsimp only [result3945]
  try dsimp only [colour, result3946]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3947_agree : tree3947 = literal3947 := by
  rw [tree3947_def]
  rfl
theorem node3947_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3947 live3947 coloured3947 = result3947 := by
  rw [tree3947_def]
  try dsimp only [colour, result3947]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3948_agree : tree3948 = literal3948 := by
  rw [tree3948_def, tree3946_agree, tree3947_agree]
  rfl
theorem node3948_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3948 live3948 coloured3948 = result3948 := by
  rw [tree3948_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3946_eq
  unfold live3946 coloured3946 at child
  try dsimp only [live3948, coloured3948]
  rw [child]
  dsimp only [result3946]
  have child := node3947_eq
  unfold live3947 coloured3947 at child
  try dsimp only [live3948, coloured3948]
  rw [child]
  dsimp only [result3947]
  try dsimp only [colour, result3948]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3949_agree : tree3949 = literal3949 := by
  rw [tree3949_def]
  rfl
theorem node3949_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3949 live3949 coloured3949 = result3949 := by
  rw [tree3949_def]
  try dsimp only [colour, result3949]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3950_agree : tree3950 = literal3950 := by
  rw [tree3950_def, tree3948_agree, tree3949_agree]
  rfl
theorem node3950_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3950 live3950 coloured3950 = result3950 := by
  rw [tree3950_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3948_eq
  unfold live3948 coloured3948 at child
  try dsimp only [live3950, coloured3950]
  rw [child]
  dsimp only [result3948]
  have child := node3949_eq
  unfold live3949 coloured3949 at child
  try dsimp only [live3950, coloured3950]
  rw [child]
  dsimp only [result3949]
  try dsimp only [colour, result3950]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3951_agree : tree3951 = literal3951 := by
  rw [tree3951_def]
  rfl
theorem node3951_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3951 live3951 coloured3951 = result3951 := by
  rw [tree3951_def]
  try dsimp only [colour, result3951]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3952_agree : tree3952 = literal3952 := by
  rw [tree3952_def, tree3950_agree, tree3951_agree]
  rfl
theorem node3952_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3952 live3952 coloured3952 = result3952 := by
  rw [tree3952_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3950_eq
  unfold live3950 coloured3950 at child
  try dsimp only [live3952, coloured3952]
  rw [child]
  dsimp only [result3950]
  have child := node3951_eq
  unfold live3951 coloured3951 at child
  try dsimp only [live3952, coloured3952]
  rw [child]
  dsimp only [result3951]
  try dsimp only [colour, result3952]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3953_agree : tree3953 = literal3953 := by
  rw [tree3953_def]
  rfl
theorem node3953_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3953 live3953 coloured3953 = result3953 := by
  rw [tree3953_def]
  try dsimp only [colour, result3953]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3954_agree : tree3954 = literal3954 := by
  rw [tree3954_def, tree3952_agree, tree3953_agree]
  rfl
theorem node3954_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3954 live3954 coloured3954 = result3954 := by
  rw [tree3954_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3952_eq
  unfold live3952 coloured3952 at child
  try dsimp only [live3954, coloured3954]
  rw [child]
  dsimp only [result3952]
  have child := node3953_eq
  unfold live3953 coloured3953 at child
  try dsimp only [live3954, coloured3954]
  rw [child]
  dsimp only [result3953]
  try dsimp only [colour, result3954]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3955_agree : tree3955 = literal3955 := by
  rw [tree3955_def]
  rfl
theorem node3955_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3955 live3955 coloured3955 = result3955 := by
  rw [tree3955_def]
  try dsimp only [colour, result3955]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3956_agree : tree3956 = literal3956 := by
  rw [tree3956_def, tree3954_agree, tree3955_agree]
  rfl
theorem node3956_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3956 live3956 coloured3956 = result3956 := by
  rw [tree3956_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3954_eq
  unfold live3954 coloured3954 at child
  try dsimp only [live3956, coloured3956]
  rw [child]
  dsimp only [result3954]
  have child := node3955_eq
  unfold live3955 coloured3955 at child
  try dsimp only [live3956, coloured3956]
  rw [child]
  dsimp only [result3955]
  try dsimp only [colour, result3956]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3957_agree : tree3957 = literal3957 := by
  rw [tree3957_def]
  rfl
theorem node3957_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3957 live3957 coloured3957 = result3957 := by
  rw [tree3957_def]
  try dsimp only [colour, result3957]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3958_agree : tree3958 = literal3958 := by
  rw [tree3958_def, tree3956_agree, tree3957_agree]
  rfl
theorem node3958_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3958 live3958 coloured3958 = result3958 := by
  rw [tree3958_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3956_eq
  unfold live3956 coloured3956 at child
  try dsimp only [live3958, coloured3958]
  rw [child]
  dsimp only [result3956]
  have child := node3957_eq
  unfold live3957 coloured3957 at child
  try dsimp only [live3958, coloured3958]
  rw [child]
  dsimp only [result3957]
  try dsimp only [colour, result3958]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3959_agree : tree3959 = literal3959 := by
  rw [tree3959_def]
  rfl
theorem node3959_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3959 live3959 coloured3959 = result3959 := by
  rw [tree3959_def]
  try dsimp only [colour, result3959]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3960_agree : tree3960 = literal3960 := by
  rw [tree3960_def, tree3958_agree, tree3959_agree]
  rfl
theorem node3960_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3960 live3960 coloured3960 = result3960 := by
  rw [tree3960_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3958_eq
  unfold live3958 coloured3958 at child
  try dsimp only [live3960, coloured3960]
  rw [child]
  dsimp only [result3958]
  have child := node3959_eq
  unfold live3959 coloured3959 at child
  try dsimp only [live3960, coloured3960]
  rw [child]
  dsimp only [result3959]
  try dsimp only [colour, result3960]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3961_agree : tree3961 = literal3961 := by
  rw [tree3961_def]
  rfl
theorem node3961_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3961 live3961 coloured3961 = result3961 := by
  rw [tree3961_def]
  try dsimp only [colour, result3961]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3962_agree : tree3962 = literal3962 := by
  rw [tree3962_def, tree3960_agree, tree3961_agree]
  rfl
theorem node3962_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3962 live3962 coloured3962 = result3962 := by
  rw [tree3962_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3960_eq
  unfold live3960 coloured3960 at child
  try dsimp only [live3962, coloured3962]
  rw [child]
  dsimp only [result3960]
  have child := node3961_eq
  unfold live3961 coloured3961 at child
  try dsimp only [live3962, coloured3962]
  rw [child]
  dsimp only [result3961]
  try dsimp only [colour, result3962]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3963_agree : tree3963 = literal3963 := by
  rw [tree3963_def]
  rfl
theorem node3963_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3963 live3963 coloured3963 = result3963 := by
  rw [tree3963_def]
  try dsimp only [colour, result3963]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3964_agree : tree3964 = literal3964 := by
  rw [tree3964_def, tree3962_agree, tree3963_agree]
  rfl
theorem node3964_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3964 live3964 coloured3964 = result3964 := by
  rw [tree3964_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3962_eq
  unfold live3962 coloured3962 at child
  try dsimp only [live3964, coloured3964]
  rw [child]
  dsimp only [result3962]
  have child := node3963_eq
  unfold live3963 coloured3963 at child
  try dsimp only [live3964, coloured3964]
  rw [child]
  dsimp only [result3963]
  try dsimp only [colour, result3964]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3965_agree : tree3965 = literal3965 := by
  rw [tree3965_def]
  rfl
theorem node3965_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3965 live3965 coloured3965 = result3965 := by
  rw [tree3965_def]
  try dsimp only [colour, result3965]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3966_agree : tree3966 = literal3966 := by
  rw [tree3966_def, tree3964_agree, tree3965_agree]
  rfl
theorem node3966_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3966 live3966 coloured3966 = result3966 := by
  rw [tree3966_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3964_eq
  unfold live3964 coloured3964 at child
  try dsimp only [live3966, coloured3966]
  rw [child]
  dsimp only [result3964]
  have child := node3965_eq
  unfold live3965 coloured3965 at child
  try dsimp only [live3966, coloured3966]
  rw [child]
  dsimp only [result3965]
  try dsimp only [colour, result3966]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3967_agree : tree3967 = literal3967 := by
  rw [tree3967_def]
  rfl
theorem node3967_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3967 live3967 coloured3967 = result3967 := by
  rw [tree3967_def]
  try dsimp only [colour, result3967]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3968_agree : tree3968 = literal3968 := by
  rw [tree3968_def, tree3966_agree, tree3967_agree]
  rfl
theorem node3968_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3968 live3968 coloured3968 = result3968 := by
  rw [tree3968_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3966_eq
  unfold live3966 coloured3966 at child
  try dsimp only [live3968, coloured3968]
  rw [child]
  dsimp only [result3966]
  have child := node3967_eq
  unfold live3967 coloured3967 at child
  try dsimp only [live3968, coloured3968]
  rw [child]
  dsimp only [result3967]
  try dsimp only [colour, result3968]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3969_agree : tree3969 = literal3969 := by
  rw [tree3969_def]
  rfl
theorem node3969_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3969 live3969 coloured3969 = result3969 := by
  rw [tree3969_def]
  try dsimp only [colour, result3969]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3970_agree : tree3970 = literal3970 := by
  rw [tree3970_def, tree3968_agree, tree3969_agree]
  rfl
theorem node3970_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3970 live3970 coloured3970 = result3970 := by
  rw [tree3970_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3968_eq
  unfold live3968 coloured3968 at child
  try dsimp only [live3970, coloured3970]
  rw [child]
  dsimp only [result3968]
  have child := node3969_eq
  unfold live3969 coloured3969 at child
  try dsimp only [live3970, coloured3970]
  rw [child]
  dsimp only [result3969]
  try dsimp only [colour, result3970]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3971_agree : tree3971 = literal3971 := by
  rw [tree3971_def]
  rfl
theorem node3971_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3971 live3971 coloured3971 = result3971 := by
  rw [tree3971_def]
  try dsimp only [colour, result3971]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3972_agree : tree3972 = literal3972 := by
  rw [tree3972_def, tree3970_agree, tree3971_agree]
  rfl
theorem node3972_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3972 live3972 coloured3972 = result3972 := by
  rw [tree3972_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3970_eq
  unfold live3970 coloured3970 at child
  try dsimp only [live3972, coloured3972]
  rw [child]
  dsimp only [result3970]
  have child := node3971_eq
  unfold live3971 coloured3971 at child
  try dsimp only [live3972, coloured3972]
  rw [child]
  dsimp only [result3971]
  try dsimp only [colour, result3972]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3973_agree : tree3973 = literal3973 := by
  rw [tree3973_def]
  rfl
theorem node3973_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3973 live3973 coloured3973 = result3973 := by
  rw [tree3973_def]
  try dsimp only [colour, result3973]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3974_agree : tree3974 = literal3974 := by
  rw [tree3974_def, tree3972_agree, tree3973_agree]
  rfl
theorem node3974_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3974 live3974 coloured3974 = result3974 := by
  rw [tree3974_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3972_eq
  unfold live3972 coloured3972 at child
  try dsimp only [live3974, coloured3974]
  rw [child]
  dsimp only [result3972]
  have child := node3973_eq
  unfold live3973 coloured3973 at child
  try dsimp only [live3974, coloured3974]
  rw [child]
  dsimp only [result3973]
  try dsimp only [colour, result3974]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3975_agree : tree3975 = literal3975 := by
  rw [tree3975_def]
  rfl
theorem node3975_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3975 live3975 coloured3975 = result3975 := by
  rw [tree3975_def]
  try dsimp only [colour, result3975]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3976_agree : tree3976 = literal3976 := by
  rw [tree3976_def, tree3974_agree, tree3975_agree]
  rfl
theorem node3976_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3976 live3976 coloured3976 = result3976 := by
  rw [tree3976_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3974_eq
  unfold live3974 coloured3974 at child
  try dsimp only [live3976, coloured3976]
  rw [child]
  dsimp only [result3974]
  have child := node3975_eq
  unfold live3975 coloured3975 at child
  try dsimp only [live3976, coloured3976]
  rw [child]
  dsimp only [result3975]
  try dsimp only [colour, result3976]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3977_agree : tree3977 = literal3977 := by
  rw [tree3977_def]
  rfl
theorem node3977_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3977 live3977 coloured3977 = result3977 := by
  rw [tree3977_def]
  try dsimp only [colour, result3977]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3978_agree : tree3978 = literal3978 := by
  rw [tree3978_def, tree3976_agree, tree3977_agree]
  rfl
theorem node3978_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3978 live3978 coloured3978 = result3978 := by
  rw [tree3978_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3976_eq
  unfold live3976 coloured3976 at child
  try dsimp only [live3978, coloured3978]
  rw [child]
  dsimp only [result3976]
  have child := node3977_eq
  unfold live3977 coloured3977 at child
  try dsimp only [live3978, coloured3978]
  rw [child]
  dsimp only [result3977]
  try dsimp only [colour, result3978]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3979_agree : tree3979 = literal3979 := by
  rw [tree3979_def]
  rfl
theorem node3979_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3979 live3979 coloured3979 = result3979 := by
  rw [tree3979_def]
  try dsimp only [colour, result3979]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3980_agree : tree3980 = literal3980 := by
  rw [tree3980_def, tree3978_agree, tree3979_agree]
  rfl
theorem node3980_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3980 live3980 coloured3980 = result3980 := by
  rw [tree3980_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3978_eq
  unfold live3978 coloured3978 at child
  try dsimp only [live3980, coloured3980]
  rw [child]
  dsimp only [result3978]
  have child := node3979_eq
  unfold live3979 coloured3979 at child
  try dsimp only [live3980, coloured3980]
  rw [child]
  dsimp only [result3979]
  try dsimp only [colour, result3980]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3981_agree : tree3981 = literal3981 := by
  rw [tree3981_def]
  rfl
theorem node3981_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3981 live3981 coloured3981 = result3981 := by
  rw [tree3981_def]
  try dsimp only [colour, result3981]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3982_agree : tree3982 = literal3982 := by
  rw [tree3982_def, tree3980_agree, tree3981_agree]
  rfl
theorem node3982_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3982 live3982 coloured3982 = result3982 := by
  rw [tree3982_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3980_eq
  unfold live3980 coloured3980 at child
  try dsimp only [live3982, coloured3982]
  rw [child]
  dsimp only [result3980]
  have child := node3981_eq
  unfold live3981 coloured3981 at child
  try dsimp only [live3982, coloured3982]
  rw [child]
  dsimp only [result3981]
  try dsimp only [colour, result3982]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3983_agree : tree3983 = literal3983 := by
  rw [tree3983_def]
  rfl
theorem node3983_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3983 live3983 coloured3983 = result3983 := by
  rw [tree3983_def]
  try dsimp only [colour, result3983]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3984_agree : tree3984 = literal3984 := by
  rw [tree3984_def, tree3982_agree, tree3983_agree]
  rfl
theorem node3984_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3984 live3984 coloured3984 = result3984 := by
  rw [tree3984_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3982_eq
  unfold live3982 coloured3982 at child
  try dsimp only [live3984, coloured3984]
  rw [child]
  dsimp only [result3982]
  have child := node3983_eq
  unfold live3983 coloured3983 at child
  try dsimp only [live3984, coloured3984]
  rw [child]
  dsimp only [result3983]
  try dsimp only [colour, result3984]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3985_agree : tree3985 = literal3985 := by
  rw [tree3985_def]
  rfl
theorem node3985_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3985 live3985 coloured3985 = result3985 := by
  rw [tree3985_def]
  try dsimp only [colour, result3985]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3986_agree : tree3986 = literal3986 := by
  rw [tree3986_def, tree3984_agree, tree3985_agree]
  rfl
theorem node3986_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3986 live3986 coloured3986 = result3986 := by
  rw [tree3986_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3984_eq
  unfold live3984 coloured3984 at child
  try dsimp only [live3986, coloured3986]
  rw [child]
  dsimp only [result3984]
  have child := node3985_eq
  unfold live3985 coloured3985 at child
  try dsimp only [live3986, coloured3986]
  rw [child]
  dsimp only [result3985]
  try dsimp only [colour, result3986]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3987_agree : tree3987 = literal3987 := by
  rw [tree3987_def]
  rfl
theorem node3987_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3987 live3987 coloured3987 = result3987 := by
  rw [tree3987_def]
  try dsimp only [colour, result3987]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3988_agree : tree3988 = literal3988 := by
  rw [tree3988_def, tree3986_agree, tree3987_agree]
  rfl
theorem node3988_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3988 live3988 coloured3988 = result3988 := by
  rw [tree3988_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3986_eq
  unfold live3986 coloured3986 at child
  try dsimp only [live3988, coloured3988]
  rw [child]
  dsimp only [result3986]
  have child := node3987_eq
  unfold live3987 coloured3987 at child
  try dsimp only [live3988, coloured3988]
  rw [child]
  dsimp only [result3987]
  try dsimp only [colour, result3988]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3989_agree : tree3989 = literal3989 := by
  rw [tree3989_def]
  rfl
theorem node3989_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3989 live3989 coloured3989 = result3989 := by
  rw [tree3989_def]
  try dsimp only [colour, result3989]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3990_agree : tree3990 = literal3990 := by
  rw [tree3990_def, tree3988_agree, tree3989_agree]
  rfl
theorem node3990_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3990 live3990 coloured3990 = result3990 := by
  rw [tree3990_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3988_eq
  unfold live3988 coloured3988 at child
  try dsimp only [live3990, coloured3990]
  rw [child]
  dsimp only [result3988]
  have child := node3989_eq
  unfold live3989 coloured3989 at child
  try dsimp only [live3990, coloured3990]
  rw [child]
  dsimp only [result3989]
  try dsimp only [colour, result3990]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3991_agree : tree3991 = literal3991 := by
  rw [tree3991_def]
  rfl
theorem node3991_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3991 live3991 coloured3991 = result3991 := by
  rw [tree3991_def]
  try dsimp only [colour, result3991]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3992_agree : tree3992 = literal3992 := by
  rw [tree3992_def, tree3990_agree, tree3991_agree]
  rfl
theorem node3992_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3992 live3992 coloured3992 = result3992 := by
  rw [tree3992_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3990_eq
  unfold live3990 coloured3990 at child
  try dsimp only [live3992, coloured3992]
  rw [child]
  dsimp only [result3990]
  have child := node3991_eq
  unfold live3991 coloured3991 at child
  try dsimp only [live3992, coloured3992]
  rw [child]
  dsimp only [result3991]
  try dsimp only [colour, result3992]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3993_agree : tree3993 = literal3993 := by
  rw [tree3993_def]
  rfl
theorem node3993_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3993 live3993 coloured3993 = result3993 := by
  rw [tree3993_def]
  try dsimp only [colour, result3993]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3994_agree : tree3994 = literal3994 := by
  rw [tree3994_def, tree3992_agree, tree3993_agree]
  rfl
theorem node3994_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3994 live3994 coloured3994 = result3994 := by
  rw [tree3994_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3992_eq
  unfold live3992 coloured3992 at child
  try dsimp only [live3994, coloured3994]
  rw [child]
  dsimp only [result3992]
  have child := node3993_eq
  unfold live3993 coloured3993 at child
  try dsimp only [live3994, coloured3994]
  rw [child]
  dsimp only [result3993]
  try dsimp only [colour, result3994]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3995_agree : tree3995 = literal3995 := by
  rw [tree3995_def]
  rfl
theorem node3995_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3995 live3995 coloured3995 = result3995 := by
  rw [tree3995_def]
  try dsimp only [colour, result3995]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3996_agree : tree3996 = literal3996 := by
  rw [tree3996_def, tree3994_agree, tree3995_agree]
  rfl
theorem node3996_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3996 live3996 coloured3996 = result3996 := by
  rw [tree3996_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3994_eq
  unfold live3994 coloured3994 at child
  try dsimp only [live3996, coloured3996]
  rw [child]
  dsimp only [result3994]
  have child := node3995_eq
  unfold live3995 coloured3995 at child
  try dsimp only [live3996, coloured3996]
  rw [child]
  dsimp only [result3995]
  try dsimp only [colour, result3996]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3997_agree : tree3997 = literal3997 := by
  rw [tree3997_def]
  rfl
theorem node3997_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3997 live3997 coloured3997 = result3997 := by
  rw [tree3997_def]
  try dsimp only [colour, result3997]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3998_agree : tree3998 = literal3998 := by
  rw [tree3998_def, tree3996_agree, tree3997_agree]
  rfl
theorem node3998_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3998 live3998 coloured3998 = result3998 := by
  rw [tree3998_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3996_eq
  unfold live3996 coloured3996 at child
  try dsimp only [live3998, coloured3998]
  rw [child]
  dsimp only [result3996]
  have child := node3997_eq
  unfold live3997 coloured3997 at child
  try dsimp only [live3998, coloured3998]
  rw [child]
  dsimp only [result3997]
  try dsimp only [colour, result3998]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree3999_agree : tree3999 = literal3999 := by
  rw [tree3999_def]
  rfl
theorem node3999_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree3999 live3999 coloured3999 = result3999 := by
  rw [tree3999_def]
  try dsimp only [colour, result3999]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4000_agree : tree4000 = literal4000 := by
  rw [tree4000_def, tree3998_agree, tree3999_agree]
  rfl
theorem node4000_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4000 live4000 coloured4000 = result4000 := by
  rw [tree4000_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node3998_eq
  unfold live3998 coloured3998 at child
  try dsimp only [live4000, coloured4000]
  rw [child]
  dsimp only [result3998]
  have child := node3999_eq
  unfold live3999 coloured3999 at child
  try dsimp only [live4000, coloured4000]
  rw [child]
  dsimp only [result3999]
  try dsimp only [colour, result4000]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4001_agree : tree4001 = literal4001 := by
  rw [tree4001_def]
  rfl
theorem node4001_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4001 live4001 coloured4001 = result4001 := by
  rw [tree4001_def]
  try dsimp only [colour, result4001]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4002_agree : tree4002 = literal4002 := by
  rw [tree4002_def, tree4000_agree, tree4001_agree]
  rfl
theorem node4002_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4002 live4002 coloured4002 = result4002 := by
  rw [tree4002_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4000_eq
  unfold live4000 coloured4000 at child
  try dsimp only [live4002, coloured4002]
  rw [child]
  dsimp only [result4000]
  have child := node4001_eq
  unfold live4001 coloured4001 at child
  try dsimp only [live4002, coloured4002]
  rw [child]
  dsimp only [result4001]
  try dsimp only [colour, result4002]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4003_agree : tree4003 = literal4003 := by
  rw [tree4003_def]
  rfl
theorem node4003_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4003 live4003 coloured4003 = result4003 := by
  rw [tree4003_def]
  try dsimp only [colour, result4003]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4004_agree : tree4004 = literal4004 := by
  rw [tree4004_def, tree4002_agree, tree4003_agree]
  rfl
theorem node4004_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4004 live4004 coloured4004 = result4004 := by
  rw [tree4004_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4002_eq
  unfold live4002 coloured4002 at child
  try dsimp only [live4004, coloured4004]
  rw [child]
  dsimp only [result4002]
  have child := node4003_eq
  unfold live4003 coloured4003 at child
  try dsimp only [live4004, coloured4004]
  rw [child]
  dsimp only [result4003]
  try dsimp only [colour, result4004]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4005_agree : tree4005 = literal4005 := by
  rw [tree4005_def]
  rfl
theorem node4005_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4005 live4005 coloured4005 = result4005 := by
  rw [tree4005_def]
  try dsimp only [colour, result4005]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4006_agree : tree4006 = literal4006 := by
  rw [tree4006_def, tree4004_agree, tree4005_agree]
  rfl
theorem node4006_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4006 live4006 coloured4006 = result4006 := by
  rw [tree4006_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4004_eq
  unfold live4004 coloured4004 at child
  try dsimp only [live4006, coloured4006]
  rw [child]
  dsimp only [result4004]
  have child := node4005_eq
  unfold live4005 coloured4005 at child
  try dsimp only [live4006, coloured4006]
  rw [child]
  dsimp only [result4005]
  try dsimp only [colour, result4006]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4007_agree : tree4007 = literal4007 := by
  rw [tree4007_def]
  rfl
theorem node4007_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4007 live4007 coloured4007 = result4007 := by
  rw [tree4007_def]
  try dsimp only [colour, result4007]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4008_agree : tree4008 = literal4008 := by
  rw [tree4008_def, tree4006_agree, tree4007_agree]
  rfl
theorem node4008_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4008 live4008 coloured4008 = result4008 := by
  rw [tree4008_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4006_eq
  unfold live4006 coloured4006 at child
  try dsimp only [live4008, coloured4008]
  rw [child]
  dsimp only [result4006]
  have child := node4007_eq
  unfold live4007 coloured4007 at child
  try dsimp only [live4008, coloured4008]
  rw [child]
  dsimp only [result4007]
  try dsimp only [colour, result4008]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4009_agree : tree4009 = literal4009 := by
  rw [tree4009_def]
  rfl
theorem node4009_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4009 live4009 coloured4009 = result4009 := by
  rw [tree4009_def]
  try dsimp only [colour, result4009]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4010_agree : tree4010 = literal4010 := by
  rw [tree4010_def, tree4008_agree, tree4009_agree]
  rfl
theorem node4010_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4010 live4010 coloured4010 = result4010 := by
  rw [tree4010_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4008_eq
  unfold live4008 coloured4008 at child
  try dsimp only [live4010, coloured4010]
  rw [child]
  dsimp only [result4008]
  have child := node4009_eq
  unfold live4009 coloured4009 at child
  try dsimp only [live4010, coloured4010]
  rw [child]
  dsimp only [result4009]
  try dsimp only [colour, result4010]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4011_agree : tree4011 = literal4011 := by
  rw [tree4011_def]
  rfl
theorem node4011_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4011 live4011 coloured4011 = result4011 := by
  rw [tree4011_def]
  try dsimp only [colour, result4011]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4012_agree : tree4012 = literal4012 := by
  rw [tree4012_def, tree4010_agree, tree4011_agree]
  rfl
theorem node4012_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4012 live4012 coloured4012 = result4012 := by
  rw [tree4012_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4010_eq
  unfold live4010 coloured4010 at child
  try dsimp only [live4012, coloured4012]
  rw [child]
  dsimp only [result4010]
  have child := node4011_eq
  unfold live4011 coloured4011 at child
  try dsimp only [live4012, coloured4012]
  rw [child]
  dsimp only [result4011]
  try dsimp only [colour, result4012]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4013_agree : tree4013 = literal4013 := by
  rw [tree4013_def]
  rfl
theorem node4013_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4013 live4013 coloured4013 = result4013 := by
  rw [tree4013_def]
  try dsimp only [colour, result4013]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4014_agree : tree4014 = literal4014 := by
  rw [tree4014_def, tree4012_agree, tree4013_agree]
  rfl
theorem node4014_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4014 live4014 coloured4014 = result4014 := by
  rw [tree4014_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4012_eq
  unfold live4012 coloured4012 at child
  try dsimp only [live4014, coloured4014]
  rw [child]
  dsimp only [result4012]
  have child := node4013_eq
  unfold live4013 coloured4013 at child
  try dsimp only [live4014, coloured4014]
  rw [child]
  dsimp only [result4013]
  try dsimp only [colour, result4014]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4015_agree : tree4015 = literal4015 := by
  rw [tree4015_def]
  rfl
theorem node4015_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4015 live4015 coloured4015 = result4015 := by
  rw [tree4015_def]
  try dsimp only [colour, result4015]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4016_agree : tree4016 = literal4016 := by
  rw [tree4016_def, tree4014_agree, tree4015_agree]
  rfl
theorem node4016_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4016 live4016 coloured4016 = result4016 := by
  rw [tree4016_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4014_eq
  unfold live4014 coloured4014 at child
  try dsimp only [live4016, coloured4016]
  rw [child]
  dsimp only [result4014]
  have child := node4015_eq
  unfold live4015 coloured4015 at child
  try dsimp only [live4016, coloured4016]
  rw [child]
  dsimp only [result4015]
  try dsimp only [colour, result4016]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4017_agree : tree4017 = literal4017 := by
  rw [tree4017_def]
  rfl
theorem node4017_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4017 live4017 coloured4017 = result4017 := by
  rw [tree4017_def]
  try dsimp only [colour, result4017]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4018_agree : tree4018 = literal4018 := by
  rw [tree4018_def, tree4016_agree, tree4017_agree]
  rfl
theorem node4018_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4018 live4018 coloured4018 = result4018 := by
  rw [tree4018_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4016_eq
  unfold live4016 coloured4016 at child
  try dsimp only [live4018, coloured4018]
  rw [child]
  dsimp only [result4016]
  have child := node4017_eq
  unfold live4017 coloured4017 at child
  try dsimp only [live4018, coloured4018]
  rw [child]
  dsimp only [result4017]
  try dsimp only [colour, result4018]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4019_agree : tree4019 = literal4019 := by
  rw [tree4019_def]
  rfl
theorem node4019_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4019 live4019 coloured4019 = result4019 := by
  rw [tree4019_def]
  try dsimp only [colour, result4019]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4020_agree : tree4020 = literal4020 := by
  rw [tree4020_def, tree4018_agree, tree4019_agree]
  rfl
theorem node4020_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4020 live4020 coloured4020 = result4020 := by
  rw [tree4020_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4018_eq
  unfold live4018 coloured4018 at child
  try dsimp only [live4020, coloured4020]
  rw [child]
  dsimp only [result4018]
  have child := node4019_eq
  unfold live4019 coloured4019 at child
  try dsimp only [live4020, coloured4020]
  rw [child]
  dsimp only [result4019]
  try dsimp only [colour, result4020]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4021_agree : tree4021 = literal4021 := by
  rw [tree4021_def]
  rfl
theorem node4021_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4021 live4021 coloured4021 = result4021 := by
  rw [tree4021_def]
  try dsimp only [colour, result4021]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4022_agree : tree4022 = literal4022 := by
  rw [tree4022_def, tree4020_agree, tree4021_agree]
  rfl
theorem node4022_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4022 live4022 coloured4022 = result4022 := by
  rw [tree4022_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4020_eq
  unfold live4020 coloured4020 at child
  try dsimp only [live4022, coloured4022]
  rw [child]
  dsimp only [result4020]
  have child := node4021_eq
  unfold live4021 coloured4021 at child
  try dsimp only [live4022, coloured4022]
  rw [child]
  dsimp only [result4021]
  try dsimp only [colour, result4022]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4023_agree : tree4023 = literal4023 := by
  rw [tree4023_def]
  rfl
theorem node4023_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4023 live4023 coloured4023 = result4023 := by
  rw [tree4023_def]
  try dsimp only [colour, result4023]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4024_agree : tree4024 = literal4024 := by
  rw [tree4024_def, tree4022_agree, tree4023_agree]
  rfl
theorem node4024_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4024 live4024 coloured4024 = result4024 := by
  rw [tree4024_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4022_eq
  unfold live4022 coloured4022 at child
  try dsimp only [live4024, coloured4024]
  rw [child]
  dsimp only [result4022]
  have child := node4023_eq
  unfold live4023 coloured4023 at child
  try dsimp only [live4024, coloured4024]
  rw [child]
  dsimp only [result4023]
  try dsimp only [colour, result4024]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4025_agree : tree4025 = literal4025 := by
  rw [tree4025_def]
  rfl
theorem node4025_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4025 live4025 coloured4025 = result4025 := by
  rw [tree4025_def]
  try dsimp only [colour, result4025]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4026_agree : tree4026 = literal4026 := by
  rw [tree4026_def, tree4024_agree, tree4025_agree]
  rfl
theorem node4026_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4026 live4026 coloured4026 = result4026 := by
  rw [tree4026_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4024_eq
  unfold live4024 coloured4024 at child
  try dsimp only [live4026, coloured4026]
  rw [child]
  dsimp only [result4024]
  have child := node4025_eq
  unfold live4025 coloured4025 at child
  try dsimp only [live4026, coloured4026]
  rw [child]
  dsimp only [result4025]
  try dsimp only [colour, result4026]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4027_agree : tree4027 = literal4027 := by
  rw [tree4027_def]
  rfl
theorem node4027_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4027 live4027 coloured4027 = result4027 := by
  rw [tree4027_def]
  try dsimp only [colour, result4027]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4028_agree : tree4028 = literal4028 := by
  rw [tree4028_def, tree4026_agree, tree4027_agree]
  rfl
theorem node4028_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4028 live4028 coloured4028 = result4028 := by
  rw [tree4028_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4026_eq
  unfold live4026 coloured4026 at child
  try dsimp only [live4028, coloured4028]
  rw [child]
  dsimp only [result4026]
  have child := node4027_eq
  unfold live4027 coloured4027 at child
  try dsimp only [live4028, coloured4028]
  rw [child]
  dsimp only [result4027]
  try dsimp only [colour, result4028]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4029_agree : tree4029 = literal4029 := by
  rw [tree4029_def]
  rfl
theorem node4029_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4029 live4029 coloured4029 = result4029 := by
  rw [tree4029_def]
  try dsimp only [colour, result4029]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4030_agree : tree4030 = literal4030 := by
  rw [tree4030_def, tree4028_agree, tree4029_agree]
  rfl
theorem node4030_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4030 live4030 coloured4030 = result4030 := by
  rw [tree4030_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := node4028_eq
  unfold live4028 coloured4028 at child
  try dsimp only [live4030, coloured4030]
  rw [child]
  dsimp only [result4028]
  have child := node4029_eq
  unfold live4029 coloured4029 at child
  try dsimp only [live4030, coloured4030]
  rw [child]
  dsimp only [result4029]
  try dsimp only [colour, result4030]
  all_goals (conv => lhs; cbv)
  all_goals rfl
theorem tree4031_agree : tree4031 = literal4031 := by
  rw [tree4031_def]
  rfl
theorem node4031_eq : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree4031 live4031 coloured4031 = result4031 := by
  rw [tree4031_def]
  try dsimp only [colour, result4031]
  all_goals (conv => lhs; cbv)
  all_goals rfl
end InitECandidate.Proofs.ClashStages713
