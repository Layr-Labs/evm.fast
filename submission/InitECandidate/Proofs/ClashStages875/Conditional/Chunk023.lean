import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.ClashStages875.Data
import InitECandidate.Proofs.ClashComputation
import Flapjack.Compiler.Backend.WordAlloc.TotalColour
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.ClashComputation
namespace InitECandidate.Proofs.ClashStages875
theorem tree2208_agree_conditional
    (child0 : tree2206 = literal2206)
    (child1 : tree2207 = literal2207) : tree2208 = literal2208 := by
  rw [tree2208_def, child0, child1]
  rfl
theorem node2208_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2206 live2206 coloured2206 = result2206)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2207 live2207 coloured2207 = result2207) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2208 live2208 coloured2208 = result2208 := by
  rw [tree2208_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2206 coloured2206 at child
  try dsimp only [live2208, coloured2208]
  rw [child]
  dsimp only [result2206]
  have child := child1
  unfold live2207 coloured2207 at child
  try dsimp only [live2208, coloured2208]
  rw [child]
  dsimp only [result2207]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2209_agree_conditional : tree2209 = literal2209 := by
  rw [tree2209_def]
  rfl
theorem node2209_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2209 live2209 coloured2209 = result2209 := by
  rw [tree2209_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2210_agree_conditional
    (child0 : tree2208 = literal2208)
    (child1 : tree2209 = literal2209) : tree2210 = literal2210 := by
  rw [tree2210_def, child0, child1]
  rfl
theorem node2210_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2208 live2208 coloured2208 = result2208)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2209 live2209 coloured2209 = result2209) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2210 live2210 coloured2210 = result2210 := by
  rw [tree2210_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2208 coloured2208 at child
  try dsimp only [live2210, coloured2210]
  rw [child]
  dsimp only [result2208]
  have child := child1
  unfold live2209 coloured2209 at child
  try dsimp only [live2210, coloured2210]
  rw [child]
  dsimp only [result2209]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2211_agree_conditional : tree2211 = literal2211 := by
  rw [tree2211_def]
  rfl
theorem node2211_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2211 live2211 coloured2211 = result2211 := by
  rw [tree2211_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2212_agree_conditional
    (child0 : tree2210 = literal2210)
    (child1 : tree2211 = literal2211) : tree2212 = literal2212 := by
  rw [tree2212_def, child0, child1]
  rfl
theorem node2212_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2210 live2210 coloured2210 = result2210)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2211 live2211 coloured2211 = result2211) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2212 live2212 coloured2212 = result2212 := by
  rw [tree2212_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2210 coloured2210 at child
  try dsimp only [live2212, coloured2212]
  rw [child]
  dsimp only [result2210]
  have child := child1
  unfold live2211 coloured2211 at child
  try dsimp only [live2212, coloured2212]
  rw [child]
  dsimp only [result2211]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2213_agree_conditional : tree2213 = literal2213 := by
  rw [tree2213_def]
  rfl
theorem node2213_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2213 live2213 coloured2213 = result2213 := by
  rw [tree2213_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2214_agree_conditional
    (child0 : tree2212 = literal2212)
    (child1 : tree2213 = literal2213) : tree2214 = literal2214 := by
  rw [tree2214_def, child0, child1]
  rfl
theorem node2214_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2212 live2212 coloured2212 = result2212)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2213 live2213 coloured2213 = result2213) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2214 live2214 coloured2214 = result2214 := by
  rw [tree2214_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2212 coloured2212 at child
  try dsimp only [live2214, coloured2214]
  rw [child]
  dsimp only [result2212]
  have child := child1
  unfold live2213 coloured2213 at child
  try dsimp only [live2214, coloured2214]
  rw [child]
  dsimp only [result2213]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2215_agree_conditional : tree2215 = literal2215 := by
  rw [tree2215_def]
  rfl
theorem node2215_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2215 live2215 coloured2215 = result2215 := by
  rw [tree2215_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2216_agree_conditional : tree2216 = literal2216 := by
  rw [tree2216_def]
  rfl
theorem node2216_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2216 live2216 coloured2216 = result2216 := by
  rw [tree2216_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2217_agree_conditional
    (child0 : tree2215 = literal2215)
    (child1 : tree2216 = literal2216) : tree2217 = literal2217 := by
  rw [tree2217_def, child0, child1]
  rfl
theorem node2217_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2215 live2215 coloured2215 = result2215)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2216 live2216 coloured2216 = result2216) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2217 live2217 coloured2217 = result2217 := by
  rw [tree2217_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2215 coloured2215 at child
  try dsimp only [live2217, coloured2217]
  rw [child]
  dsimp only [result2215]
  have child := child1
  unfold live2216 coloured2216 at child
  try dsimp only [live2217, coloured2217]
  rw [child]
  dsimp only [result2216]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2218_agree_conditional : tree2218 = literal2218 := by
  rw [tree2218_def]
  rfl
theorem node2218_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2218 live2218 coloured2218 = result2218 := by
  rw [tree2218_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2219_agree_conditional : tree2219 = literal2219 := by
  rw [tree2219_def]
  rfl
theorem node2219_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2219 live2219 coloured2219 = result2219 := by
  rw [tree2219_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2220_agree_conditional
    (child0 : tree2218 = literal2218)
    (child1 : tree2219 = literal2219) : tree2220 = literal2220 := by
  rw [tree2220_def, child0, child1]
  rfl
theorem node2220_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2218 live2218 coloured2218 = result2218)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2219 live2219 coloured2219 = result2219) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2220 live2220 coloured2220 = result2220 := by
  rw [tree2220_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2218 coloured2218 at child
  try dsimp only [live2220, coloured2220]
  rw [child]
  dsimp only [result2218]
  have child := child1
  unfold live2219 coloured2219 at child
  try dsimp only [live2220, coloured2220]
  rw [child]
  dsimp only [result2219]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2221_agree_conditional : tree2221 = literal2221 := by
  rw [tree2221_def]
  rfl
theorem node2221_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2221 live2221 coloured2221 = result2221 := by
  rw [tree2221_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2222_agree_conditional : tree2222 = literal2222 := by
  rw [tree2222_def]
  rfl
theorem node2222_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2222 live2222 coloured2222 = result2222 := by
  rw [tree2222_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2223_agree_conditional
    (child0 : tree2221 = literal2221)
    (child1 : tree2222 = literal2222) : tree2223 = literal2223 := by
  rw [tree2223_def, child0, child1]
  rfl
theorem node2223_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2221 live2221 coloured2221 = result2221)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2222 live2222 coloured2222 = result2222) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2223 live2223 coloured2223 = result2223 := by
  rw [tree2223_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2221 coloured2221 at child
  try dsimp only [live2223, coloured2223]
  rw [child]
  dsimp only [result2221]
  have child := child1
  unfold live2222 coloured2222 at child
  try dsimp only [live2223, coloured2223]
  rw [child]
  dsimp only [result2222]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2224_agree_conditional : tree2224 = literal2224 := by
  rw [tree2224_def]
  rfl
theorem node2224_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2224 live2224 coloured2224 = result2224 := by
  rw [tree2224_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2225_agree_conditional
    (child0 : tree2223 = literal2223)
    (child1 : tree2224 = literal2224) : tree2225 = literal2225 := by
  rw [tree2225_def, child0, child1]
  rfl
theorem node2225_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2223 live2223 coloured2223 = result2223)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2224 live2224 coloured2224 = result2224) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2225 live2225 coloured2225 = result2225 := by
  rw [tree2225_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2223 coloured2223 at child
  try dsimp only [live2225, coloured2225]
  rw [child]
  dsimp only [result2223]
  have child := child1
  unfold live2224 coloured2224 at child
  try dsimp only [live2225, coloured2225]
  rw [child]
  dsimp only [result2224]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2226_agree_conditional
    (child0 : tree2220 = literal2220)
    (child1 : tree2225 = literal2225) : tree2226 = literal2226 := by
  rw [tree2226_def, child0, child1]
  rfl
theorem node2226_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2220 live2220 coloured2220 = result2220)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2225 live2225 coloured2225 = result2225) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2226 live2226 coloured2226 = result2226 := by
  rw [tree2226_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2220 coloured2220 at child
  try dsimp only [live2226, coloured2226]
  rw [child]
  dsimp only [result2220]
  have child := child1
  unfold live2225 coloured2225 at child
  try dsimp only [live2226, coloured2226]
  rw [child]
  dsimp only [result2225]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2227_agree_conditional
    (child0 : tree2217 = literal2217)
    (child1 : tree2226 = literal2226) : tree2227 = literal2227 := by
  rw [tree2227_def, child0, child1]
  rfl
theorem node2227_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2217 live2217 coloured2217 = result2217)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2226 live2226 coloured2226 = result2226) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2227 live2227 coloured2227 = result2227 := by
  rw [tree2227_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2217 coloured2217 at child
  try dsimp only [live2227, coloured2227]
  rw [child]
  dsimp only [result2217]
  have child := child1
  unfold live2226 coloured2226 at child
  try dsimp only [live2227, coloured2227]
  rw [child]
  dsimp only [result2226]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2228_agree_conditional : tree2228 = literal2228 := by
  rw [tree2228_def]
  rfl
theorem node2228_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2228 live2228 coloured2228 = result2228 := by
  rw [tree2228_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2229_agree_conditional
    (child0 : tree2227 = literal2227)
    (child1 : tree2228 = literal2228) : tree2229 = literal2229 := by
  rw [tree2229_def, child0, child1]
  rfl
theorem node2229_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2227 live2227 coloured2227 = result2227)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2228 live2228 coloured2228 = result2228) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2229 live2229 coloured2229 = result2229 := by
  rw [tree2229_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2227 coloured2227 at child
  try dsimp only [live2229, coloured2229]
  rw [child]
  dsimp only [result2227]
  have child := child1
  unfold live2228 coloured2228 at child
  try dsimp only [live2229, coloured2229]
  rw [child]
  dsimp only [result2228]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2230_agree_conditional : tree2230 = literal2230 := by
  rw [tree2230_def]
  rfl
theorem node2230_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2230 live2230 coloured2230 = result2230 := by
  rw [tree2230_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2231_agree_conditional
    (child0 : tree2229 = literal2229)
    (child1 : tree2230 = literal2230) : tree2231 = literal2231 := by
  rw [tree2231_def, child0, child1]
  rfl
theorem node2231_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2229 live2229 coloured2229 = result2229)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2230 live2230 coloured2230 = result2230) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2231 live2231 coloured2231 = result2231 := by
  rw [tree2231_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2229 coloured2229 at child
  try dsimp only [live2231, coloured2231]
  rw [child]
  dsimp only [result2229]
  have child := child1
  unfold live2230 coloured2230 at child
  try dsimp only [live2231, coloured2231]
  rw [child]
  dsimp only [result2230]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2232_agree_conditional : tree2232 = literal2232 := by
  rw [tree2232_def]
  rfl
theorem node2232_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2232 live2232 coloured2232 = result2232 := by
  rw [tree2232_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2233_agree_conditional : tree2233 = literal2233 := by
  rw [tree2233_def]
  rfl
theorem node2233_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2233 live2233 coloured2233 = result2233 := by
  rw [tree2233_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2234_agree_conditional
    (child0 : tree2232 = literal2232)
    (child1 : tree2233 = literal2233) : tree2234 = literal2234 := by
  rw [tree2234_def, child0, child1]
  rfl
theorem node2234_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2232 live2232 coloured2232 = result2232)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2233 live2233 coloured2233 = result2233) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2234 live2234 coloured2234 = result2234 := by
  rw [tree2234_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2232 coloured2232 at child
  try dsimp only [live2234, coloured2234]
  rw [child]
  dsimp only [result2232]
  have child := child1
  unfold live2233 coloured2233 at child
  try dsimp only [live2234, coloured2234]
  rw [child]
  dsimp only [result2233]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2235_agree_conditional : tree2235 = literal2235 := by
  rw [tree2235_def]
  rfl
theorem node2235_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2235 live2235 coloured2235 = result2235 := by
  rw [tree2235_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2236_agree_conditional : tree2236 = literal2236 := by
  rw [tree2236_def]
  rfl
theorem node2236_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2236 live2236 coloured2236 = result2236 := by
  rw [tree2236_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2237_agree_conditional
    (child0 : tree2235 = literal2235)
    (child1 : tree2236 = literal2236) : tree2237 = literal2237 := by
  rw [tree2237_def, child0, child1]
  rfl
theorem node2237_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2235 live2235 coloured2235 = result2235)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2236 live2236 coloured2236 = result2236) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2237 live2237 coloured2237 = result2237 := by
  rw [tree2237_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2235 coloured2235 at child
  try dsimp only [live2237, coloured2237]
  rw [child]
  dsimp only [result2235]
  have child := child1
  unfold live2236 coloured2236 at child
  try dsimp only [live2237, coloured2237]
  rw [child]
  dsimp only [result2236]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2238_agree_conditional : tree2238 = literal2238 := by
  rw [tree2238_def]
  rfl
theorem node2238_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2238 live2238 coloured2238 = result2238 := by
  rw [tree2238_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2239_agree_conditional
    (child0 : tree2237 = literal2237)
    (child1 : tree2238 = literal2238) : tree2239 = literal2239 := by
  rw [tree2239_def, child0, child1]
  rfl
theorem node2239_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2237 live2237 coloured2237 = result2237)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2238 live2238 coloured2238 = result2238) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2239 live2239 coloured2239 = result2239 := by
  rw [tree2239_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2237 coloured2237 at child
  try dsimp only [live2239, coloured2239]
  rw [child]
  dsimp only [result2237]
  have child := child1
  unfold live2238 coloured2238 at child
  try dsimp only [live2239, coloured2239]
  rw [child]
  dsimp only [result2238]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2240_agree_conditional
    (child0 : tree2234 = literal2234)
    (child1 : tree2239 = literal2239) : tree2240 = literal2240 := by
  rw [tree2240_def, child0, child1]
  rfl
theorem node2240_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2234 live2234 coloured2234 = result2234)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2239 live2239 coloured2239 = result2239) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2240 live2240 coloured2240 = result2240 := by
  rw [tree2240_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2234 coloured2234 at child
  try dsimp only [live2240, coloured2240]
  rw [child]
  dsimp only [result2234]
  have child := child1
  unfold live2239 coloured2239 at child
  try dsimp only [live2240, coloured2240]
  rw [child]
  dsimp only [result2239]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2241_agree_conditional
    (child0 : tree2231 = literal2231)
    (child1 : tree2240 = literal2240) : tree2241 = literal2241 := by
  rw [tree2241_def, child0, child1]
  rfl
theorem node2241_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2231 live2231 coloured2231 = result2231)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2240 live2240 coloured2240 = result2240) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2241 live2241 coloured2241 = result2241 := by
  rw [tree2241_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2231 coloured2231 at child
  try dsimp only [live2241, coloured2241]
  rw [child]
  dsimp only [result2231]
  have child := child1
  unfold live2240 coloured2240 at child
  try dsimp only [live2241, coloured2241]
  rw [child]
  dsimp only [result2240]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2242_agree_conditional : tree2242 = literal2242 := by
  rw [tree2242_def]
  rfl
theorem node2242_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2242 live2242 coloured2242 = result2242 := by
  rw [tree2242_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2243_agree_conditional
    (child0 : tree2241 = literal2241)
    (child1 : tree2242 = literal2242) : tree2243 = literal2243 := by
  rw [tree2243_def, child0, child1]
  rfl
theorem node2243_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2241 live2241 coloured2241 = result2241)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2242 live2242 coloured2242 = result2242) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2243 live2243 coloured2243 = result2243 := by
  rw [tree2243_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2241 coloured2241 at child
  try dsimp only [live2243, coloured2243]
  rw [child]
  dsimp only [result2241]
  have child := child1
  unfold live2242 coloured2242 at child
  try dsimp only [live2243, coloured2243]
  rw [child]
  dsimp only [result2242]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2244_agree_conditional : tree2244 = literal2244 := by
  rw [tree2244_def]
  rfl
theorem node2244_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2244 live2244 coloured2244 = result2244 := by
  rw [tree2244_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2245_agree_conditional
    (child0 : tree2243 = literal2243)
    (child1 : tree2244 = literal2244) : tree2245 = literal2245 := by
  rw [tree2245_def, child0, child1]
  rfl
theorem node2245_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2243 live2243 coloured2243 = result2243)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2244 live2244 coloured2244 = result2244) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2245 live2245 coloured2245 = result2245 := by
  rw [tree2245_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2243 coloured2243 at child
  try dsimp only [live2245, coloured2245]
  rw [child]
  dsimp only [result2243]
  have child := child1
  unfold live2244 coloured2244 at child
  try dsimp only [live2245, coloured2245]
  rw [child]
  dsimp only [result2244]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2246_agree_conditional : tree2246 = literal2246 := by
  rw [tree2246_def]
  rfl
theorem node2246_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2246 live2246 coloured2246 = result2246 := by
  rw [tree2246_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2247_agree_conditional
    (child0 : tree2245 = literal2245)
    (child1 : tree2246 = literal2246) : tree2247 = literal2247 := by
  rw [tree2247_def, child0, child1]
  rfl
theorem node2247_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2245 live2245 coloured2245 = result2245)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2246 live2246 coloured2246 = result2246) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2247 live2247 coloured2247 = result2247 := by
  rw [tree2247_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2245 coloured2245 at child
  try dsimp only [live2247, coloured2247]
  rw [child]
  dsimp only [result2245]
  have child := child1
  unfold live2246 coloured2246 at child
  try dsimp only [live2247, coloured2247]
  rw [child]
  dsimp only [result2246]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2248_agree_conditional : tree2248 = literal2248 := by
  rw [tree2248_def]
  rfl
theorem node2248_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2248 live2248 coloured2248 = result2248 := by
  rw [tree2248_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2249_agree_conditional
    (child0 : tree2247 = literal2247)
    (child1 : tree2248 = literal2248) : tree2249 = literal2249 := by
  rw [tree2249_def, child0, child1]
  rfl
theorem node2249_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2247 live2247 coloured2247 = result2247)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2248 live2248 coloured2248 = result2248) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2249 live2249 coloured2249 = result2249 := by
  rw [tree2249_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2247 coloured2247 at child
  try dsimp only [live2249, coloured2249]
  rw [child]
  dsimp only [result2247]
  have child := child1
  unfold live2248 coloured2248 at child
  try dsimp only [live2249, coloured2249]
  rw [child]
  dsimp only [result2248]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2250_agree_conditional : tree2250 = literal2250 := by
  rw [tree2250_def]
  rfl
theorem node2250_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2250 live2250 coloured2250 = result2250 := by
  rw [tree2250_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2251_agree_conditional
    (child0 : tree2249 = literal2249)
    (child1 : tree2250 = literal2250) : tree2251 = literal2251 := by
  rw [tree2251_def, child0, child1]
  rfl
theorem node2251_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2249 live2249 coloured2249 = result2249)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2250 live2250 coloured2250 = result2250) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2251 live2251 coloured2251 = result2251 := by
  rw [tree2251_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2249 coloured2249 at child
  try dsimp only [live2251, coloured2251]
  rw [child]
  dsimp only [result2249]
  have child := child1
  unfold live2250 coloured2250 at child
  try dsimp only [live2251, coloured2251]
  rw [child]
  dsimp only [result2250]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2252_agree_conditional : tree2252 = literal2252 := by
  rw [tree2252_def]
  rfl
theorem node2252_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2252 live2252 coloured2252 = result2252 := by
  rw [tree2252_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2253_agree_conditional
    (child0 : tree2251 = literal2251)
    (child1 : tree2252 = literal2252) : tree2253 = literal2253 := by
  rw [tree2253_def, child0, child1]
  rfl
theorem node2253_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2251 live2251 coloured2251 = result2251)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2252 live2252 coloured2252 = result2252) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2253 live2253 coloured2253 = result2253 := by
  rw [tree2253_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2251 coloured2251 at child
  try dsimp only [live2253, coloured2253]
  rw [child]
  dsimp only [result2251]
  have child := child1
  unfold live2252 coloured2252 at child
  try dsimp only [live2253, coloured2253]
  rw [child]
  dsimp only [result2252]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2254_agree_conditional : tree2254 = literal2254 := by
  rw [tree2254_def]
  rfl
theorem node2254_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2254 live2254 coloured2254 = result2254 := by
  rw [tree2254_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2255_agree_conditional
    (child0 : tree2253 = literal2253)
    (child1 : tree2254 = literal2254) : tree2255 = literal2255 := by
  rw [tree2255_def, child0, child1]
  rfl
theorem node2255_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2253 live2253 coloured2253 = result2253)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2254 live2254 coloured2254 = result2254) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2255 live2255 coloured2255 = result2255 := by
  rw [tree2255_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2253 coloured2253 at child
  try dsimp only [live2255, coloured2255]
  rw [child]
  dsimp only [result2253]
  have child := child1
  unfold live2254 coloured2254 at child
  try dsimp only [live2255, coloured2255]
  rw [child]
  dsimp only [result2254]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2256_agree_conditional : tree2256 = literal2256 := by
  rw [tree2256_def]
  rfl
theorem node2256_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2256 live2256 coloured2256 = result2256 := by
  rw [tree2256_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2257_agree_conditional : tree2257 = literal2257 := by
  rw [tree2257_def]
  rfl
theorem node2257_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2257 live2257 coloured2257 = result2257 := by
  rw [tree2257_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2258_agree_conditional
    (child0 : tree2256 = literal2256)
    (child1 : tree2257 = literal2257) : tree2258 = literal2258 := by
  rw [tree2258_def, child0, child1]
  rfl
theorem node2258_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2256 live2256 coloured2256 = result2256)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2257 live2257 coloured2257 = result2257) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2258 live2258 coloured2258 = result2258 := by
  rw [tree2258_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2256 coloured2256 at child
  try dsimp only [live2258, coloured2258]
  rw [child]
  dsimp only [result2256]
  have child := child1
  unfold live2257 coloured2257 at child
  try dsimp only [live2258, coloured2258]
  rw [child]
  dsimp only [result2257]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2259_agree_conditional
    (child0 : tree2255 = literal2255)
    (child1 : tree2258 = literal2258) : tree2259 = literal2259 := by
  rw [tree2259_def, child0, child1]
  rfl
theorem node2259_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2255 live2255 coloured2255 = result2255)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2258 live2258 coloured2258 = result2258) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2259 live2259 coloured2259 = result2259 := by
  rw [tree2259_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2255 coloured2255 at child
  try dsimp only [live2259, coloured2259]
  rw [child]
  dsimp only [result2255]
  have child := child1
  unfold live2258 coloured2258 at child
  try dsimp only [live2259, coloured2259]
  rw [child]
  dsimp only [result2258]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2260_agree_conditional : tree2260 = literal2260 := by
  rw [tree2260_def]
  rfl
theorem node2260_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2260 live2260 coloured2260 = result2260 := by
  rw [tree2260_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2261_agree_conditional
    (child0 : tree2259 = literal2259)
    (child1 : tree2260 = literal2260) : tree2261 = literal2261 := by
  rw [tree2261_def, child0, child1]
  rfl
theorem node2261_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2259 live2259 coloured2259 = result2259)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2260 live2260 coloured2260 = result2260) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2261 live2261 coloured2261 = result2261 := by
  rw [tree2261_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2259 coloured2259 at child
  try dsimp only [live2261, coloured2261]
  rw [child]
  dsimp only [result2259]
  have child := child1
  unfold live2260 coloured2260 at child
  try dsimp only [live2261, coloured2261]
  rw [child]
  dsimp only [result2260]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2262_agree_conditional
    (child0 : tree2214 = literal2214)
    (child1 : tree2261 = literal2261) : tree2262 = literal2262 := by
  rw [tree2262_def, child0, child1]
  rfl
theorem node2262_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2214 live2214 coloured2214 = result2214)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2261 live2261 coloured2261 = result2261) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2262 live2262 coloured2262 = result2262 := by
  rw [tree2262_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2214 coloured2214 at child
  try dsimp only [live2262, coloured2262]
  rw [child]
  dsimp only [result2214]
  have child := child1
  unfold live2261 coloured2261 at child
  try dsimp only [live2262, coloured2262]
  rw [child]
  dsimp only [result2261]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2263_agree_conditional : tree2263 = literal2263 := by
  rw [tree2263_def]
  rfl
theorem node2263_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2263 live2263 coloured2263 = result2263 := by
  rw [tree2263_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2264_agree_conditional
    (child0 : tree2262 = literal2262)
    (child1 : tree2263 = literal2263) : tree2264 = literal2264 := by
  rw [tree2264_def, child0, child1]
  rfl
theorem node2264_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2262 live2262 coloured2262 = result2262)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2263 live2263 coloured2263 = result2263) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2264 live2264 coloured2264 = result2264 := by
  rw [tree2264_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2262 coloured2262 at child
  try dsimp only [live2264, coloured2264]
  rw [child]
  dsimp only [result2262]
  have child := child1
  unfold live2263 coloured2263 at child
  try dsimp only [live2264, coloured2264]
  rw [child]
  dsimp only [result2263]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2265_agree_conditional : tree2265 = literal2265 := by
  rw [tree2265_def]
  rfl
theorem node2265_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2265 live2265 coloured2265 = result2265 := by
  rw [tree2265_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2266_agree_conditional
    (child0 : tree2264 = literal2264)
    (child1 : tree2265 = literal2265) : tree2266 = literal2266 := by
  rw [tree2266_def, child0, child1]
  rfl
theorem node2266_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2264 live2264 coloured2264 = result2264)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2265 live2265 coloured2265 = result2265) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2266 live2266 coloured2266 = result2266 := by
  rw [tree2266_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2264 coloured2264 at child
  try dsimp only [live2266, coloured2266]
  rw [child]
  dsimp only [result2264]
  have child := child1
  unfold live2265 coloured2265 at child
  try dsimp only [live2266, coloured2266]
  rw [child]
  dsimp only [result2265]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2267_agree_conditional : tree2267 = literal2267 := by
  rw [tree2267_def]
  rfl
theorem node2267_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2267 live2267 coloured2267 = result2267 := by
  rw [tree2267_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2268_agree_conditional
    (child0 : tree2266 = literal2266)
    (child1 : tree2267 = literal2267) : tree2268 = literal2268 := by
  rw [tree2268_def, child0, child1]
  rfl
theorem node2268_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2266 live2266 coloured2266 = result2266)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2267 live2267 coloured2267 = result2267) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2268 live2268 coloured2268 = result2268 := by
  rw [tree2268_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2266 coloured2266 at child
  try dsimp only [live2268, coloured2268]
  rw [child]
  dsimp only [result2266]
  have child := child1
  unfold live2267 coloured2267 at child
  try dsimp only [live2268, coloured2268]
  rw [child]
  dsimp only [result2267]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2269_agree_conditional : tree2269 = literal2269 := by
  rw [tree2269_def]
  rfl
theorem node2269_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2269 live2269 coloured2269 = result2269 := by
  rw [tree2269_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2270_agree_conditional
    (child0 : tree2268 = literal2268)
    (child1 : tree2269 = literal2269) : tree2270 = literal2270 := by
  rw [tree2270_def, child0, child1]
  rfl
theorem node2270_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2268 live2268 coloured2268 = result2268)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2269 live2269 coloured2269 = result2269) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2270 live2270 coloured2270 = result2270 := by
  rw [tree2270_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2268 coloured2268 at child
  try dsimp only [live2270, coloured2270]
  rw [child]
  dsimp only [result2268]
  have child := child1
  unfold live2269 coloured2269 at child
  try dsimp only [live2270, coloured2270]
  rw [child]
  dsimp only [result2269]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2271_agree_conditional : tree2271 = literal2271 := by
  rw [tree2271_def]
  rfl
theorem node2271_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2271 live2271 coloured2271 = result2271 := by
  rw [tree2271_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2272_agree_conditional
    (child0 : tree2270 = literal2270)
    (child1 : tree2271 = literal2271) : tree2272 = literal2272 := by
  rw [tree2272_def, child0, child1]
  rfl
theorem node2272_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2270 live2270 coloured2270 = result2270)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2271 live2271 coloured2271 = result2271) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2272 live2272 coloured2272 = result2272 := by
  rw [tree2272_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2270 coloured2270 at child
  try dsimp only [live2272, coloured2272]
  rw [child]
  dsimp only [result2270]
  have child := child1
  unfold live2271 coloured2271 at child
  try dsimp only [live2272, coloured2272]
  rw [child]
  dsimp only [result2271]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2273_agree_conditional : tree2273 = literal2273 := by
  rw [tree2273_def]
  rfl
theorem node2273_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2273 live2273 coloured2273 = result2273 := by
  rw [tree2273_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2274_agree_conditional
    (child0 : tree2272 = literal2272)
    (child1 : tree2273 = literal2273) : tree2274 = literal2274 := by
  rw [tree2274_def, child0, child1]
  rfl
theorem node2274_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2272 live2272 coloured2272 = result2272)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2273 live2273 coloured2273 = result2273) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2274 live2274 coloured2274 = result2274 := by
  rw [tree2274_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2272 coloured2272 at child
  try dsimp only [live2274, coloured2274]
  rw [child]
  dsimp only [result2272]
  have child := child1
  unfold live2273 coloured2273 at child
  try dsimp only [live2274, coloured2274]
  rw [child]
  dsimp only [result2273]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2275_agree_conditional : tree2275 = literal2275 := by
  rw [tree2275_def]
  rfl
theorem node2275_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2275 live2275 coloured2275 = result2275 := by
  rw [tree2275_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2276_agree_conditional
    (child0 : tree2274 = literal2274)
    (child1 : tree2275 = literal2275) : tree2276 = literal2276 := by
  rw [tree2276_def, child0, child1]
  rfl
theorem node2276_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2274 live2274 coloured2274 = result2274)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2275 live2275 coloured2275 = result2275) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2276 live2276 coloured2276 = result2276 := by
  rw [tree2276_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2274 coloured2274 at child
  try dsimp only [live2276, coloured2276]
  rw [child]
  dsimp only [result2274]
  have child := child1
  unfold live2275 coloured2275 at child
  try dsimp only [live2276, coloured2276]
  rw [child]
  dsimp only [result2275]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2277_agree_conditional : tree2277 = literal2277 := by
  rw [tree2277_def]
  rfl
theorem node2277_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2277 live2277 coloured2277 = result2277 := by
  rw [tree2277_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2278_agree_conditional : tree2278 = literal2278 := by
  rw [tree2278_def]
  rfl
theorem node2278_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2278 live2278 coloured2278 = result2278 := by
  rw [tree2278_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2279_agree_conditional
    (child0 : tree2277 = literal2277)
    (child1 : tree2278 = literal2278) : tree2279 = literal2279 := by
  rw [tree2279_def, child0, child1]
  rfl
theorem node2279_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2277 live2277 coloured2277 = result2277)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2278 live2278 coloured2278 = result2278) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2279 live2279 coloured2279 = result2279 := by
  rw [tree2279_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2277 coloured2277 at child
  try dsimp only [live2279, coloured2279]
  rw [child]
  dsimp only [result2277]
  have child := child1
  unfold live2278 coloured2278 at child
  try dsimp only [live2279, coloured2279]
  rw [child]
  dsimp only [result2278]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2280_agree_conditional : tree2280 = literal2280 := by
  rw [tree2280_def]
  rfl
theorem node2280_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2280 live2280 coloured2280 = result2280 := by
  rw [tree2280_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2281_agree_conditional : tree2281 = literal2281 := by
  rw [tree2281_def]
  rfl
theorem node2281_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2281 live2281 coloured2281 = result2281 := by
  rw [tree2281_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2282_agree_conditional
    (child0 : tree2280 = literal2280)
    (child1 : tree2281 = literal2281) : tree2282 = literal2282 := by
  rw [tree2282_def, child0, child1]
  rfl
theorem node2282_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2280 live2280 coloured2280 = result2280)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2281 live2281 coloured2281 = result2281) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2282 live2282 coloured2282 = result2282 := by
  rw [tree2282_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2280 coloured2280 at child
  try dsimp only [live2282, coloured2282]
  rw [child]
  dsimp only [result2280]
  have child := child1
  unfold live2281 coloured2281 at child
  try dsimp only [live2282, coloured2282]
  rw [child]
  dsimp only [result2281]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2283_agree_conditional : tree2283 = literal2283 := by
  rw [tree2283_def]
  rfl
theorem node2283_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2283 live2283 coloured2283 = result2283 := by
  rw [tree2283_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2284_agree_conditional
    (child0 : tree2282 = literal2282)
    (child1 : tree2283 = literal2283) : tree2284 = literal2284 := by
  rw [tree2284_def, child0, child1]
  rfl
theorem node2284_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2282 live2282 coloured2282 = result2282)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2283 live2283 coloured2283 = result2283) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2284 live2284 coloured2284 = result2284 := by
  rw [tree2284_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2282 coloured2282 at child
  try dsimp only [live2284, coloured2284]
  rw [child]
  dsimp only [result2282]
  have child := child1
  unfold live2283 coloured2283 at child
  try dsimp only [live2284, coloured2284]
  rw [child]
  dsimp only [result2283]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2285_agree_conditional
    (child0 : tree2279 = literal2279)
    (child1 : tree2284 = literal2284) : tree2285 = literal2285 := by
  rw [tree2285_def, child0, child1]
  rfl
theorem node2285_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2279 live2279 coloured2279 = result2279)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2284 live2284 coloured2284 = result2284) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2285 live2285 coloured2285 = result2285 := by
  rw [tree2285_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2279 coloured2279 at child
  try dsimp only [live2285, coloured2285]
  rw [child]
  dsimp only [result2279]
  have child := child1
  unfold live2284 coloured2284 at child
  try dsimp only [live2285, coloured2285]
  rw [child]
  dsimp only [result2284]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2286_agree_conditional
    (child0 : tree2276 = literal2276)
    (child1 : tree2285 = literal2285) : tree2286 = literal2286 := by
  rw [tree2286_def, child0, child1]
  rfl
theorem node2286_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2276 live2276 coloured2276 = result2276)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2285 live2285 coloured2285 = result2285) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2286 live2286 coloured2286 = result2286 := by
  rw [tree2286_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2276 coloured2276 at child
  try dsimp only [live2286, coloured2286]
  rw [child]
  dsimp only [result2276]
  have child := child1
  unfold live2285 coloured2285 at child
  try dsimp only [live2286, coloured2286]
  rw [child]
  dsimp only [result2285]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2287_agree_conditional : tree2287 = literal2287 := by
  rw [tree2287_def]
  rfl
theorem node2287_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2287 live2287 coloured2287 = result2287 := by
  rw [tree2287_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2288_agree_conditional
    (child0 : tree2286 = literal2286)
    (child1 : tree2287 = literal2287) : tree2288 = literal2288 := by
  rw [tree2288_def, child0, child1]
  rfl
theorem node2288_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2286 live2286 coloured2286 = result2286)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2287 live2287 coloured2287 = result2287) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2288 live2288 coloured2288 = result2288 := by
  rw [tree2288_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2286 coloured2286 at child
  try dsimp only [live2288, coloured2288]
  rw [child]
  dsimp only [result2286]
  have child := child1
  unfold live2287 coloured2287 at child
  try dsimp only [live2288, coloured2288]
  rw [child]
  dsimp only [result2287]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2289_agree_conditional : tree2289 = literal2289 := by
  rw [tree2289_def]
  rfl
theorem node2289_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2289 live2289 coloured2289 = result2289 := by
  rw [tree2289_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2290_agree_conditional
    (child0 : tree2288 = literal2288)
    (child1 : tree2289 = literal2289) : tree2290 = literal2290 := by
  rw [tree2290_def, child0, child1]
  rfl
theorem node2290_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2288 live2288 coloured2288 = result2288)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2289 live2289 coloured2289 = result2289) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2290 live2290 coloured2290 = result2290 := by
  rw [tree2290_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2288 coloured2288 at child
  try dsimp only [live2290, coloured2290]
  rw [child]
  dsimp only [result2288]
  have child := child1
  unfold live2289 coloured2289 at child
  try dsimp only [live2290, coloured2290]
  rw [child]
  dsimp only [result2289]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2291_agree_conditional : tree2291 = literal2291 := by
  rw [tree2291_def]
  rfl
theorem node2291_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2291 live2291 coloured2291 = result2291 := by
  rw [tree2291_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2292_agree_conditional : tree2292 = literal2292 := by
  rw [tree2292_def]
  rfl
theorem node2292_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2292 live2292 coloured2292 = result2292 := by
  rw [tree2292_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2293_agree_conditional
    (child0 : tree2291 = literal2291)
    (child1 : tree2292 = literal2292) : tree2293 = literal2293 := by
  rw [tree2293_def, child0, child1]
  rfl
theorem node2293_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2291 live2291 coloured2291 = result2291)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2292 live2292 coloured2292 = result2292) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2293 live2293 coloured2293 = result2293 := by
  rw [tree2293_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2291 coloured2291 at child
  try dsimp only [live2293, coloured2293]
  rw [child]
  dsimp only [result2291]
  have child := child1
  unfold live2292 coloured2292 at child
  try dsimp only [live2293, coloured2293]
  rw [child]
  dsimp only [result2292]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2294_agree_conditional : tree2294 = literal2294 := by
  rw [tree2294_def]
  rfl
theorem node2294_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2294 live2294 coloured2294 = result2294 := by
  rw [tree2294_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2295_agree_conditional : tree2295 = literal2295 := by
  rw [tree2295_def]
  rfl
theorem node2295_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2295 live2295 coloured2295 = result2295 := by
  rw [tree2295_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2296_agree_conditional
    (child0 : tree2294 = literal2294)
    (child1 : tree2295 = literal2295) : tree2296 = literal2296 := by
  rw [tree2296_def, child0, child1]
  rfl
theorem node2296_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2294 live2294 coloured2294 = result2294)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2295 live2295 coloured2295 = result2295) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2296 live2296 coloured2296 = result2296 := by
  rw [tree2296_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2294 coloured2294 at child
  try dsimp only [live2296, coloured2296]
  rw [child]
  dsimp only [result2294]
  have child := child1
  unfold live2295 coloured2295 at child
  try dsimp only [live2296, coloured2296]
  rw [child]
  dsimp only [result2295]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2297_agree_conditional : tree2297 = literal2297 := by
  rw [tree2297_def]
  rfl
theorem node2297_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2297 live2297 coloured2297 = result2297 := by
  rw [tree2297_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2298_agree_conditional
    (child0 : tree2296 = literal2296)
    (child1 : tree2297 = literal2297) : tree2298 = literal2298 := by
  rw [tree2298_def, child0, child1]
  rfl
theorem node2298_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2296 live2296 coloured2296 = result2296)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2297 live2297 coloured2297 = result2297) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2298 live2298 coloured2298 = result2298 := by
  rw [tree2298_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2296 coloured2296 at child
  try dsimp only [live2298, coloured2298]
  rw [child]
  dsimp only [result2296]
  have child := child1
  unfold live2297 coloured2297 at child
  try dsimp only [live2298, coloured2298]
  rw [child]
  dsimp only [result2297]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2299_agree_conditional
    (child0 : tree2293 = literal2293)
    (child1 : tree2298 = literal2298) : tree2299 = literal2299 := by
  rw [tree2299_def, child0, child1]
  rfl
theorem node2299_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2293 live2293 coloured2293 = result2293)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2298 live2298 coloured2298 = result2298) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2299 live2299 coloured2299 = result2299 := by
  rw [tree2299_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2293 coloured2293 at child
  try dsimp only [live2299, coloured2299]
  rw [child]
  dsimp only [result2293]
  have child := child1
  unfold live2298 coloured2298 at child
  try dsimp only [live2299, coloured2299]
  rw [child]
  dsimp only [result2298]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2300_agree_conditional
    (child0 : tree2290 = literal2290)
    (child1 : tree2299 = literal2299) : tree2300 = literal2300 := by
  rw [tree2300_def, child0, child1]
  rfl
theorem node2300_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2290 live2290 coloured2290 = result2290)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2299 live2299 coloured2299 = result2299) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2300 live2300 coloured2300 = result2300 := by
  rw [tree2300_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2290 coloured2290 at child
  try dsimp only [live2300, coloured2300]
  rw [child]
  dsimp only [result2290]
  have child := child1
  unfold live2299 coloured2299 at child
  try dsimp only [live2300, coloured2300]
  rw [child]
  dsimp only [result2299]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2301_agree_conditional : tree2301 = literal2301 := by
  rw [tree2301_def]
  rfl
theorem node2301_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2301 live2301 coloured2301 = result2301 := by
  rw [tree2301_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2302_agree_conditional
    (child0 : tree2300 = literal2300)
    (child1 : tree2301 = literal2301) : tree2302 = literal2302 := by
  rw [tree2302_def, child0, child1]
  rfl
theorem node2302_eq_conditional
    (child0 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2300 live2300 coloured2300 = result2300)
    (child1 : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2301 live2301 coloured2301 = result2301) : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2302 live2302 coloured2302 = result2302 := by
  rw [tree2302_def]
  rw [Flapjack.RegAlloc.checkClashTree]
  have child := child0
  unfold live2300 coloured2300 at child
  try dsimp only [live2302, coloured2302]
  rw [child]
  dsimp only [result2300]
  have child := child1
  unfold live2301 coloured2301 at child
  try dsimp only [live2302, coloured2302]
  rw [child]
  dsimp only [result2301]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
theorem tree2303_agree_conditional : tree2303 = literal2303 := by
  rw [tree2303_def]
  rfl
theorem node2303_eq_conditional : Flapjack.RegAlloc.checkClashTree (Flapjack.WordAlloc.totalColour colour) tree2303 live2303 coloured2303 = result2303 := by
  rw [tree2303_def]
  try simp only [Flapjack.RegAlloc.checkClashTree]
  all_goals kernel_rfl
end InitECandidate.Proofs.ClashStages875
