import InitECandidate.Solver.MemSafe.Wg.CostBase

/-!
# Wg: cost rules with the walk (loads of arbitrary words, calls with an existential witness)
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

section c1
variable {E : EbE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}

/-- `var n = lds a; body` with cost. -/
theorem cw_dec_ld {n : MlS} {a : ExpHOL 64} {body : ProgHOL 64} {B : Nat} (hQT : ResIns n QT)
    (hk : ∀ w : BitVec 64, CW (PA E (En.set n (.val (.word w))) S) body B QT) :
    CW (PA E En S) (.dec n .one (.load .one a) body) B QT :=
  ⟨Inv.costP_dec fun s hs hP v hv hsh => by
      obtain ⟨d, rfl⟩ := Eb.ev_load_word hv
      exact (hk d).1.pre fun t _ ht => by subst ht; exact pa_set hP n _,
   hdec_ld hQT fun w => (hk w).2⟩

variable {f : MlS} {args : List (ExpHOL 64)}
  {Pre : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop}
  {D : List (ValueHOL 64) → State σ → Gam → BitVec 64 → Prop}
  {Q : List (ValueHOL 64) → State σ → Gam → Ptrs → ValueHOL 64 → State σ → Gam → Ptrs → Prop}
  {W : MlS → Prop} {Bf : Nat} {PreC : List (ValueHOL 64) → State σ → Prop}

theorem cw_decCallRkE {α : Type} {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64} {Bk : Nat}
    (hK : HypKeepG σ) (hE0 : ∀ o ∈ E.Γ0, KeepTy o.ty) (hS : SafeS S)
    (hQT : ResIns rn QT) (hf : CallR f Pre D Q) (hg : GwK (σ := σ) f W) (NF : ValueHOL 64 → α → FS)
    (hc : Inv.CalleeCostP σ guestCtx f PreC Bf)
    (hpre : ∀ s : State σ, InCtx s guestCtx → PAk E En S s → ∀ vs, evs s args = some vs →
      ∀ callee, PreC vs (callEntryStateHOLFinite s callee))
    (h : CallOblK E En S args Pre D W)
    (hnew : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (Γ Γ' : Gam) (p p' : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      Stp Γ p (callEntryStateHOLFinite s callee) Γ' p' st (D vs (callEntryStateHOLFinite s callee) Γ) →
      Q vs (callEntryStateHOLFinite s callee) Γ p v st Γ' p' → shapeEqHOL (shapeOfHOLExact v) sh = true →
      ∃ a, HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF v a))
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true → ∀ a,
      CW (PA E (En.set rn v) (fun g => S g ∨ NF v a g)) k Bk QT) :
    CW (PA E En S) (.decCall rn sh f args k) (1 + Bf + Bk) QT := by
  refine cw_pre (P := PAk E En S) ?_ (fun s _ hh => pa_hpart hK hE0 hS hh)
  refine cw_decCallK hQT (FunSpec.and hf hg) hc hpre ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩ := hpa
  have hpa : PAk E En S s := ⟨⟨Γ, p, hr, hL, hC⟩, hlk⟩
  obtain ⟨Γ', p', hstp, hrun, hL', hq⟩ := call_step hR (fun g hgW => hgl v rfl g hgW) hr hL
    (h.pre s hpa vs hvs callee Γ p hr hL hC) (h.dmiss s hpa vs hvs callee Γ p hr hL) h.gmiss h.gvmiss
  obtain ⟨a, hN⟩ := hnew s vs callee v st Γ Γ' p p' hr hL hstp hq hsh
  refine cw_pre (hk v hsh a) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨Γ', p', ebRun_set hrun rn _, ?_⟩, lke_set (lke_restore hlk) rn v⟩
  intro g hg
  rcases hg with hg | hg
  · have := (holdsAll_loc hL' s.locals st.clock) g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this
  · have := (holdsAll_loc hN s.locals st.clock) g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this

/-- A leaf with an unconditional cost. -/
theorem cw_leaf {P : State σ → Prop} {c : ProgHOL 64} {B : Nat} {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (hc : Cost σ guestCtx c B) (hh : Hoare σ guestCtx P c Q) : CW P c B Q := ⟨Inv.costP_of_cost hc, hh⟩

end c1

end InitECandidate.Solver.MemSafe.Wg
