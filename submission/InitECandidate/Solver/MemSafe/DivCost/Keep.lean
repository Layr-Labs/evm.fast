import InitECandidate.Solver.MemSafe.DivCost.Call
import InitECandidate.Solver.SourceCost.Checkers
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.DivCost.Keep
variable {σ : Type} {X : Ctx 64}
def Bound (x : MlS) (M : Nat) (s : PanSemStateFiniteExact 64 σ) : Prop :=
 ∃ N : BitVec 64, s.locals.lookup x = some (.val (.word N)) ∧ N.toNat ≤ M
theorem seq {x : MlS} {M Ba Bb : Nat} {a b : ProgHOL 64}
 (ha : Inv.CostP σ X (Bound x M) a Ba) (hk : Keeps σ x a)
 (hb : Inv.CostP σ X (Bound x M) b Bb) :
 Inv.CostP σ X (Bound x M) (.seq a b) (Ba+Bb) := by
 apply Inv.costP_seq ha ?_ hb
 intro s hs hp ht hn
 obtain ⟨N,hN,hle⟩ := hp
 exact ⟨N,(hk s (Or.inl hn)).trans hN,hle⟩
theorem dec {x n : MlS} {M B : Nat} {sh : ShapeHOL} {e : ExpHOL 64} {body : ProgHOL 64}
 (hne : x ≠ n) (hb : Inv.CostP σ X (Bound x M) body B) :
 Inv.CostP σ X (Bound x M) (.dec n sh e body) B := by
 refine Inv.costP_dec fun s hs hp v hv hshape => ?_
 apply hb.pre
 intro t ht he
 subst t
 obtain ⟨N,hN,hle⟩ := hp
 refine ⟨N,?_,hle⟩
 rw [lk_set_ne _ _ (Ne.symm hne)]
 exact hN
theorem decCall {x rn f : MlS} {M Bf Bk : Nat} {sh : ShapeHOL} {args : List (ExpHOL 64)} {k : ProgHOL 64}
 (hne : x ≠ rn) (hf : CalleeCost σ X f Bf) (hk : Inv.CostP σ X (Bound x M) k Bk) :
 Inv.CostP σ X (Bound x M) (.decCall rn sh f args k) (1+Bf+Bk) := by
 refine InitECandidate.Solver.MemSafe.DivCost.Call.costP_decCallS hf (funSpec_true f) ?_
 intro s hs hp vs hvs callee v st hr hst hshape
 apply hk.pre
 intro t ht he
 subst t
 obtain ⟨N,hN,hle⟩ := hp
 refine ⟨N,?_,hle⟩
 rw [lk_set_ne _ _ (Ne.symm hne)]
 exact hN
theorem ite {x : MlS} {M Ba Bb : Nat} {c : ExpHOL 64} {a b : ProgHOL 64}
 (ha : Inv.CostP σ X (Bound x M) a Ba) (hb : Inv.CostP σ X (Bound x M) b Bb) :
 Inv.CostP σ X (Bound x M) (.ite c a b) (max Ba Bb) := by
 exact Inv.costP_ite (ha.pre fun _ _ h => h.1) (hb.pre fun _ _ h => h.1)
#print axioms seq
#print axioms dec
#print axioms decCall
#print axioms ite
end InitECandidate.Solver.MemSafe.DivCost.Keep
