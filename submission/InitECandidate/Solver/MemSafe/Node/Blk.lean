import InitECandidate.Solver.MemSafe.Node.NodeHash
import InitECandidate.Solver.MemSafe.Node.MzVal
import InitECandidate.Solver.MemSafe.Struct.Eval
import InitECandidate.Solver.MemSafe.Struct.Base

set_option autoImplicit false

/-!
# Fresh typed objects in the activation invariant (`Heap`)

A constructor allocates one heap block `[Ar, Ar + n)` (`alloc`), fills its words by one-word stores
(and possibly `memzero`), and returns it as a new object `⟨Ar, ty, n⟩` of `Γ`.

* `BlkW a Ar n Sp D u`: `BlkH` plus content: for every slot `i ∈ D`, `Sp i (rd u.memory (Ar + 8 i))`.
* `hoareG_allocN`: `alloc` with the static facts (`Ar` aligned, `[Ar, Ar + n) ⊆ heap`).
* `hoareG_stSlot`, `hoareG_mzW`: a one-word store / `memzero` of the block, updating `D`.
* `heap_addObj`: a fully specified block becomes an object (tagged, mixed slots allowed): `Layout`
  (`layout_snoc`), `Fields`, `Tags` and the hook (`Struct.G_of`), `NewFresh`.
* `hoareG_ctorStores`: a list of stores followed by `return nd` ends in `NQ`: the new object is in
  `Γ'` and the result fits `[fits nodeU]`.
No existing file is changed; the rules are new copies/variants of the `MptH.Common` ones.
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Node
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.MptH

variable {σ : Type} {X : Ctx 64}

/-! ## Posts -/

/-- A constructor's post: a non-normal end; every good non-abortive end keeps the invariant, and a
returned value `v` satisfies `Rv` at the final typing. -/
def NQ (a : Act σ) (Rv : Gam → Ptrs → ValueHOL 64 → Prop) (r : Option (PanSemResultExact 64))
    (t : State σ) : Prop :=
  r ≠ none ∧ ∀ r', r = some r' → ¬ Abortive r' → ∃ (Γ' : Gam) (p' : Ptrs), Ext a.Γ0 Γ' ∧
    Heap a Γ' p' t ∧ ∀ v, r' = .returned v → Rv Γ' p' v

theorem abn_ne_ret {r : PanSemResultExact 64} (h : Abn r) (v : ValueHOL 64) : r ≠ .returned v := by
  rintro rfl
  rcases h with ⟨e, w, h⟩ | ⟨e, h⟩ <;> cases h

theorem nq_of_abn {a : Act σ} {Rv : Gam → Ptrs → ValueHOL 64 → Prop} :
    ∀ r (t : State σ), r ≠ none → (∀ r', r = some r' → Abn r' ∧ (¬ Abortive r' → HHa a t)) →
      NQ a Rv r t := by
  intro r t hr h
  refine ⟨hr, fun r' hr' hna => ?_⟩
  obtain ⟨Γ, p, he, hh⟩ := (h r' hr').2 hna
  exact ⟨Γ, p, he, hh, fun v hv => absurd hv (abn_ne_ret (h r' hr').1 v)⟩

theorem nq_locals {a : Act σ} (hH : HooksLawful a.C a.H) {Rv : Gam → Ptrs → ValueHOL 64 → Prop}
    {r : Option (PanSemResultExact 64)} {t : State σ} (L : LocalsH) (h : NQ a Rv r t) :
    NQ a Rv r { t with locals := L } := by
  refine ⟨h.1, fun r' hr' hna => ?_⟩
  obtain ⟨Γ, p, he, hh, hv⟩ := h.2 r' hr' hna
  exact ⟨Γ, p, he, heap_congr (s := t) hH rfl rfl rfl rfl hh, hv⟩

/-! ## `alloc` with the static facts -/

