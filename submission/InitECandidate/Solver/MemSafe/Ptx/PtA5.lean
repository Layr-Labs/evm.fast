import InitECandidate.Solver.MemSafe.Ptx.PtA4

/-!
# F3d: calls with all-`any` parameters, and `hdecCallC2` (a table call with an extra value spec)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem ptRun_mono {D : BitVec 64 → Option (BitVec 64)} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {Γ : Gam} {u : State σ}
    {p : Ptrs} (h : PtRun D Γ0 s0 p0 Γ u p) : p0.Mono p := h.2.2.1

theorem argsOK_anys {ps : List MemSafe.PT} {vs : List (ValueHOL 64)} {Γ : Gam} {p : Ptrs} (hps : ∀ pt ∈ ps, pt = .any)
    (hlen : ps.length = vs.length) : ArgsOK guestC Γ p ps vs := by
  refine ⟨hlen, fun i pt v hpt _ => ?_⟩
  have := hps pt (List.mem_of_getElem? hpt)
  subst this; trivial

theorem not_argCells_anys {ps : List MemSafe.PT} {vs : List (ValueHOL 64)} (hps : ∀ pt ∈ ps, pt = .any) {a : BitVec 64} :
    ¬ ArgCells ps vs a := by
  rintro ⟨i, w, -, h⟩
  rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, x, hj, -⟩
  · have := hps _ (List.mem_of_getElem? hn); cases this
  · have := hps _ (List.mem_of_getElem? hj); cases this

theorem callOK_any {E : PtE σ} {En : Env} {S : FS} {f : MlS} {sg : Sig} {cs : List Cap} {args : List (ExpHOL 64)}
    (hcs : CsOK cs) (hps : ∀ pt ∈ sg.params, pt = .any) (hgw : sg.gw = []) (hfin : ptAllNames.contains f = true)
    (hlen : ∀ s : State σ, PA E En S s → ∀ vs, evs s args = some vs → sg.params.length = vs.length)
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false) : CallOK E En S f sg cs args where
  csok := hcs
  gw := by rw [hgw]; simp
  jo := by rw [JrOut, hgw]; intro g _ h; simp at h
  jn := by rw [hgw]; intro g h; simp at h
  fin := hfin
  argsok := fun s hs vs hvs D Γ p _ _ => argsOK_anys hps (hlen s hs vs hvs)
  memok := fun s hs vs hvs g _ a _ => not_argCells_anys hps
  globok := hGl

