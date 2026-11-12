import InitECandidate.Solver.MemSafe.Wg.Wd2

/-!
# Wg: the steps `state_fresh_tx();`, `incorporate_tx_into_block();`, `return 0;` of a walk with the frame facts
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- A return ends in a run of the walk that still holds the frame facts. -/
def RetW (E : EbE σ) (Dout : BitVec 64 → Prop) : Option (PanSemResultExact 64) → State σ → Prop :=
  fun r t => ∀ v, r = some (.returned v) → ∃ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ t p ∧
    HoldsAll E.p0 Γ p t (FrS E.Γ0 E.s0 Dout)

theorem retW_locIns (E : EbE σ) (Dout : BitVec 64 → Prop) : LocIns (RetW E Dout) := by
  intro r t l c h v hv
  obtain ⟨Γ, p, hr, hL⟩ := h v hv
  exact ⟨Γ, p, ebRun_loc hr l c, holdsAll_loc hL l c⟩

section steps
variable {E : EbE σ} {En : Env} {S : FS} {Z : List MlS} {Dout : BitVec 64 → Prop}

theorem hn_ret0W (hfr : ∀ f, FrS E.Γ0 E.s0 Dout f → S f) :
    Hoare σ guestCtx (PA E En S) (.return (cw 0)) (RetW E Dout) := by
  refine hoare_return ?_
  intro s hs hpa v hv
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  intro v' hv'
  cases hv'
  exact ⟨Γ, p, ebRun_loc hr _ s.clock, holdsAll_loc (holdsAll_mono hL hfr) _ s.clock⟩

/-- `state_fresh_tx();`: afterwards `ts` is a `tTS` object. -/
theorem hn_sftW (hP : HypSft σ) (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hT : Tidy Z S) (hz : ∀ g ∈ Z, ¬ (sftW.contains g = true)) :
    HN (PA E En S) (callD (nm "state_fresh_tx") [])
      (fun t => ∃ w : BitVec 64, PA E En (fun f => S f ∨ f = Fct.gobj (nm "ts") w tTS) t) := by
  refine hn_pre (hn_callRk2 (E := E) (En := En) (S := S) (Sk := S) (f := nm "state_fresh_tx") (args := [])
    (W := fun g' => sftW.contains g' = true) hP (gwk_sft (by decide)) (fun x hx => hx)
    (fun w f => f = Fct.gobj (nm "ts") w tTS)
    ⟨fun _ _ _ _ _ _ _ _ _ hC => hC, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩ ?_)
    (fun s _ hh => pa_hpart hK hE0 hS hh)
  intro s vs callee v st Γ Γ' p p' hr hL hstp hq
  obtain ⟨w, hw, o, ho, hb, ht⟩ := hq
  exact ⟨w, fun f hf => by subst hf; exact ⟨hw, o, ho, hb, ht⟩⟩

/-- `incorporate_tx_into_block();`: from the six block-state globals and `ts`; the kept facts `Sk` name none of `pucW`. -/
theorem hn_incorpW (hgs : Bal.HGS σ) {Sk : FS} {w : BitVec 64} (hT : Tidy Z Sk)
    (hz : ∀ g ∈ Z, ¬ (pucW.contains g = true)) (hbal : BalS Sk) :
    HN (PA E En (WdS1 Sk w)) (callD (nm "incorporate_tx_into_block") []) (PA E En Sk) := by
  refine hn_post (hn_callR2 (E := E) (En := En) (S := WdS1 Sk w) (Sk := Sk) (f := nm "incorporate_tx_into_block")
    (args := []) (W := fun g' => pucW.contains g' = true) (α := Unit) (cr_incorporate hgs)
    (gwk_wg (by decide)) (fun x hx => Or.inl hx) (fun _ _ => False)
    ⟨?_, fun _ _ _ _ _ _ _ _ _ _ _ _ _ h => h, (tidy_gmiss hT hz).1, (tidy_gmiss hT hz).2⟩ ?_)
    (fun t _ ⟨_, hh⟩ => pa_mono hh (fun _ _ h => h) (fun f hf => Or.inl hf))
  · intro s hs vs hvs callee Γ p hr hL
    rw [evs_nil] at hvs
    cases hvs
    have hLe := holdsAll_loc hL callee (s.clock - 1)
    obtain ⟨⟨w1, h1⟩, ⟨w2, h2⟩, ⟨w3, h3⟩, ⟨w4, h4⟩, ⟨w5, h5⟩, ⟨w6, h6⟩⟩ := hbal
    refine ⟨⟨rfl, fun i pt v hpt => by simp [Bal.biSig] at hpt⟩, rfl, ?_⟩
    have g1 := hLe _ (Or.inl h1)
    have g2 := hLe _ (Or.inl h2)
    have g3 := hLe _ (Or.inl h3)
    have g4 := hLe _ (Or.inl h4)
    have g5 := hLe _ (Or.inl h5)
    have g6 := hLe _ (Or.inl h6)
    have gt := hLe _ (Or.inr (rfl : Fct.gobj (nm "ts") w tTS = Fct.gobj (nm "ts") w tTS))
    exact ⟨⟨w1, g1.1, g1.2⟩, ⟨w, gt.1, gt.2⟩, ⟨w2, g2.1, g2.2⟩, ⟨w3, g3.1, g3.2⟩, ⟨w4, g4.1, g4.2⟩,
      ⟨w5, g5.1, g5.2⟩, ⟨w6, g6.1, g6.2⟩⟩
  · intro s vs callee v st Γ Γ' p p' hr hL hstp hq
    exact ⟨(), fun f hf => hf.elim⟩

end steps

end InitECandidate.Solver.MemSafe.Wg
