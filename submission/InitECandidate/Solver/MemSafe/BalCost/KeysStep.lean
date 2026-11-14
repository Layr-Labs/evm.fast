import InitECandidate.Solver.MemSafe.BalCost.KeysFacts
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.BalEnc
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Aw
open InitECandidate.Solver.MemSafe.BalCost.Loop InitECandidate.Solver.MemSafe.BalCost.Suffix
namespace InitECandidate.Solver.MemSafe.BalCost.Phase2
variable {σ : Type}
def keysStep : ProgHOL 64 :=
  .decCall cAddrs (.comb [.one, .one]) keysName [gE "bal_accounts"] afterKeys

theorem keysStep_cost {a : AwE σ} (hK : AwOK a) (hc : CsE a)
    (hgw : a.gw = []) (hBA : Bal.BalNN a.s0 a.Γ0) :
    Inv.CostP σ guestCtx (AwInv a) keysStep (1 + keysB + afterKeysBound 10485759) := by
  unfold keysStep
  refine InitECandidate.Solver.Band.costP_decCall (Pre := fun _ _ => True)
    (Inv.calleeCostP_of_calleeCost (Pre := fun _ _ => True) keys_cost)
    (by intros; trivial)
    (asp_htab_keysM hK hc (th := tHTd20) (M := 24)
      (by decide) (by decide) (by decide) (by decide)) ?_
  intro s hs hp vs hvs callee v st hR hctx hsh
  have hpre : ∃ T : BitVec 64, vs = [.val (.word T)] ∧ Fits a.Γ0 (.ptr tHTd20) T ∧
      (callEntryStateHOLFinite s callee).memaddrs = guestCtx.memaddrs := by
    obtain ⟨v1, rfl, e1⟩ := Mpt.Leaves.evs_one_inv hvs
    obtain ⟨T, rfl, hT⟩ := ba_fits hc hBA hp hgw e1
    exact ⟨T, rfl, hT, hs.2.1⟩
  have hr := (hR (awInv_entry hK hp callee) hpre v rfl).2
  obtain ⟨O, N, rfl, hN⟩ := keys_count hK hr
  apply (afterKeys_cost (σ := σ) (C := N) (M := 10485759) (by decide) hN).pre
  intro t ht heq
  subst t
  simp [CountEq, countE, ev, evalHOLExact, setVarHOLFinite, FUPDATE]


#print axioms keysStep_cost
end InitECandidate.Solver.MemSafe.BalCost.Phase2
