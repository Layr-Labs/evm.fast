import InitECandidate.Solver.MemSafe.RlpCost.Read
import InitECandidate.Solver.Band.Rules
import InitECandidate.Solver.Spec.Rlp
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Header
variable {σ : Type}
def tail (kind : Nat) : ProgHOL 64 :=
  .seq (failIf (.cmp .notLower (cw 55) (lv (nm "n"))) 5)
    (.seq (failIf (.cmp .lower (.op .sub [.op .sub [lv (nm "len"),cw 1],lv (nm "ll")]) (lv (nm "n"))) 3)
      (.return (.rstruct [.op .add [cw 1,lv (nm "ll")],lv (nm "n"),cw kind])))
theorem tail_cost (kind : Nat) : Cost σ guestCtx (tail kind) 2 :=
  CryptoCost.Analyzer.cost_guest_costA (by cbv)
def LP (P LL : BitVec 64) (s : State σ) : Prop :=
  s.locals.lookup (nm "p") = some (.val (.word P)) ∧
  s.locals.lookup (nm "ll") = some (.val (.word LL))
theorem call_cost (P LL : BitVec 64) (kind : Nat) (hLL : LL.toNat ≤ 8) :
    Inv.CostP σ guestCtx (LP P LL)
      (.decCall (nm "n") .one (nm "rlp_read_length") [.op .add [lv (nm "p"),cw 1],lv (nm "ll")] (tail kind)) 13 := by
  refine InitECandidate.Solver.Band.costP_decCall InitECandidate.Solver.MemSafe.RlpCost.Read.callee_cost ?_
    (funSpec_true _) (fun _ _ _ _ _ _ _ _ _ _ _ => Inv.costP_of_cost (tail_cost kind))
  intro s hs hp vs hvs callee
  have he : evs s [.op .add [lv (nm "p"),cw 1],lv (nm "ll")] =
      some [.val (.word (P+1)),.val (.word LL)] :=
    evs_cons (ev_add2 (ev_lw hp.1) (ev_cw _ 1)) (evs_cons (ev_lw hp.2) evs_nil)
  rw [he] at hvs
  cases hvs
  exact ⟨P+1,LL,rfl,hLL⟩

theorem long_cost (P L B : BitVec 64) (base kind : Nat)
    (hLL : (B-BitVec.ofNat 64 base).toNat ≤ 8) :
    Inv.CostP σ guestCtx (HInvB P L B) (hdrLong base kind) 14 := by
  let LL := B-BitVec.ofNat 64 base
  have hg : Cost σ guestCtx (failIf (lenLt (lv (nm "ll"))) 3) 1 :=
    CryptoCost.Analyzer.cost_guest_costA (by cbv)
  have kp : Keeps σ (nm "p") (failIf (lenLt (lv (nm "ll"))) 3) := keepsB_sound _ _ (by cbv)
  have kl : Keeps σ (nm "ll") (failIf (lenLt (lv (nm "ll"))) 3) := keepsB_sound _ _ (by cbv)
  have hrest := Inv.costP_seq (R := LP P LL) (P := LP P LL) (Inv.costP_of_cost hg)
    (by
      intro s hs hp ht hr
      change (evaluateHOLFiniteState s _).2.locals.lookup (nm "p") = some (.val (.word P)) ∧
        (evaluateHOLFiniteState s _).2.locals.lookup (nm "ll") = some (.val (.word LL))
      rw [kp s (Or.inl hr),kl s (Or.inl hr)]
      exact hp)
    (call_cost P LL kind hLL)
  unfold hdrLong
  refine Inv.costP_dec fun s hs hp v hv hsh => ?_
  rw [ev_sub_b hp base hv]
  exact hrest.pre (fun t ht heq => by
    subst t
    refine ⟨?_,lk_set_self _ _ _⟩
    rw [lk_set_ne _ _ (by decide)]
    exact hp.1.1)
#print axioms call_cost
#print axioms long_cost
end InitECandidate.Solver.MemSafe.RlpCost.Header
