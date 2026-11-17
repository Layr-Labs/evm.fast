import InitECandidate.Solver.Spec.Mpt.Leaves.SliceFns
import InitECandidate.Solver.MemSafe.CryptoCost.Unsigned
import InitECandidate.Solver.MemSafe.CryptoCost.Analyzer
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.Spec.Mpt.Leaves
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.RlpCost.Read
variable {σ : Type}
def CountN (N : BitVec 64) (s : State σ) : Prop := s.locals.lookup (nm "n") = some (.val (.word N))
theorem loop_cost {N : BitVec 64} (hN : N.toNat ≤ 8) :
    Inv.CostP σ guestCtx (CountN N) (.while rrlCond rrlLoopBody) 9 := by
  have hb : Cost σ guestCtx rrlLoopBody 0 := CryptoCost.Analyzer.cost_guest_costA (by cbv)
  have hk : Keeps σ (nm "n") rrlLoopBody := keepsB_sound _ _ (by cbv)
  change Inv.CostP σ guestCtx (CountN N)
    (.while (.cmp .lower (.var .local (nm "i")) (.var .local (nm "n"))) rrlLoopBody) ((8+1)*(0+1))
  refine CryptoCost.Unsigned.bounded (M := 8) (fun s h => h) (Inv.costP_of_cost hb)
    ?_ (noContB_sound _ (by cbv)) (stepsB_sound (nm "i") true _ (by cbv))
    (fun s hs hi => ⟨N,hi,hN⟩)
  intro s hs ⟨hi,hc⟩ ht hr
  change (evaluateHOLFiniteState s rrlLoopBody).2.locals.lookup (nm "n") = some (.val (.word N))
  rw [hk s (Or.inl hr)]
  exact hi

theorem body_cost {N : BitVec 64} (hN : N.toNat ≤ 8) :
    Inv.CostP σ guestCtx (CountN N) rrlBody 10 := by
  have ht : Cost σ guestCtx (.return (lv (nm "v"))) 0 := cost_return _
  have tail := Inv.costP_seq (R := fun _ => True) (loop_cost hN)
    (fun _ _ _ _ _ => trivial) (Inv.costP_of_cost ht)
  have hi : Inv.CostP σ guestCtx (CountN N)
      (.dec (nm "i") .one (cw 0) (.seq (.while rrlCond rrlLoopBody) (.return (lv (nm "v"))))) 9 := by
    refine Inv.costP_dec fun s hs hp v hv hsh => ?_
    exact tail.pre (fun t ht heq => by subst t; simpa (config := { decide := true }) [CountN,setVarHOLFinite,FUPDATE] using hp)
  have hv : Inv.CostP σ guestCtx (CountN N)
      (.dec (nm "v") .one (cw 0) (.dec (nm "i") .one (cw 0)
        (.seq (.while rrlCond rrlLoopBody) (.return (lv (nm "v")))))) 9 := by
    refine Inv.costP_dec fun s hs hp v hv hsh => ?_
    exact hi.pre (fun t ht heq => by subst t; simpa (config := { decide := true }) [CountN,setVarHOLFinite,FUPDATE] using hp)
  have hg : Cost σ guestCtx (.ite rrlGuard (callD (nm "rlp_fail") [cw 2]) .skip) 1 :=
    CryptoCost.Analyzer.cost_guest_costA (by cbv)
  have hk : Keeps σ (nm "n") (.ite rrlGuard (callD (nm "rlp_fail") [cw 2]) .skip) :=
    keepsB_sound _ _ (by cbv)
  unfold rrlBody
  refine Inv.costP_seq (R := CountN N) (Inv.costP_of_cost hg) ?_ hv
  intro s hs hp ht hr
  change (evaluateHOLFiniteState s _).2.locals.lookup (nm "n") = some (.val (.word N))
  rw [hk s (Or.inl hr)]
  exact hp

def Pre (vs : List (ValueHOL 64)) (_s : State σ) : Prop :=
  ∃ A N : BitVec 64, vs = [.val (.word A), .val (.word N)] ∧ N.toNat ≤ 8

theorem callee_cost : Inv.CalleeCostP σ guestCtx (nm "rlp_read_length") Pre 10 := by
  intro vs body callee rs hl s hs ⟨hloc,A,N,hvs,hN⟩ hg
  rw [guestCtx_code] at hl
  obtain ⟨rfl,-,A0,N0,rfl,hsA,hsN,hA,hNb⟩ := lookupCode_two code_rlp_read_length (by decide) hl
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl,rfl⟩ := hvs
  exact body_cost hN s hs (by change s.locals.lookup (nm "n") = some (.val (.word N)); rw [hloc]; exact hNb) hg
#print axioms loop_cost
#print axioms body_cost
#print axioms callee_cost
end InitECandidate.Solver.MemSafe.RlpCost.Read
