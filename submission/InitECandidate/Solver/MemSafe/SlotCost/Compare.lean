import InitECandidate.Solver.MemSafe.ConstCost.Core
import InitECandidate.Solver.MemSafe.InitCost.Bound
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Inv
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SlotCost.Compare
variable {σ : Type}
def full := (declPair Guest.Software.guestFn_bal_sort_gt).2.2
def pre : ProgHOL 64 := match full with | .seq p _ => p | _ => .skip
def choose : ProgHOL 64 := match full with | .seq _ (.dec _ _ _ (.seq p _)) => p | _ => .skip
def loop : ProgHOL 64 := match full with | .seq _ (.dec _ _ _ (.seq _ (.dec _ _ _ (.seq p _)))) => p | _ => .skip
def body : ProgHOL 64 := match loop with | .while _ b => b | _ => .skip
def tail : ProgHOL 64 := .return (.const 0)
def small (s : PanSemStateFiniteExact 64 σ) : Prop :=
 ∃ v : BitVec 64, s.locals.lookup (nm "len") = some (.val (.word v)) ∧ v.toNat ≤ 32
lemma pre_cost : Cost σ guestCtx pre 0 := ConstCost.Core.cost_guest_costA (by cbv)
lemma choose_cost : Cost σ guestCtx choose 0 := ConstCost.Core.cost_guest_costA (by cbv)
lemma body_cost : Cost σ guestCtx body 0 := ConstCost.Core.cost_guest_costA (by cbv)
lemma tail_cost : Cost σ guestCtx tail 0 := cost_return _
lemma small_clk (s : PanSemStateFiniteExact 64 σ) (h : small s) : small (decClockHOLFinite s) := h
lemma choose_small : Hoare σ guestCtx small choose (fun _ t => small t) := by
 have he : choose = .ite (.cmp .equal (.var .local (nm "kind")) (.const 2)) (.assign .local (nm "len") (.const 32)) .skip := by cbv
 rw [he]
 apply InitECandidate.Solver.Spec.hoare_ite
 · apply InitECandidate.Solver.Spec.hoare_assign
   intro s hs hp v hv hvalid
   change some (.val (.word (32 : BitVec 64))) = some v at hv
   cases hv
   exact ⟨32,lookup_update_self _ _ _,by decide⟩
 · exact InitECandidate.Solver.Spec.hoare_skip (fun _ _ h => h.1)
lemma loop_cost : Inv.CostP σ guestCtx (fun s => small s ∧ InitBound.CounterAtMost (nm "k") 32 s) loop 33 := by
 have he : loop = .while (.cmp .less (.var .local (nm "k")) (.var .local (nm "len"))) body := by cbv
 rw [he]
 have hk : Keeps σ (nm "len") body := keepsB_sound _ _ (by decide +kernel)
 have hi : Hoare σ guestCtx (fun s => small s ∧ CondTrue s (.cmp .less (.var .local (nm "k")) (.var .local (nm "len")))) body (fun r t => r = none → small t) := by
   intro s hs hp ht hn
   obtain ⟨v,hv,hv32⟩ := hp.1
   exact ⟨v,(hk s (Or.inl hn)).trans hv,hv32⟩
 exact InitBound.costP_while_bounded_guard (by decide) small_clk (Inv.costP_of_cost body_cost) hi
   (noContB_sound _ (by decide +kernel)) (stepsB_sound _ true _ (by decide +kernel))
   (fun s hs hp => hp)
lemma body_bound : Cost σ guestCtx full 33 := by
 apply Inv.cost_of_costP_true
 have he : full = .seq pre (.dec (nm "len") .one (.const 20)
   (.seq choose (.dec (nm "k") .one (.const 0) (.seq loop tail)))) := by cbv
 rw [he]
 have ht : Inv.CostP σ guestCtx (fun _ => True) tail 0 := Inv.costP_of_cost tail_cost
 have hloop : Inv.CostP σ guestCtx (fun s => small s ∧ InitBound.CounterAtMost (nm "k") 32 s) (.seq loop tail) 33 :=
   Inv.costP_seq loop_cost (fun _ _ _ _ _ => trivial) ht
 have hk : Inv.CostP σ guestCtx small (.dec (nm "k") .one (.const 0) (.seq loop tail)) 33 := by
   apply Inv.costP_dec
   intro s hs hp v hv hsh
   change some (.val (.word (0 : BitVec 64))) = some v at hv
   cases hv
   apply hloop.pre
   intro t ht heq
   subst t
   obtain ⟨w,hw,hw32⟩ := hp
   refine ⟨⟨w,?_,hw32⟩,0,lookup_update_self _ _ _,by decide⟩
   simpa [setVarHOLFinite,FUPDATE,show nm "k" ≠ nm "len" by decide] using hw
 have hc : Inv.CostP σ guestCtx small (.seq choose (.dec (nm "k") .one (.const 0) (.seq loop tail))) 33 :=
   Inv.costP_seq (Inv.costP_of_cost choose_cost) (fun s hs hp ht _ => choose_small s hs hp ht) hk
 have hl : Inv.CostP σ guestCtx (fun _ => True) (.dec (nm "len") .one (.const 20)
   (.seq choose (.dec (nm "k") .one (.const 0) (.seq loop tail)))) 33 := by
   apply Inv.costP_dec
   intro s hs hp v hv hsh
   change some (.val (.word (20 : BitVec 64))) = some v at hv
   cases hv
   exact hc.pre (fun t ht heq => by subst t; exact ⟨20,lookup_update_self _ _ _,by decide⟩)
 exact Inv.costP_seq (Inv.costP_of_cost pre_cost) (fun _ _ _ _ _ => trivial) hl
theorem callee_bound : CalleeCost σ guestCtx (nm "bal_sort_gt") 33 := by
 have hc : ∃ rs, guestCode (nm "bal_sort_gt") = some ((declPair Guest.Software.guestFn_bal_sort_gt).2.1,full,rs) :=
   declPair_valid (List.getElem_mem (n := 429) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact ConstCost.Core.callee_of_body hc body_bound
#print axioms body_bound
#print axioms callee_bound
end InitECandidate.Solver.MemSafe.SlotCost.Compare
