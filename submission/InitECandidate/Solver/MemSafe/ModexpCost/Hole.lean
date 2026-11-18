import InitECandidate.Solver.MemSafe.ModexpCost.Tail
import InitECandidate.Solver.MemSafe.ModexpCost.Keep
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ModexpCost
variable {σ : Type} {X : Ctx 64}
def hole : ProgHOL 64 := .decCall (nm "t") .one (nm "be_top_bit") [lv (nm "ep"),lv (nm "elen")] Mod.mxT
theorem hole_cost {Bt Bi Bn Bc Be : Nat} (hC : X.code.lookup = guestCode)
 (ht : CalleeCost σ X (nm "be_top_bit") Bt)
 (hi : Cost σ X rest Bi) (hn : Cost σ X neg Bn) (hc : Cost σ X copy Bc)
 (he : Cost σ X Mod.mxEnd Be) :
 Inv.CostP σ X (InitECandidate.Solver.MemSafe.ModexpCost.Keep.Bound (nm "elen") 1024) hole
  (1+Bt+(max Bn (Bc+8257*(Bi+1))+Be)) := by
 unfold hole
 refine InitECandidate.Solver.MemSafe.ModexpCost.Call.costP_decCallS ht (InitECandidate.Solver.MemSafe.ModexpCost.TopBit.funSpec_be_top_bit hC) ?_
 intro s hs hp vs hvs callee v st hR hst hshape
 obtain ⟨N,hN,hle⟩ := hp
 obtain ⟨AP,vs1,rfl,hAP,h1⟩ := evs_cons_inv hvs
 obtain ⟨AN,vs2,rfl,hAN,h2⟩ := evs_cons_inv h1
 have heq : vs2 = [] := by
  change some [] = some vs2 at h2
  exact Option.some.inj h2.symm
 subst vs2
 rw [ev_lw hN] at hAN
 cases hAN
 obtain ⟨T,rfl,hT⟩ := hR AP N rfl hle _ rfl
 apply (tail_cost hi hn hc he).pre
 intro t hctx heq
 subst t
 exact ⟨T,lk_set_self _ _ _,hT⟩
#print axioms hole_cost
end InitECandidate.Solver.MemSafe.ModexpCost
