import InitECandidate.Solver.MemSafe.Aw.Logs
import InitECandidate.Solver.MemSafe.Helpers.Pure
import InitECandidate.Solver.MemSafe.Caps

set_option autoImplicit false

/-!
# The allocation-level kit (target C)

`AWSpec`: a function that may also `alloc`, `heap_mark` / `heap_release`, call footprint writers,
other above-writers, and table entries that do not grow. From `G Γ s` with every object of `Γ`
below an aligned `h0 ≤ heap_ptr`, a returned result gives `G Γ' t` with `Γ'` below `h0`.

* `AwE`: the entry data (`C`, `H`, `gw`, `s0`, `Γ0`, `p0`, `h0`); `AwOK` its side conditions.
* `AwInv a t`: the invariant between statements (an existential `Γ'`, `p'`).
* `AQ a L Ret`: the statement post (a normal end keeps `AwInv` and the locals invariant `L`,
  a returned value `v` keeps `AwInv` and `Ret v`; abnormal ends owe nothing: `AWSpec` speaks of
  returned results only).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Aw
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type} {X : Ctx 64}

/-- Every cell of a `Γ'` object lies in a `Γ0` object of the same base and type. -/
def Sub (Γ0 Γ' : Gam) : Prop :=
  ∀ o ∈ Γ', ∀ a : BitVec 64, o.lo ≤ a.toNat → a.toNat < o.hi →
    ∃ o0 ∈ Γ0, o0.base = o.base ∧ o0.ty = o.ty ∧ o0.lo ≤ a.toNat ∧ a.toNat < o0.hi

theorem sub_refl (Γ : Gam) : Sub Γ Γ :=
  fun o ho a h1 h2 => ⟨o, ho, rfl, rfl, h1, h2⟩

theorem sub_trans {Γ0 Γ1 Γ2 : Gam} (h1 : Sub Γ0 Γ1) (h2 : Sub Γ1 Γ2) : Sub Γ0 Γ2 := by
  intro o ho a ha1 ha2
  obtain ⟨o1, ho1, hb1, ht1, hl1, hh1⟩ := h2 o ho a ha1 ha2
  obtain ⟨o0, ho0, hb0, ht0, hl0, hh0⟩ := h1 o1 ho1 a hl1 hh1
  exact ⟨o0, ho0, hb0.trans hb1, ht0.trans ht1, hl0, hh0⟩

theorem ext_refl' (Γ : Gam) : Ext Γ Γ := fun o ho => ⟨o, ho, rfl, rfl, Nat.le_refl _⟩

theorem ext_trans' {Γ Γ' Γ'' : Gam} (h : Ext Γ Γ') (h' : Ext Γ' Γ'') : Ext Γ Γ'' := by
  intro o ho
  obtain ⟨o1, ho1, hb1, ht1, hs1⟩ := h o ho
  obtain ⟨o2, ho2, hb2, ht2, hs2⟩ := h' o1 ho1
  exact ⟨o2, ho2, hb2.trans hb1, ht2.trans ht1, Nat.le_trans hs1 hs2⟩

theorem below_mono {Γ : Gam} {h h' : Nat} (hB : Below Γ h) (hh : h ≤ h') : Below Γ h' :=
  fun o ho => Nat.le_trans (hB o ho) hh

/-- Cells inside old objects keep the objects below `h0`. -/
theorem below_of_sub {Γ0 Γ' : Gam} {h0 : Nat} (hS : Sub Γ0 Γ') (hB : Below Γ0 h0)
    (hpos : ∀ o ∈ Γ', 0 < o.size) (hlt : ∀ o ∈ Γ', o.hi ≤ 2 ^ 64) : Below Γ' h0 := by
  intro o ho
  have h1 := hpos o ho
  have h2 := hlt o ho
  have hh : o.hi = o.lo + o.size := rfl
  have hlo : o.lo = o.base.toNat := rfl
  obtain ⟨o0, ho0, hb, -, hl0, hh0⟩ := hS o ho (BitVec.ofNat 64 (o.hi - 1))
    (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; omega)
    (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; omega)
  have hb' : o0.lo = o.lo := by
    show o0.base.toNat = o.base.toNat
    rw [hb]
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)] at hh0
  have := hB o0 ho0
  omega

/-- The entry data of an above-writer. -/
structure AwE (σ : Type) where
  C : Cfg
  H : Hooks σ
  gw : List MlS
  s0 : State σ
  Γ0 : Gam
  p0 : Ptrs
  h0 : Nat

/-- Cells an above-writer may change. -/
def AwMod (a : AwE σ) (x : BitVec 64) : Prop :=
  a.h0 ≤ x.toNat ∨ WCell a.C a.Γ0 x ∨ ¬ a.p0.Allocated x.toNat

/-- The side conditions of the entry data. -/
structure AwOK (a : AwE σ) : Prop where
  hH : HooksLawful a.C a.H
  hT : TagSlots a.C
  hAG : AllocGlobs a.C
  h8 : a.h0 % 8 = 0
  hle : a.h0 ≤ a.p0.hp
  hord : a.p0.Ordered
  hbase : heapBase ≤ a.h0

/-- **The invariant between statements.** -/
def AwInv (a : AwE σ) (t : State σ) : Prop :=
  ∃ Γ' p', G a.C a.H Γ' t ∧ ptrsOf t = some p' ∧ Ext a.Γ0 Γ' ∧ Sub a.Γ0 Γ' ∧
    Below Γ' a.h0 ∧ a.p0.Mono p' ∧ ModifiesOnly (AwMod a) a.s0.memory t.memory ∧
    (∀ g ∈ a.C.PG, g ∉ a.gw → t.globals.lookup g = a.s0.globals.lookup g)

/-- The invariant at entry. -/
theorem awInv_init (a : AwE σ) (hG : G a.C a.H a.Γ0 a.s0) (hp : ptrsOf a.s0 = some a.p0)
    (hB : Below a.Γ0 a.h0) : AwInv a a.s0 :=
  ⟨a.Γ0, a.p0, hG, hp, ext_refl' _, sub_refl _, hB, ⟨Nat.le_refl _, Nat.le_refl _, Nat.le_refl _⟩,
    fun _ _ => rfl, fun _ _ _ => rfl⟩

/-- Locals-only changes. -/
theorem awInv_same {a : AwE σ} (hK : AwOK a) {s t : State σ} (h : AwInv a s)
    (hm : t.memory = s.memory) (hg : t.globals = s.globals) (hd : t.memaddrs = s.memaddrs)
    (hbe : t.be = s.be) : AwInv a t := by
  obtain ⟨Γ', p', hG, hp, h1, h2, h3, h4, h5, h6⟩ := h
  refine ⟨Γ', p', Frames.G_congr hK.hH hm hg hd hbe hG, by rw [ptrsOf_congr hg]; exact hp, h1, h2,
    h3, h4, by rw [hm]; exact h5, fun g hg1 hg2 => by rw [hg]; exact h6 g hg1 hg2⟩

/-- Writes at or above `h0` (globals, domain and byte order unchanged). -/
theorem awInv_write {a : AwE σ} (hK : AwOK a) {s t : State σ} (h : AwInv a s)
    (hg : t.globals = s.globals) (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    {R : BitVec 64 → Prop} (hmod : ModifiesOnly R s.memory t.memory)
    (hR : ∀ x, R x → a.h0 ≤ x.toNat) : AwInv a t := by
  obtain ⟨Γ', p', hG, hp, h1, h2, h3, h4, h5, h6⟩ := h
  refine ⟨Γ', p', G_above hK.hH hK.hT h3 hG hg hd hbe hmod hR, by rw [ptrsOf_congr hg]; exact hp,
    h1, h2, h3, h4, ?_, fun g hg1 hg2 => by rw [hg]; exact h6 g hg1 hg2⟩
  intro x hx
  have hnr : ¬ R x := fun hr => hx (Or.inl (hR x hr))
  rw [hmod x hnr]
  exact h5 x hx

/-! ## `alloc` returns the old heap pointer -/

set_option maxHeartbeats 1000000 in
open AllocImpl in
theorem allocEq_alloc (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "alloc") (fun vs s r t => Good (some r) → ∀ (n : BitVec 64) (p : Ptrs),
      vs = [.val (.word n)] → ptrsOf s = some p → ∀ v, r = .returned v →
        v = .val (.word (BitVec.ofNat 64 p.hp))) := by
  intro vs body callee rs hl s0 hs hloc r hr hg n p hvs hps v hv
  rw [hC] at hl
  obtain ⟨rfl, -, A, rfl, -, hla⟩ := lookupCode_one code_alloc hl
  simp only [List.cons.injEq, and_true] at hvs
  subst hvs
  have hn : s0.locals.lookup (nm "n") = some (.val (.word n)) := by rw [hloc]; exact hla
  obtain ⟨a, b, c, ha, hb, hc, rfl⟩ := ptrsOf_some hps
  have H : HoareG σ X (fun t => t = s0) heapAllocBody (fun r t => ∀ v, r = some (.returned v) →
      v = .val (.word a)) := by
    refine hoareG_allocSkel hC (lookup_of_gword ha) ?_ ?_
    · intro r t hab _ _ v hv
      exact absurd (Option.some.inj hv) (abn_ne_returned hab v)
    · intro Qw v t hc1 hw hc2 hv' hm hG hO v2 hv2
      have hp1 : (setVarHOLFinite (nm "p") (.val (.word a)) s0).locals.lookup (nm "p") =
          some (.val (.word a)) := lk_set_self _ _ _
      rw [lk_set_ne _ _ (by decide), hp1] at hv'
      cases hv'
      cases hv2
      rfl
  have := H s0 hs rfl (by rw [hr]; exact hg)
  rw [hr] at this
  rw [this v (by rw [hv])]
  congr 2
  exact (BitVec.eq_of_toNat_eq (by simp)).symm

/-! ## Allocator moves -/

theorem allocated_mono' {p p' : Ptrs} (h : p.Mono p') {x : Nat} (hx : p.Allocated x) :
    p'.Allocated x := by
  unfold Ptrs.Mono at h
  unfold Ptrs.Allocated at hx ⊢
  omega

theorem mono_trans' {p p' p'' : Ptrs} (h : p.Mono p') (h' : p'.Mono p'') : p.Mono p'' := by
  unfold Ptrs.Mono at *
  omega

/-- An allocation: memory unchanged, only the heap pointer moves up. -/
theorem awInv_alloc {a : AwE σ} (hK : AwOK a) {s t : State σ} (h : AwInv a s)
    {p'' : Ptrs} (hp'' : ptrsOf t = some p'') (hord : p''.Ordered)
    (hmono : ∀ p', ptrsOf s = some p' → p'.Mono p'')
    (hm : t.memory = s.memory) (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hgo : ∀ g, g ≠ gHeap → t.globals.lookup g = s.globals.lookup g) : AwInv a t := by
  obtain ⟨Γ', p', hG, hp, h1, h2, h3, h4, h5, h6⟩ := h
  refine ⟨Γ', p'', G_alloc hK.hH hK.hAG hG hp hp'' hord (hmono p' hp) (fun g h1 _ _ => hgo g h1)
    hd hbe (fun x _ => by rw [hm]), hp'', h1, h2, h3, mono_trans' h4 (hmono p' hp),
    by rw [hm]; exact h5, ?_⟩
  intro g hg1 hg2
  have hne : g ≠ gHeap := fun e => (hK.hAG gHeap (Or.inl rfl)).1 (e ▸ hg1)
  rw [hgo g hne]
  exact h6 g hg1 hg2

