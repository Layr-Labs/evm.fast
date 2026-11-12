import InitECandidate.Solver.MemSafe.Cca.Defs

set_option autoImplicit false

/-!
# Rules for `compute_contract_address` (Cca)

Variants of the block-kit rules (`Mod/Kit.lean`, `Fq/Kit.lean`) whose value hypotheses also see
`K ≤ heapEnd`, the entry mark step, sub-range blocks and the argument lemmas of the callees.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Cca
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Mod

variable {σ : Type} {X : Ctx 64}

/-- The high-water mark is below the heap end. -/
theorem heapEnd_of_heap {a : Act σ} {Γ : Gam} {p : Ptrs} {s : State σ} (hh : Heap a Γ p s)
    {K : Nat} (hK : K ≤ p.hp) : K ≤ heapEnd := by
  have := heap_ord hh
  unfold Ptrs.Ordered at this
  omega

/-- **A sub-range of a block above the entry allocation** is writable and in the footprint. -/
theorem blk_sub {a : Act σ} (hgrow : a.sg.grows = false) (hord0 : a.p0.Ordered)
    (hL0 : Layout a.C a.p0 a.Γ0) {Γ : Gam} {p : Ptrs} {s : State σ} (hh : Heap a Γ p s)
    {q n b m : Nat} (hq8 : q % 8 = 0) (hlo : a.p0.hp ≤ q) (hhi : q + n ≤ p.hp) (h1 : q ≤ b)
    (h2 : b + m ≤ q + n) (C : Cfg) :
    BufOK C Γ p b m ∧ ∀ x : BitVec 64, Overlap b m x → a.Foot x := by
  obtain ⟨hbuf, hfree⟩ := bufOK_blk (C := C) hgrow hord0 hL0 hh hq8 hlo (n := n) hhi
  have ov : ∀ x : BitVec 64, Overlap b m x → Overlap q n x := by
    rintro x ⟨h8, h3, h4⟩
    exact ⟨h8, by omega, by omega⟩
  exact ⟨fun x hx => hbuf x (ov x hx), fun x hx => Or.inr (Or.inr (Or.inl (hfree x (ov x hx))))⟩

/-! ## Rules -/

