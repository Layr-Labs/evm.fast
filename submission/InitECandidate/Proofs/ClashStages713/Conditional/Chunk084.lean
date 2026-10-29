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
theorem tree8064_agree_conditional
    (child0 : tree8062 = literal8062)
    (child1 : tree8063 = literal8063) : tree8064 = literal8064 := by
  rw [tree8064_def, child0, child1]
  rfl
theorem node8064_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8062 live8062 coloured8062 = result8062)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8063 live8063 coloured8063 = result8063) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8064 live8064 coloured8064 = result8064 := by
  rw [tree8064_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8062 coloured8062 at child
  try dsimp only [live8064, coloured8064]
  rw [child]
  dsimp only [result8062]
  have child := child1
  unfold live8063 coloured8063 at child
  try dsimp only [live8064, coloured8064]
  rw [child]
  dsimp only [result8063]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8065_agree_conditional : tree8065 = literal8065 := by
  rw [tree8065_def]
  rfl
theorem node8065_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8065 live8065 coloured8065 = result8065 := by
  rw [tree8065_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8066_agree_conditional
    (child0 : tree8064 = literal8064)
    (child1 : tree8065 = literal8065) : tree8066 = literal8066 := by
  rw [tree8066_def, child0, child1]
  rfl
theorem node8066_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8064 live8064 coloured8064 = result8064)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8065 live8065 coloured8065 = result8065) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8066 live8066 coloured8066 = result8066 := by
  rw [tree8066_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8064 coloured8064 at child
  try dsimp only [live8066, coloured8066]
  rw [child]
  dsimp only [result8064]
  have child := child1
  unfold live8065 coloured8065 at child
  try dsimp only [live8066, coloured8066]
  rw [child]
  dsimp only [result8065]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8067_agree_conditional : tree8067 = literal8067 := by
  rw [tree8067_def]
  rfl
theorem node8067_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8067 live8067 coloured8067 = result8067 := by
  rw [tree8067_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8068_agree_conditional
    (child0 : tree8066 = literal8066)
    (child1 : tree8067 = literal8067) : tree8068 = literal8068 := by
  rw [tree8068_def, child0, child1]
  rfl
theorem node8068_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8066 live8066 coloured8066 = result8066)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8067 live8067 coloured8067 = result8067) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8068 live8068 coloured8068 = result8068 := by
  rw [tree8068_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8066 coloured8066 at child
  try dsimp only [live8068, coloured8068]
  rw [child]
  dsimp only [result8066]
  have child := child1
  unfold live8067 coloured8067 at child
  try dsimp only [live8068, coloured8068]
  rw [child]
  dsimp only [result8067]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8069_agree_conditional : tree8069 = literal8069 := by
  rw [tree8069_def]
  rfl
theorem node8069_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8069 live8069 coloured8069 = result8069 := by
  rw [tree8069_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8070_agree_conditional
    (child0 : tree8068 = literal8068)
    (child1 : tree8069 = literal8069) : tree8070 = literal8070 := by
  rw [tree8070_def, child0, child1]
  rfl
theorem node8070_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8068 live8068 coloured8068 = result8068)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8069 live8069 coloured8069 = result8069) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8070 live8070 coloured8070 = result8070 := by
  rw [tree8070_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8068 coloured8068 at child
  try dsimp only [live8070, coloured8070]
  rw [child]
  dsimp only [result8068]
  have child := child1
  unfold live8069 coloured8069 at child
  try dsimp only [live8070, coloured8070]
  rw [child]
  dsimp only [result8069]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8071_agree_conditional : tree8071 = literal8071 := by
  rw [tree8071_def]
  rfl
theorem node8071_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8071 live8071 coloured8071 = result8071 := by
  rw [tree8071_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8072_agree_conditional
    (child0 : tree8070 = literal8070)
    (child1 : tree8071 = literal8071) : tree8072 = literal8072 := by
  rw [tree8072_def, child0, child1]
  rfl
theorem node8072_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8070 live8070 coloured8070 = result8070)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8071 live8071 coloured8071 = result8071) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8072 live8072 coloured8072 = result8072 := by
  rw [tree8072_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8070 coloured8070 at child
  try dsimp only [live8072, coloured8072]
  rw [child]
  dsimp only [result8070]
  have child := child1
  unfold live8071 coloured8071 at child
  try dsimp only [live8072, coloured8072]
  rw [child]
  dsimp only [result8071]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8073_agree_conditional : tree8073 = literal8073 := by
  rw [tree8073_def]
  rfl
theorem node8073_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8073 live8073 coloured8073 = result8073 := by
  rw [tree8073_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8074_agree_conditional
    (child0 : tree8072 = literal8072)
    (child1 : tree8073 = literal8073) : tree8074 = literal8074 := by
  rw [tree8074_def, child0, child1]
  rfl
theorem node8074_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8072 live8072 coloured8072 = result8072)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8073 live8073 coloured8073 = result8073) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8074 live8074 coloured8074 = result8074 := by
  rw [tree8074_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8072 coloured8072 at child
  try dsimp only [live8074, coloured8074]
  rw [child]
  dsimp only [result8072]
  have child := child1
  unfold live8073 coloured8073 at child
  try dsimp only [live8074, coloured8074]
  rw [child]
  dsimp only [result8073]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8075_agree_conditional : tree8075 = literal8075 := by
  rw [tree8075_def]
  rfl
theorem node8075_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8075 live8075 coloured8075 = result8075 := by
  rw [tree8075_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8076_agree_conditional
    (child0 : tree8074 = literal8074)
    (child1 : tree8075 = literal8075) : tree8076 = literal8076 := by
  rw [tree8076_def, child0, child1]
  rfl
theorem node8076_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8074 live8074 coloured8074 = result8074)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8075 live8075 coloured8075 = result8075) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8076 live8076 coloured8076 = result8076 := by
  rw [tree8076_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8074 coloured8074 at child
  try dsimp only [live8076, coloured8076]
  rw [child]
  dsimp only [result8074]
  have child := child1
  unfold live8075 coloured8075 at child
  try dsimp only [live8076, coloured8076]
  rw [child]
  dsimp only [result8075]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8077_agree_conditional : tree8077 = literal8077 := by
  rw [tree8077_def]
  rfl
theorem node8077_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8077 live8077 coloured8077 = result8077 := by
  rw [tree8077_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8078_agree_conditional
    (child0 : tree8076 = literal8076)
    (child1 : tree8077 = literal8077) : tree8078 = literal8078 := by
  rw [tree8078_def, child0, child1]
  rfl
theorem node8078_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8076 live8076 coloured8076 = result8076)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8077 live8077 coloured8077 = result8077) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8078 live8078 coloured8078 = result8078 := by
  rw [tree8078_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8076 coloured8076 at child
  try dsimp only [live8078, coloured8078]
  rw [child]
  dsimp only [result8076]
  have child := child1
  unfold live8077 coloured8077 at child
  try dsimp only [live8078, coloured8078]
  rw [child]
  dsimp only [result8077]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8079_agree_conditional : tree8079 = literal8079 := by
  rw [tree8079_def]
  rfl
theorem node8079_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8079 live8079 coloured8079 = result8079 := by
  rw [tree8079_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8080_agree_conditional
    (child0 : tree8078 = literal8078)
    (child1 : tree8079 = literal8079) : tree8080 = literal8080 := by
  rw [tree8080_def, child0, child1]
  rfl
theorem node8080_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8078 live8078 coloured8078 = result8078)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8079 live8079 coloured8079 = result8079) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8080 live8080 coloured8080 = result8080 := by
  rw [tree8080_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8078 coloured8078 at child
  try dsimp only [live8080, coloured8080]
  rw [child]
  dsimp only [result8078]
  have child := child1
  unfold live8079 coloured8079 at child
  try dsimp only [live8080, coloured8080]
  rw [child]
  dsimp only [result8079]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8081_agree_conditional : tree8081 = literal8081 := by
  rw [tree8081_def]
  rfl
theorem node8081_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8081 live8081 coloured8081 = result8081 := by
  rw [tree8081_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8082_agree_conditional
    (child0 : tree8080 = literal8080)
    (child1 : tree8081 = literal8081) : tree8082 = literal8082 := by
  rw [tree8082_def, child0, child1]
  rfl
theorem node8082_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8080 live8080 coloured8080 = result8080)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8081 live8081 coloured8081 = result8081) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8082 live8082 coloured8082 = result8082 := by
  rw [tree8082_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8080 coloured8080 at child
  try dsimp only [live8082, coloured8082]
  rw [child]
  dsimp only [result8080]
  have child := child1
  unfold live8081 coloured8081 at child
  try dsimp only [live8082, coloured8082]
  rw [child]
  dsimp only [result8081]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8083_agree_conditional : tree8083 = literal8083 := by
  rw [tree8083_def]
  rfl
theorem node8083_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8083 live8083 coloured8083 = result8083 := by
  rw [tree8083_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8084_agree_conditional
    (child0 : tree8082 = literal8082)
    (child1 : tree8083 = literal8083) : tree8084 = literal8084 := by
  rw [tree8084_def, child0, child1]
  rfl
theorem node8084_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8082 live8082 coloured8082 = result8082)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8083 live8083 coloured8083 = result8083) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8084 live8084 coloured8084 = result8084 := by
  rw [tree8084_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8082 coloured8082 at child
  try dsimp only [live8084, coloured8084]
  rw [child]
  dsimp only [result8082]
  have child := child1
  unfold live8083 coloured8083 at child
  try dsimp only [live8084, coloured8084]
  rw [child]
  dsimp only [result8083]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8085_agree_conditional : tree8085 = literal8085 := by
  rw [tree8085_def]
  rfl
theorem node8085_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8085 live8085 coloured8085 = result8085 := by
  rw [tree8085_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8086_agree_conditional
    (child0 : tree8084 = literal8084)
    (child1 : tree8085 = literal8085) : tree8086 = literal8086 := by
  rw [tree8086_def, child0, child1]
  rfl
theorem node8086_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8084 live8084 coloured8084 = result8084)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8085 live8085 coloured8085 = result8085) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8086 live8086 coloured8086 = result8086 := by
  rw [tree8086_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8084 coloured8084 at child
  try dsimp only [live8086, coloured8086]
  rw [child]
  dsimp only [result8084]
  have child := child1
  unfold live8085 coloured8085 at child
  try dsimp only [live8086, coloured8086]
  rw [child]
  dsimp only [result8085]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8087_agree_conditional : tree8087 = literal8087 := by
  rw [tree8087_def]
  rfl
theorem node8087_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8087 live8087 coloured8087 = result8087 := by
  rw [tree8087_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8088_agree_conditional
    (child0 : tree8086 = literal8086)
    (child1 : tree8087 = literal8087) : tree8088 = literal8088 := by
  rw [tree8088_def, child0, child1]
  rfl
theorem node8088_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8086 live8086 coloured8086 = result8086)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8087 live8087 coloured8087 = result8087) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8088 live8088 coloured8088 = result8088 := by
  rw [tree8088_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8086 coloured8086 at child
  try dsimp only [live8088, coloured8088]
  rw [child]
  dsimp only [result8086]
  have child := child1
  unfold live8087 coloured8087 at child
  try dsimp only [live8088, coloured8088]
  rw [child]
  dsimp only [result8087]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8089_agree_conditional : tree8089 = literal8089 := by
  rw [tree8089_def]
  rfl
theorem node8089_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8089 live8089 coloured8089 = result8089 := by
  rw [tree8089_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8090_agree_conditional
    (child0 : tree8088 = literal8088)
    (child1 : tree8089 = literal8089) : tree8090 = literal8090 := by
  rw [tree8090_def, child0, child1]
  rfl
theorem node8090_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8088 live8088 coloured8088 = result8088)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8089 live8089 coloured8089 = result8089) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8090 live8090 coloured8090 = result8090 := by
  rw [tree8090_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8088 coloured8088 at child
  try dsimp only [live8090, coloured8090]
  rw [child]
  dsimp only [result8088]
  have child := child1
  unfold live8089 coloured8089 at child
  try dsimp only [live8090, coloured8090]
  rw [child]
  dsimp only [result8089]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8091_agree_conditional : tree8091 = literal8091 := by
  rw [tree8091_def]
  rfl
theorem node8091_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8091 live8091 coloured8091 = result8091 := by
  rw [tree8091_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8092_agree_conditional
    (child0 : tree8090 = literal8090)
    (child1 : tree8091 = literal8091) : tree8092 = literal8092 := by
  rw [tree8092_def, child0, child1]
  rfl
theorem node8092_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8090 live8090 coloured8090 = result8090)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8091 live8091 coloured8091 = result8091) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8092 live8092 coloured8092 = result8092 := by
  rw [tree8092_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8090 coloured8090 at child
  try dsimp only [live8092, coloured8092]
  rw [child]
  dsimp only [result8090]
  have child := child1
  unfold live8091 coloured8091 at child
  try dsimp only [live8092, coloured8092]
  rw [child]
  dsimp only [result8091]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8093_agree_conditional : tree8093 = literal8093 := by
  rw [tree8093_def]
  rfl
theorem node8093_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8093 live8093 coloured8093 = result8093 := by
  rw [tree8093_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8094_agree_conditional
    (child0 : tree8092 = literal8092)
    (child1 : tree8093 = literal8093) : tree8094 = literal8094 := by
  rw [tree8094_def, child0, child1]
  rfl
theorem node8094_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8092 live8092 coloured8092 = result8092)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8093 live8093 coloured8093 = result8093) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8094 live8094 coloured8094 = result8094 := by
  rw [tree8094_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8092 coloured8092 at child
  try dsimp only [live8094, coloured8094]
  rw [child]
  dsimp only [result8092]
  have child := child1
  unfold live8093 coloured8093 at child
  try dsimp only [live8094, coloured8094]
  rw [child]
  dsimp only [result8093]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8095_agree_conditional : tree8095 = literal8095 := by
  rw [tree8095_def]
  rfl
theorem node8095_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8095 live8095 coloured8095 = result8095 := by
  rw [tree8095_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8096_agree_conditional
    (child0 : tree8094 = literal8094)
    (child1 : tree8095 = literal8095) : tree8096 = literal8096 := by
  rw [tree8096_def, child0, child1]
  rfl
theorem node8096_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8094 live8094 coloured8094 = result8094)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8095 live8095 coloured8095 = result8095) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8096 live8096 coloured8096 = result8096 := by
  rw [tree8096_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8094 coloured8094 at child
  try dsimp only [live8096, coloured8096]
  rw [child]
  dsimp only [result8094]
  have child := child1
  unfold live8095 coloured8095 at child
  try dsimp only [live8096, coloured8096]
  rw [child]
  dsimp only [result8095]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8097_agree_conditional : tree8097 = literal8097 := by
  rw [tree8097_def]
  rfl
theorem node8097_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8097 live8097 coloured8097 = result8097 := by
  rw [tree8097_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8098_agree_conditional
    (child0 : tree8096 = literal8096)
    (child1 : tree8097 = literal8097) : tree8098 = literal8098 := by
  rw [tree8098_def, child0, child1]
  rfl
theorem node8098_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8096 live8096 coloured8096 = result8096)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8097 live8097 coloured8097 = result8097) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8098 live8098 coloured8098 = result8098 := by
  rw [tree8098_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8096 coloured8096 at child
  try dsimp only [live8098, coloured8098]
  rw [child]
  dsimp only [result8096]
  have child := child1
  unfold live8097 coloured8097 at child
  try dsimp only [live8098, coloured8098]
  rw [child]
  dsimp only [result8097]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8099_agree_conditional : tree8099 = literal8099 := by
  rw [tree8099_def]
  rfl
theorem node8099_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8099 live8099 coloured8099 = result8099 := by
  rw [tree8099_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8100_agree_conditional
    (child0 : tree8098 = literal8098)
    (child1 : tree8099 = literal8099) : tree8100 = literal8100 := by
  rw [tree8100_def, child0, child1]
  rfl
theorem node8100_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8098 live8098 coloured8098 = result8098)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8099 live8099 coloured8099 = result8099) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8100 live8100 coloured8100 = result8100 := by
  rw [tree8100_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8098 coloured8098 at child
  try dsimp only [live8100, coloured8100]
  rw [child]
  dsimp only [result8098]
  have child := child1
  unfold live8099 coloured8099 at child
  try dsimp only [live8100, coloured8100]
  rw [child]
  dsimp only [result8099]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8101_agree_conditional : tree8101 = literal8101 := by
  rw [tree8101_def]
  rfl
theorem node8101_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8101 live8101 coloured8101 = result8101 := by
  rw [tree8101_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8102_agree_conditional
    (child0 : tree8100 = literal8100)
    (child1 : tree8101 = literal8101) : tree8102 = literal8102 := by
  rw [tree8102_def, child0, child1]
  rfl
theorem node8102_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8100 live8100 coloured8100 = result8100)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8101 live8101 coloured8101 = result8101) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8102 live8102 coloured8102 = result8102 := by
  rw [tree8102_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8100 coloured8100 at child
  try dsimp only [live8102, coloured8102]
  rw [child]
  dsimp only [result8100]
  have child := child1
  unfold live8101 coloured8101 at child
  try dsimp only [live8102, coloured8102]
  rw [child]
  dsimp only [result8101]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8103_agree_conditional : tree8103 = literal8103 := by
  rw [tree8103_def]
  rfl
theorem node8103_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8103 live8103 coloured8103 = result8103 := by
  rw [tree8103_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8104_agree_conditional
    (child0 : tree8102 = literal8102)
    (child1 : tree8103 = literal8103) : tree8104 = literal8104 := by
  rw [tree8104_def, child0, child1]
  rfl
theorem node8104_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8102 live8102 coloured8102 = result8102)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8103 live8103 coloured8103 = result8103) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8104 live8104 coloured8104 = result8104 := by
  rw [tree8104_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8102 coloured8102 at child
  try dsimp only [live8104, coloured8104]
  rw [child]
  dsimp only [result8102]
  have child := child1
  unfold live8103 coloured8103 at child
  try dsimp only [live8104, coloured8104]
  rw [child]
  dsimp only [result8103]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8105_agree_conditional : tree8105 = literal8105 := by
  rw [tree8105_def]
  rfl
theorem node8105_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8105 live8105 coloured8105 = result8105 := by
  rw [tree8105_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8106_agree_conditional
    (child0 : tree8104 = literal8104)
    (child1 : tree8105 = literal8105) : tree8106 = literal8106 := by
  rw [tree8106_def, child0, child1]
  rfl
theorem node8106_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8104 live8104 coloured8104 = result8104)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8105 live8105 coloured8105 = result8105) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8106 live8106 coloured8106 = result8106 := by
  rw [tree8106_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8104 coloured8104 at child
  try dsimp only [live8106, coloured8106]
  rw [child]
  dsimp only [result8104]
  have child := child1
  unfold live8105 coloured8105 at child
  try dsimp only [live8106, coloured8106]
  rw [child]
  dsimp only [result8105]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8107_agree_conditional : tree8107 = literal8107 := by
  rw [tree8107_def]
  rfl
theorem node8107_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8107 live8107 coloured8107 = result8107 := by
  rw [tree8107_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8108_agree_conditional
    (child0 : tree8106 = literal8106)
    (child1 : tree8107 = literal8107) : tree8108 = literal8108 := by
  rw [tree8108_def, child0, child1]
  rfl
theorem node8108_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8106 live8106 coloured8106 = result8106)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8107 live8107 coloured8107 = result8107) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8108 live8108 coloured8108 = result8108 := by
  rw [tree8108_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8106 coloured8106 at child
  try dsimp only [live8108, coloured8108]
  rw [child]
  dsimp only [result8106]
  have child := child1
  unfold live8107 coloured8107 at child
  try dsimp only [live8108, coloured8108]
  rw [child]
  dsimp only [result8107]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8109_agree_conditional : tree8109 = literal8109 := by
  rw [tree8109_def]
  rfl
theorem node8109_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8109 live8109 coloured8109 = result8109 := by
  rw [tree8109_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8110_agree_conditional
    (child0 : tree8108 = literal8108)
    (child1 : tree8109 = literal8109) : tree8110 = literal8110 := by
  rw [tree8110_def, child0, child1]
  rfl
theorem node8110_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8108 live8108 coloured8108 = result8108)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8109 live8109 coloured8109 = result8109) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8110 live8110 coloured8110 = result8110 := by
  rw [tree8110_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8108 coloured8108 at child
  try dsimp only [live8110, coloured8110]
  rw [child]
  dsimp only [result8108]
  have child := child1
  unfold live8109 coloured8109 at child
  try dsimp only [live8110, coloured8110]
  rw [child]
  dsimp only [result8109]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8111_agree_conditional : tree8111 = literal8111 := by
  rw [tree8111_def]
  rfl
theorem node8111_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8111 live8111 coloured8111 = result8111 := by
  rw [tree8111_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8112_agree_conditional
    (child0 : tree8110 = literal8110)
    (child1 : tree8111 = literal8111) : tree8112 = literal8112 := by
  rw [tree8112_def, child0, child1]
  rfl
theorem node8112_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8110 live8110 coloured8110 = result8110)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8111 live8111 coloured8111 = result8111) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8112 live8112 coloured8112 = result8112 := by
  rw [tree8112_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8110 coloured8110 at child
  try dsimp only [live8112, coloured8112]
  rw [child]
  dsimp only [result8110]
  have child := child1
  unfold live8111 coloured8111 at child
  try dsimp only [live8112, coloured8112]
  rw [child]
  dsimp only [result8111]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8113_agree_conditional : tree8113 = literal8113 := by
  rw [tree8113_def]
  rfl
theorem node8113_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8113 live8113 coloured8113 = result8113 := by
  rw [tree8113_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8114_agree_conditional
    (child0 : tree8112 = literal8112)
    (child1 : tree8113 = literal8113) : tree8114 = literal8114 := by
  rw [tree8114_def, child0, child1]
  rfl
theorem node8114_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8112 live8112 coloured8112 = result8112)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8113 live8113 coloured8113 = result8113) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8114 live8114 coloured8114 = result8114 := by
  rw [tree8114_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8112 coloured8112 at child
  try dsimp only [live8114, coloured8114]
  rw [child]
  dsimp only [result8112]
  have child := child1
  unfold live8113 coloured8113 at child
  try dsimp only [live8114, coloured8114]
  rw [child]
  dsimp only [result8113]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8115_agree_conditional : tree8115 = literal8115 := by
  rw [tree8115_def]
  rfl
theorem node8115_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8115 live8115 coloured8115 = result8115 := by
  rw [tree8115_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8116_agree_conditional
    (child0 : tree8114 = literal8114)
    (child1 : tree8115 = literal8115) : tree8116 = literal8116 := by
  rw [tree8116_def, child0, child1]
  rfl
theorem node8116_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8114 live8114 coloured8114 = result8114)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8115 live8115 coloured8115 = result8115) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8116 live8116 coloured8116 = result8116 := by
  rw [tree8116_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8114 coloured8114 at child
  try dsimp only [live8116, coloured8116]
  rw [child]
  dsimp only [result8114]
  have child := child1
  unfold live8115 coloured8115 at child
  try dsimp only [live8116, coloured8116]
  rw [child]
  dsimp only [result8115]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8117_agree_conditional : tree8117 = literal8117 := by
  rw [tree8117_def]
  rfl
theorem node8117_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8117 live8117 coloured8117 = result8117 := by
  rw [tree8117_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8118_agree_conditional
    (child0 : tree8116 = literal8116)
    (child1 : tree8117 = literal8117) : tree8118 = literal8118 := by
  rw [tree8118_def, child0, child1]
  rfl
theorem node8118_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8116 live8116 coloured8116 = result8116)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8117 live8117 coloured8117 = result8117) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8118 live8118 coloured8118 = result8118 := by
  rw [tree8118_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8116 coloured8116 at child
  try dsimp only [live8118, coloured8118]
  rw [child]
  dsimp only [result8116]
  have child := child1
  unfold live8117 coloured8117 at child
  try dsimp only [live8118, coloured8118]
  rw [child]
  dsimp only [result8117]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8119_agree_conditional : tree8119 = literal8119 := by
  rw [tree8119_def]
  rfl
theorem node8119_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8119 live8119 coloured8119 = result8119 := by
  rw [tree8119_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8120_agree_conditional
    (child0 : tree8118 = literal8118)
    (child1 : tree8119 = literal8119) : tree8120 = literal8120 := by
  rw [tree8120_def, child0, child1]
  rfl
theorem node8120_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8118 live8118 coloured8118 = result8118)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8119 live8119 coloured8119 = result8119) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8120 live8120 coloured8120 = result8120 := by
  rw [tree8120_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8118 coloured8118 at child
  try dsimp only [live8120, coloured8120]
  rw [child]
  dsimp only [result8118]
  have child := child1
  unfold live8119 coloured8119 at child
  try dsimp only [live8120, coloured8120]
  rw [child]
  dsimp only [result8119]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8121_agree_conditional : tree8121 = literal8121 := by
  rw [tree8121_def]
  rfl
theorem node8121_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8121 live8121 coloured8121 = result8121 := by
  rw [tree8121_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8122_agree_conditional
    (child0 : tree8120 = literal8120)
    (child1 : tree8121 = literal8121) : tree8122 = literal8122 := by
  rw [tree8122_def, child0, child1]
  rfl
theorem node8122_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8120 live8120 coloured8120 = result8120)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8121 live8121 coloured8121 = result8121) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8122 live8122 coloured8122 = result8122 := by
  rw [tree8122_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8120 coloured8120 at child
  try dsimp only [live8122, coloured8122]
  rw [child]
  dsimp only [result8120]
  have child := child1
  unfold live8121 coloured8121 at child
  try dsimp only [live8122, coloured8122]
  rw [child]
  dsimp only [result8121]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8123_agree_conditional : tree8123 = literal8123 := by
  rw [tree8123_def]
  rfl
theorem node8123_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8123 live8123 coloured8123 = result8123 := by
  rw [tree8123_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8124_agree_conditional
    (child0 : tree8122 = literal8122)
    (child1 : tree8123 = literal8123) : tree8124 = literal8124 := by
  rw [tree8124_def, child0, child1]
  rfl
theorem node8124_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8122 live8122 coloured8122 = result8122)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8123 live8123 coloured8123 = result8123) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8124 live8124 coloured8124 = result8124 := by
  rw [tree8124_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8122 coloured8122 at child
  try dsimp only [live8124, coloured8124]
  rw [child]
  dsimp only [result8122]
  have child := child1
  unfold live8123 coloured8123 at child
  try dsimp only [live8124, coloured8124]
  rw [child]
  dsimp only [result8123]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8125_agree_conditional : tree8125 = literal8125 := by
  rw [tree8125_def]
  rfl
theorem node8125_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8125 live8125 coloured8125 = result8125 := by
  rw [tree8125_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8126_agree_conditional
    (child0 : tree8124 = literal8124)
    (child1 : tree8125 = literal8125) : tree8126 = literal8126 := by
  rw [tree8126_def, child0, child1]
  rfl
theorem node8126_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8124 live8124 coloured8124 = result8124)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8125 live8125 coloured8125 = result8125) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8126 live8126 coloured8126 = result8126 := by
  rw [tree8126_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8124 coloured8124 at child
  try dsimp only [live8126, coloured8126]
  rw [child]
  dsimp only [result8124]
  have child := child1
  unfold live8125 coloured8125 at child
  try dsimp only [live8126, coloured8126]
  rw [child]
  dsimp only [result8125]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8127_agree_conditional : tree8127 = literal8127 := by
  rw [tree8127_def]
  rfl
theorem node8127_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8127 live8127 coloured8127 = result8127 := by
  rw [tree8127_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8128_agree_conditional
    (child0 : tree8126 = literal8126)
    (child1 : tree8127 = literal8127) : tree8128 = literal8128 := by
  rw [tree8128_def, child0, child1]
  rfl
theorem node8128_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8126 live8126 coloured8126 = result8126)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8127 live8127 coloured8127 = result8127) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8128 live8128 coloured8128 = result8128 := by
  rw [tree8128_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8126 coloured8126 at child
  try dsimp only [live8128, coloured8128]
  rw [child]
  dsimp only [result8126]
  have child := child1
  unfold live8127 coloured8127 at child
  try dsimp only [live8128, coloured8128]
  rw [child]
  dsimp only [result8127]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8129_agree_conditional : tree8129 = literal8129 := by
  rw [tree8129_def]
  rfl
theorem node8129_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8129 live8129 coloured8129 = result8129 := by
  rw [tree8129_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8130_agree_conditional
    (child0 : tree8128 = literal8128)
    (child1 : tree8129 = literal8129) : tree8130 = literal8130 := by
  rw [tree8130_def, child0, child1]
  rfl
theorem node8130_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8128 live8128 coloured8128 = result8128)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8129 live8129 coloured8129 = result8129) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8130 live8130 coloured8130 = result8130 := by
  rw [tree8130_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8128 coloured8128 at child
  try dsimp only [live8130, coloured8130]
  rw [child]
  dsimp only [result8128]
  have child := child1
  unfold live8129 coloured8129 at child
  try dsimp only [live8130, coloured8130]
  rw [child]
  dsimp only [result8129]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8131_agree_conditional : tree8131 = literal8131 := by
  rw [tree8131_def]
  rfl
theorem node8131_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8131 live8131 coloured8131 = result8131 := by
  rw [tree8131_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8132_agree_conditional
    (child0 : tree8130 = literal8130)
    (child1 : tree8131 = literal8131) : tree8132 = literal8132 := by
  rw [tree8132_def, child0, child1]
  rfl
theorem node8132_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8130 live8130 coloured8130 = result8130)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8131 live8131 coloured8131 = result8131) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8132 live8132 coloured8132 = result8132 := by
  rw [tree8132_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8130 coloured8130 at child
  try dsimp only [live8132, coloured8132]
  rw [child]
  dsimp only [result8130]
  have child := child1
  unfold live8131 coloured8131 at child
  try dsimp only [live8132, coloured8132]
  rw [child]
  dsimp only [result8131]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8133_agree_conditional : tree8133 = literal8133 := by
  rw [tree8133_def]
  rfl
theorem node8133_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8133 live8133 coloured8133 = result8133 := by
  rw [tree8133_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8134_agree_conditional
    (child0 : tree8132 = literal8132)
    (child1 : tree8133 = literal8133) : tree8134 = literal8134 := by
  rw [tree8134_def, child0, child1]
  rfl
theorem node8134_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8132 live8132 coloured8132 = result8132)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8133 live8133 coloured8133 = result8133) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8134 live8134 coloured8134 = result8134 := by
  rw [tree8134_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8132 coloured8132 at child
  try dsimp only [live8134, coloured8134]
  rw [child]
  dsimp only [result8132]
  have child := child1
  unfold live8133 coloured8133 at child
  try dsimp only [live8134, coloured8134]
  rw [child]
  dsimp only [result8133]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8135_agree_conditional : tree8135 = literal8135 := by
  rw [tree8135_def]
  rfl
theorem node8135_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8135 live8135 coloured8135 = result8135 := by
  rw [tree8135_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8136_agree_conditional
    (child0 : tree8134 = literal8134)
    (child1 : tree8135 = literal8135) : tree8136 = literal8136 := by
  rw [tree8136_def, child0, child1]
  rfl
theorem node8136_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8134 live8134 coloured8134 = result8134)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8135 live8135 coloured8135 = result8135) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8136 live8136 coloured8136 = result8136 := by
  rw [tree8136_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8134 coloured8134 at child
  try dsimp only [live8136, coloured8136]
  rw [child]
  dsimp only [result8134]
  have child := child1
  unfold live8135 coloured8135 at child
  try dsimp only [live8136, coloured8136]
  rw [child]
  dsimp only [result8135]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8137_agree_conditional : tree8137 = literal8137 := by
  rw [tree8137_def]
  rfl
theorem node8137_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8137 live8137 coloured8137 = result8137 := by
  rw [tree8137_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8138_agree_conditional
    (child0 : tree8136 = literal8136)
    (child1 : tree8137 = literal8137) : tree8138 = literal8138 := by
  rw [tree8138_def, child0, child1]
  rfl
theorem node8138_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8136 live8136 coloured8136 = result8136)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8137 live8137 coloured8137 = result8137) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8138 live8138 coloured8138 = result8138 := by
  rw [tree8138_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8136 coloured8136 at child
  try dsimp only [live8138, coloured8138]
  rw [child]
  dsimp only [result8136]
  have child := child1
  unfold live8137 coloured8137 at child
  try dsimp only [live8138, coloured8138]
  rw [child]
  dsimp only [result8137]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8139_agree_conditional : tree8139 = literal8139 := by
  rw [tree8139_def]
  rfl
theorem node8139_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8139 live8139 coloured8139 = result8139 := by
  rw [tree8139_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8140_agree_conditional
    (child0 : tree8138 = literal8138)
    (child1 : tree8139 = literal8139) : tree8140 = literal8140 := by
  rw [tree8140_def, child0, child1]
  rfl
theorem node8140_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8138 live8138 coloured8138 = result8138)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8139 live8139 coloured8139 = result8139) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8140 live8140 coloured8140 = result8140 := by
  rw [tree8140_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8138 coloured8138 at child
  try dsimp only [live8140, coloured8140]
  rw [child]
  dsimp only [result8138]
  have child := child1
  unfold live8139 coloured8139 at child
  try dsimp only [live8140, coloured8140]
  rw [child]
  dsimp only [result8139]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8141_agree_conditional : tree8141 = literal8141 := by
  rw [tree8141_def]
  rfl
theorem node8141_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8141 live8141 coloured8141 = result8141 := by
  rw [tree8141_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8142_agree_conditional
    (child0 : tree8140 = literal8140)
    (child1 : tree8141 = literal8141) : tree8142 = literal8142 := by
  rw [tree8142_def, child0, child1]
  rfl
theorem node8142_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8140 live8140 coloured8140 = result8140)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8141 live8141 coloured8141 = result8141) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8142 live8142 coloured8142 = result8142 := by
  rw [tree8142_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8140 coloured8140 at child
  try dsimp only [live8142, coloured8142]
  rw [child]
  dsimp only [result8140]
  have child := child1
  unfold live8141 coloured8141 at child
  try dsimp only [live8142, coloured8142]
  rw [child]
  dsimp only [result8141]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8143_agree_conditional : tree8143 = literal8143 := by
  rw [tree8143_def]
  rfl
theorem node8143_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8143 live8143 coloured8143 = result8143 := by
  rw [tree8143_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8144_agree_conditional
    (child0 : tree8142 = literal8142)
    (child1 : tree8143 = literal8143) : tree8144 = literal8144 := by
  rw [tree8144_def, child0, child1]
  rfl
theorem node8144_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8142 live8142 coloured8142 = result8142)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8143 live8143 coloured8143 = result8143) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8144 live8144 coloured8144 = result8144 := by
  rw [tree8144_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8142 coloured8142 at child
  try dsimp only [live8144, coloured8144]
  rw [child]
  dsimp only [result8142]
  have child := child1
  unfold live8143 coloured8143 at child
  try dsimp only [live8144, coloured8144]
  rw [child]
  dsimp only [result8143]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8145_agree_conditional : tree8145 = literal8145 := by
  rw [tree8145_def]
  rfl
theorem node8145_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8145 live8145 coloured8145 = result8145 := by
  rw [tree8145_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8146_agree_conditional
    (child0 : tree8144 = literal8144)
    (child1 : tree8145 = literal8145) : tree8146 = literal8146 := by
  rw [tree8146_def, child0, child1]
  rfl
theorem node8146_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8144 live8144 coloured8144 = result8144)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8145 live8145 coloured8145 = result8145) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8146 live8146 coloured8146 = result8146 := by
  rw [tree8146_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8144 coloured8144 at child
  try dsimp only [live8146, coloured8146]
  rw [child]
  dsimp only [result8144]
  have child := child1
  unfold live8145 coloured8145 at child
  try dsimp only [live8146, coloured8146]
  rw [child]
  dsimp only [result8145]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8147_agree_conditional : tree8147 = literal8147 := by
  rw [tree8147_def]
  rfl
theorem node8147_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8147 live8147 coloured8147 = result8147 := by
  rw [tree8147_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8148_agree_conditional
    (child0 : tree8146 = literal8146)
    (child1 : tree8147 = literal8147) : tree8148 = literal8148 := by
  rw [tree8148_def, child0, child1]
  rfl
theorem node8148_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8146 live8146 coloured8146 = result8146)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8147 live8147 coloured8147 = result8147) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8148 live8148 coloured8148 = result8148 := by
  rw [tree8148_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8146 coloured8146 at child
  try dsimp only [live8148, coloured8148]
  rw [child]
  dsimp only [result8146]
  have child := child1
  unfold live8147 coloured8147 at child
  try dsimp only [live8148, coloured8148]
  rw [child]
  dsimp only [result8147]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8149_agree_conditional : tree8149 = literal8149 := by
  rw [tree8149_def]
  rfl
theorem node8149_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8149 live8149 coloured8149 = result8149 := by
  rw [tree8149_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8150_agree_conditional
    (child0 : tree8148 = literal8148)
    (child1 : tree8149 = literal8149) : tree8150 = literal8150 := by
  rw [tree8150_def, child0, child1]
  rfl
theorem node8150_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8148 live8148 coloured8148 = result8148)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8149 live8149 coloured8149 = result8149) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8150 live8150 coloured8150 = result8150 := by
  rw [tree8150_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8148 coloured8148 at child
  try dsimp only [live8150, coloured8150]
  rw [child]
  dsimp only [result8148]
  have child := child1
  unfold live8149 coloured8149 at child
  try dsimp only [live8150, coloured8150]
  rw [child]
  dsimp only [result8149]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8151_agree_conditional : tree8151 = literal8151 := by
  rw [tree8151_def]
  rfl
theorem node8151_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8151 live8151 coloured8151 = result8151 := by
  rw [tree8151_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8152_agree_conditional
    (child0 : tree8150 = literal8150)
    (child1 : tree8151 = literal8151) : tree8152 = literal8152 := by
  rw [tree8152_def, child0, child1]
  rfl
theorem node8152_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8150 live8150 coloured8150 = result8150)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8151 live8151 coloured8151 = result8151) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8152 live8152 coloured8152 = result8152 := by
  rw [tree8152_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8150 coloured8150 at child
  try dsimp only [live8152, coloured8152]
  rw [child]
  dsimp only [result8150]
  have child := child1
  unfold live8151 coloured8151 at child
  try dsimp only [live8152, coloured8152]
  rw [child]
  dsimp only [result8151]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8153_agree_conditional : tree8153 = literal8153 := by
  rw [tree8153_def]
  rfl
theorem node8153_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8153 live8153 coloured8153 = result8153 := by
  rw [tree8153_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8154_agree_conditional
    (child0 : tree8152 = literal8152)
    (child1 : tree8153 = literal8153) : tree8154 = literal8154 := by
  rw [tree8154_def, child0, child1]
  rfl
theorem node8154_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8152 live8152 coloured8152 = result8152)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8153 live8153 coloured8153 = result8153) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8154 live8154 coloured8154 = result8154 := by
  rw [tree8154_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8152 coloured8152 at child
  try dsimp only [live8154, coloured8154]
  rw [child]
  dsimp only [result8152]
  have child := child1
  unfold live8153 coloured8153 at child
  try dsimp only [live8154, coloured8154]
  rw [child]
  dsimp only [result8153]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8155_agree_conditional : tree8155 = literal8155 := by
  rw [tree8155_def]
  rfl
theorem node8155_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8155 live8155 coloured8155 = result8155 := by
  rw [tree8155_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8156_agree_conditional
    (child0 : tree8154 = literal8154)
    (child1 : tree8155 = literal8155) : tree8156 = literal8156 := by
  rw [tree8156_def, child0, child1]
  rfl
theorem node8156_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8154 live8154 coloured8154 = result8154)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8155 live8155 coloured8155 = result8155) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8156 live8156 coloured8156 = result8156 := by
  rw [tree8156_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8154 coloured8154 at child
  try dsimp only [live8156, coloured8156]
  rw [child]
  dsimp only [result8154]
  have child := child1
  unfold live8155 coloured8155 at child
  try dsimp only [live8156, coloured8156]
  rw [child]
  dsimp only [result8155]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8157_agree_conditional : tree8157 = literal8157 := by
  rw [tree8157_def]
  rfl
theorem node8157_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8157 live8157 coloured8157 = result8157 := by
  rw [tree8157_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8158_agree_conditional
    (child0 : tree8156 = literal8156)
    (child1 : tree8157 = literal8157) : tree8158 = literal8158 := by
  rw [tree8158_def, child0, child1]
  rfl
theorem node8158_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8156 live8156 coloured8156 = result8156)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8157 live8157 coloured8157 = result8157) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8158 live8158 coloured8158 = result8158 := by
  rw [tree8158_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live8156 coloured8156 at child
  try dsimp only [live8158, coloured8158]
  rw [child]
  dsimp only [result8156]
  have child := child1
  unfold live8157 coloured8157 at child
  try dsimp only [live8158, coloured8158]
  rw [child]
  dsimp only [result8157]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree8159_agree_conditional : tree8159 = literal8159 := by
  rw [tree8159_def]
  rfl
theorem node8159_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree8159 live8159 coloured8159 = result8159 := by
  rw [tree8159_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages713
