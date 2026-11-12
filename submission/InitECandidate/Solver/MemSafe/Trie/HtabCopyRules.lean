import InitECandidate.Solver.MemSafe.Trie.HtabCopyAux
import InitECandidate.Solver.MemSafe.Dn.Kit5
import InitECandidate.Solver.MemSafe.Dn.Kit6
import InitECandidate.Solver.MemSafe.Dn.Resolve2
import InitECandidate.Solver.MemSafe.Trie.Lift

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# `htab_copy`: statement rules

* `gp_decK`: `var x = e; k` where `e` evaluates to a known constant.
* `gp_callFM`: `gp_callF` whose post also sees `q.Mono q'`.
* `AllocRel`, `alloc_fblk`: the post of `var b = alloc(Z)` as a fresh block.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

section rules
variable {a : Act σ} {L L1 L2 L3 : LocalsH → Prop} {E E1 E' : Gam → Ptrs → Mem → Prop}
  {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop}

/-- `var x = e; k` where `e` evaluates to the constant `W`. -/
theorem gp_decK (hH : HooksLawful a.C a.H) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64} {W : BitVec 64}
    {body : ProgHOL 64}
    (hv : ∀ (s : State σ) Γ q, InCtx s X → L s.locals → Heap a Γ q s → E Γ q s.memory → ∀ v,
      ev s e = some v → v = .val (.word W))
    (hL1 : ∀ s : State σ, InCtx s X → L s.locals → L1 (setVarHOLFinite x (.val (.word W)) s).locals)
    (hk : HoareG σ X (GI a L1 E) body (GP a L2 E' Rv))
    (hres : ∀ m0 m : LocalsH, L m0 → L2 m → L3 (m.resVarEq (x, m0.lookup x))) :
    HoareG σ X (GI a L E) (.dec x sh e body) (GP a L3 E' Rv) := by
  refine hoareG_dec fun s hs ⟨hL, Γ, q, he, hh, hsc, hEs⟩ v hv' _ => ?_
  have hvW := hv s Γ q hs hL hh hEs v hv'
  subst hvW
  refine hoareG_conseq hk (fun t _ ht => ?_) (fun r t _ _ hq => ?_)
  · subst ht
    exact ⟨hL1 s hs hL, Γ, q, he, heap_congr (s := s) hH rfl rfl rfl rfl hh, hsc, hEs⟩
  · refine ⟨fun hr => ?_, fun r' hr' => gx_locals hH _ (hq.2 r' hr')⟩
    have hg := hq.1 hr
    exact gi_locals hH _ (hres s.locals t.locals hL hg.1) hg

/-- `f(args);` with the argument cells in the caller's footprint, the post seeing `q.Mono q'`. -/
theorem gp_callFM (ha : ActOK a X) {f : MlS} {args : List (ExpHOL 64)}
    {sg' : Sig} {Pre : List (ValueHOL 64) → State σ → Gam → Prop}
    {Q : List (ValueHOL 64) → State σ → Gam → PanSemResultExact 64 → State σ → Gam → Prop}
    (hf : SumSpecA σ X a.Cb a.H f sg' Pre (fun _ _ _ _ => False) Q)
    {Lc : List (ValueHOL 64) → State σ → PanSemResultExact 64 → State σ → Prop}
    (hLc : FunSpec σ X f Lc)
    (hgw : ∀ g ∈ sg'.gw, g ∈ a.sg.gw) (hgr : sg'.grows = true → a.sg.grows = true)
    (hargs : ∀ (s : State σ) (Γ : Gam) (q : Ptrs), InCtx s X → L s.locals → Heap a Γ q s →
      E Γ q s.memory → ∀ vs, evs s args = some vs →
      ArgsOK a.Cb Γ q sg'.params vs ∧ (∀ x, ArgCells sg'.params vs x → a.Foot x) ∧
        ∀ callee, Pre vs (callEntryStateHOLFinite s callee) Γ)
    (hpost : ∀ (s st : State σ) (vs : List (ValueHOL 64))
      (callee : HolFiniteMapExact MlS (ValueHOL 64)) (r : PanSemResultExact 64) (Γ Γ' : Gam)
      (q q' : Ptrs), InCtx s X → L s.locals → evs s args = some vs → Ext a.Γ0 Γ →
      E Γ q s.memory → Lc vs (callEntryStateHOLFinite s callee) r st →
      Q vs (callEntryStateHOLFinite s callee) Γ r st Γ' → Ext Γ Γ' → Heap a Γ' q' st → q.Mono q' →
      (sg'.grows = false → NewFresh Γ Γ' q q) →
      ScrOld Γ Γ' ∧ ((∃ v, r = .returned v) → E' Γ' q' st.memory)) :
    HoareG σ X (GI a L E) (.call (some (none, none)) f args) (GP a L E' Rv) := by
  refine hoareG_callD (hf.and hLc) ?_ ?_
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee v st ⟨hR, hLc'⟩ _
    obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, hQ⟩ := heap_callGF ha hh hR
      (by simp [Good]) (by simp [Abortive]) hA hfo (hpre callee) hgw hgr
    obtain ⟨hsc', hE'⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ hext hh' hmo hnfp
    exact ⟨fun _ => ⟨hL, Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', hE' ⟨v, rfl⟩⟩, fun r' h => by cases h⟩
  · intro s hs ⟨hL, Γ, q, he, hh, hsc, hE⟩ vs hvs callee r st ⟨hR, hLc'⟩ _ habn
    refine ⟨(fun h => by cases h), fun r' hr' => ?_⟩
    cases hr'
    refine ⟨Or.inr habn, fun hna => ?_⟩
    obtain ⟨hA, hfo, hpre⟩ := hargs s Γ q hs hL hh hE vs hvs
    obtain ⟨Γ', q', hext, hh', hmo, hnf, hnfp, hret, hQ⟩ := heap_callGF ha hh hR
      (abn_good' habn) hna hA hfo (hpre callee) hgw hgr
    obtain ⟨hsc', -⟩ := hpost s st vs callee _ Γ Γ' q q' hs hL hvs he hE hLc' hQ hext hh' hmo hnfp
    exact ⟨Γ', q', ext_trans he hext, heap_congr (s := st) ha.hH rfl rfl rfl rfl hh',
      scrOld_trans hsc hsc', fun v hv => absurd hv (Node.abn_ne_ret habn v)⟩

end rules

/-- The functional spec of `alloc` the proof uses: `AllocSpec` and "returns the old heap pointer". -/
def AllocRel (vs : List (ValueHOL 64)) (s : State σ) (r : PanSemResultExact 64) (t : State σ) : Prop :=
  (Good (some r) → ∀ n p, vs = [.val (.word n)] → ptrsOf s = some p → p.Ordered →
      t.memory = s.memory ∧ (∀ g, g ≠ Region.heap.global → t.globals.lookup g = s.globals.lookup g) ∧
      ∃ p', ptrsOf t = some p' ∧ p'.Ordered ∧ p.Mono p' ∧
        ∀ v, r = .returned v → ∃ q, v = .val (.word q) ∧ q.toNat % 8 = 0 ∧
          Region.heap.Live p' q.toNat n.toNat ∧
          ∀ a, q.toNat ≤ a → a < q.toNat + n.toNat → ¬ p.Allocated a) ∧
  (Good (some r) → ∀ n p, vs = [.val (.word n)] → ptrsOf s = some p →
      ∀ v, r = .returned v → v = .val (.word (BitVec.ofNat 64 p.hp)))

theorem funSpec_allocRel (hX : X.code.lookup = guestCode) : FunSpec σ X (nm "alloc") AllocRel :=
  funSpec_and (MemSafe.allocSpec_alloc hX) (Aw.allocEq_alloc hX)

/-- A byte outside `Γ` stays outside under a non-growing step. -/
theorem notInObj_nf {Γ Γ' : Gam} {q : Ptrs} (hnf : NewFresh Γ Γ' q q) {x : Nat} (hx : x < 2 ^ 64)
    (h : ¬ InObj Γ x) : ¬ InObj Γ' x := by
  rintro ⟨o, ho, ho1, ho2⟩
  have hxn : (BitVec.ofNat 64 x).toNat = x := by
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt hx]
  rcases hnf o ho (BitVec.ofNat 64 x) (by rw [hxn]; exact ho1) (by rw [hxn]; exact ho2) with
    ⟨o0, ho0, -, -, hl, hh⟩ | hf
  · rw [hxn] at hl hh
    exact h ⟨o0, ho0, hl, hh⟩
  · unfold Fresh at hf
    rw [hxn] at hf
    omega

/-- The post of `var b = alloc(Z)` as a fresh block. -/
theorem alloc_fblk {a : Act σ} (haC : a.C = Types.guestC) {Z : BitVec 64} {Γ Γ' : Gam} {q q' : Ptrs}
    {s st : State σ} {callee : HolFiniteMapExact MlS (ValueHOL 64)} {r : PanSemResultExact 64}
    {v : ValueHOL 64} {sg : Sig} (hsg : sg.grows = false)
    (co : CO a sg [.val (.word Z)] Γ Γ' q q' s st r)
    (hLc : AllocRel [.val (.word Z)] (callEntryStateHOLFinite s callee) r st) (hr : r = .returned v)
    (hZ8 : Z.toNat % 8 = 0) :
    ∃ H : BitVec 64, v = .val (.word H) ∧ H.toNat = q.hp ∧ FBlk a.p0 H Z.toNat Γ' q' ∧
      st.memory = s.memory := by
  subst hr
  obtain ⟨hA, hB⟩ := hLc
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some q := co.heap0.2.1
  have hord := heap_ord co.heap0
  obtain ⟨hmem, -, p', hp', hord', hmo, hq⟩ := hA (by simp [Good]) Z q rfl hpe hord
  obtain ⟨H, hv, h8, hlive, hfree⟩ := hq _ rfl
  have hq' : p' = q' := by
    have := co.heap.2.1
    rw [hp'] at this
    exact Option.some.inj this
  subst hq'
  have hH := hB (by simp [Good]) Z q rfl hpe _ rfl
  rw [hv] at hH
  simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hH
  have hqe := hord.2.1
  have hE : heapEnd < 2 ^ 64 := by decide
  have hHn : H.toNat = q.hp := by
    rw [hH, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]
  refine ⟨H, hv, hHn, ⟨h8, hZ8, ?_, ?_, fun x h1 h2 => ?_⟩, hmem⟩
  · unfold Region.Live at hlive; exact hlive.1
  · unfold Region.Live at hlive; have := hlive.2; omega
  · have hu : ¬ q.Allocated x := hfree x h1 h2
    have hL := layout_of_heap haC co.heap0
    have hqe' := hord'.2.1
    refine ⟨notInObj_nf (co.nfp hsg) (by unfold Region.Live at hlive; have := hlive.2; omega)
      (notInObj_of_unalloc hord hL hu), fun hal => hu (Spec.Mpt.Dec.allocated_mono co.heap0.2.2.1 hal)⟩

end InitECandidate.Solver.MemSafe.Trie