/-- `heap_release(w)`: the heap pointer goes to `w` with `p0.hp ≤ w ≤ heapEnd`, 8-aligned. -/
theorem awInv_release {a : AwE σ} (hK : AwOK a) {s t : State σ} (h : AwInv a s) {w : BitVec 64}
    (hw1 : a.p0.hp ≤ w.toNat) (hw2 : w.toNat ≤ heapEnd) (hw3 : w.toNat % 8 = 0)
    (hm : t.memory = s.memory) (hd : t.memaddrs = s.memaddrs) (hbe : t.be = s.be)
    (hgw : t.globals.lookup gHeap = some (.val (.word w)))
    (hgo : ∀ g, g ≠ gHeap → t.globals.lookup g = s.globals.lookup g) : AwInv a t := by
  obtain ⟨Γ', p', hG, hp, h1, h2, h3, h4, h5, h6⟩ := h
  have hp'' : ptrsOf t = some (AllocImpl.setP p' .heap w.toNat) :=
    AllocImpl.ptrsOf_set hp .heap hgw hgo
  have hG0 := hG
  obtain ⟨p0, hp0, hord0, hL0, -⟩ := hG0
  rw [hp] at hp0
  cases hp0
  have hO := hord0
  have hO0 := hK.hord
  unfold Ptrs.Ordered at hO hO0
  unfold Ptrs.Mono at h4
  refine ⟨Γ', AllocImpl.setP p' .heap w.toNat, ?_, hp'', h1, h2, h3, ?_, by rw [hm]; exact h5, ?_⟩
  · refine G_reptr hK.hH hK.hAG hG hp'' ?_ ?_ hm hd hbe (fun g hg _ _ => hgo g hg)
    · simp only [AllocImpl.setP, Ptrs.Ordered, heapBase] at hO0 ⊢
      omega
    · intro o ho
      have hl := (hL0.1 o ho).2.2.2.2
      have hb : o.lo + o.size ≤ a.h0 := h3 o ho
      have hle := hK.hle
      cases hrg : (a.C.ty o.ty).region <;> simp only [hrg] at hl <;> unfold Region.Live at hl ⊢ <;>
        simp only [AllocImpl.setP] <;> omega
  · simp only [AllocImpl.setP, Ptrs.Mono]
    omega
  · intro g hg1 hg2
    have hne : g ≠ gHeap := fun e => (hK.hAG gHeap (Or.inl rfl)).1 (e ▸ hg1)
    rw [hgo g hne]
    exact h6 g hg1 hg2

/-! ## Layout facts -/

theorem obj_pos {C : Cfg} {H : Hooks σ} {Γ : Gam} {t : State σ} (hG : G C H Γ t) :
    ∀ o ∈ Γ, 0 < o.size := by
  obtain ⟨p, -, -, hL, -⟩ := hG
  intro o ho
  exact (hL.1 o ho).2.2.1

theorem obj_hi_le {C : Cfg} {H : Hooks σ} {Γ : Gam} {t : State σ} (hG : G C H Γ t) :
    ∀ o ∈ Γ, o.hi ≤ 2 ^ 64 := by
  obtain ⟨p, -, hord, hL, -⟩ := hG
  intro o ho
  have hl := (hL.1 o ho).2.2.2.2
  have hh : o.hi = o.lo + o.size := rfl
  unfold Ptrs.Ordered at hord
  cases hrg : (C.ty o.ty).region <;> simp only [hrg] at hl <;> unfold Region.Live at hl <;>
    simp only [scratchEnd, heapEnd] at hord hl ⊢ <;> omega

theorem fresh_self {p : Ptrs} {x : BitVec 64} : ¬ Fresh p p x := by
  unfold Fresh
  omega

/-- A non-growing step: the new cells come from old objects. -/
theorem sub_of_newFresh_self {Γ Γ' : Gam} {p : Ptrs} (h : NewFresh Γ Γ' p p) : Sub Γ Γ' := by
  intro o ho x h1 h2
  rcases h o ho x h1 h2 with h | h
  · exact h
  · exact absurd h fresh_self

/-- A step of an above-writer: the new cells would lie at or above `h0`, but `Γ''` is below. -/
theorem sub_of_newFresh_below {Γ Γ' : Gam} {p p' : Ptrs} {h0 : Nat} (h : NewFresh Γ Γ' p p')
    (hB : Below Γ' h0) (hord : p.Ordered) (hord' : p'.Ordered) (hle : h0 ≤ p.hp) (hpos : ∀ o ∈ Γ', 0 < o.size)
    : Sub Γ Γ' := by
  intro o ho x h1 h2
  rcases h o ho x h1 h2 with h | h
  · exact h
  · exfalso
    have := hB o ho
    have hh : o.hi = o.lo + o.size := rfl
    unfold Fresh at h
    unfold Ptrs.Ordered at hord hord'
    have hN : h0 ≤ heapEnd := by omega
    omega

theorem wcell_of_sub {C : Cfg} {Γ0 Γ' : Gam} (hS : Sub Γ0 Γ') (hlt : ∀ o ∈ Γ', o.hi ≤ 2 ^ 64)
    {x : BitVec 64} (hx : WCell C Γ' x) : WCell C Γ0 x := by
  obtain ⟨o, ho, k, hk, hne, rfl⟩ := hx
  unfold Obj.HasSlot at hk
  have hh : o.hi = o.lo + o.size := rfl
  have h2 := hlt o ho
  have hlo : o.lo = o.base.toNat := rfl
  obtain ⟨o0, ho0, hb, ht, hl0, hh0⟩ := hS o ho (BitVec.ofNat 64 (o.lo + 8 * k + 7))
    (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; omega)
    (by rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; omega)
  rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)] at hh0
  have hb' : o0.lo = o.lo := by
    show o0.base.toNat = o.base.toNat
    rw [hb]
  have hh1 : o0.hi = o0.lo + o0.size := rfl
  refine ⟨o0, ho0, k, ?_, by rw [ht]; exact hne, by unfold Obj.cell; rw [hb]⟩
  unfold Obj.HasSlot
  omega

/-! ## Calls to other above-writers -/

/-- The summary of an above-writer. -/
def AWSpec (σ : Type) (X : Ctx 64) (C : Cfg) (H : Hooks σ) (f : MlS) (gw : List MlS)
    (Pre : List (ValueHOL 64) → State σ → Nat → Prop)
    (Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop) : Prop :=
  FunSpec σ X f (fun vs s r t => ∀ v, r = .returned v → ∀ (Γ : Gam) (h0 : Nat) (p : Ptrs),
    G C H Γ s → ptrsOf s = some p → Below Γ h0 → h0 % 8 = 0 → heapBase ≤ h0 → h0 ≤ p.hp →
      Pre vs s h0 →
      ∃ (Γ' : Gam) (p' : Ptrs), G C H Γ' t ∧ ptrsOf t = some p' ∧ Ext Γ Γ' ∧ NewFresh Γ Γ' p p' ∧
        Below Γ' h0 ∧ p.Mono p' ∧
        ModifiesOnly (fun x => h0 ≤ x.toNat ∨ WCell C Γ x ∨ ¬ p.Allocated x.toNat) s.memory
          t.memory ∧
        (∀ g ∈ C.PG, g ∉ gw → t.globals.lookup g = s.globals.lookup g) ∧ Post vs s v t)

/-- The invariant after a call to an above-writer. -/
theorem awInv_aw {a : AwE σ} (hK : AwOK a) {s t : State σ} (h : AwInv a s)
    {gw' : List MlS} (hgw : ∀ g, g ∈ gw' → g ∈ a.gw)
    (hcall : ∀ (Γ' : Gam) (p' : Ptrs), G a.C a.H Γ' s → ptrsOf s = some p' → Below Γ' a.h0 →
      a.h0 % 8 = 0 → a.h0 ≤ p'.hp → ∃ (Γ'' : Gam) (p'' : Ptrs), G a.C a.H Γ'' t ∧
        ptrsOf t = some p'' ∧ Ext Γ' Γ'' ∧ NewFresh Γ' Γ'' p' p'' ∧ Below Γ'' a.h0 ∧ p'.Mono p'' ∧
        ModifiesOnly (fun x => a.h0 ≤ x.toNat ∨ WCell a.C Γ' x ∨ ¬ p'.Allocated x.toNat) s.memory
          t.memory ∧
        (∀ g ∈ a.C.PG, g ∉ gw' → t.globals.lookup g = s.globals.lookup g)) : AwInv a t := by
  obtain ⟨Γ', p', hG, hp, h1, h2, h3, h4, h5, h6⟩ := h
  have hle : a.h0 ≤ p'.hp := by
    have := hK.hle
    unfold Ptrs.Mono at h4
    omega
  obtain ⟨Γ'', p'', hG'', hp'', e1, e2, e3, e4, e5, e6⟩ := hcall Γ' p' hG hp h3 hK.h8 hle
  have hord'' : p''.Ordered := by
    obtain ⟨q, hq, ho, -⟩ := hG''
    rw [hp''] at hq
    cases hq
    exact ho
  have hord' : p'.Ordered := by
    obtain ⟨q, hq, ho, -⟩ := hG
    rw [hp] at hq
    cases hq
    exact ho
  have hS : Sub Γ' Γ'' := sub_of_newFresh_below e2 e3 hord' hord'' hle (obj_pos hG'')
  refine ⟨Γ'', p'', hG'', hp'', ext_trans' h1 e1, sub_trans h2 hS, e3, mono_trans' h4 e4, ?_, ?_⟩
  · intro x hx
    have hnm : ¬ (a.h0 ≤ x.toNat ∨ WCell a.C Γ' x ∨ ¬ p'.Allocated x.toNat) := by
      intro hh
      apply hx
      rcases hh with hh | hh | hh
      · exact Or.inl hh
      · exact Or.inr (Or.inl (wcell_of_sub h2 (obj_hi_le hG) hh))
      · exact Or.inr (Or.inr (fun hal => hh (allocated_mono' h4 hal)))
    rw [e5 x hnm]
    exact h5 x hx
  · intro g hg1 hg2
    rw [e6 g hg1 (fun hh => hg2 (hgw g hh))]
    exact h6 g hg1 hg2

/-! ## Calls to table entries (`CSumm`, no capabilities, non-growing) -/

/-- The invariant after a non-growing table entry. -/
theorem awInv_cs {a : AwE σ} (hK : AwOK a) {s t : State σ} (h : AwInv a s) {sg : Sig}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} (hg : sg.grows = false)
    (hgw : ∀ g, g ∈ sg.gw → g ∈ a.gw)
    (hargH : ∀ x, ArgCells sg.params vs x → a.h0 ≤ x.toNat)
    (hcore : ∀ (Γ' : Gam) (p' : Ptrs), G a.C a.H Γ' s → ptrsOf s = some p' → Below Γ' a.h0 →
      ∃ (Γ'' : Gam) (p'' : Ptrs) (PW : BitVec 64 → Prop), (∀ x, PW x → False) ∧
        SumCore a.C a.H sg PW Γ' s vs r t Γ'' p' p'') : AwInv a t := by
  obtain ⟨Γ', p', hG, hp, h1, h2, h3, h4, h5, h6⟩ := h
  obtain ⟨Γ'', p'', PW, hPW, c1, c2, c3, c4, c5, c6, c7, c8, c9, -⟩ := hcore Γ' p' hG hp h3
  have hS : Sub Γ' Γ'' := sub_of_newFresh_self (c9 hg)
  have hB : Below Γ'' a.h0 := below_of_sub hS h3 (obj_pos c6) (obj_hi_le c6)
  refine ⟨Γ'', p'', c6, c2, ext_trans' h1 c4, sub_trans h2 hS, hB, mono_trans' h4 c3, ?_, ?_⟩
  · intro x hx
    have hnm : ¬ (WCell a.C Γ' x ∨ ArgCells sg.params vs x ∨ ¬ p'.Allocated x.toNat ∨ PW x) := by
      intro hh
      apply hx
      rcases hh with hh | hh | hh | hh
      · exact Or.inr (Or.inl (wcell_of_sub h2 (obj_hi_le hG) hh))
      · exact Or.inl (hargH x hh)
      · exact Or.inr (Or.inr (fun hal => hh (allocated_mono' h4 hal)))
      · exact (hPW x hh).elim
    rw [c7 x hnm]
    exact h5 x hx
  · intro g hg1 hg2
    rw [c8 g hg1 (fun hh => hg2 (hgw g hh))]
    exact h6 g hg1 hg2

/-! ## Callee specs relative to the invariant -/

/-- A callee spec relative to the invariant: from `AwInv`, `Pre`, a returned result keeps the
invariant, and `Ret vs v` holds. -/
def ASp (a : AwE σ) (X : Ctx 64) (f : MlS) (Pre : List (ValueHOL 64) → State σ → Prop)
    (Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop) : Prop :=
  FunSpec σ X f (fun vs s r t => AwInv a s → Pre vs s → ∀ v, r = .returned v →
    AwInv a t ∧ Ret vs v t)

theorem asp_of_footRet {a : AwE σ} (hK : AwOK a) {f : MlS} {PreF : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f PreF R RetF) (hR : ∀ vs x, R vs x → a.h0 ≤ x.toNat) :
    ASp a X f (fun vs _ => PreF vs) (fun vs v _ => RetF vs v) := by
  have hd := Helpers.funSpec_dom (σ := σ) (X := X) f
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  have h1 := hf vs body callee rs hl s hs hloc r hr
  have h2 := hd vs body callee rs hl s hs hloc r hr
  subst hv
  obtain ⟨hg, hmod, hret⟩ := h1 (by simp [Good]) hP
  exact ⟨awInv_write hK hinv hg h2.1 h2.2 hmod (hR vs), hret v rfl⟩

theorem asp_of_aw {a : AwE σ} (hK : AwOK a) {f : MlS} {gw' : List MlS}
    {Pre : List (ValueHOL 64) → State σ → Nat → Prop}
    {Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop}
    (hf : AWSpec σ X a.C a.H f gw' Pre Post) (hgw : ∀ g, g ∈ gw' → g ∈ a.gw)
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop}
    (hPost : ∀ vs s v t, Post vs s v t → Ret vs v t) :
    ASp a X f (fun vs s => Pre vs s a.h0) Ret := by
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  subst hv
  have h1 := hf vs body callee rs hl s hs hloc _ hr v rfl
  have hinv0 := hinv
  obtain ⟨Γ', p', hG, hp, e1, e2, e3, e4, -⟩ := hinv0
  have hle : a.h0 ≤ p'.hp := by
    have := hK.hle
    unfold Ptrs.Mono at e4
    omega
  obtain ⟨Γ'', p'', c1, c2, c3, c4, c5, c6, c7, c8, c9⟩ := h1 Γ' a.h0 p' hG hp e3 hK.h8 hK.hbase hle hP
  exact ⟨awInv_aw hK hinv hgw (fun Γ1 p1 hG1 hp1 hB1 h81 hle1 => by
    obtain ⟨Γ2, p2, d1, d2, d3, d4, d5, d6, d7, d8, -⟩ := hf vs body callee rs hl s hs hloc _ hr v rfl
      Γ1 a.h0 p1 hG1 hp1 hB1 h81 hK.hbase hle1 hP
    exact ⟨Γ2, p2, d1, d2, d3, d4, d5, d6, d7, d8⟩), hPost vs s v _ c9⟩

/-! ## Table entries -/

/-- Buffer argument bounds: a `buf n` argument lies in `[h0, hp)`, other arguments are free. -/
def ArgBnd (h0 hp : Nat) : PT → ValueHOL 64 → Prop
  | .any, _ => True
  | .buf n, v => ∃ w, wordOf v = some w ∧ h0 ≤ w.toNat ∧ w.toNat + n ≤ hp
  | _, _ => False

/-- The precondition of a table entry call, from the argument bounds. -/
def CsPre (a : AwE σ) (sg : Sig) (vs : List (ValueHOL 64)) (s : State σ) : Prop :=
  sg.params.length = vs.length ∧ ∃ p, ptrsOf s = some p ∧
    ∀ (i : Nat) (pt : PT) (v : ValueHOL 64), sg.params[i]? = some pt → vs[i]? = some v →
      ArgBnd a.h0 p.hp pt v

theorem bufOK_above {a : AwE σ} (hK : AwOK a) {Γ : Gam} {p : Ptrs} (hB : Below Γ a.h0)
    {w : BitVec 64} {n : Nat} (h1 : a.h0 ≤ w.toNat) (h2 : w.toNat + n ≤ p.hp) :
    BufOK a.C Γ p w.toNat n := by
  intro x ⟨hx1, hx2, hx3⟩
  have h8 := hK.h8
  have hb := hK.hbase
  have hxa : a.h0 ≤ x.toNat := by omega
  right
  exact ⟨not_inObj hB hxa, Or.inl ⟨by omega, by omega⟩⟩

theorem argsOK_of_csPre {a : AwE σ} (hK : AwOK a) {Γ : Gam} {p : Ptrs} (hB : Below Γ a.h0)
    {sg : Sig} {vs : List (ValueHOL 64)} (hlen : sg.params.length = vs.length)
    (hbd : ∀ (i : Nat) (pt : PT) (v : ValueHOL 64), sg.params[i]? = some pt → vs[i]? = some v →
      ArgBnd a.h0 p.hp pt v) : ArgsOK a.C Γ p sg.params vs := by
  refine ⟨hlen, fun i pt v hpt hv => ?_⟩
  have := hbd i pt v hpt hv
  cases pt with
  | any => trivial
  | buf n =>
      obtain ⟨w, hw, h1, h2⟩ := this
      exact ⟨w, hw, bufOK_above hK hB h1 h2⟩
  | fits k => exact this.elim
  | bufArg i c d => exact this.elim
  | eq c => exact this.elim

theorem argCells_above {a : AwE σ} (hK : AwOK a) {p : Ptrs} {sg : Sig}
    {vs : List (ValueHOL 64)}
    (hbd : ∀ (i : Nat) (pt : PT) (v : ValueHOL 64), sg.params[i]? = some pt → vs[i]? = some v →
      ArgBnd a.h0 p.hp pt v) : ∀ x, ArgCells sg.params vs x → a.h0 ≤ x.toNat := by
  intro x ⟨i, w, hw, hc⟩
  have h8 := hK.h8
  unfold argW at hw
  cases hvi : vs[i]? with
  | none => rw [hvi] at hw; cases hw
  | some v =>
      rw [hvi] at hw
      have hw : wordOf v = some w := hw
      rcases hc with ⟨n, hpt, hx1, hx2, hx3⟩ | ⟨j, c, d, y, hpt, -⟩
      · have := hbd i (.buf n) v hpt hvi
        obtain ⟨w', hw', h1, h2⟩ := this
        rw [hw] at hw'
        cases hw'
        omega
      · exact (hbd i (.bufArg j c d) v hpt hvi).elim

theorem asp_of_cs {a : AwE σ} (hK : AwOK a) {f : MlS} {sg : Sig}
    (hf : CSumm σ X a.C a.H f sg []) (hg : sg.grows = false)
    (hgw : ∀ g, g ∈ sg.gw → g ∈ a.gw) : ASp a X f (CsPre a sg) (fun _ _ _ => True) := by
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  subst hv
  obtain ⟨hlen, pp, hpp, hbd⟩ := hP
  have h1 := hf vs body callee rs hl s hs hloc _ hr (by simp [Good]) (by simp [Abortive])
  refine ⟨awInv_cs (r := .returned v) hK hinv hg hgw (argCells_above hK hbd) ?_, trivial⟩
  intro Γ' p' hG hp hB
  rw [hpp] at hp
  cases hp
  obtain ⟨Γ'', p1, p2, core, -⟩ := h1 Γ' hG ⟨pp, hpp, argsOK_of_csPre hK hB hlen hbd⟩
    (by intro c hc; exact absurd hc (by simp))
  have e1 := core.1
  rw [hpp] at e1
  cases e1
  exact ⟨Γ'', p2, _, fun x hx => by
    obtain ⟨-, ⟨c, hc, -⟩⟩ := hx
    exact absurd hc (by simp), core⟩

/-! ## The allocator -/

/-- What `alloc(n)` gives: the old heap pointer `q ≥ h0`, 8-aligned, with `[q, q + n)` live. -/
def AllocRet (a : AwE σ) (vs : List (ValueHOL 64)) (v : ValueHOL 64) (t : State σ) : Prop :=
  ∃ (n q : BitVec 64) (p'' : Ptrs), vs = [.val (.word n)] ∧ v = .val (.word q) ∧
    a.h0 ≤ q.toNat ∧ q.toNat % 8 = 0 ∧ ptrsOf t = some p'' ∧ q.toNat + n.toNat ≤ p''.hp ∧
    p''.hp ≤ heapEnd

theorem asp_alloc {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode) :
    ASp a X (nm "alloc") (fun vs _ => ∃ n : BitVec 64, vs = [.val (.word n)]) (AllocRet a) := by
  have hspec := ((allocSpec_alloc (σ := σ) hC).and (allocEq_alloc (σ := σ) hC)).and
    (Helpers.funSpec_dom (σ := σ) (X := X) (nm "alloc"))
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  subst hv
  obtain ⟨⟨hA, hB⟩, hD⟩ := hspec vs body callee rs hl s hs hloc _ hr
  obtain ⟨n, rfl⟩ := hP
  have hinv0 := hinv
  obtain ⟨Γ', p0', hG, hp, e1, e2, e3, e4, -⟩ := hinv0
  have hord : p0'.Ordered := by
    obtain ⟨q, hq, ho, -⟩ := hG
    rw [hp] at hq
    cases hq
    exact ho
  have hg : Good (some (PanSemResultExact.returned v)) := by simp [Good]
  obtain ⟨hm, hgo, p'', hp'', hord'', hmono, hret⟩ := hA hg n p0' rfl hp hord
  have hq := hB hg n p0' rfl hp v rfl
  obtain ⟨q, hq1, hq2, hq3, -⟩ := hret v rfl
  have hv1 : v = .val (.word (BitVec.ofNat 64 p0'.hp)) := hq
  have hqq : q = BitVec.ofNat 64 p0'.hp := by
    have := hq1.symm.trans hv1
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at this
    exact this
  have hlt : p0'.hp < 2 ^ 64 := by
    unfold Ptrs.Ordered at hord
    simp only [heapEnd] at hord
    omega
  have hqn : q.toNat = p0'.hp := by
    rw [hqq, BitVec.toNat_ofNat, Nat.mod_eq_of_lt hlt]
  refine ⟨awInv_alloc hK hinv hp'' hord'' (fun p' hp' => by rw [hp] at hp'; cases hp'; exact hmono)
    hm hD.1 hD.2 (fun g hg => hgo g hg), n, q, p'', rfl, hq1, ?_, hq2, hp'', ?_, ?_⟩
  · have := hK.hle
    unfold Ptrs.Mono at e4
    omega
  · unfold Region.Live at hq3
    omega
  · unfold Ptrs.Ordered at hord''
    omega

/-- `heap_mark()`: the heap pointer, at least `p0.hp`. -/
def MarkRet (a : AwE σ) (vs : List (ValueHOL 64)) (v : ValueHOL 64) (t : State σ) : Prop :=
  ∃ (w : BitVec 64) (p : Ptrs), v = .val (.word w) ∧ ptrsOf t = some p ∧ w.toNat = p.hp ∧
    a.p0.hp ≤ w.toNat ∧ w.toNat ≤ heapEnd ∧ w.toNat % 8 = 0

theorem asp_mark {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode) :
    ASp a X (nm "heap_mark") (fun vs _ => vs = []) (MarkRet a) := by
  have hspec := (markSpec'_heap_mark (σ := σ) hC).and
    (Helpers.funSpec_dom (σ := σ) (X := X) (nm "heap_mark"))
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  subst hv
  obtain ⟨hA, hD⟩ := hspec vs body callee rs hl s hs hloc _ hr
  have hg : Good (some (PanSemResultExact.returned v)) := by simp [Good]
  obtain ⟨hm, hgl, hret⟩ := hA hg hP
  have hv1 := hret v rfl
  have hinv0 := hinv
  obtain ⟨Γ', p0', hG, hp, e1, e2, e3, e4, -⟩ := hinv0
  obtain ⟨a1, b1, c1, ha1, hb1, hc1, rfl⟩ := AllocImpl.ptrsOf_some hp
  have hw : v = .val (.word a1) := mark_val_word hv1 ha1
  have hord : (⟨a1.toNat, b1.toNat, c1.toNat⟩ : Ptrs).Ordered := by
    obtain ⟨q, hq, ho, -⟩ := hG
    rw [hp] at hq
    cases hq
    exact ho
  have hp' : ptrsOf (evaluateHOLFiniteState s body).2 = some ⟨a1.toNat, b1.toNat, c1.toNat⟩ := by
    rw [ptrsOf_congr hgl]; exact hp
  refine ⟨awInv_same hK hinv hm hgl hD.1 hD.2, a1, _, hw, hp', rfl, ?_, ?_, ?_⟩
  · unfold Ptrs.Mono at e4
    exact e4.1
  · unfold Ptrs.Ordered at hord
    exact hord.2.1
  · unfold Ptrs.Ordered at hord
    exact hord.2.2.2.2.2.1

/-- `heap_release(w)` with `p0.hp ≤ w ≤ heapEnd`, 8-aligned. -/
def RelPre (a : AwE σ) (vs : List (ValueHOL 64)) : Prop :=
  ∃ w : BitVec 64, vs = [.val (.word w)] ∧ a.p0.hp ≤ w.toNat ∧ w.toNat ≤ heapEnd ∧
    w.toNat % 8 = 0

theorem asp_release {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode) :
    ASp a X (nm "heap_release") (fun vs _ => RelPre a vs) (fun _ _ _ => True) := by
  have hspec := (releaseSpec_heap_release (σ := σ) hC).and
    (Helpers.funSpec_dom (σ := σ) (X := X) (nm "heap_release"))
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  subst hv
  obtain ⟨hA, hD⟩ := hspec vs body callee rs hl s hs hloc _ hr
  obtain ⟨w, rfl, h1, h2, h3⟩ := hP
  obtain ⟨hm, hgw, hgo⟩ := hA (by simp [Good]) w rfl
  exact ⟨awInv_release hK hinv h1 h2 h3 hm hD.1 hD.2 hgw hgo, trivial⟩

/-! ## Statement rules -/

/-- The statement pre. -/
def APre (a : AwE σ) (L : Locals → Prop) (t : State σ) : Prop := AwInv a t ∧ L t.locals

/-- The statement post. A normal end keeps the invariant and `L`; a returned value keeps the
invariant and satisfies `Ret`; abnormal ends owe nothing. -/
def AQ (a : AwE σ) (L : Locals → Prop) (Ret : ValueHOL 64 → Prop)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  NB r ∧ (r = none → AwInv a t ∧ L t.locals) ∧
    (∀ v, r = some (.returned v) → AwInv a t ∧ Ret v)

theorem aq_abn {a : AwE σ} {L : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    {r : PanSemResultExact 64} {t : State σ} (h : Abn r) : AQ a L Ret (some r) t :=
  ⟨nb_abn h, (fun h' => nomatch h'), fun v hv =>
    absurd (Option.some.inj hv) (abn_ne_returned h v)⟩

theorem hoareG_skipA {a : AwE σ} {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ m, L m → L' m) : HoareG σ X (APre a L) .skip (AQ a L' Ret) :=
  hoareG_skip fun _ _ hp => ⟨nb_none, fun _ => ⟨hp.1, h _ hp.2⟩, (fun _ h => nomatch h)⟩

theorem hoareG_assignA {a : AwE σ} (hK : AwOK a) {n : MlS} {e : ExpHOL 64}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      L' (s.locals.update (n, v))) :
    HoareG σ X (APre a L) (.assign .local n e) (AQ a L' Ret) :=
  hoareG_assign fun s hs hp v hv _ =>
    ⟨nb_none, fun _ => ⟨awInv_same hK hp.1 rfl rfl rfl rfl, h s hs hp.2 v hv⟩, fun _ h => nomatch h⟩

theorem hoareG_returnA {a : AwE σ} (hK : AwOK a) {e : ExpHOL 64}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v → Ret v) :
    HoareG σ X (APre a L) (.return e) (AQ a L' Ret) :=
  hoareG_return fun s hs hp v hv =>
    ⟨nb_ret _, (fun h => nomatch h), fun w hw => by
      simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
      subst hw
      exact ⟨awInv_same hK hp.1 rfl rfl rfl rfl, h s hs hp.2 _ hv⟩⟩

theorem hoareG_seqA {a : AwE σ} {c d : ProgHOL 64} {L1 L2 L3 : Locals → Prop}
    {Ret : ValueHOL 64 → Prop}
    (hc : HoareG σ X (APre a L1) c (AQ a L2 Ret)) (hd : HoareG σ X (APre a L2) d (AQ a L3 Ret)) :
    HoareG σ X (APre a L1) (.seq c d) (AQ a L3 Ret) :=
  hoareG_seq hc (fun _ _ _ hr _ h => ⟨h.1, fun h' => absurd h' hr, h.2.2⟩)
    (hoareG_pre hd fun _ _ h => h.2.1 rfl)

theorem hoareG_preA {a : AwE σ} {c : ProgHOL 64} {L L' : Locals → Prop}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    (h : HoareG σ X (APre a L') c Q) (hL : ∀ m, L m → L' m) : HoareG σ X (APre a L) c Q :=
  hoareG_pre h fun _ _ hp => ⟨hp.1, hL _ hp.2⟩

theorem hoareG_postA {a : AwE σ} {c : ProgHOL 64} {P : State σ → Prop} {L L' : Locals → Prop}
    {Ret Ret' : ValueHOL 64 → Prop} (h : HoareG σ X P c (AQ a L Ret))
    (hL : ∀ m, L m → L' m) (hR : ∀ v, Ret v → Ret' v) : HoareG σ X P c (AQ a L' Ret') :=
  hoareG_conseq h (fun _ _ hp => hp) fun _ _ _ _ hq =>
    ⟨hq.1, fun hr => ⟨(hq.2.1 hr).1, hL _ (hq.2.1 hr).2⟩,
      fun v hv => ⟨(hq.2.2 v hv).1, hR v (hq.2.2 v hv).2⟩⟩

theorem hoareG_decA {a : AwE σ} (hK : AwOK a) {x : MlS} {sh : ShapeHOL} {e : ExpHOL 64}
    {body : ProgHOL 64} {L Lout : Locals → Prop} {L' : Locals → Locals → Prop}
    {Ret : ValueHOL 64 → Prop}
    (h : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      shapeEqHOL sh (shapeOfHOLExact v) = true →
      HoareG σ X (APre a (fun m' => m' = s.locals.update (x, v))) body
        (AQ a (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (x, m.lookup x))) :
    HoareG σ X (APre a L) (.dec x sh e body) (AQ a Lout Ret) := by
  refine hoareG_dec fun s hs hp v hv hsh => ?_
  refine hoareG_conseq (h s hs hp.2 v hv hsh) (fun t _ ht => ?_) ?_
  · subst ht
    exact ⟨awInv_same hK hp.1 rfl rfl rfl rfl, rfl⟩
  · intro r t _ _ hq
    exact ⟨hq.1, fun hr => ⟨awInv_same hK (hq.2.1 hr).1 rfl rfl rfl rfl,
      hout _ _ hp.2 (hq.2.1 hr).2⟩, fun v hv => ⟨awInv_same hK (hq.2.2 v hv).1 rfl rfl rfl rfl,
      (hq.2.2 v hv).2⟩⟩

/-- A loop; the body completes normally with `J`, or leaves abnormally. -/
theorem hoareG_whileA {a : AwE σ} (hK : AwOK a) {c : ExpHOL 64} {body : ProgHOL 64} {J J' : Locals → Prop}
    {Ret : ValueHOL 64 → Prop}
    (hb : HoareG σ X (fun s => APre a J s ∧ CondTrue s c) body (AQ a J Ret))
    (hexit : ∀ s : State σ, InCtx s X → J s.locals → ev s c = some (.val (.word 0)) →
      J' s.locals) :
    HoareG σ X (APre a J) (.while c body) (AQ a J' Ret) := by
  refine hoareG_while (fun t h => ⟨awInv_same hK h.1 rfl rfl rfl rfl, h.2⟩) ?_
    (fun s hs h hc => ⟨nb_none, fun _ => ⟨h.1, hexit s hs h.2 hc⟩, (fun _ h => nomatch h)⟩)
  intro t hs hpre hgood
  obtain ⟨hnb, hn, hr⟩ := hb t hs hpre hgood
  refine ⟨fun h0 => hn h0, fun h1 => absurd h1 hnb.2, fun h1 => absurd h1 hnb.1, ?_⟩
  intro r' h0 _ _
  exact ⟨hnb, fun h => absurd (h0.symm.trans h) (by simp), hr⟩

/-! ## Calls through `ASp` -/

theorem awInv_entry {a : AwE σ} (hK : AwOK a) {s : State σ} (h : AwInv a s)
    (callee : Locals) : AwInv a (callEntryStateHOLFinite s callee) :=
  awInv_same hK h rfl rfl rfl rfl

/-- `f(args);`, from any state predicate `P` that gives the invariant. -/
theorem hoareG_callAsP {a : AwE σ} (hK : AwOK a) {f : MlS} {args : List (ExpHOL 64)}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ASp a X f Pre Ret)
    {P : State σ → Prop} {L L' : Locals → Prop} {Ret' : ValueHOL 64 → Prop}
    (hPA : ∀ s : State σ, InCtx s X → P s → APre a L s)
    (hpre : ∀ s : State σ, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hL : ∀ (s : State σ) vs v (st : State σ), L s.locals → evs s args = some vs →
      Ret vs v st → L' s.locals) :
    HoareG σ X P (.call (some (none, none)) f args) (AQ a L' Ret') := by
  refine hoareG_callD hf ?_ ?_
  · intro s hs hP vs hvs callee v st hR hctx
    have hP' := hPA s hs hP
    obtain ⟨hI, hRet⟩ := hR (awInv_entry hK hP'.1 callee) (hpre s hs hP vs hvs callee) v rfl
    exact ⟨nb_none, fun _ => ⟨awInv_same hK hI rfl rfl rfl rfl, hL s vs v st hP'.2 hvs hRet⟩,
      (fun _ h => nomatch h)⟩
  · intro s hs hP vs hvs callee r st hR hctx habn
    exact aq_abn habn

/-- `f(args);` -/
theorem hoareG_callAs {a : AwE σ} (hK : AwOK a) {f : MlS} {args : List (ExpHOL 64)}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ASp a X f Pre Ret)
    {L L' : Locals → Prop} {Ret' : ValueHOL 64 → Prop}
    (hpre : ∀ s : State σ, InCtx s X → APre a L s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hL : ∀ (s : State σ) vs v (st : State σ), L s.locals → evs s args = some vs →
      Ret vs v st → L' s.locals) :
    HoareG σ X (APre a L) (.call (some (none, none)) f args) (AQ a L' Ret') :=
  hoareG_callAsP hK hf (fun _ _ h => h) hpre hL

/-- `x = f(args);` -/
theorem hoareG_callAsA {a : AwE σ} (hK : AwOK a) {f x : MlS} {args : List (ExpHOL 64)}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ASp a X f Pre Ret)
    {L L' : Locals → Prop} {Ret' : ValueHOL 64 → Prop}
    (hpre : ∀ s : State σ, InCtx s X → APre a L s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hL : ∀ (s : State σ) vs v (st : State σ), L s.locals → evs s args = some vs →
      Ret vs v st → isValidValueHOLExact s.toExact .local x v = true →
      L' (s.locals.update (x, v))) :
    HoareG σ X (APre a L) (.call (some (some (.local, x), none)) f args) (AQ a L' Ret') := by
  refine hoareG_callA hf ?_ ?_
  · intro s hs hP vs hvs callee v st hR hctx hval
    obtain ⟨hI, hRet⟩ := hR (awInv_entry hK hP.1 callee) (hpre s hs hP vs hvs callee) v rfl
    exact ⟨nb_none, fun _ => ⟨awInv_same hK hI rfl rfl rfl rfl,
      hL s vs v st hP.2 hvs hRet hval⟩, (fun _ h => nomatch h)⟩
  · intro s hs hP vs hvs callee r st hR hctx habn
    exact aq_abn habn

/-- `return f(args)` -/
theorem hoareG_tailAs {a : AwE σ} (hK : AwOK a) {f : MlS} {args : List (ExpHOL 64)}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ASp a X f Pre Ret)
    {L L' : Locals → Prop} {Ret' : ValueHOL 64 → Prop}
    (hpre : ∀ s : State σ, InCtx s X → APre a L s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hL : ∀ (vs : List (ValueHOL 64)) v (st : State σ), Ret vs v st → Ret' v) :
    HoareG σ X (APre a L) (.call none f args) (AQ a L' Ret') := by
  refine hoareG_tailCall hf ?_ ?_
  · intro s hs hP vs hvs callee v st hR hctx
    obtain ⟨hI, hRet⟩ := hR (awInv_entry hK hP.1 callee) (hpre s hs hP vs hvs callee) v rfl
    refine ⟨nb_ret _, (fun h => nomatch h), fun w hw => ?_⟩
    simp only [Option.some.injEq, PanSemResultExact.returned.injEq] at hw
    subst hw
    exact ⟨awInv_same hK hI rfl rfl rfl rfl, hL vs v st hRet⟩
  · intro s hs hP vs hvs callee r st hR hctx habn
    exact aq_abn habn

/-- `var rn = f(args); k`, from any state predicate `P` that gives the invariant. -/
theorem hoareG_decCallAsP {a : AwE σ} (hK : AwOK a) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ASp a X f Pre Ret)
    {P : State σ → Prop} {L Lout : Locals → Prop} {L' : Locals → Locals → Prop}
    {Ret' : ValueHOL 64 → Prop}
    (hPA : ∀ s : State σ, InCtx s X → P s → APre a L s)
    (hpre : ∀ s : State σ, InCtx s X → P s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hk : ∀ (s : State σ) vs v (st : State σ), InCtx s X → L s.locals → evs s args = some vs →
      AwInv a st → Ret vs v st → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k
        (AQ a (L' s.locals) Ret'))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X P (.decCall rn sh f args k) (AQ a Lout Ret') := by
  refine hoareG_decCall hf ?_ ?_
  · intro s hs hP vs hvs callee v st hR hctx hsh
    have hP' := hPA s hs hP
    obtain ⟨hI, hRet⟩ := hR (awInv_entry hK hP'.1 callee) (hpre s hs hP vs hvs callee) v rfl
    refine hoareG_conseq (hk s vs v st hs hP'.2 hvs hI hRet hsh) (fun t _ ht => ?_) ?_
    · exact ht
    · intro r t _ _ hq
      exact ⟨hq.1, fun hr => ⟨awInv_same hK (hq.2.1 hr).1 rfl rfl rfl rfl,
        hout _ _ hP'.2 (hq.2.1 hr).2⟩, fun w hw => ⟨awInv_same hK (hq.2.2 w hw).1 rfl rfl rfl rfl,
        (hq.2.2 w hw).2⟩⟩
  · intro s hs hP vs hvs callee r st hR hctx habn
    exact aq_abn habn

/-- `var rn = f(args); k` -/
theorem hoareG_decCallAs {a : AwE σ} (hK : AwOK a) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ASp a X f Pre Ret)
    {L Lout : Locals → Prop} {L' : Locals → Locals → Prop} {Ret' : ValueHOL 64 → Prop}
    (hpre : ∀ s : State σ, InCtx s X → APre a L s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hk : ∀ (s : State σ) vs v (st : State σ), InCtx s X → L s.locals → evs s args = some vs →
      AwInv a st → Ret vs v st → shapeEqHOL (shapeOfHOLExact v) sh = true →
      HoareG σ X (fun t => t = setVarHOLFinite rn v { st with locals := s.locals }) k
        (AQ a (L' s.locals) Ret'))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X (APre a L) (.decCall rn sh f args k) (AQ a Lout Ret') :=
  hoareG_decCallAsP hK hf (fun _ _ h => h) hpre hk hout

/-- `var rn = f(args); k`, with the continuation's precondition given by a locals invariant. -/
theorem hoareG_decCallAs' {a : AwE σ} (hK : AwOK a) {f rn : MlS} {sh : ShapeHOL}
    {args : List (ExpHOL 64)} {k : ProgHOL 64}
    {Pre : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (hf : ASp a X f Pre Ret)
    {L Lout Lk : Locals → Prop} {L' : Locals → Locals → Prop} {Ret' : ValueHOL 64 → Prop}
    (hpre : ∀ s : State σ, InCtx s X → APre a L s → ∀ vs, evs s args = some vs →
      ∀ callee, Pre vs (callEntryStateHOLFinite s callee))
    (hnew : ∀ (s : State σ) vs v (st : State σ), L s.locals → evs s args = some vs →
      Ret vs v st → shapeEqHOL (shapeOfHOLExact v) sh = true → Lk (s.locals.update (rn, v)))
    (hk : ∀ (s : State σ), HoareG σ X (APre a Lk) k (AQ a (L' s.locals) Ret'))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (rn, m.lookup rn))) :
    HoareG σ X (APre a L) (.decCall rn sh f args k) (AQ a Lout Ret') :=
  hoareG_decCallAs hK hf hpre (fun s vs v st hs hL hvs hI hRet hsh =>
    hoareG_pre (hk s) (fun t _ ht => by
      subst ht
      exact ⟨awInv_same hK hI rfl rfl rfl rfl, hnew s vs v st hL hvs hRet hsh⟩)) hout

/-! ## Stores -/

theorem hoareG_storeA {a : AwE σ} (hK : AwOK a) {addr e : ExpHOL 64} {L : Locals → Prop}
    {Ret : ValueHOL 64 → Prop}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ w, ev s addr = some (.val (.word w)) →
      a.h0 ≤ w.toNat)
    (hone : ∀ s : State σ, InCtx s X → L s.locals → ∀ v, ev s e = some v →
      ∃ x, flattenHOL v = [x]) :
    HoareG σ X (APre a L) (.store addr e) (AQ a L Ret) := by
  refine hoareG_store fun s hs hP w v mem ha hv hst => ?_
  obtain ⟨x, hx⟩ := hone s hs hP.2 v hv
  rw [hx] at hst
  obtain ⟨hm, -⟩ := store1_mod hst
  exact ⟨nb_none, fun _ => ⟨awInv_write hK hP.1 rfl rfl rfl hm
    (fun y hy => by rw [hy]; exact haddr s hs hP.2 w ha), hP.2⟩, (fun _ h => nomatch h)⟩

theorem hoareG_storeByteA {a : AwE σ} (hK : AwOK a) {addr e : ExpHOL 64} {L : Locals → Prop}
    {Ret : ValueHOL 64 → Prop}
    (haddr : ∀ s : State σ, InCtx s X → L s.locals → ∀ w, ev s addr = some (.val (.word w)) →
      a.h0 ≤ w.toNat) :
    HoareG σ X (APre a L) (.storeByte addr e) (AQ a L Ret) := by
  refine hoareG_storeByte fun s hs hP w x mem ha _ hst => ?_
  have hm := storeByte_mod hst
  have h8 := hK.h8
  exact ⟨nb_none, fun _ => ⟨awInv_write hK hP.1 rfl rfl rfl hm
    (fun y hy => by
      rw [hy, byteAlign_toNat]
      have := haddr s hs hP.2 w ha
      omega), hP.2⟩, (fun _ h => nomatch h)⟩

/-! ## Writers called with a pointer at or above `h0` -/

theorem asp_mono_pre {a : AwE σ} {f : MlS} {Pre Pre' : List (ValueHOL 64) → State σ → Prop}
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop} (h : ASp a X f Pre' Ret)
    (hP : ∀ vs s, Pre vs s → Pre' vs s) : ASp a X f Pre Ret :=
  fun vs body callee rs hl s hs hloc r hr hinv hpre v hv =>
    h vs body callee rs hl s hs hloc r hr hinv (hP vs s hpre) v hv

theorem asp_of_footRet' {a : AwE σ} (hK : AwOK a) {f : MlS}
    {PreF PreX : List (ValueHOL 64) → Prop}
    {R : List (ValueHOL 64) → BitVec 64 → Prop} {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f PreF R RetF) (hR : ∀ vs x, PreX vs → R vs x → a.h0 ≤ x.toNat) :
    ASp a X f (fun vs _ => PreF vs ∧ PreX vs) (fun vs v _ => RetF vs v) := by
  have hd := Helpers.funSpec_dom (σ := σ) (X := X) f
  intro vs body callee rs hl s hs hloc r hr hinv hP v hv
  have h1 := hf vs body callee rs hl s hs hloc r hr
  have h2 := hd vs body callee rs hl s hs hloc r hr
  subst hv
  obtain ⟨hg, hmod, hret⟩ := h1 (by simp [Good]) hP.1
  exact ⟨awInv_write hK hinv hg h2.1 h2.2 hmod (hR vs · hP.2), hret v rfl⟩

/-- The precondition of a writer: the destination is at or above `h0`, at most `2^61`. -/
def PreW (a : AwE σ) (vs : List (ValueHOL 64)) : Prop :=
  ∃ D : BitVec 64, argW vs 0 = some D ∧ a.h0 ≤ D.toNat ∧ D.toNat ≤ 2 ^ 60

theorem asp_writer {a : AwE σ} (hK : AwOK a) {f : MlS}
    {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f HdrPreW (AbvArg 0) RetF) :
    ASp a X f (fun vs _ => PreW a vs) (fun vs v _ => RetF vs v) :=
  asp_mono_pre (asp_of_footRet' (PreX := fun vs => ∃ D : BitVec 64, argW vs 0 = some D ∧
      a.h0 ≤ D.toNat) hK hf (fun vs x ⟨D, hD, hh⟩ ⟨D', hD', hab⟩ => by
        rw [hD] at hD'
        cases hD'
        exact abvR_above hK.h8 hh hab))
    (fun vs _ ⟨D, hD, h1, h2⟩ => ⟨⟨D, hD, by omega⟩, D, hD, h1⟩)

/-- The pointer `x` and the length `w` after a writer call. -/
def TWn (lo : Nat) (x : MlS) (m : Locals) : Prop :=
  ∃ T : BitVec 64, ∃ k : Nat, m.lookup x = some (.val (.word T)) ∧
    m.lookup wN = some (.val (.word (BitVec.ofNat 64 k))) ∧ lo ≤ T.toNat ∧ 1 ≤ k ∧
    T.toNat + k ≤ B0 ∧ T.toNat < domTop + 8

/-! ## From a body proof to `AWSpec` -/

theorem newFresh_of_sub {Γ Γ' : Gam} {p p' : Ptrs} (h : Sub Γ Γ') : NewFresh Γ Γ' p p' :=
  fun o ho x h1 h2 => Or.inl (h o ho x h1 h2)

theorem awSpec_of_hoareG {C : Cfg} {H : Hooks σ} (hH : HooksLawful C H) (hT : TagSlots C)
    (hAG : AllocGlobs C) {f : MlS} {gw : List MlS}
    {Pre : List (ValueHOL 64) → State σ → Nat → Prop} {PV : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (h : ∀ vs body callee rs, lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) →
      ∀ (s0 : State σ) (Γ : Gam) (h0 : Nat) (p : Ptrs), InCtx s0 X → s0.locals = callee →
        AwOK (⟨C, H, gw, s0, Γ, p, h0⟩ : AwE σ) →
        G C H Γ s0 → ptrsOf s0 = some p → Below Γ h0 → Pre vs s0 h0 →
        HoareG σ X (fun t => t = s0) body
          (AQ (⟨C, H, gw, s0, Γ, p, h0⟩ : AwE σ) (fun _ => True) (PV vs))) :
    AWSpec σ X C H f gw Pre (fun vs _ v _ => PV vs v) := by
  intro vs body callee rs hl s hs hloc r hr v hv Γ h0 p hG hp hB h8 hbase hle hPre
  subst hv
  have hord : p.Ordered := by
    obtain ⟨q, hq, ho, -⟩ := hG
    rw [hp] at hq
    cases hq
    exact ho
  let a : AwE σ := ⟨C, H, gw, s, Γ, p, h0⟩
  have hK : AwOK a := ⟨hH, hT, hAG, h8, hle, hord, hbase⟩
  have := h vs body callee rs hl s Γ h0 p hs hloc hK hG hp hB hPre s hs rfl
    (by rw [hr]; simp [Good])
  rw [hr] at this
  obtain ⟨-, -, hret⟩ := this
  obtain ⟨⟨Γ', p', hG', hp', e1, e2, e3, e4, e5, e6⟩, hP⟩ := hret v rfl
  exact ⟨Γ', p', hG', hp', e1, newFresh_of_sub e2, e3, e4, e5, e6, hP⟩


/-! ## Pointer-chasing steps, in the allocation-level kit -/

/-- `w = f(x, rest...)` for a writer; `w` gets a length. -/
theorem hoareG_callPtrA {a : AwE σ} (hK : AwOK a) {f x : MlS} {rest : List (ExpHOL 64)}
    {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : ASp a X f (fun vs _ => PreW a vs) (fun vs v _ => RetF vs v))
    (hRetK : ∀ vs v, RetF vs v → ∀ X' : BitVec 64, argW vs 0 = some X' →
      ∃ k : Nat, v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧ X'.toNat + k ≤ B0 ∧
        X'.toNat < domTop + 8)
    {lo hi : Nat} (hlo : a.h0 ≤ lo) (hhi : hi ≤ 2 ^ 60) {L : Locals → Prop}
    (hL : ∀ m, L m → Bd m x lo hi) (hLw : ∀ m v, L m → L (m.update (wN, v)))
    (hwx : wN ≠ x) {Ret : ValueHOL 64 → Prop} :
    HoareG σ X (APre a L) (callW f (lv x :: rest)) (AQ a (fun m => L m ∧ TWn lo x m) Ret) := by
  refine hoareG_callAsA hK hf ?_ ?_
  · intro s hs hP vs hvs callee
    obtain ⟨X0, hx, h1, h2⟩ := hL _ hP.2
    obtain ⟨v0, vs', rfl, hv0, -⟩ := evs_cons_inv hvs
    rw [ev_lw hx] at hv0
    cases hv0
    exact ⟨X0, rfl, by omega, by omega⟩
  · intro s vs v st hLs hvs hret _
    obtain ⟨X0, hx, h1, h2⟩ := hL _ hLs
    obtain ⟨v0, vs', rfl, hv0, -⟩ := evs_cons_inv hvs
    rw [ev_lw hx] at hv0
    cases hv0
    obtain ⟨k, hk, hk1, hb, hI⟩ := hRetK _ v hret X0 rfl
    subst hk
    exact ⟨hLw _ _ hLs, X0, k, by rw [lookup_update_ne _ _ hwx]; exact hx,
      lookup_update_self _ _ _, h1, hk1, hb, hI⟩

/-- `y = x + w`. -/
theorem hoareG_addWA {a : AwE σ} (hK : AwOK a) {x y : MlS} {lo : Nat}
    {L L' : Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hL' : ∀ (m : Locals) (W : BitVec 64), L m → lo ≤ W.toNat → W.toNat ≤ B0 →
      L' (m.update (y, .val (.word W)))) :
    HoareG σ X (APre a (fun m => L m ∧ TWn lo x m)) (.assign .local y (.op .add [lv x, lv wN]))
      (AQ a L' Ret) := by
  refine hoareG_assignA hK fun s _ ⟨hL, T, k, hT, hw, h1, hk1, h2, hI⟩ v hv => ?_
  rw [ev_add2 (ev_lw hT) (ev_lw hw)] at hv
  cases hv
  have hs0 : B0 < 2 ^ 62 := by unfold B0 domTop; decide
  have hadd : (T + BitVec.ofNat 64 k).toNat = T.toNat + k := toNat_addc (by omega)
  exact hL' _ _ hL (by omega) (by omega)

/-- `var w = f(x, rest...); k` for a writer. -/
theorem hoareG_decCallPtrA {a : AwE σ} (hK : AwOK a) {f x : MlS} {rest : List (ExpHOL 64)}
    {k : ProgHOL 64} {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : ASp a X f (fun vs _ => PreW a vs) (fun vs v _ => RetF vs v))
    (hRetK : ∀ vs v, RetF vs v → ∀ X' : BitVec 64, argW vs 0 = some X' →
      ∃ k : Nat, v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧ X'.toNat + k ≤ B0 ∧
        X'.toNat < domTop + 8)
    {lo hi : Nat} (hlo : a.h0 ≤ lo) (hhi : hi ≤ 2 ^ 60) {L Lout : Locals → Prop}
    {L' : Locals → Locals → Prop} {Ret : ValueHOL 64 → Prop}
    (hL : ∀ m, L m → Bd m x lo hi) (hLw : ∀ m v, L m → L (m.update (wN, v)))
    (hwx : wN ≠ x)
    (hk : ∀ s : State σ, HoareG σ X (APre a (fun m => L m ∧ TWn lo x m)) k
      (AQ a (L' s.locals) Ret))
    (hout : ∀ m m', L m → L' m m' → Lout (m'.resVarEq (wN, m.lookup wN))) :
    HoareG σ X (APre a L) (.decCall wN .one f (lv x :: rest) k) (AQ a Lout Ret) := by
  refine hoareG_decCallAs' hK hf (Lk := fun m => L m ∧ TWn lo x m) ?_ ?_ hk hout
  · intro s hs hP vs hvs callee
    obtain ⟨X0, hx, h1, h2⟩ := hL _ hP.2
    obtain ⟨v0, vs', rfl, hv0, -⟩ := evs_cons_inv hvs
    rw [ev_lw hx] at hv0
    cases hv0
    exact ⟨X0, rfl, by omega, by omega⟩
  · intro s vs v st hLs hvs hret _
    obtain ⟨X0, hx, h1, h2⟩ := hL _ hLs
    obtain ⟨v0, vs', rfl, hv0, -⟩ := evs_cons_inv hvs
    rw [ev_lw hx] at hv0
    cases hv0
    obtain ⟨k, hk, hk1, hb, hI⟩ := hRetK _ v hret X0 rfl
    subst hk
    exact ⟨hLw _ _ hLs, X0, k, by rw [lookup_update_ne _ _ hwx]; exact hx,
      lookup_update_self _ _ _, h1, hk1, hb, hI⟩

theorem retKx_enc : ∀ vs v, EncRetA vs v → ∀ X' : BitVec 64, argW vs 0 = some X' →
    ∃ k : Nat, v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧ X'.toNat + k ≤ B0 ∧
      X'.toNat < domTop + 8 := by
  intro vs v h X' hx
  obtain ⟨hI, k, hk, hk1, hb⟩ := h X' hx
  exact ⟨k, hk, hk1, hb, hI⟩

theorem retKx_fin : ∀ vs v, FinRetA vs v → ∀ X' : BitVec 64, argW vs 0 = some X' →
    ∃ k : Nat, v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧ X'.toNat + k ≤ B0 ∧
      X'.toNat < domTop + 8 := by
  intro vs v h X' hx
  obtain ⟨hI, k, hk, hk1, hb, -⟩ := h X' hx
  exact ⟨k, hk, hk1, hb, hI⟩

theorem retKx_w : ∀ vs v, WRetA vs v → ∀ X' : BitVec 64, argW vs 0 = some X' →
    ∃ k : Nat, v = .val (.word (BitVec.ofNat 64 k)) ∧ 1 ≤ k ∧ X'.toNat + k ≤ B0 ∧
      X'.toNat < domTop + 8 := by
  intro vs v h X' hx
  obtain ⟨hI, k, hk, hk1, hb⟩ := h X' hx
  exact ⟨k, hk, hk1, hb, hI⟩

/-- A conditional; both branches from the same invariant. -/
theorem hoareG_iteA {a : AwE σ} {c : ExpHOL 64} {c1 c2 : ProgHOL 64} {L L' : Locals → Prop}
    {Ret : ValueHOL 64 → Prop} (h1 : HoareG σ X (APre a L) c1 (AQ a L' Ret))
    (h2 : HoareG σ X (APre a L) c2 (AQ a L' Ret)) :
    HoareG σ X (APre a L) (.ite c c1 c2) (AQ a L' Ret) :=
  hoareG_ite (hoareG_pre h1 (fun s _ h => h.1)) (hoareG_pre h2 (fun s _ h => h.1))

/-- `memcpy` relative to the invariant. -/
def MemPre (a : AwE σ) (vs : List (ValueHOL 64)) : Prop :=
  ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 2 = some N ∧ a.h0 ≤ D.toNat ∧ D.toNat ≤ 2 ^ 62

theorem asp_memcpy {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) :
    ASp a X (nm "memcpy") (fun vs _ => MemPre a vs) (fun vs v _ => MemcpyRetA vs v) :=
  asp_mono_pre (asp_of_footRet' (PreX := fun vs => ∃ D : BitVec 64, argW vs 0 = some D ∧
      a.h0 ≤ D.toNat) hK (footRet_memcpyA hC hA hT) (fun vs x ⟨D, hD, hh⟩ ⟨D', hD', hab⟩ => by
        rw [hD] at hD'
        cases hD'
        exact abvR_above hK.h8 hh hab))
    (fun vs _ ⟨D, N, hD, hN, h1, h2⟩ => ⟨⟨D, N, hD, hN, h2⟩, D, hD, h1⟩)

theorem less_small {x y : BitVec 64} (hx : x.toNat < 2 ^ 63) (hy : y.toNat < 2 ^ 63)
    (h : Flapjack.Compiler.Encoders.Asm.wordCmpHOL .less x y = true) : x.toNat < y.toNat := by
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, Flapjack.Compiler.Encoders.Asm.holAsmSignedLess,
    hx, hy, if_true, decide_eq_true_eq] at h
  exact h

/-- Sequencing from any state predicate. -/
theorem hoareG_seqP {a : AwE σ} {P : State σ → Prop} {c d : ProgHOL 64} {L2 L3 : Locals → Prop}
    {Ret : ValueHOL 64 → Prop} (hc : HoareG σ X P c (AQ a L2 Ret))
    (hd : HoareG σ X (APre a L2) d (AQ a L3 Ret)) :
    HoareG σ X P (.seq c d) (AQ a L3 Ret) :=
  hoareG_seq hc (fun _ _ _ hr _ h => ⟨h.1, fun h' => absurd h' hr, h.2.2⟩)
    (hoareG_pre hd fun _ _ h => h.2.1 rfl)

theorem toNat_sub_small {w : BitVec 64} (h : w.toNat ≤ 2047) :
    (BitVec.ofNat 64 2047 - w).toNat = 2047 - w.toNat := by
  rw [BitVec.toNat_sub, BitVec.toNat_ofNat]
  omega

theorem ev_lsr3 {s : State σ} {x : MlS} {V : BitVec 64}
    (h : s.locals.lookup x = some (.val (.word V))) :
    ev s (.shift .lsr (lv x) (cw 3)) = some (.val (.word (V >>> (3 : Nat)))) := by
  rw [ev_shift (ev_lw h) (ev_cw _ 3)]
  simp [wordShiftHOL]

theorem ev_and_le {s : State σ} {e : ExpHOL 64} {k : Nat} {v : ValueHOL 64}
    (h : ev s (.op .and [e, cw k]) = some v) : ∃ w : BitVec 64, v = .val (.word w) ∧ w.toNat ≤ k := by
  obtain ⟨x, y, hx, hy, he⟩ := Spec.Inv.ev_op2_inv h
  rw [ev_cw] at hy
  cases hy
  rw [he] at h
  simp [wordOpHOL] at h
  obtain ⟨a, ha, rfl⟩ := h
  refine ⟨a, rfl, ?_⟩
  simp [wordOp] at ha
  subst ha
  show (x &&& (BitVec.ofNat 64 k &&& 18446744073709551615#64)).toNat ≤ k
  rw [BitVec.toNat_and, BitVec.toNat_and, BitVec.toNat_ofNat]
  calc _ ≤ (k % 2 ^ 64 &&& (18446744073709551615#64).toNat) := Nat.and_le_right
    _ ≤ k % 2 ^ 64 := Nat.and_le_left
    _ ≤ k := Nat.mod_le _ _

/-- `memzero`, as a footprint spec with the bound as a return fact. -/
def MemzeroRetA (vs : List (ValueHOL 64)) (_ : ValueHOL 64) : Prop :=
  ∀ D N : BitVec 64, argW vs 0 = some D → argW vs 1 = some N →
    N.toNat = 0 ∨ D.toNat + N.toNat ≤ domTop + 64

theorem footRet_memzeroA (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomBelow X) :
    FootRet σ X (nm "memzero")
      (fun vs => ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 1 = some N ∧ D.toNat ≤ 2 ^ 62)
      (AbvArg 0) MemzeroRetA :=
  (funSpec_memzeroA (σ := σ) hC hA hT).mono fun vs s r t h hg hP => by
    obtain ⟨D, N, hD, hN, hb⟩ := hP
    have h' := h hg D N hD hN hb
    refine ⟨h'.1, h'.2.1.mono (fun a ha => ⟨D, hD, ha⟩), fun v _ D2 N2 hD2 hN2 => ?_⟩
    rw [hD] at hD2
    rw [hN] at hN2
    cases hD2
    cases hN2
    exact h'.2.2

def MzPre (a : AwE σ) (vs : List (ValueHOL 64)) : Prop :=
  ∃ D N : BitVec 64, argW vs 0 = some D ∧ argW vs 1 = some N ∧ a.h0 ≤ D.toNat ∧ D.toNat ≤ 2 ^ 62

theorem asp_memzero {a : AwE σ} (hK : AwOK a) (hC : X.code.lookup = guestCode)
    (hA : AlignedDom X) (hT : DomBelow X) :
    ASp a X (nm "memzero") (fun vs _ => MzPre a vs) (fun vs v _ => MemzeroRetA vs v) :=
  asp_mono_pre (asp_of_footRet' (PreX := fun vs => ∃ D : BitVec 64, argW vs 0 = some D ∧
      a.h0 ≤ D.toNat) hK (footRet_memzeroA hC hA hT) (fun vs x ⟨D, hD, hh⟩ ⟨D', hD', hab⟩ => by
        rw [hD] at hD'
        cases hD'
        exact abvR_above hK.h8 hh hab))
    (fun vs _ ⟨D, N, hD, hN, h1, h2⟩ => ⟨⟨D, N, hD, hN, h2⟩, D, hD, h1⟩)

theorem asp_writer' {a : AwE σ} (hK : AwOK a) {f : MlS} {PreF : List (ValueHOL 64) → Prop}
    {RetF : List (ValueHOL 64) → ValueHOL 64 → Prop}
    (hf : FootRet σ X f PreF (AbvArg 0) RetF) (hpre : ∀ vs, PreW a vs → PreF vs) :
    ASp a X f (fun vs _ => PreW a vs) (fun vs v _ => RetF vs v) :=
  asp_mono_pre (asp_of_footRet' (PreX := fun vs => ∃ D : BitVec 64, argW vs 0 = some D ∧
      a.h0 ≤ D.toNat) hK hf (fun vs x ⟨D, hD, hh⟩ ⟨D', hD', hab⟩ => by
        rw [hD] at hD'
        cases hD'
        exact abvR_above hK.h8 hh hab))
    (fun vs _ h => ⟨hpre vs h, h.elim fun D hD => ⟨D, hD.1, hD.2.1⟩⟩)

end InitECandidate.Solver.MemSafe.Aw