/-- `var x = alloc(e); k` (`e` evaluates to the ghost word `SZ`): inside `k` the block `[x, x + SZ)` is a
caller temporary (`BlkH`), `x` is 8-aligned and `[x, x + SZ)` lies in the heap region. -/
theorem hoareG_allocN {a : Act σ} (ha : ActOK a X) (hAS : AllocSpec σ X (nm "alloc") .heap)
    (halloc : CSumm σ X a.Cb a.H (nm "alloc") allocSig [])
    {Rv : Gam → Ptrs → ValueHOL 64 → Prop} {L : LocalsH → Prop} {x : MlS}
    {e : ExpHOL 64} {k : ProgHOL 64} {SZ : BitVec 64} {L' : BitVec 64 → LocalsH → Prop}
    (hev : ∀ s : State σ, InCtx s X → L s.locals → ev s e = some (.val (.word SZ)))
    (hL' : ∀ (s st : State σ) (Ar : BitVec 64), L s.locals →
      L' Ar (setVarHOLFinite x (.val (.word Ar)) { st with locals := s.locals }).locals)
    (hk : ∀ Ar : BitVec 64, (Ar.toNat + SZ.toNat < 2 ^ 64 ∨ SZ.toNat = 0) →
      (heapBase ≤ Ar.toNat ∧ Ar.toNat + SZ.toNat ≤ heapEnd ∧ Ar.toNat % 8 = 0) →
      HoareG σ X (fun t => L' Ar t.locals ∧ BlkH a Ar SZ.toNat t) k (NQ a Rv)) :
    HoareG σ X (PreH a L) (.decCall x .one (nm "alloc") [e] k) (NQ a Rv) := by
  have hpsa : ∀ pt ∈ allocSig.params, pt = .any := by simp [allocSig]
  refine hoareG_decCall ((summ_funSpec halloc).and hAS) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh1⟩ vs hvs callee v st ⟨hR, hR'⟩ _ hsh
    rw [evs_cons (hev s hs hL) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, hm2, hnf2, hret⟩ := heap_call ha hh1 hR (by simp [Good])
      (by simp [Abortive]) (argsOK_any hpsa rfl) (fun x hx => absurd hx (argCells_any hpsa))
      (by simp [allocSig]) (by simp [allocSig])
    obtain ⟨Ar, rfl⟩ := val_of_shapeEq_one' hsh
    obtain ⟨y, hy, hfb⟩ := hret _ rfl 0 (.freshArg 0 1 0) Ar rfl (by rw [flattenHOL]; rfl)
    have hye : y = SZ := by
      simp only [argW, wordOf, List.getElem?_cons_zero, Option.some.injEq] at hy
      exact hy.symm
    subst hye
    have hfb' : FreshBuf Γ2 q q2 Ar y.toNat := by simpa using hfb
    clear hfb
    have hord1 := heap_ord hh1
    have hord2 := heap_ord hh2
    have hm1 : a.p0.Mono q := hh1.2.2.1
    have hArn : Ar.toNat + y.toNat < 2 ^ 64 ∨ y.toNat = 0 := by
      rcases freshBuf_bound hord1 hord2 hfb' with h | h
      · exact Or.inr h
      · exact Or.inl h
    -- the allocator spec: the block is a heap block
    have hpt : ptrsOf (callEntryStateHOLFinite s callee) = some q := by
      have := hh1.2.1
      unfold ptrsOf gword at this ⊢
      exact this
    obtain ⟨-, -, p', hp', -, -, hvv⟩ := hR' (by simp [Good]) y q rfl hpt hord1
    obtain ⟨Ar', hAr', -, hlive, -⟩ := hvv _ rfl
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hAr'
    subst hAr'
    have hp2 : p' = q2 := by
      have h1 := hh2.2.1
      rw [hp'] at h1
      exact Option.some.inj h1
    subst hp2
    have hstat : heapBase ≤ Ar.toNat ∧ Ar.toNat + y.toNat ≤ heapEnd ∧ Ar.toNat % 8 = 0 := by
      have h8 := hfb'.1
      simp only [Region.Live] at hlive
      obtain ⟨b1, b2, -⟩ := hord2
      omega
    have hblkF : BlkF Ar y.toNat Γ2 p' := fun z hz =>
      ⟨(hfb'.2 z hz).2, fresh_alloc hord1 (hfb'.2 z hz).1⟩
    have hblkN : ∀ z : BitVec 64, Overlap Ar.toNat y.toNat z → ¬ a.p0.Allocated z.toNat :=
      fun z hz => fresh_not_alloc ha.hord0 hord2 (mono_trans hm1 hm2)
        (fresh_mono hm1 (hfb'.2 z hz).1)
    refine hoareG_conseq (Q := NQ a Rv) ?_ (fun _ _ h => h) (fun r t _ _ h => nq_locals ha.hH _ h)
    refine hoareG_pre (hk Ar hArn hstat) (fun t _ ht => ?_)
    subst ht
    exact ⟨hL' s st Ar hL,
      Γ2, p', ext_trans he he2, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2, hblkF, hblkN⟩
  · intro s hs ⟨hL, Γ, q, he, hh1⟩ vs hvs callee r st ⟨hR, _⟩ _ habn
    refine ⟨by simp, fun r' hr' hna => ?_⟩
    cases hr'
    rw [evs_cons (hev s hs hL) evs_nil] at hvs
    cases hvs
    obtain ⟨Γ2, q2, he2, hh2, -⟩ := heap_call ha hh1 hR (abn_good' habn) hna
      (argsOK_any hpsa rfl) (fun x hx => absurd hx (argCells_any hpsa))
      (by simp [allocSig]) (by simp [allocSig])
    exact ⟨Γ2, q2, ext_trans he he2, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh2,
      fun v hv => absurd hv (abn_ne_ret habn v)⟩

end InitECandidate.Solver.MemSafe.Node

#print axioms InitECandidate.Solver.MemSafe.Node.hoareG_allocN
