import InitECandidate.Solver.Improvements.AcceptedExactWhileCost
import InitECandidate.Solver.MemSafe.PtC.K3

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.PtC
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Ptx

private theorem deletionBodyPrice_eq : Wg.costFin ptS179 = some deletionBodyPrice := by
  decide_cbv

/-- The typed count at loop entry is also the signed guard's upper limit.
    The body preserves the limit, advances the index without wraparound, and
    costs at most the analyzer's unconditional body price. -/
theorem costP_deletionLoop {σ : Type} {K : TlCtx σ} {ref : BitVec 64 → BitVec 64}
    {Z : BitVec 64 → Prop} {O : List Obj} {En : Env} {d dw : BitVec 64}
    (hF : DelPreF K d) (hdw : dw.toNat = Inv.CNT K.E.s0.memory d)
    (hdel : En (nm "del") = some (.val (.word d)))
    (hdcap : En (nm "dcap") = some (.val (.word dw)))
    (hs : En (nm "s") = none) :
    Inv.CostP σ guestCtx (PAg (TL K.A ref Z O) (En.set (nm "i") (.val (.word 0))))
      ptS178 (cbd ptS178) := by
  rw [cbdDeletionLoop]
  unfold ptS178 deletionLoopPrice
  let P (x : BitVec 64) := PAg (TL K.A ref Z O) (En.set (nm "i") (.val (.word x)))
  let I (s : State σ) := ∃ x, x.toNat ≤ dw.toNat ∧ P x s
  let μ (s : State σ) := match s.locals.lookup (nm "i") with
    | some (.val (.word x)) => dw.toNat - x.toNat
    | _ => 0
  have hB := bloc_tl K.A ref Z (O := O)
  have hcnt : dw.toNat ≤ 2 ^ 32 := hdw ▸ hF.cnt
  have hdc (x : BitVec 64) :
      (En.set (nm "i") (.val (.word x))) (nm "dcap") = some (.val (.word dw)) := by
    rw [env_set_ne _ _ (by decide)]
    exact hdcap
  have hindex (x : BitVec 64) (s : State σ) (hp : P x s) :
      s.locals.lookup (nm "i") = some (.val (.word x)) :=
    hp.2 _ _ (env_set_self _ _ _)
  have hmeasure (x : BitVec 64) (s : State σ) (hp : P x s) :
      μ s = dw.toNat - x.toNat := by
    simp only [μ, hindex x s hp]
  have hguard (x : BitVec 64) (s : State σ) (hx : x.toNat ≤ dw.toNat) (hp : P x s)
      (hc : CondTrue s (.cmp .less (lv (nm "i")) (lv (nm "dcap")))) :
      x.toNat < dw.toNat := by
    exact cond_lt_gen (evI_lv (hindex x s hp)) (evI_lv (hp.2 _ _ (hdc x)))
      (by omega) (by omega) hc
  have hnext (x : BitVec 64) (hx : x.toNat < dw.toNat) :
      (x + BitVec.ofNat 64 1).toNat = x.toNat + 1 := bv_succ (by omega)
  have hbody (x : BitVec 64) (hx : x.toNat < dw.toNat) :
      HN (P x) ptS179 (P (x + BitVec.ofNat 64 1)) :=
    hn_delBody hF (hdw ▸ hx) hdel hs
  refine Inv.CostP.pre (P := I)
    (AcceptedExactWhileCost.costP_while_exact (I := I) μ (2 ^ 32)
      (fun s ⟨x, hx, hp⟩ => ⟨x, hx, pag_decClock hB hp⟩)
      (fun _ => rfl) (Inv.costP_of_cost (Wg.cost_guest_costA deletionBodyPrice_eq)) ?_ ?_ ?_ ?_)
    (fun s _ hp => ⟨0, Nat.zero_le _, hp⟩)
  · intro s hctx ⟨⟨x, hx, hp⟩, hc⟩ ht hexit
    have hlt := hguard x s hx hp hc
    obtain ⟨hr, hp'⟩ := hbody x hlt s hctx hp ht
    exact ⟨x + BitVec.ofNat 64 1, by rw [hnext x hlt]; omega, hp'⟩
  · intro s _ ⟨x, _, hp⟩ _
    rw [hmeasure x s hp]
    exact (Nat.sub_le _ _).trans hcnt
  · intro s _ ⟨x, hx, hp⟩ hc
    have hlt := hguard x s hx hp hc
    rw [hmeasure x s hp]
    omega
  · intro k s hctx ⟨⟨x, hx, hp⟩, hc, hk⟩ ht hexit
    have hlt := hguard x s hx hp hc
    obtain ⟨hr, hp'⟩ := hbody x hlt s hctx hp ht
    rw [hmeasure x s hp] at hk
    rw [hmeasure _ _ hp', hnext x hlt]
    omega

#print axioms costP_deletionLoop

end InitECandidate.Solver.MemSafe.PtC
