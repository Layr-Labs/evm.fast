import InitECandidate.Solver.MemSafe.RlpCost.HeaderDispatch
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Unchecked
variable {σ : Type}
def LLPre (P LL : BitVec 64) (ll : MlS) (s : State σ) : Prop :=
  s.locals.lookup (nm "p") = some (.val (.word P)) ∧ s.locals.lookup ll = some (.val (.word LL))
theorem call_cost (P LL : BitVec 64) (ll n : MlS) (hLL : LL.toNat ≤ 8) :
    Inv.CostP σ guestCtx (LLPre P LL ll)
      (.decCall n .one (nm "rlp_read_length") [.op .add [lv (nm "p"),cw 1],lv ll] (ituLong ll n)) 11 := by
  refine InitECandidate.Solver.Band.costP_decCall InitECandidate.Solver.MemSafe.RlpCost.Read.callee_cost ?_
    (funSpec_true _) (fun _ _ _ _ _ _ _ _ _ _ _ => Inv.costP_of_cost (cost_return _))
  intro s hs hp vs hvs callee
  have he : evs s [.op .add [lv (nm "p"),cw 1],lv ll] = some [.val (.word (P+1)),.val (.word LL)] :=
    evs_cons (ev_add2 (ev_lw hp.1) (ev_cw _ 1)) (evs_cons (ev_lw hp.2) evs_nil)
  rw [he] at hvs
  cases hvs
  exact ⟨P+1,LL,rfl,hLL⟩

theorem long_cost (P B : BitVec 64) (M : InitECandidate.Solver.MemSafe.Mem) (be : Bool) (base : Nat) (ll n : MlS)
    (hll : ll ≠ nm "p") (hLL : (B-BitVec.ofNat 64 base).toNat ≤ 8) :
    Inv.CostP σ guestCtx (UB P B M be)
      (.dec ll .one (.op .sub [lv (nm "b"),cw base])
        (.decCall n .one (nm "rlp_read_length") [.op .add [lv (nm "p"),cw 1],lv ll] (ituLong ll n))) 11 := by
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  rw [ev_sub2 (ev_lw hp.2.1) (ev_cw s base)] at hv
  cases hv
  exact (call_cost P (B-BitVec.ofNat 64 base) ll n hLL).pre (fun t ht heq => by
    subst t
    refine ⟨?_,lk_set_self _ _ _⟩
    rw [lk_set_ne _ _ hll]
    exact hp.1)
#print axioms call_cost
#print axioms long_cost
end InitECandidate.Solver.MemSafe.RlpCost.Unchecked
