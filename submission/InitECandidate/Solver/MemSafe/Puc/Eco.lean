import InitECandidate.Solver.MemSafe.Puc.Enter
import InitECandidate.Solver.MemSafe.Sc.EcoFinal

/-!
# Puc U2: `var code = ext_code_of(target)`

`hdecCallQ`: `hdecCallC` for a capability summary with a result post `Q` (here `Calls.EcoQ`: `code.1 + 63 < 2^64`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Puc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Ptx

variable {σ : Type}

/-- `var rn = f(args); k` for a capability summary with a result post `Q`; the facts `NF v` are derived from `Q`. -/
theorem hdecCallQ {E : PtE σ} {En : Env} {S : FS} {f : MlS} {sg : Sig} {cs : List Cap}
    {args : List (ExpHOL 64)} {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {QT : Option (PanSemResultExact 64) → State σ → Prop} {Q : List (ValueHOL 64) → State σ → Gam →
      PanSemResultExact 64 → State σ → Gam → Prop} (hQT : ResIns rn QT)
    (hf : SumSpecA σ guestCtx guestC (HR σ) f sg (fun _ s Γ => ReqOK cs s Γ) (fun _ s Γ a => CapPW cs s Γ a) Q)
    (h : CallOK E En S f sg cs args)
    (NF : ValueHOL 64 → FS)
    (hq : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (D : BitVec 64 → Option (BitVec 64)) (Γ Γ' : Gam) (p p' : Ptrs),
      PtRun D E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      StepD Γ p s Γ' p' { st with locals := s.locals } →
      PtRun D E.Γ0 E.s0 E.p0 Γ' { st with locals := s.locals } p' →
      Q vs (callEntryStateHOLFinite s callee) Γ (.returned v) st Γ' →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF v))
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
      Hoare σ guestCtx (PA E (En.set rn v) (fun g => S g ∨ NF v g)) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn sh f args k) QT := by
  refine hdecCallK hQT ((sumSpecA_relX hf).and (funSpec_pt_gw_all guestCtx_code h.fin)) ?_
  intro s hs hpa vs hvs callee v st ⟨hR, hgl⟩ hst hsh
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
  obtain ⟨Γ', p', hc, hrun, hstep, hL', hQ⟩ :=
    Ptx.call_core hR hgl h.gw h.jo h.jn (fun _ _ Γ a hw => capPW_st h.csok.st hw) hr hL
      (h.argsok s hpa vs hvs D Γ p hr hL) (preC callee h.csok hr) (h.memok s hpa vs hvs) h.globok
  have hN := hq s vs callee v st D Γ Γ' p p' hr hL hstep hrun hQ hsh
  refine hoare_pre (hk v hsh) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨D, Γ', p', ptRun_set hrun rn _, hD, ?_⟩, lke_set (lke_restore hlk) rn v⟩
  intro g hg
  rcases hg with hg | hg
  · exact (holdsAll_loc hL' _ _) g hg |> fun x => by cases g <;> exact x
  · have := hN g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this

theorem eco_fin : ptAllNames.contains (nm "ext_code_of") = true := by decide_cbv

theorem csOK_eoc : CsOK Frames.eocCs := ⟨by decide +kernel, by decide +kernel⟩

theorem evs_one {s : State σ} {e : ExpHOL 64} {vs : List (ValueHOL 64)} (h : evs s [e] = some vs) :
    ∃ v, vs = [v] ∧ ev s e = some v := by
  obtain ⟨v, vs', rfl, h1, h2⟩ := Spec.evs_cons_inv h
  rw [Spec.evs_nil] at h2
  cases h2
  exact ⟨v, rfl, h1⟩

/-- **`var code = ext_code_of(target); k`** for `target` a local with the fact `bufok0 T 20`. -/
theorem hdec_eco {E : PtE σ} {En : Env} {S : FS} {T : BitVec 64} {k : ProgHOL 64}
    {QT : Option (PanSemResultExact 64) → State σ → Prop} (hQT : ResIns (nm "code") QT)
    (hE0 : Calls.EcoHyp σ) (hT : En (nm "target") = some (.val (.word T))) (hb : S (Fct.bufok0 T 20))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hk : ∀ c n : BitVec 64,
      Hoare σ guestCtx (PA E (En.set (nm "code") (wv [c, n])) (fun g => S g ∨ g = Fct.prop (n.toNat + 63 < 2 ^ 64))) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall (nm "code") (.comb [.one, .one]) (nm "ext_code_of") [lv (nm "target")] k) QT := by
  have hok : CallOK E En S (nm "ext_code_of") Frames.eocSg Frames.eocCs [lv (nm "target")] := by
    refine callOK_gen csOK_eoc (by simp [Frames.eocSg]) (by intro g _ h; simp [Frames.eocSg] at h)
      (by intro g h; simp [Frames.eocSg] at h) eco_fin ?_ ?_ ?_ hGl
    · intro s hpa vs hvs D Γ p hr hL
      obtain ⟨v1, rfl, hv1⟩ := evs_one hvs
      have hT' : v1 = .val (.word T) := evI_lv (hpa.2 _ _ hT) v1 hv1
      subst hT'
      refine ⟨rfl, fun i pt v hpt hv => ?_⟩
      rcases i with _ | i
      · simp only [Frames.eocSg, List.getElem?_cons_zero, Option.some.injEq] at hpt hv
        subst hpt; subst hv
        exact ⟨T, rfl, (hL _ hb).1⟩
      · simp [Frames.eocSg] at hpt
    · intro s hpa vs hvs i w n hw hn
      obtain ⟨v1, rfl, hv1⟩ := evs_one hvs
      have hT' : v1 = .val (.word T) := evI_lv (hpa.2 _ _ hT) v1 hv1
      subst hT'
      rcases i with _ | i
      · simp [Frames.eocSg] at hn
        simp [argW, wordOf] at hw
        subst hw; subst hn
        exact ⟨20, hb, le_refl _⟩
      · simp [Frames.eocSg] at hn
    · intro i j c d h
      rcases i with _ | i <;> simp [Frames.eocSg] at h
  refine hdecCallQ hQT hE0 hok (fun v => fun g => ∃ c n, v = wv [c, n] ∧ g = Fct.prop (n.toNat + 63 < 2 ^ 64)) ?_ ?_
  · rintro s vs callee v st D Γ Γ' p p' hr hL hstep hrun hQ hsh g ⟨c, n, rfl, rfl⟩
    exact hQ c n rfl
  · intro v hsh
    obtain ⟨c, n, rfl⟩ := Frames.wv2_of hsh
    refine hoare_pre (hk c n) ?_
    exact fun t _ ht => pa_mono ht (fun x v h => h) (fun f hf => by
      rcases hf with hf | hf
      · exact Or.inl hf
      · exact Or.inr ⟨c, n, rfl, hf⟩)

end InitECandidate.Solver.MemSafe.Puc
