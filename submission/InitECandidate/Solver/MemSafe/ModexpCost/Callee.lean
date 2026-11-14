import InitECandidate.Solver.MemSafe.ModexpCost.Lookup
import InitECandidate.Solver.MemSafe.ModexpCost.Keep
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ModexpCost
variable {σ : Type}
def ArgPre (vs : List (ValueHOL 64)) (_ : PanSemStateFiniteExact 64 σ) : Prop :=
 ∃ N : BitVec 64, vs[3]? = some (.val (.word N)) ∧ N.toNat ≤ 1024

theorem callee_cost {B : Nat}
 (hb : Inv.CostP σ guestCtx (InitECandidate.Solver.MemSafe.ModexpCost.Keep.Bound (nm "elen") 1024) Mod.mxBody B) :
 Inv.CalleeCostP σ guestCtx (nm "modexp") ArgPre B := by
 intro vs bd cl rs hl s hs hp hg
 change lookupCodeHOLFinite guestCode (nm "modexp") vs = some (bd,cl,rs) at hl
 obtain ⟨rfl,A,BP,C,D,E,F,G,rfl,hd⟩ := lookup hl
 obtain ⟨hloc,N,hN,hle⟩ := hp
 have he : D = .val (.word N) := by simpa using hN
 apply hb s hs ?_ hg
 refine ⟨N,?_,hle⟩
 rw [hloc,hd,he]

theorem call_pre {s : PanSemStateFiniteExact 64 σ} {vs : List (ValueHOL 64)}
 (hp : InitECandidate.Solver.MemSafe.ModexpCost.Keep.Bound (nm "elen") 1024 s)
 (hvs : evs s [lv (nm "bp"),lv (nm "blen"),lv (nm "ep"),lv (nm "elen"),
  lv (nm "mp"),lv (nm "mlen"),lv (nm "out")] = some vs)
 (t : PanSemStateFiniteExact 64 σ) : ArgPre vs t := by
 obtain ⟨N,hN,hle⟩ := hp
 obtain ⟨A,vs1,rfl,hA,h1⟩ := evs_cons_inv hvs
 obtain ⟨B,vs2,rfl,hB,h2⟩ := evs_cons_inv h1
 obtain ⟨C,vs3,rfl,hC,h3⟩ := evs_cons_inv h2
 obtain ⟨D,vs4,rfl,hD,h4⟩ := evs_cons_inv h3
 rw [ev_lw hN] at hD
 cases hD
 exact ⟨N,rfl,hle⟩
#print axioms callee_cost
#print axioms call_pre
end InitECandidate.Solver.MemSafe.ModexpCost