/-- `var rn = f(args); k` (as `hoareG_decCallK`, the value hypothesis sees `K ≤ heapEnd`). -/
theorem hoareG_decCallK' {a : Act σ} (ha : ActOK a X) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64} {sg' : Sig}
    {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True))
    {R' : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf' : FunSpec σ X f R') (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgrf : sg'.grows = false)
    {K : Nat} {MK : BitVec 64} {L : LocalsH → Prop} {L' : BitVec 64 → LocalsH → Prop}
    {Fct : BitVec 64 → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s → K ≤ p.hp →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
          ∀ s' : State σ, Pre vs s' Γ)
    (hret : ∀ s : State σ, L s.locals → K ≤ heapEnd → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ),
      R' vs (callEntryStateHOLFinite s callee) (.returned v) st →
      shapeEqHOL (shapeOfHOLExact v) sh = true → ∃ w, v = .val (.word w) ∧ Fct w)
    (hL' : ∀ (s st : State σ) (w : BitVec 64), L s.locals →
      L' w (setVarHOLFinite rn (.val (.word w)) { st with locals := s.locals }).locals)
    (hk : ∀ w, Fct w → HoareG σ X (PK a K MK (L' w)) k (HQa a)) :
    HoareG σ X (PK a K MK L) (.decCall rn sh f args k) (HQa a) := by
  refine hoareG_decCall (FunSpec.and hf hf') ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee v st ⟨hR, hR'⟩ _ hsh
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', hmo, hnf, -⟩ := heap_callK ha hh hR (by simp [Good])
      (by simp [Abortive]) hA (hP _) hF hgw hgrf
    obtain ⟨w, rfl, hFw⟩ := hret s hL (heapEnd_of_heap hh hK) vs hvs callee v st hR' hsh
    refine hoareG_conseq (hk w hFw) (fun t _ ht => ?_) (fun r t _ _ hq => hqa_locals ha.hH _ hq)
    subst ht
    exact ⟨hL' s st w hL, Γ', q', ext_trans he he',
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh', Nat.le_trans hK hmo.1,
      winK_after ha hh' hmo hnf hw⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee r st ⟨hR, _⟩ _ habn r' hr' hna
    cases hr'
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callK ha hh hR (abn_good' habn) hna hA (hP _) hF hgw hgrf
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH rfl rfl rfl rfl hh'⟩

/-- `x = f(args);` (as `hoareG_callAK`, the value hypothesis sees `K ≤ heapEnd`). -/
theorem hoareG_callAK' {a : Act σ} (ha : ActOK a X) {f x : MlS}
    {args : List (ExpHOL 64)} {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True))
    {R' : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hf' : FunSpec σ X f R') (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgrf : sg'.grows = false)
    {K : Nat} {MK : BitVec 64} {L L' : LocalsH → Prop}
    (hargs : ∀ s : State σ, InCtx s X → L s.locals → ∀ Γ p, Ext a.Γ0 Γ → Heap a Γ p s → K ≤ p.hp →
      ∀ vs, evs s args = some vs →
        ArgsOK a.Cb Γ p sg'.params vs ∧ (∀ y, ArgCells sg'.params vs y → a.Foot y) ∧
          ∀ s' : State σ, Pre vs s' Γ)
    (h : ∀ s : State σ, L s.locals → K ≤ heapEnd → ∀ vs, evs s args = some vs →
      ∀ callee v (st : State σ),
      R' vs (callEntryStateHOLFinite s callee) (.returned v) st →
      isValidValueHOLExact s.toExact .local x v = true → L' (setVarHOLFinite x v s).locals) :
    HoareG σ X (PK a K MK L) (callTo x f args) (SPK a K MK L') := by
  unfold callTo
  refine hoareG_callA (FunSpec.and hf hf') ?_ ?_
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee v st ⟨hR, hR'⟩ _ hval
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', hmo, hnf, -⟩ := heap_callK ha hh hR (by simp [Good])
      (by simp [Abortive]) hA (hP _) hF hgw hgrf
    have hh2 := heap_congr (s := st) ha.hH (t := setKvarHOLFinite .local x v { st with locals := s.locals }) rfl rfl rfl rfl hh'
    exact ⟨fun _ => ⟨h s hL (heapEnd_of_heap hh hK) vs hvs callee v st hR' hval, Γ', q',
      ext_trans he he', hh2, Nat.le_trans hK hmo.1, winK_after ha hh' hmo hnf hw⟩,
      fun r' h => absurd h (by simp)⟩
  · intro s hs ⟨hL, Γ, p, he, hh, hK, hw⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨(fun h => absurd h (by simp)), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨(Mod.abn_nb habn).1, (Mod.abn_nb habn).2, fun hna => ?_⟩
    obtain ⟨hA, hF, hP⟩ := hargs s hs hL Γ p he hh hK vs hvs
    obtain ⟨Γ', q', he', hh', -⟩ := heap_callK ha hh hR (abn_good' habn) hna hA (hP _) hF hgw hgrf
    exact ⟨Γ', q', ext_trans he he', heap_congr (s := st) ha.hH (t := emptyLocalsHOLFinite st)
      rfl rfl rfl rfl hh'⟩

/-! ## The entry mark -/

/-- **`var mark = heap_mark(); k`** from the entry state (`K = a.p0.hp`). -/
theorem hoareG_markE {a : Act σ} (ha : ActOK a X) (hh : Heap a a.Γ0 a.p0 a.s0)
    (hMk : MarkSpec' σ X (nm "heap_mark") gHeap) {L : LocalsH → Prop}
    {L' : BitVec 64 → LocalsH → Prop} {k : ProgHOL 64} (hL0 : L a.s0.locals)
    (hL' : ∀ (s st : State σ) (w : BitVec 64), L s.locals →
      L' w (setVarHOLFinite (nm "mark") (.val (.word w)) { st with locals := s.locals }).locals)
    (hk : ∀ w : BitVec 64, w.toNat = a.p0.hp → HoareG σ X (PK a a.p0.hp w (L' w)) k (HQa a)) :
    HoareG σ X (fun t => t = a.s0) (.decCall (nm "mark") .one (nm "heap_mark") [] k) (HQa a) := by
  refine hoareG_decCall (FunSpec.and hMk (funSpec_be' (nm "heap_mark"))) ?_ ?_
  · intro s hs hP vs hvs callee v st ⟨hR, hbe⟩ hctx hsh
    subst hP
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    obtain ⟨hm, hg, hv⟩ := hR (by simp [Good]) hvs0
    obtain ⟨w, hgw, hwp⟩ := gword_get hh.2.1 Region.heap
    have hv' := mark_val_word (hv v rfl) hgw
    subst hv'
    have hd : st.memaddrs = a.s0.memaddrs := hctx.2.1.trans hs.2.1.symm
    have hh1 := heap_congr (s := a.s0) ha.hH hm hg hd hbe hh
    have hwp' : w.toNat = a.p0.hp := hwp
    refine hoareG_conseq (hk w hwp') (fun t _ ht => ?_)
      (fun r t _ _ hq => hqa_locals ha.hH _ hq)
    subst ht
    exact ⟨hL' a.s0 st w hL0, a.Γ0, a.p0, ext_refl _,
      heap_congr (s := st) ha.hH rfl rfl rfl rfl hh1, le_rfl,
      (win_new hh hwp).2.2⟩
  · intro s hs hP vs hvs callee r st ⟨hR, hbe⟩ hctx habn r' hr' hna
    subst hP
    cases hr'
    have hvs0 : vs = [] := by
      simp only [evs, evalListHOLExact, Option.some.injEq] at hvs; exact hvs.symm
    have hg0 : Good (some r) := by
      rcases habn with ⟨e, v, rfl⟩ | ⟨e, rfl⟩ <;> simp [Good]
    obtain ⟨hm, hg, -⟩ := hR hg0 hvs0
    have hd : st.memaddrs = a.s0.memaddrs := hctx.2.1.trans hs.2.1.symm
    exact ⟨a.Γ0, a.p0, ext_refl _, heap_congr (s := a.s0) (t := emptyLocalsHOLFinite st) ha.hH hm hg hd hbe hh⟩

end InitECandidate.Solver.MemSafe.Cca

#print axioms InitECandidate.Solver.MemSafe.Cca.blk_sub
#print axioms InitECandidate.Solver.MemSafe.Cca.hoareG_decCallK'
#print axioms InitECandidate.Solver.MemSafe.Cca.hoareG_callAK'
#print axioms InitECandidate.Solver.MemSafe.Cca.hoareG_markE
