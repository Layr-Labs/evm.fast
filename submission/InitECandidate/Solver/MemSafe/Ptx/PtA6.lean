import InitECandidate.Solver.MemSafe.Ptx.PtA5

/-!
# F3d: `var rn = alloc(e); k` with the block adopted at once as a plain object (`hdecAllocA`)
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

/-- An object byte lies in an aligned cell of the same object. -/
theorem inObj_align {Γ : Gam} {p : Ptrs} (hL : Layout guestC p Γ) {b : Nat} (h : InObj Γ b) :
    InObj Γ (b - b % 8) := by
  obtain ⟨o, ho, h1, h2⟩ := h
  have := hL.1 o ho
  obtain ⟨a1, a2, -⟩ := this
  have e : o.hi = o.lo + o.size := rfl
  exact ⟨o, ho, by omega, by omega⟩

/-- A fresh block of the heap allocation: every byte of it is fresh and outside `Γ`. -/
theorem fresh_bytes {Γ : Gam} {p p' : Ptrs} {w : BitVec 64} {N : Nat} (hL : Layout guestC p' Γ)
    (hfb : FreshBuf Γ p p' w N) (hN : 0 < N) (hb : heapBase ≤ w.toNat)
    (he : w.toNat + N ≤ heapEnd) (hlive : w.toNat + N ≤ p'.hp) (ho : p'.Ordered) (hop : p.Ordered) :
    ∀ a : Nat, w.toNat ≤ a → a < w.toNat + N → p.hp ≤ a ∧ a < p'.hp ∧ ¬ InObj Γ a := by
  have hw8 := hfb.1
  obtain ⟨hf, -⟩ := hfb.2 w ⟨hw8, by omega, by omega⟩
  obtain ⟨o1, o2, o3, o4, o5, o6, o7, o8⟩ := ho
  obtain ⟨q1, q2, q3, q4, q5, q6, q7, q8⟩ := hop
  have hp : p.hp ≤ w.toNat := by
    unfold Fresh at hf
    unfold heapEnd at he
    omega
  intro a h1 h2
  refine ⟨by omega, by omega, fun hin => ?_⟩
  have hal := inObj_align hL hin
  have hlt : a - a % 8 < 2 ^ 64 := by unfold heapEnd at he; omega
  have hnat : (BitVec.ofNat 64 (a - a % 8)).toNat = a - a % 8 := by
    rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt hlt
  obtain ⟨-, hn⟩ := hfb.2 (BitVec.ofNat 64 (a - a % 8)) ⟨by rw [hnat]; omega, by rw [hnat]; omega, by rw [hnat]; omega⟩
  rw [hnat] at hn
  exact hn hal

/-- **`var rn = alloc(e); k`, the block adopted at once as an object of the plain type `ty`.** -/
theorem hdecAllocA {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rn : MlS} (hQT : ResIns rn QT) {e : ExpHOL 64} {n : BitVec 64} {k : ProgHOL 64} {ty : Nat}
    (he : ∀ s : State σ, PA E En S s → EvI s e (.val (.word n)))
    (hGl : ∀ g ty', S (Fct.gobj g ty') → cW.contains g = false ∧ g ≠ gHeap)
    (hplain : Plain ty) (htag : guestC.tags.lookup ty = none) (hreg : (guestC.ty ty).region = .heap)
    (hslot : ∀ j, (guestC.ty ty).slot j = .scalar) (hmin : (guestC.ty ty).minSz ≤ n.toNat)
    (hn8 : n.toNat % 8 = 0) (hnpos : 0 < n.toNat)
    (hk : ∀ w : BitVec 64,
      Hoare σ guestCtx (PA E (En.set rn (.val (.word w)))
        (addF S [Fct.obj w ty n.toNat, Fct.bufok0 w n.toNat,
          Fct.prop (w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + n.toNat ≤ heapEnd)])) k QT) :
    Hoare σ guestCtx (PA E En S) (.decCall rn .one (nm "alloc") [e] k) QT := by
  have hcok : ∀ s : State σ, PA E En S s → ∀ vs, evs s [e] = some vs → (⟨[.any], [.freshArg 0 1 0], [], false⟩ : Sig).params.length = vs.length := by
    intro s hs vs hvs
    obtain ⟨v, rfl, -⟩ := evs_single hvs
    rfl
  have hok := callOK_any (E := E) (En := En) (S := S) (f := nm "alloc") (args := [e]) (cs := []) csOK_nil
    (by simp) rfl tab_alloc_ok hcok (fun g ty' h => (hGl g ty' h).1)
  refine hdecCallK hQT (((sumSpecA_relX tab_alloc).and (funSpec_pt_gw_all guestCtx_code tab_alloc_ok)).and
    (allocSpec_alloc guestCtx_code)) ?_
  intro s hs hpa vs hvs callee v st ⟨⟨hR, hgl⟩, hR2⟩ hst hsh
  obtain ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩ := hpa
  have hpa : PA E En S s := ⟨⟨D, Γ, p, hr, hD, hL⟩, hlk⟩
  obtain ⟨Γ', p', hc, hrun, hstep, hL', -⟩ :=
    call_core hR hgl hok.gw hok.jo hok.jn (fun _ _ Γ a hw => capPW_st hok.csok.st hw) hr hL
      (hok.argsok s hpa vs hvs D Γ p hr hL) (preC callee hok.csok hr) (hok.memok s hpa vs hvs) hok.globok
  obtain ⟨v0, rfl, hv0⟩ := evs_single hvs
  have hn := he s hpa v0 hv0
  subst hn
  obtain ⟨w, rfl⟩ := val_of_shapeEq_one' hsh
  have hret := hc.2.2.2.2.2.2.2.2.2 _ rfl 0 (RT.freshArg 0 1 0) w rfl (by simp [flattenHOL])
  obtain ⟨x0, hx, hfb⟩ := hret
  simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hx
  subst hx
  rw [Nat.one_mul, Nat.add_zero] at hfb
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (ptrsOf_congr rfl).trans (ptRun_ptrs hr)
  obtain ⟨hmem, hgl2, p'', hp'', hord'', -, hq⟩ := hR2 (by simp [Good]) n p rfl hpe (ptRun_ord hr)
  obtain ⟨q, hqo, -, hlive, -⟩ := hq _ rfl
  have hpp : p' = p'' := (Option.some.inj (hp''.symm.trans (hc.2.1))).symm
  subst hpp
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hqo
  subst hqo
  simp only [Region.Live] at hlive
  obtain ⟨hl1, hl2⟩ := hlive
  have hord' := ordered_of_G hstep.hG' hstep.hp'
  have hhp := hord''.2.1
  have hheapE : w.toNat + n.toNat ≤ heapEnd := by omega
  obtain ⟨q0, hq0, -, hLay0, -⟩ := hstep.hG'
  have hqq : q0 = p' := Option.some.inj (hq0.symm.trans hstep.hp')
  rw [hqq] at hLay0
  have hLay := hLay0
  have hbytes := fresh_bytes hLay hfb hnpos hl1 hheapE hl2 hord'' (ptRun_ord hr)
  have hw8 := hfb.1
  let x : Obj := ⟨w, ty, n.toNat⟩
  have hxlo : x.lo = w.toNat := rfl
  have hxhi : x.hi = w.toNat + n.toNat := rfl
  have hGx : G guestC (HR σ) (Γ' ++ [x]) { st with locals := s.locals } :=
    g_adopt_plain hstep.hG' hstep.hp' (x := x) hplain htag hw8 hn8 hmin hnpos
      (by show (guestC.ty ty).region.Live p' w.toNat n.toNat
          rw [hreg]; exact ⟨hl1, hl2⟩)
      (fun a ha => by
        obtain ⟨h1, h2⟩ := ha
        rw [hxlo] at h1; rw [hxhi] at h2
        exact (hbytes a.toNat h1 h2).2.2)
      (fun j hj => by rw [hslot]; trivial)
  have hfr : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh p p' a := fun a h1 h2 => by
    rw [hxlo] at h1; rw [hxhi] at h2
    exact Or.inl ⟨(hbytes a.toNat h1 h2).1, (hbytes a.toNat h1 h2).2.1⟩
  have hfr0 : ∀ a : BitVec 64, x.lo ≤ a.toNat → a.toNat < x.hi → Fresh E.p0 p' a :=
    fun a h1 h2 => fresh_anchor (ptRun_mono hr) (hfr a h1 h2)
  have hstepx : StepD Γ p s (Γ' ++ [x]) p' { st with locals := s.locals } := by
    refine ⟨hstep.hp, hstep.hp', hstep.mono, ext_trans hstep.ext (ext_append Γ' x), ?_, hstep.hG, hGx⟩
    intro o ho a h1 h2
    rcases List.mem_append.mp ho with ho | ho
    · exact hstep.nf o ho a h1 h2
    · simp only [List.mem_singleton] at ho
      subst ho
      exact Or.inr (hfr a h1 h2)
  have hmemk : ∀ f, S f → ∀ a, f.reads a → ({ st with locals := s.locals } : State σ).memory a = s.memory a := by
    intro f hf a ha
    show st.memory a = s.memory a
    rw [hmem]; rfl
  have hglk : ∀ g ty', S (Fct.gobj g ty') → gword { st with locals := s.locals } g = gword s g := by
    intro g ty' hg
    have := hgl2 g (hGl g ty' hg).2
    unfold gword
    show (match st.globals.lookup g with | some (ValueHOL.val (HolWordLab.word w)) => some w | x => none) = (match s.globals.lookup g with | some (ValueHOL.val (HolWordLab.word w)) => some w | x => none)
    rw [this]; rfl
  have hL2 : HoldsAll E.p0 (Γ' ++ [x]) p' { st with locals := s.locals } S :=
    holds_step hstepx (ptRun_ord0 hr) hmemk hglk hL
  have hrunx := ptRun_adopt hrun hGx hfr0
  have hxmem : x ∈ Γ' ++ [x] := List.mem_append_right _ (List.mem_singleton.mpr rfl)
  have hb64 : heapEnd < 2 ^ 64 := by unfold heapEnd; norm_num
  refine hoare_pre (hk w) ?_
  intro t _ ht
  subst ht
  refine ⟨⟨D, Γ' ++ [x], p', ptRun_set hrunx rn _, hD, ?_⟩, lke_set (lke_restore hlk) rn _⟩
  intro f hf
  rcases hf with hf | hf
  · have := hL2 f hf
    cases f <;> first | exact this | simpa [Fct.holds, gword, rd] using this
  simp only [List.mem_cons, List.not_mem_nil, or_false] at hf
  rcases hf with rfl | rfl | rfl
  · exact ⟨x, hxmem, rfl, rfl, le_refl _⟩
  · refine ⟨?_, fun y hy => Or.inl ⟨x, hxmem, ?_, ?_⟩⟩
    · intro a ha
      refine Or.inl ⟨x, hxmem, (a.toNat - w.toNat) / 8, ?_, hslot _, ?_⟩
      · unfold Obj.HasSlot
        obtain ⟨h1, h2, h3⟩ := ha
        show 8 * ((a.toNat - w.toNat) / 8) + 8 ≤ n.toNat
        omega
      · obtain ⟨h1, h2, h3⟩ := ha
        apply BitVec.eq_of_toNat_eq
        show a.toNat = (w + BitVec.ofNat 64 (8 * ((a.toNat - w.toNat) / 8))).toNat
        simp only [BitVec.toNat_add, BitVec.toNat_ofNat]
        unfold heapEnd at hheapE
        omega
    · obtain ⟨h1, h2, h3⟩ := hy; rw [hxlo]; omega
    · obtain ⟨h1, h2, h3⟩ := hy; rw [hxhi]; omega
  · exact ⟨hw8, hl1, hheapE⟩

end InitECandidate.Solver.MemSafe.Ptx