/-- `hdecCallC` with a second value spec `R2` of the callee, handed to the continuation's facts. -/
theorem hdecCallC2 {E : PtE σ} {En : Env} {S : FS} {f : MlS} {sg : Sig} {cs : List Cap}
    {args : List (ExpHOL 64)} {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64}
    {QT : Option (PanSemResultExact 64) → State σ → Prop} (hQT : ResIns rn QT)
    (hf : CSumm σ guestCtx guestC (HR σ) f sg cs) (h : CallOK E En S f sg cs args)
    {R2 : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf2 : FunSpec σ guestCtx f R2) (NF : ValueHOL 64 → FS)
    (hq : ∀ (s : State σ) (vs : List (ValueHOL 64)) (callee : Locs) (v : ValueHOL 64) (st : State σ)
      (D : BitVec 64 → Option (BitVec 64)) (Γ Γ' : Gam) (p p' : Ptrs),
      PA E En S s → evs s args = some vs →
      PtRun D E.Γ0 E.s0 E.p0 Γ s p → HoldsAll E.p0 Γ p s S →
      StepD Γ p s Γ' p' { st with locals := s.locals } →
      PtRun D E.Γ0 E.s0 E.p0 Γ' { st with locals := s.locals } p' →
      SumCore guestC (HR σ) sg (fun a => ProtCell guestC Γ a ∧ CapPW cs (callEntryStateHOLFinite s callee) Γ a)
        Γ (callEntryStateHOLFinite s callee) vs (.returned v) st Γ' p p' →
      R2 vs (callEntryStateHOLFinite s callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoldsAll E.p0 Γ' p' { st with locals := s.locals } (NF v))
    (hk : ∀ v, shapeEqHOL (shapeOfHOLExact v) sh = true →
      Hoare σ guestCtx (PA E (En.set rn v) (fun g => S g ∨ NF v g)) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn sh f args k) QT := by
  refine hdecCallK hQT (((sumSpecA_relX hf).and (funSpec_pt_gw_all guestCtx_code h.fin)).and hf2) ?_
  intro s hs hpa vs hvs callee v st ⟨⟨hR, hgl⟩, hR2⟩ hst hsh
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
  obtain ⟨Γ', p', hc, hrun, hstep, hL', -⟩ :=
    call_core hR hgl h.gw h.jo h.jn (fun _ _ Γ a hw => capPW_st h.csok.st hw) hr hL
      (h.argsok s hpa vs hvs D Γ p hr hL) (preC callee h.csok hr) (h.memok s hpa vs hvs) h.globok
  have hN := hq s vs callee v st D Γ Γ' p p' hpa hvs hr hL hstep hrun hc hR2 hsh
  refine hoare_pre (hk v hsh) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨D, Γ', p', ptRun_set hrun rn _, hD, ?_⟩, lke_set (lke_restore hlk) rn v⟩
  intro g hg
  rcases hg with hg | hg
  · exact (holdsAll_loc hL' _ _) g hg |> fun x => by cases g <;> exact x
  · have := hN g hg
    cases g <;> first | exact this | simpa [Fct.holds, gword, rd] using this

theorem evs_single {s : State σ} {e : ExpHOL 64} {vs : List (ValueHOL 64)} (h : evs s [e] = some vs) :
    ∃ v, vs = [v] ∧ ev s e = some v := by
  obtain ⟨v, vs', rfl, hv, h'⟩ := Spec.evs_cons_inv h
  have : vs' = [] := by
    have h0 : evs s ([] : List (ExpHOL 64)) = some [] := Spec.evs_nil
    rw [h0] at h'; exact (Option.some.inj h').symm
  subst this
  exact ⟨v, rfl, hv⟩

theorem tab_alloc_ok : ptAllNames.contains (nm "alloc") = true := by decide_cbv

theorem fresh_anchor {p0 p p' : Ptrs} {a : BitVec 64} (hm : p0.Mono p) (h : Fresh p p' a) : Fresh p0 p' a := by
  obtain ⟨m1, m2, m3⟩ := hm
  unfold Fresh at *
  omega

theorem freshBuf_anchor {Γ : Gam} {p0 p p' : Ptrs} {w : BitVec 64} {N : Nat} (hm : p0.Mono p)
    (h : FreshBuf Γ p p' w N) : FreshBuf Γ p0 p' w N :=
  ⟨h.1, fun a ha => ⟨fresh_anchor hm (h.2 a ha).1, (h.2 a ha).2⟩⟩

theorem pa_prop {E : PtE σ} {En : Env} {S : FS} {u : State σ} (h : PA E En S u) {P : Prop}
    (hP : S (Fct.prop P)) : P := by
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, -⟩ := h
  exact hL _ hP

/-- **`var rn = alloc(e); k`**: a fresh heap block of `n` bytes (not yet a `Γ` object). -/
theorem hdecAllocF {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rn : MlS} (hQT : ResIns rn QT) {e : ExpHOL 64} {n : BitVec 64} {k : ProgHOL 64}
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hGl : ∀ g ty, S (Fct.gobj g ty) → cW.contains g = false)
    (hk : ∀ w : BitVec 64,
      Hoare σ guestCtx (PA E (En.set rn (.val (.word w)))
        (addF S [Fct.fbuf w n.toNat,
          Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + n.toNat ≤ heapEnd)])) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn .one (nm "alloc") [e] k) QT := by
  refine hdecCallC2 hQT tab_alloc
    (callOK_any csOK_nil (by simp) rfl tab_alloc_ok ?_ hGl) (allocSpec_alloc guestCtx_code)
    (fun v => fun f => ∃ w, v = .val (.word w) ∧ (f = Fct.fbuf w n.toNat ∨
          f = Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + n.toNat ≤ heapEnd))) ?_ ?_
  · intro s hs vs hvs
    obtain ⟨v, rfl, -⟩ := evs_single hvs
    rfl
  · intro s vs callee v st D Γ Γ' p p' hpa hvs hr hL hstep hrun hc hR2 hsh
    obtain ⟨v0, rfl, hv0⟩ := evs_single hvs
    have hn := he s hpa v0 hv0
    subst hn
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    have hret := hc.2.2.2.2.2.2.2.2.2 _ rfl 0 (RT.freshArg 0 1 0) w rfl (by simp [flattenHOL])
    obtain ⟨x, hx, hfb⟩ := hret
    simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
    subst hx
    rw [Nat.one_mul, Nat.add_zero] at hfb
    have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans (ptRun_ptrs hr)
    obtain ⟨-, -, p'', hp'', hord'', -, hq⟩ := hR2 (by simp [Good]) n p rfl hpe (ptRun_ord hr)
    obtain ⟨q, hqo, -, hlive, -⟩ := hq _ rfl
    have hpp : p'' = p' := Option.some.inj (hp''.symm.trans (hc.2.1))
    subst hpp
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hqo
    subst hqo
    obtain ⟨hl1, hl2⟩ := hlive
    have hhp := hord''.2.1
    intro f ⟨w', hw', hf⟩
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
    subst hw'
    rcases hf with rfl | rfl
    · exact freshBuf_anchor (ptRun_mono hr) hfb
    · exact ⟨hfb.1, hl1, by omega⟩
  · intro v hsh
    obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
    refine hoare_pre (hk w) fun t _ ht => pa_mono ht (fun x v h => h) ?_
    intro f hf
    rcases hf with hf | hf
    · exact Or.inl hf
    · simp only [List.mem_cons, List.not_mem_nil, or_false] at hf
      rcases hf with hf | hf
      · exact Or.inr ⟨w, rfl, Or.inl hf⟩
      · exact Or.inr ⟨w, rfl, Or.inr hf⟩

end InitECandidate.Solver.MemSafe.Ptx
