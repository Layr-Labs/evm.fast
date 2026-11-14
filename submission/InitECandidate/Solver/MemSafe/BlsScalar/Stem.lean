import InitECandidate.Solver.MemSafe.ModexpCost.Keep
import InitECandidate.Solver.MemSafe.CryptoCost.Stem
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsScalar.Stem
open CryptoCost.Stem
def ok (x : MlS) : Stem → Bool
 | .hole => true
 | .dec y _ _ s => x != y && ok x s
 | .decCall y _ _ _ s => x != y && ok x s
 | .seq a s => keepsB x a && ok x s
variable {σ : Type} {hole : ProgHOL 64} {Bh M : Nat} {x : MlS}
theorem sound (hHole : Inv.CostP σ guestCtx (ModexpCost.Keep.Bound x M) hole Bh) :
 ∀ s B, CryptoCost.Stem.bound s Bh = some B → ok x s = true →
 Inv.CostP σ guestCtx (ModexpCost.Keep.Bound x M) (splice s hole) B
 | .hole,B,h,hk => by
  simp only [CryptoCost.Stem.bound,Option.some.injEq] at h
  subst B;exact hHole
 | .dec y sh e s,B,h,hk => by
  simp only [ok,Bool.and_eq_true] at hk
  exact ModexpCost.Keep.dec (by simpa using hk.1) (sound hHole s B h hk.2)
 | .decCall y sh f args s,B,h,hk => by
  simp only [ok,Bool.and_eq_true] at hk
  simp only [CryptoCost.Stem.bound] at h
  split at h
  · rename_i bf bk hf hb
    simp only [Option.some.injEq] at h
    subst B
    exact ModexpCost.Keep.decCall (by simpa using hk.1)
     ((Shards.finalState_sound_guest (σ := σ)).1 f bf hf) (sound hHole s bk hb hk.2)
  · simp at h
 | .seq a s,B,h,hk => by
  simp only [ok,Bool.and_eq_true] at hk
  simp only [CryptoCost.Stem.bound] at h
  split at h
  · rename_i ba bk ha hb
    simp only [Option.some.injEq] at h
    subst B
    exact ModexpCost.Keep.seq
     (Inv.costP_of_cost (CryptoCost.Analyzer.cost_guest_costA ha))
     (keepsB_sound x a hk.1) (sound hHole s bk hb hk.2)
  · simp at h
#print axioms sound
end InitECandidate.Solver.MemSafe.BlsScalar.Stem
