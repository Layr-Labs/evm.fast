import InitECandidate.Solver.MemSafe.Inc.Steps

/-!
# `incorporate_child_on_success`: the body

The running frame `e0` (`ev`) and the child `c0` are two EV records of `Γ0`. The body adds the
child's gas into the frame (`incorporate_child_on_error`, slots 8 / 9 / 23, then 24, the
reservoir split, slots 8 / 9 / 24), appends the child's logs to the frame's list (`log_append`,
which writes only list cells), adds slot 12, and merges the child's deletion table into the
frame's (`htab_union_into`, which writes only table cells). The `prot` slots 8 / 24 written are in
`PWtop`'s frame part; every other `prot` cell written lies outside every EV / CK record or was
unallocated at entry (`pw_back`). Callees keep the EV records' `prot` cells (`keep_ev`), so the
final slots 8 / 24 are `F8 = e8 + c8 + rep`, `F24 = (e24 + c24) - rep` with `rep ≤ e24 + c24`.
-/

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Inc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {σ : Type} {X : Ctx 64}

/-- The footprint of the body. -/
def PWI (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (C : BitVec 64) (a : BitVec 64) : Prop :=
  (ProtCell guestC Γ0 a ∧ PWtopI icsKs [.val (.word C)] s0 Γ0 a ∧ NoMsgI Γ0 a) ∨
    ¬ p0.Allocated a.toNat

/-- The gas values. -/
def gA72 (m : Mem) (e0 c0 : Obj) : BitVec 64 := rd m (e0.cell 9) + rd m (c0.cell 9)
def gA192 (m : Mem) (e0 c0 : Obj) : BitVec 64 := rd m (e0.cell 24) + rd m (c0.cell 24)
def gRep (m : Mem) (e0 c0 : Obj) : BitVec 64 :=
  if wordCmpHOL .lower (gA192 m e0 c0) (gA72 m e0 c0) then gA192 m e0 c0 else gA72 m e0 c0
def gF8 (m : Mem) (e0 c0 : Obj) : BitVec 64 := rd m (e0.cell 8) + rd m (c0.cell 8) + gRep m e0 c0
def gF24 (m : Mem) (e0 c0 : Obj) : BitVec 64 := gA192 m e0 c0 - gRep m e0 c0

/-- **The gas bound**: wrapping only lowers the sum. -/
theorem gas_bound (m : Mem) (e0 c0 : Obj) :
    (gF8 m e0 c0).toNat + (gF24 m e0 c0).toNat ≤
      (rd m (e0.cell 8)).toNat + (rd m (e0.cell 24)).toNat + (rd m (c0.cell 8)).toNat +
        (rd m (c0.cell 24)).toNat := by
  have hle : (gRep m e0 c0).toNat ≤ (gA192 m e0 c0).toNat := by
    unfold gRep
    split
    · exact le_refl _
    · rename_i h
      simp only [wordCmpHOL, decide_eq_true_eq, BitVec.lt_def] at h
      omega
  unfold gF8 gF24
  rw [BitVec.toNat_sub_of_le (BitVec.le_def.mpr hle)]
  have h1 := (rd m (e0.cell 8) + rd m (c0.cell 8) + gRep m e0 c0).isLt
  rw [BitVec.toNat_add, BitVec.toNat_add] at h1 ⊢
  have h2 : (gA192 m e0 c0).toNat ≤ (rd m (e0.cell 24)).toNat + (rd m (c0.cell 24)).toNat := by
    unfold gA192; rw [BitVec.toNat_add]; exact Nat.mod_le _ _
  have h3 := Nat.mod_le ((rd m (e0.cell 8)).toNat + (rd m (c0.cell 8)).toNat) (2 ^ 64)
  have h4 := Nat.mod_le (((rd m (e0.cell 8)).toNat + (rd m (c0.cell 8)).toNat) % 2 ^ 64 +
    (gRep m e0 c0).toNat) (2 ^ 64)
  omega

/-! ## Package L: the log lists -/

/-- The cells of the running EV record `e0`. -/
def EC (e0 : Obj) (a : BitVec 64) : Prop := ∃ k, k < 35 ∧ a = e0.cell k

/-- The array base and the length of the child's log list. -/
def cP0 (m : Mem) (c : BitVec 64) : BitVec 64 := rd m (fldI m c 88)
def cN0 (m : Mem) (c : BitVec 64) : BitVec 64 := rd m (fldI m c 88 + BitVec.ofNat 64 8)

/-- The child's log array `x` (room for the `N` elements of the child's list at entry) lies in `Γ`,
and every element of it is a log record in range below `hp`. -/
def ArrIn (Γ : Gam) (hp : Nat) (s0 : State σ) (c0 : Obj) (m : Mem) : Prop :=
  (∃ x ∈ Γ, IsLstA x.ty ∧ x.base = cP0 s0.memory c0.base ∧
    8 * (cN0 s0.memory c0.base).toNat ≤ x.size) ∧
  ∀ j, j < (cN0 s0.memory c0.base).toNat →
    LogRecF Γ hp m (rd m (cP0 s0.memory c0.base + BitVec.ofNat 64 (8 * j)))

/-- **What the log appends did so far**: the lists are described by `LogSub` from the entry state,
and the child's array elements are still log records in range. -/
def LsI (Γ0 : Gam) (s0 : State σ) (c0 : Obj) (Γ : Gam) (u : State σ) : Prop :=
  ∀ p', ptrsOf u = some p' → LogSub Γ0 Γ p'.hp s0.memory u.memory ∧
    ArrIn Γ p'.hp s0 c0 u.memory

theorem rd_congr_mem {m m' : Mem} {a : BitVec 64} (h : m' a = m a) : rd m' a = rd m a := by
  unfold rd; rw [h]

theorem lsI_locals {Γ0 Γ : Gam} {s0 u u' : State σ} {c0 : Obj} (h : LsI Γ0 s0 c0 Γ u)
    (hm : u'.memory = u.memory) (hg : u'.globals = u.globals) : LsI Γ0 s0 c0 Γ u' := by
  intro p' hp'
  have : ptrsOf u = some p' := by rw [← Frames.ptrsOf_congr hg]; exact hp'
  rw [hm]; exact h p' this

/-- A call (or a store) after which the lists are described by `LogSub` / `LogW` keeps `LsI`. -/
theorem lsI_call {Γ0 Γ Γ' : Gam} {s0 u t : State σ} {c0 : Obj} {p p' : Ptrs}
    (hext0 : Ext Γ0 Γ) (hord : p.Ordered) (hord' : p'.Ordered) (hmo : p.Mono p')
    (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p') (hu : ptrsOf u = some p)
    (ht : ptrsOf t = some p') (h : LsI Γ0 s0 c0 Γ u)
    (hsub : LogSub Γ Γ' p'.hp u.memory t.memory) (hw : LogW Γ Γ' p'.hp u.memory t.memory)
    (hkf : LogKeep Γ u.memory t.memory) :
    LsI Γ0 s0 c0 Γ' t := by
  intro q hq
  obtain rfl : p' = q := Option.some.inj (ht.symm.trans hq)
  obtain ⟨hs, ⟨x, hx, hxt, hxb, hxs⟩, hlr⟩ := h p hu
  refine ⟨logSub_trans hord hord' hmo hext0 hext hkf hs hsub, ?_⟩
  obtain ⟨x', hx', hb', ht', hs'⟩ := hext x hx
  refine ⟨⟨x', hx', by rw [ht']; exact hxt, by rw [hb']; exact hxb, by omega⟩, fun j hj => ?_⟩
  have hjs : x.HasSlot j := by unfold Obj.HasSlot; omega
  have hcell : cP0 s0.memory c0.base + BitVec.ofNat 64 (8 * j) = x.cell j := by
    unfold Obj.cell; rw [hxb]
  rw [hcell]
  rcases hw (x.cell j) ⟨x, hx, hxt, j, hjs, rfl⟩ with he | hr
  · have := hlr j hj
    rw [hcell] at this
    rw [he]
    exact logRecF_step hmo hext hkf this
  · exact hr

/-- A step that keeps every list cell of `Γ` keeps `LsI`. -/
theorem lsI_keep {H : Hooks σ} (hLH : LstHooks H) {Γ0 Γ Γ' : Gam} {s0 u t : State σ} {c0 : Obj}
    {p p' : Ptrs} (hGu : G guestC H Γ u) (hext0 : Ext Γ0 Γ) (hord' : p'.Ordered)
    (hmo : p.Mono p') (hext : Ext Γ Γ') (hnf : NewFresh Γ Γ' p p') (hu : ptrsOf u = some p)
    (ht : ptrsOf t = some p') (h : LsI Γ0 s0 c0 Γ u)
    (hk : ∀ a, ListCell Γ a → t.memory a = u.memory a) (hkf : LogKeep Γ u.memory t.memory) :
    LsI Γ0 s0 c0 Γ' t := by
  obtain ⟨q, hq, hord, -⟩ := id hGu
  obtain rfl : q = p := Option.some.inj (hq.symm.trans hu)
  exact lsI_call hext0 hord hord' hmo hext hnf hu ht h (logSub_of_listKeep hLH hGu hk)
    (logW_of_keep fun a ha => rd_congr_mem (hk a (Or.inr ha))) hkf

/-- **A store into a cell of an EV record of `Γ`** keeps `LsI`. -/
theorem lsI_store {H : Hooks σ} (hLH : LstHooks H) {Γ0 Γ : Gam} {s0 u : State σ} {c0 o : Obj}
    (hGu : G guestC H Γ u) (hext0 : Ext Γ0 Γ) (h : LsI Γ0 s0 c0 Γ u) (ho : o ∈ Γ)
    (hot : o.ty = tEV) {k : Nat} (hk : o.HasSlot k) (x : BitVec 64) :
    LsI Γ0 s0 c0 Γ { u with memory := Spec.Inv.upd u.memory (o.cell k) x } := by
  obtain ⟨p, hp, hord, hLay, -⟩ := id hGu
  refine lsI_keep hLH hGu hext0 hord (mono_refl p) (ext_refl Γ) (newFresh_refl Γ p p) hp
    (t := { u with memory := Spec.Inv.upd u.memory (o.cell k) x }) ((Frames.ptrsOf_congr rfl).trans hp) h ?_ ?_
  · intro a ha
    exact Spec.Inv.upd_ne (Ne.symm (ne_listCell hord hLay ho (by rw [hot]; decide) hk ha))
  · intro y hy hyt j hj
    refine rd_congr_mem (Spec.Inv.upd_ne fun he => ?_)
    obtain ⟨rfl, -⟩ := cell_inj hord hLay hy ho hj hk he
    rw [hyt] at hot
    exact absurd hot (by decide)

/-- `signed <` on words below `2^63`. -/
theorem cmp_less_nat' {x y : BitVec 64} (hx : x.toNat < 2 ^ 63) (hy : y.toNat < 2 ^ 63) :
    Flapjack.Compiler.Encoders.Asm.wordCmpHOL .less x y = true ↔ x.toNat < y.toNat := by
  have hx' : x.toNat < 9223372036854775808 := by omega
  have hy' : y.toNat < 9223372036854775808 := by omega
  simp only [Flapjack.Compiler.Encoders.Asm.wordCmpHOL,
    Flapjack.Compiler.Encoders.Asm.holAsmSignedLess]
  simp [hx', hy']

section body
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e0 c0 : Obj}

/-- The memory changed only in cells of `e0` (the gas segment). -/
def PMx (e0 : Obj) (s0 : State σ) (_ : Gam) (u : State σ) : Prop :=
  ModifiesOnly (EC e0) s0.memory u.memory

theorem pmx_upd {Γ : Gam} {u : State σ} (h : PMx e0 s0 Γ u) {k : Nat} (hk : k < 35)
    (x : BitVec 64) : PMx e0 s0 Γ { u with memory := Spec.Inv.upd u.memory (e0.cell k) x } := by
  intro a ha
  have hne : a ≠ e0.cell k := fun e => ha ⟨k, hk, e⟩
  show Spec.Inv.upd u.memory (e0.cell k) x a = s0.memory a
  rw [Spec.Inv.upd_ne hne]
  exact h a ha

/-- A state of the body: `child` bound, tracked (with an extra fact `Lx` about the lists), and the
cells read later. -/
def SP (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (e0 c0 : Obj)
    (Lx : Gam → State σ → Prop) (x8 x9 x24 : BitVec 64) (u : State σ) : Prop :=
  u.locals.lookup (nm "child") = some (.val (.word c0.base)) ∧
  (∃ Γ, Struct.Trk guestC H Γ0 s0 p0 (PWI Γ0 s0 p0 c0.base) Γ u ∧ Lx Γ u) ∧
  rd u.memory (e0.cell 8) = x8 ∧ rd u.memory (e0.cell 9) = x9 ∧ rd u.memory (e0.cell 24) = x24 ∧
  rd u.memory (c0.cell 24) = rd s0.memory (c0.cell 24) ∧
  rd u.memory (e0.cell 11) = rd s0.memory (e0.cell 11) ∧
  rd u.memory (e0.cell 17) = rd s0.memory (e0.cell 17) ∧
  rd u.memory (c0.cell 17) = rd s0.memory (c0.cell 17)

/-- The post of the body. -/
def ICQ (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (e0 c0 : Obj)
    (r : Option (PanSemResultExact 64)) (t : State σ) : Prop :=
  ∀ v, r = some (.returned v) → ∃ Γ', Struct.Trk guestC H Γ0 s0 p0 (PWI Γ0 s0 p0 c0.base) Γ' t ∧
    rd t.memory (e0.cell 8) = gF8 s0.memory e0 c0 ∧ rd t.memory (e0.cell 24) = gF24 s0.memory e0 c0 ∧
    ∀ p', ptrsOf t = some p' → LogSub Γ0 Γ' p'.hp s0.memory t.memory

theorem icq_locals (hH : HooksLawful guestC H) (r : Option (PanSemResultExact 64)) (t : State σ)
    (L : HolFiniteMapExact MlS (ValueHOL 64)) (h : ICQ H Γ0 s0 p0 e0 c0 r t) :
    ICQ H Γ0 s0 p0 e0 c0 r { t with locals := L } := by
  intro v hv
  obtain ⟨Γ', hT, h1, h2, h3⟩ := h v hv
  exact ⟨Γ', Struct.trk_congr hH hT rfl rfl rfl rfl, h1, h2,
    fun p' hp' => h3 p' ((Frames.ptrsOf_congr rfl).symm.trans hp')⟩

theorem gev_trk {PW : BitVec 64 → Prop} {Γ : Gam} {u : State σ}
    (h : Struct.Trk guestC H Γ0 s0 p0 PW Γ u) (hev : gword s0 nEv = some e0.base) :
    gword u nEv = some e0.base := by
  obtain ⟨-, -, -, -, -, -, -, hpg, -⟩ := h
  unfold gword at hev ⊢
  rw [hpg nEv (by decide)]
  exact hev

theorem sp_locals (hH : HooksLawful guestC H) {Lx : Gam → State σ → Prop}
    {x8 x9 x24 : BitVec 64} {u u' : State σ}
    (h : SP H Γ0 s0 p0 e0 c0 Lx x8 x9 x24 u)
    (hl : u'.locals.lookup (nm "child") = u.locals.lookup (nm "child"))
    (hm : u'.memory = u.memory) (hg : u'.globals = u.globals) (hd : u'.memaddrs = u.memaddrs)
    (hbe : u'.be = u.be) (hLx : ∀ Γ, Lx Γ u → Lx Γ u') : SP H Γ0 s0 p0 e0 c0 Lx x8 x9 x24 u' := by
  obtain ⟨hc, ⟨Γ, hT, hL⟩, h1, h2, h3, h4, h5, h6, h7⟩ := h
  refine ⟨hl.trans hc, ⟨Γ, Struct.trk_congr hH hT hm hg hd hbe, hLx Γ hL⟩, ?_⟩
  rw [hm]
  exact ⟨h1, h2, h3, h4, h5, h6, h7⟩

/-- The loop invariant / the state after the gas updates. -/
def IT (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (e0 c0 : Obj) (u : State σ) : Prop :=
  ∃ x9, SP H Γ0 s0 p0 e0 c0 (LsI Γ0 s0 c0) (gF8 s0.memory e0 c0) x9 (gF24 s0.memory e0 c0) u

end body

/-! ## The calls of the tail -/

section tail
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e0 c0 : Obj}

/-- The context facts of the body. -/
structure ICtx (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (e0 c0 : Obj) : Prop where
  hord0 : p0.Ordered
  hL0 : Layout guestC p0 Γ0
  he0 : e0 ∈ Γ0
  het : e0.ty = tEV
  hev : gword s0 nEv = some e0.base
  hc0 : c0 ∈ Γ0
  hct : c0.ty = tEV
  hne : c0 ≠ e0
  hX : IcsX0 Γ0 s0.memory e0.base c0.base
  hC : IcsC Γ0 s0.memory p0.hp c0.base

theorem ictx_slot (hc : ICtx H Γ0 s0 p0 e0 c0) {o : Obj} (ho : o = e0 ∨ o = c0) {k : Nat} (hk : k < 35) :
    o.HasSlot k := by
  have : 280 ≤ o.size := by
    rcases ho with rfl | rfl
    · have := (hc.hL0.1 o hc.he0).2.2.2.1; rw [hc.het] at this; exact this
    · have := (hc.hL0.1 o hc.hc0).2.2.2.1; rw [hc.hct] at this; exact this
  unfold Obj.HasSlot; omega

theorem nE (o : Obj) {i j : Nat} (hi : i < 35) (hj : j < 35) (h : i ≠ j) : o.cell i ≠ o.cell j :=
  adr_ne o.base (by omega) (by omega) (by omega)

theorem nCE (hc : ICtx H Γ0 s0 p0 e0 c0) {i j : Nat} (hi : i < 35) (hj : j < 35) :
    c0.cell i ≠ e0.cell j :=
  cne hc.hord0 hc.hL0 hc.hc0 hc.he0 (ictx_slot hc (Or.inr rfl) hi) (ictx_slot hc (Or.inl rfl) hj)
    fun ⟨h, _⟩ => hc.hne h

/-- The current images of the two EV records keep their cells. -/
theorem keep_cells {sg : Sig} {PW' : BitVec 64 → Prop} {Γ Γ' : Gam} {s t : State σ}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs}
    (hc : ICtx H Γ0 s0 p0 e0 c0)
    (hT : Struct.Trk guestC H Γ0 s0 p0 (PWI Γ0 s0 p0 c0.base) Γ s)
    (hcore : SumCore guestC H sg (fun a => ProtCell guestC Γ a ∧ PW' a) Γ s vs r t Γ' p p')
    (hna : ∀ a, ¬ ArgCells sg.params vs a)
    (hPW : ∀ a, PW' a → ∃ y ∈ Γ, y.ty ≠ tEV ∧ ∃ j, y.HasSlot j ∧ a = y.cell j)
    {o : Obj} (ho : o = e0 ∨ o = c0) {k : Nat} (hk : k < 35)
    (hpr : (guestC.ty tEV).slot k = .prot) :
    rd t.memory (o.cell k) = rd s.memory (o.cell k) := by
  have ho0 : o ∈ Γ0 := by rcases ho with rfl | rfl; exacts [hc.he0, hc.hc0]
  have hot : o.ty = tEV := by rcases ho with rfl | rfl; exacts [hc.het, hc.hct]
  obtain ⟨o1, ho1, hb1, ht1, hs1⟩ := Struct.trk_ext hT o ho0
  have hce : o1.cell k = o.cell k := by unfold Obj.cell; rw [hb1]
  have hk1 : o1.HasSlot k := by have := ictx_slot hc ho hk; unfold Obj.HasSlot at *; omega
  have := keep_ev hcore (Struct.trk_G hT) ho1 (ht1.trans hot) hk1 hpr (hna _) hPW
  unfold rd
  rw [← hce, this]


theorem ev_prot : (guestC.ty tEV).slot 11 = .prot ∧ (guestC.ty tEV).slot 17 = .prot := by decide

theorem argCells_fits2 {k1 k2 : FK} {vs : List (ValueHOL 64)} {a : BitVec 64} :
    ¬ ArgCells [.fits k1, .fits k2] vs a := by
  rintro ⟨i, w, -, h⟩
  rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, x, hj, -⟩
  · rcases i with _ | _ | i <;> simp at hn
  · rcases i with _ | _ | i <;> simp at hj

theorem it_locals (hH : HooksLawful guestC H) {u u' : State σ} (h : IT H Γ0 s0 p0 e0 c0 u)
    (hl : u'.locals.lookup (nm "child") = u.locals.lookup (nm "child"))
    (hm : u'.memory = u.memory) (hg : u'.globals = u.globals) (hd : u'.memaddrs = u.memaddrs)
    (hbe : u'.be = u.be) : IT H Γ0 s0 p0 e0 c0 u' := by
  obtain ⟨x9, h⟩ := h
  exact ⟨x9, sp_locals hH h hl hm hg hd hbe fun Γ hL => lsI_locals hL hm hg⟩

/-- **A `log_append(ev, x)` call** keeps the invariant, if the value of `x` is a log record in
range. -/
theorem la_step (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hLH : LstHooks H)
    (hc : ICtx H Γ0 s0 p0 e0 c0) {u : State σ} (hu : IT H Γ0 s0 p0 e0 c0 u) {ld : ExpHOL 64}
    (hld : ∀ Γ, Struct.Trk guestC H Γ0 s0 p0 (PWI Γ0 s0 p0 c0.base) Γ u → LsI Γ0 s0 c0 Γ u →
      ∀ p', ptrsOf u = some p' → ∀ w, ev u ld = some w →
        ∃ lg, w = .val (.word lg) ∧ LogRecF Γ p'.hp u.memory lg) :
    Hoare σ X (fun t => t = u) (callD (nm "log_append") [gev, ld])
      (fun r t => r = none ∧ IT H Γ0 s0 p0 e0 c0 t ∧ t.locals = u.locals) := by
  have hH := hF.hH
  obtain ⟨x9, hlc, ⟨Γ, hT, hLs⟩, h8, h9, h24, hc24, h11, h17, hc17⟩ := hu
  obtain ⟨⟨L0, hL0Γ, hL0b, hL0t, hL0E⟩, -, -⟩ := hc.hX
  refine hoare_callD (FunSpec.and (sumSpec_log_appendV hF hM hLH) (Frames.funSpec_dom _)) ?_
  intro s _ hs vs hvs callee v st hR _
  subst hs
  obtain ⟨hS, hd, hbe⟩ := hR
  have hg := gev_trk hT hc.hev
  obtain ⟨z1, r1, rfl, hz1, hr1⟩ := evs_cons_inv hvs
  rw [ev_gev hg] at hz1
  cases hz1
  obtain ⟨z2, r2, rfl, hz2, hr2⟩ := evs_cons_inv hr1
  have hr2' : r2 = [] := by
    have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at hr2; exact (Option.some.inj hr2).symm
  subst hr2'
  obtain ⟨p, hp, hmT, hx0, hnf0, hG, -⟩ := id hT
  obtain ⟨q, hq, hordq, hLay, -⟩ := id hG
  rw [hp] at hq
  cases hq
  obtain ⟨lg, rfl, hlg⟩ := hld Γ hT hLs p hp z2 hz2
  have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) :=
    Struct.G_congr (s := s) hH rfl rfl rfl rfl hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (Frames.ptrsOf_congr rfl).trans hp
  obtain ⟨L1, hL1, hL1b, hL1t, -⟩ := Struct.trk_ext hT L0 hL0Γ
  have hpre' : LaPre [.val (.word e0.base), .val (.word lg)] (callEntryStateHOLFinite s callee) Γ :=
    ⟨e0.base, L1, hL1, rfl, by rw [hL1b, hL0b]; exact h11.symm,
      by rw [hL1t]; exact hL0t, by rw [hL1t]; exact hL0E⟩
  obtain ⟨Γ', q1, q2, hcore, hQ⟩ := hS (by simp [Good]) (by simp [Abortive]) Γ hGe
    ⟨p, hpe, argsOK_any2⟩ hpre'
  have hq1 : p = q1 := Option.some.inj (hpe.symm.trans hcore.1)
  subst hq1
  obtain ⟨hsub, hw, hkf⟩ := hQ.2 v rfl hpre' e0.base lg rfl p q2 hpe hcore.2.1 hlg
  have hT' := Struct.trk_call hT hc.hord0 hc.hL0 rfl rfl hcore (fun g _ => by simp [laSig])
    (fun a ha => absurd ha argCells_any2)
    (fun a hpc hla => pw_back hc.hord0 hc.hL0 hT hpc (laPW_obj hLay hla) icsKs _) hd hbe
  have hPWo : ∀ a, LaPW Γ a → ∃ y ∈ Γ, y.ty ≠ tEV ∧ ∃ j, y.HasSlot j ∧ a = y.cell j := fun a h => by
    obtain ⟨y, hy, h1, -, -, j, hj, he⟩ := laPW_obj hLay h
    exact ⟨y, hy, h1, j, hj, he⟩
  have kc : ∀ {o : Obj}, o = e0 ∨ o = c0 → ∀ {k : Nat}, k < 35 → (guestC.ty tEV).slot k = .prot →
      rd st.memory (o.cell k) = rd s.memory (o.cell k) := fun ho _ hk hpr =>
    keep_cells hc hT hcore (fun a => argCells_any2) hPWo ho hk hpr
  obtain ⟨q', hq', hord', -⟩ := id hcore.2.2.2.2.2.1
  obtain rfl : q' = q2 := Option.some.inj (hq'.symm.trans hcore.2.1)
  have hLs' : LsI Γ0 s0 c0 Γ' { st with locals := s.locals } :=
    lsI_call hx0 hordq hord' hcore.2.2.1 hcore.2.2.2.1 hcore.2.2.2.2.1 hp
      ((Frames.ptrsOf_congr rfl).trans hcore.2.1) hLs hsub hw hkf
  refine ⟨rfl, ⟨rd st.memory (e0.cell 9), hlc, ⟨Γ', Struct.trk_congr hH hT' rfl rfl rfl rfl, hLs'⟩,
    (kc (Or.inl rfl) (by omega) ev_kinds.1).trans h8, rfl,
    (kc (Or.inl rfl) (by omega) ev_kinds.2.1).trans h24,
    (kc (Or.inr rfl) (by omega) ev_kinds.2.1).trans hc24,
    (kc (Or.inl rfl) (by omega) ev_prot.1).trans h11,
    (kc (Or.inl rfl) (by omega) ev_prot.2).trans h17,
    (kc (Or.inr rfl) (by omega) ev_prot.2).trans hc17⟩, rfl⟩

/-- **The `htab_union_into(ev[136], child[136])` call** keeps the invariant. -/
theorem un_step (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hLH : LstHooks H)
    (hT : HtabHooks H)
    (hc : ICtx H Γ0 s0 p0 e0 c0) {u : State σ} (hu : IT H Γ0 s0 p0 e0 c0 u) :
    Hoare σ X (fun t => t = u) (callD (nm "htab_union_into") [evLd 136, chLd 136])
      (fun r t => r = none ∧ IT H Γ0 s0 p0 e0 c0 t) := by
  have hH := hF.hH
  obtain ⟨x9, hlc, ⟨Γ, hTk, hLs⟩, h8, h9, h24, hc24, h11, h17, hc17⟩ := hu
  obtain ⟨-, ⟨th, hth, ⟨D0, hD0, hD0b, hD0t⟩, ⟨S0, hS0, hS0b, hS0t⟩⟩, hDS⟩ := hc.hX
  refine hoare_callD (FunSpec.and (sumSpec_htab_union_into hF hM hT hth) (Frames.funSpec_dom _)) ?_
  intro s _ hs vs hvs callee v st hR _
  subst hs
  obtain ⟨hS, hd, hbe⟩ := hR
  have hg := gev_trk hTk hc.hev
  obtain ⟨z1, r1, rfl, hz1, hr1⟩ := evs_cons_inv hvs
  have hz1' := ev_evLd hg hz1
  subst hz1'
  obtain ⟨z2, r2, rfl, hz2, hr2⟩ := evs_cons_inv hr1
  have hz2' := ev_chLd hlc hz2
  subst hz2'
  have hr2' : r2 = [] := by
    have h0 : evs s ([] : List (ExpHOL 64)) = some [] := evs_nil
    rw [h0] at hr2; exact (Option.some.inj hr2).symm
  subst hr2'
  obtain ⟨p, hp, hmT, hx0, hnf0, hG, -⟩ := id hTk
  obtain ⟨q, hq, hordq, hLay, -⟩ := id hG
  rw [hp] at hq
  cases hq
  have hGe : G guestC H Γ (callEntryStateHOLFinite s callee) :=
    Struct.G_congr (s := s) hH rfl rfl rfl rfl hG
  have hpe : ptrsOf (callEntryStateHOLFinite s callee) = some p := (Frames.ptrsOf_congr rfl).trans hp
  obtain ⟨D1, hD1, hD1b, hD1t, -⟩ := Struct.trk_ext hTk D0 hD0
  obtain ⟨S1, hS1, hS1b, hS1t, -⟩ := Struct.trk_ext hTk S0 hS0
  have eD : rd s.memory (e0.base + BitVec.ofNat 64 136) = D1.base := by
    rw [hD1b, hD0b]; exact h17
  have eS : rd s.memory (c0.base + BitVec.ofNat 64 136) = S1.base := by
    rw [hS1b, hS0b]; exact hc17
  have hargs : ArgsOK guestC Γ p (unionSig th).params
      [.val (.word (rd s.memory (e0.base + BitVec.ofNat 64 136))),
        .val (.word (rd s.memory (c0.base + BitVec.ofNat 64 136)))] := by
    refine ⟨rfl, fun i pt w hpt hw => ?_⟩
    rcases i with _ | _ | i <;> simp [unionSig] at hpt hw <;> subst hpt <;> subst hw
    · exact ⟨_, rfl, D1, hD1, eD.symm, by rw [hD1t, hD0t]⟩
    · exact ⟨_, rfl, S1, hS1, eS.symm, by rw [hS1t, hS0t]⟩
  obtain ⟨Γ', q1, q2, hcore, -⟩ := hS (by simp [Good]) (by simp [Abortive]) Γ hGe ⟨p, hpe, hargs⟩
    ⟨_, _, rfl, by rw [eD, eS, hD1b, hS1b, hD0b, hS0b]; exact hDS⟩
  have hq1 : p = q1 := Option.some.inj (hpe.symm.trans hcore.1)
  subst hq1
  have hT' := Struct.trk_call hTk hc.hord0 hc.hL0 rfl rfl hcore (fun g _ => by simp [unionSig])
    (fun a ha => absurd ha argCells_fits2)
    (fun a hpc hcap => pw_back hc.hord0 hc.hL0 hTk hpc (capHT_obj hth hcap) icsKs _) hd hbe
  have hPWo : ∀ a, CapPW (capsHT th) (callEntryStateHOLFinite s callee) Γ a →
      ∃ y ∈ Γ, y.ty ≠ tEV ∧ ∃ j, y.HasSlot j ∧ a = y.cell j := fun a h => by
    obtain ⟨y, hy, h1, -, -, j, hj, he⟩ := capHT_obj hth h
    exact ⟨y, hy, h1, j, hj, he⟩
  have kc : ∀ {o : Obj}, o = e0 ∨ o = c0 → ∀ {k : Nat}, k < 35 → (guestC.ty tEV).slot k = .prot →
      rd st.memory (o.cell k) = rd s.memory (o.cell k) := fun ho _ hk hpr =>
    keep_cells hc hTk hcore (fun a => argCells_fits2) hPWo ho hk hpr
  -- the lists are not written
  have hkeep : ∀ a, ListCell Γ a → st.memory a = s.memory a := by
    intro a ha
    have hpc := listCell_prot ha
    have := Struct.sumCore_prot hGe hcore (fun a ha => absurd ha argCells_fits2) (a := a) hpc (by
      intro hcap
      obtain ⟨y, hy, hyn, j, hj, hyc⟩ := capHT_notLst hth hcap
      exact ne_listCell hordq hLay hy hyn hj ha hyc.symm)
    exact this
  have hkf : LogKeep Γ s.memory st.memory := by
    intro y hy hyt j hj
    have hpc : ProtCell guestC Γ (y.cell j) := ⟨y, hy, j, hj, by rw [hyt]; exact tlog_prot j, rfl⟩
    refine rd_congr_mem (Struct.sumCore_prot hGe hcore (fun a ha => absurd ha argCells_fits2) hpc ?_)
    intro hcap
    obtain ⟨y', hy', -, -, hty', j', hj', he⟩ := capHT_obj hth hcap
    obtain ⟨rfl, -⟩ := cell_inj hordq hLay hy hy' hj hj' he
    exact hty' (by rw [hyt]; decide)
  obtain ⟨q', hq', hord', -⟩ := id hcore.2.2.2.2.2.1
  obtain rfl : q' = q2 := Option.some.inj (hq'.symm.trans hcore.2.1)
  have hLs' : LsI Γ0 s0 c0 Γ' { st with locals := s.locals } :=
    lsI_keep hLH hG hx0 hord' hcore.2.2.1 hcore.2.2.2.1 hcore.2.2.2.2.1 hp
      ((Frames.ptrsOf_congr rfl).trans hcore.2.1) hLs hkeep hkf
  refine ⟨rfl, rd st.memory (e0.cell 9), hlc, ⟨Γ', Struct.trk_congr hH hT' rfl rfl rfl rfl, hLs'⟩,
    (kc (Or.inl rfl) (by omega) ev_kinds.1).trans h8, rfl,
    (kc (Or.inl rfl) (by omega) ev_kinds.2.1).trans h24,
    (kc (Or.inr rfl) (by omega) ev_kinds.2.1).trans hc24,
    (kc (Or.inl rfl) (by omega) ev_prot.1).trans h11,
    (kc (Or.inl rfl) (by omega) ev_prot.2).trans h17,
    (kc (Or.inr rfl) (by omega) ev_prot.2).trans hc17⟩

theorem hdr_of_lst8 {t : Nat} (h : t ∈ lstTys) (he : lstE t = 8) : HdrTy t := by
  simp only [lstTys, List.mem_cons, List.mem_nil_iff, or_false] at h
  rcases h with rfl | rfl | rfl | rfl | rfl
  · exact Or.inl rfl
  · exact Or.inr rfl
  all_goals (exfalso; simp [lstE] at he)

/-- The child's list header cells at the entry of the tail are as at the start. -/
def EF (s0 : State σ) (c0 : Obj) (u : State σ) : Prop :=
  fldI u.memory c0.base 88 = fldI s0.memory c0.base 88 ∧
    cP0 u.memory c0.base = cP0 s0.memory c0.base ∧ cN0 u.memory c0.base = cN0 s0.memory c0.base

/-- **From the gas segment's memory fact to `LsI` and `EF`**: only cells of `e0` changed, so no
list cell changed. -/
theorem lsI_of_pm {H : Hooks σ} (hLH : LstHooks H) (hG0 : G guestC H Γ0 s0)
    (hc : ICtx H Γ0 s0 p0 e0 c0) {Γ : Gam} {u : State σ}
    (hT : Struct.Trk guestC H Γ0 s0 p0 (PWI Γ0 s0 p0 c0.base) Γ u) (hPM : PMx e0 s0 Γ u) :
    LsI Γ0 s0 c0 Γ u ∧ EF s0 c0 u := by
  have hk0 : ∀ a, ListCell Γ0 a → u.memory a = s0.memory a := by
    intro a ha
    refine hPM a fun ⟨k, hk, he⟩ => ?_
    exact ne_listCell hc.hord0 hc.hL0 hc.he0 (by rw [hc.het]; decide)
      (ictx_slot hc (Or.inl rfl) hk) ha he.symm
  have hf0 : LogKeep Γ0 s0.memory u.memory := by
    intro y hy hyt j hj
    refine rd_congr_mem (hPM _ fun ⟨k, hk, he⟩ => ?_)
    obtain ⟨rfl, -⟩ := cell_inj hc.hord0 hc.hL0 hy hc.he0 hj (ictx_slot hc (Or.inl rfl) hk) he
    exact absurd (hc.het.symm.trans hyt) (by decide)
  obtain ⟨p, hp, hm, hx, hnf, hG, -⟩ := id hT
  obtain ⟨q, hq, hord, -⟩ := id hG
  rw [hp] at hq
  cases hq
  obtain ⟨⟨Lc, hLc, hLcb, hLct, hLcE⟩, ⟨x, hx0, hxt, hxb, hxs⟩, hlr⟩ := hc.hC
  have hLcs : ∀ k, k < 2 → Lc.HasSlot k := fun k hk => lst_slot hc.hL0 hLc hLct (by omega)
  have hhdr : HdrTy Lc.ty := hdr_of_lst8 hLct hLcE
  have hc0 : Lc.cell 0 = Lc.base := by simp [Obj.cell]
  have hc1 : Lc.cell 1 = Lc.base + BitVec.ofNat 64 8 := rfl
  refine ⟨?_, ?_⟩
  · intro p' hp'
    have hpp : p' = p := Option.some.inj (hp'.symm.trans hp)
    rw [hpp]
    refine ⟨logSub_of_listKeep hLH hG0 hk0, ?_⟩
    obtain ⟨x', hx', hb', ht', hs'⟩ := hx x hx0
    have hxb' : x.base = cP0 s0.memory c0.base := hxb
    have hxs' : 8 * (cN0 s0.memory c0.base).toNat ≤ x.size := hxs
    refine ⟨⟨x', hx', by rw [ht']; exact hxt, by rw [hb']; exact hxb', by omega⟩, fun j hj => ?_⟩
    have hjs : x.HasSlot j := by unfold Obj.HasSlot; omega
    have hcell : cP0 s0.memory c0.base + BitVec.ofNat 64 (8 * j) = x.cell j := by
      unfold Obj.cell; rw [hxb']
    rw [hcell]
    have h1 := hk0 (x.cell j) (Or.inr ⟨x, hx0, hxt, j, hjs, rfl⟩)
    have h2 := hlr j hj
    have h3 : rd s0.memory (rd s0.memory (fldI s0.memory c0.base 88) + BitVec.ofNat 64 (8 * j)) =
        rd s0.memory (x.cell j) := by
      rw [← hcell]; rfl
    rw [h3] at h2
    show LogRecF Γ p.hp u.memory (rd u.memory (x.cell j))
    have : rd u.memory (x.cell j) = rd s0.memory (x.cell j) := rd_congr_mem h1
    rw [this]
    exact logRecF_step hm hx hf0 h2
  · have e1 : fldI u.memory c0.base 88 = fldI s0.memory c0.base 88 :=
      rd_congr_mem (hPM (c0.cell 11) fun ⟨k, hk, he⟩ => nCE hc (i := 11) (j := k) (by omega) hk he)
    have e2 : cP0 u.memory c0.base = cP0 s0.memory c0.base := by
      unfold cP0
      rw [e1]
      have := hk0 (Lc.cell 0) (Or.inl ⟨Lc, hLc, hhdr, 0, by omega, hLcs 0 (by omega), rfl⟩)
      rw [hc0, hLcb] at this
      exact rd_congr_mem this
    have e3 : cN0 u.memory c0.base = cN0 s0.memory c0.base := by
      unfold cN0
      rw [e1]
      have := hk0 (Lc.cell 1) (Or.inl ⟨Lc, hLc, hhdr, 1, by omega, hLcs 1 (by omega), rfl⟩)
      rw [hc1, hLcb] at this
      exact rd_congr_mem this
    exact ⟨e1, e2, e3⟩

/-- The loop state: `IT` and the loop locals (`i ≤ n`, `n`, `p` as read at the entry). -/
def IL (H : Hooks σ) (Γ0 : Gam) (s0 : State σ) (p0 : Ptrs) (e0 c0 : Obj) (u : State σ) : Prop :=
  IT H Γ0 s0 p0 e0 c0 u ∧ ∃ i : Nat, i ≤ (cN0 s0.memory c0.base).toNat ∧
    u.locals.lookup (nm "i") = some (.val (.word (BitVec.ofNat 64 i))) ∧
    u.locals.lookup (nm "n") = some (.val (.word (cN0 s0.memory c0.base))) ∧
    u.locals.lookup (nm "p") = some (.val (.word (cP0 s0.memory c0.base)))

theorem ev_ldElem {s : State σ} {P0 I : BitVec 64}
    (hp : s.locals.lookup (nm "p") = some (.val (.word P0)))
    (hi : s.locals.lookup (nm "i") = some (.val (.word I))) :
    ∀ v, ev s (.load .one (.op .add [lv (nm "p"), .panop .mul [lv (nm "i"), cw 8]])) = some v →
      v = .val (.word (rd s.memory (P0 + I * BitVec.ofNat 64 8))) := by
  intro v hv
  obtain ⟨w, hw, -, rfl⟩ := ev_load_one hv
  rw [ev_add2 (lp_ev_lv hp) (ev_mul2 (lp_ev_lv hi) (ev_cw _ 8))] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst hw
  rw [Struct.mem_word s.memory _]

theorem ofNat_mul8 (i : Nat) : BitVec.ofNat 64 i * BitVec.ofNat 64 8 = BitVec.ofNat 64 (8 * i) := by
  rw [← BitVec.ofNat_mul, Nat.mul_comm]

theorem ofNat_succ (i : Nat) : BitVec.ofNat 64 i + BitVec.ofNat 64 1 = BitVec.ofNat 64 (i + 1) :=
  (BitVec.ofNat_add _ _).symm

theorem toNat_ofNat_small {i : Nat} (h : i < 2 ^ 64) : (BitVec.ofNat 64 i).toNat = i := by
  rw [BitVec.toNat_ofNat]; exact Nat.mod_eq_of_lt h

/-- The loop condition `i < n`. -/
theorem loop_cond {u : State σ} {i : Nat} {N : BitVec 64} (hN : N.toNat < 2 ^ 63)
    (hi : i ≤ N.toNat) (hli : u.locals.lookup (nm "i") = some (.val (.word (BitVec.ofNat 64 i))))
    (hln : u.locals.lookup (nm "n") = some (.val (.word N)))
    (h : CondTrue u (.cmp .less (lv (nm "i")) (lv (nm "n")))) : i < N.toNat := by
  obtain ⟨w, hw, hw0⟩ := h
  obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
  rw [lp_ev_lv hli] at hx
  rw [lp_ev_lv hln] at hy
  cases hx; cases hy
  have hi64 : i < 2 ^ 63 := by omega
  have := (cmp_less_nat' (x := BitVec.ofNat 64 i) (y := N)
    (by rw [toNat_ofNat_small (by omega)]; exact hi64) hN).mp hxy
  rwa [toNat_ofNat_small (by omega)] at this

/-- The child's list at entry has fewer than `2^63` elements. -/
theorem cN0_lt (hc : ICtx H Γ0 s0 p0 e0 c0) : (cN0 s0.memory c0.base).toNat < 2 ^ 63 := by
  obtain ⟨-, ⟨x, hx, hxt, hxb, hxs⟩, -⟩ := hc.hC
  have hlive := (hc.hL0.1 x hx).2.2.2.2
  have hxs' : 8 * (cN0 s0.memory c0.base).toNat ≤ x.size := hxs
  have hb1 : heapEnd < 2 ^ 63 := by decide
  have hb2 : scratchEnd < 2 ^ 63 := by decide
  have ho := hc.hord0
  unfold Ptrs.Ordered at ho
  rcases hxt with h | h
  · have hreg : (guestC.ty x.ty).region = .heap := by rw [h]; decide
    rw [hreg] at hlive
    simp only [Region.Live] at hlive
    omega
  · have hreg : (guestC.ty x.ty).region = .scratch := by rw [h]; decide
    rw [hreg] at hlive
    simp only [Region.Live] at hlive
    omega

/-- A store into a cell of the running EV record keeps `LsI`. -/
theorem lsI_store_e0 {H : Hooks σ} (hLH : LstHooks H) (hc : ICtx H Γ0 s0 p0 e0 c0) {Γ : Gam}
    {u : State σ} (hT : Struct.Trk guestC H Γ0 s0 p0 (PWI Γ0 s0 p0 c0.base) Γ u)
    (hLs : LsI Γ0 s0 c0 Γ u) {k : Nat} (hk : k < 35) (x : BitVec 64) :
    LsI Γ0 s0 c0 Γ { u with memory := Spec.Inv.upd u.memory (e0.cell k) x } := by
  obtain ⟨e1, he1, hb1, ht1, hs1⟩ := Struct.trk_ext hT e0 hc.he0
  have hc1 : e1.cell k = e0.cell k := by unfold Obj.cell; rw [hb1]
  have hks : e1.HasSlot k := by
    have := ictx_slot hc (Or.inl rfl) hk
    unfold Obj.HasSlot at this ⊢; omega
  obtain ⟨p, hp, hm, hx, hnf, hG, -⟩ := id hT
  rw [← hc1]
  exact lsI_store hLH hG hx hLs he1 (ht1.trans hc.het) hks x

/-- **The log loop**: each iteration appends the `i`-th element of the child's list array. -/
theorem ics_loop (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hLH : LstHooks H)
    (hc : ICtx H Γ0 s0 p0 e0 c0) :
    Hoare σ X (IL H Γ0 s0 p0 e0 c0) icsLoop (fun r t => r = none ∧ IL H Γ0 s0 p0 e0 c0 t) := by
  have hH := hF.hH
  have hN := cN0_lt hc
  unfold icsLoop
  refine hoare_while (I := IL H Γ0 s0 p0 e0 c0)
    (fun u h => ⟨it_locals hH h.1 rfl rfl rfl rfl rfl, h.2⟩) ?_ (fun u _ h _ => ⟨rfl, h⟩)
  let Rl : Option (PanSemResultExact 64) → State σ → Prop := fun r t => r = none ∧
    IT H Γ0 s0 p0 e0 c0 t ∧ ∃ i : Nat, i < (cN0 s0.memory c0.base).toNat ∧
      t.locals.lookup (nm "i") = some (.val (.word (BitVec.ofNat 64 i))) ∧
      t.locals.lookup (nm "n") = some (.val (.word (cN0 s0.memory c0.base))) ∧
      t.locals.lookup (nm "p") = some (.val (.word (cP0 s0.memory c0.base)))
  refine hoare_seq (R := Rl) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · intro t ht ⟨⟨hIT, i, hi, hli, hln, hlp⟩, hcond⟩ htr
    have hiN : i < (cN0 s0.memory c0.base).toNat := loop_cond hN hi hli hln hcond
    have hld : ∀ Γ, Struct.Trk guestC H Γ0 s0 p0 (PWI Γ0 s0 p0 c0.base) Γ t → LsI Γ0 s0 c0 Γ t →
        ∀ p', ptrsOf t = some p' → ∀ w,
          ev t (.load .one (.op .add [lv (nm "p"), .panop .mul [lv (nm "i"), cw 8]])) = some w →
          ∃ lg, w = .val (.word lg) ∧ LogRecF Γ p'.hp t.memory lg := by
      intro Γ hT hLs p' hp' w hw
      have e := ev_ldElem hlp hli w hw
      refine ⟨_, e, ?_⟩
      have := (hLs p' hp').2.2 i hiN
      rwa [ofNat_mul8]
    have hstep := la_step hF hM hLH hc hIT
      (ld := .load .one (.op .add [lv (nm "p"), .panop .mul [lv (nm "i"), cw 8]])) hld
    exact (hoare_conseq (Q' := Rl) hstep (fun s _ hs => hs) (fun r t' _ _ h =>
      ⟨h.1, h.2.1, i, hiN, by rw [h.2.2]; exact hli, by rw [h.2.2]; exact hln,
        by rw [h.2.2]; exact hlp⟩)) t ht rfl htr
  · refine hoare_assignK fun u _ ⟨_, hIT, i, hi, hli, hln, hlp⟩ v hv _ => ⟨fun _ => ?_,
      fun h => absurd h (by simp), fun h => absurd h (by simp), fun _ h => absurd h (by simp)⟩
    have hv' := Mpt.Leaves.ev_add2_inv' hv
    obtain ⟨x, y, hx, hy, rfl⟩ := hv'
    rw [lp_ev_lv hli] at hx
    rw [ev_cw] at hy
    cases hx; cases hy
    refine ⟨it_locals hH hIT (lk_set_ne _ _ (by decide)) rfl rfl rfl rfl, i + 1, by omega, ?_, ?_, ?_⟩
    · show (setVarHOLFinite (nm "i") _ u).locals.lookup _ = _
      rw [lk_set_self, ofNat_succ]
    · show (setVarHOLFinite (nm "i") _ u).locals.lookup _ = _
      rw [lk_set_ne _ _ (by decide)]; exact hln
    · show (setVarHOLFinite (nm "i") _ u).locals.lookup _ = _
      rw [lk_set_ne _ _ (by decide)]; exact hlp

/-- **The tail**: the log loop, slot 12, the table merge, the return. -/
theorem ics_tail (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hLH : LstHooks H)
    (hT : HtabHooks H) (hc : ICtx H Γ0 s0 p0 e0 c0) :
    Hoare σ X (fun u => IT H Γ0 s0 p0 e0 c0 u ∧ EF s0 c0 u) icsTail (ICQ H Γ0 s0 p0 e0 c0) := by
  have hH := hF.hH
  unfold icsTail
  -- `var cl = child[88]`
  refine Mpt.Leaves.hoare_decL (icq_locals hH) fun u0 _ ⟨hIT0, hEF⟩ v1 hv1 _ => ?_
  obtain ⟨x9, hlc, -⟩ := id hIT0
  have e1 := ev_chLd hlc hv1
  subst e1
  -- `var n = cl[8]`
  refine Mpt.Leaves.hoare_decL (icq_locals hH) fun u1 _ hu1 v2 hv2 _ => ?_
  subst hu1
  have e2 := lp_ev_ld (ev_add2 (lp_ev_lv (lk_set_self _ _ _)) (ev_cw _ 8)) hv2
  subst e2
  -- `var p = cl[0]`
  refine Mpt.Leaves.hoare_decL (icq_locals hH) fun u2 _ hu2 v3 hv3 _ => ?_
  subst hu2
  have e3 := lp_ev_ld (ev_add2 (lp_ev_lv (by rw [lk_set_ne _ _ (by decide)]; exact lk_set_self _ _ _))
    (ev_cw _ 0)) hv3
  subst e3
  -- `var i = 0`
  refine Mpt.Leaves.hoare_decL (icq_locals hH) fun u3 _ hu3 v4 hv4 _ => ?_
  subst hu3
  have e4 : v4 = .val (.word (BitVec.ofNat 64 0)) := (Option.some.inj ((ev_cw _ 0).symm.trans hv4)).symm
  subst e4
  refine hoare_pre (hoare_seq (R := fun r t => r = none ∧ IL H Γ0 s0 p0 e0 c0 t)
    (ics_loop hF hM hLH hc) (fun _ _ _ hr _ h => absurd h.1 hr) ?_) (fun u _ hu => ?_)
  · -- the end: slot 12, the table merge, the return
    refine hoare_pre (P := fun u => (none : Option (PanSemResultExact 64)) = none ∧ IT H Γ0 s0 p0 e0 c0 u) ?_
      (fun u _ h => ⟨rfl, h.2.1⟩)
    unfold icsEnd
    refine hoare_seq (R := fun r t => r = none ∧ IT H Γ0 s0 p0 e0 c0 t) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine Spec.Inv.hoare_store_w (fun _ => e0.cell 12)
        (fun u => rd u.memory (e0.cell 12) + rd u.memory (c0.cell 12)) ?_ ?_ ?_
      · rintro u _ ⟨_, x9, hlc, ⟨Γ, hTk, hLs⟩, -⟩ w hw
        rw [ev_add2 (ev_gev (gev_trk hTk hc.hev)) (ev_cw _ 96)] at hw
        cases hw; rfl
      · rintro u _ ⟨_, x9, hlc, ⟨Γ, hTk, hLs⟩, -⟩ w hw
        exact ev_add_ld2 (fun w h => ev_evLd (gev_trk hTk hc.hev) h) (fun w h => ev_chLd hlc h) hw
      · intro u _ ⟨_, x9, hlc, ⟨Γ, hTk, hLs⟩, h8, h9, h24, hc24, h11, h17, hc17⟩
        have hsz : 280 ≤ e0.size := by
          have := (hc.hL0.1 e0 hc.he0).2.2.2.1; rw [hc.het] at this; exact this
        have hT' := trk_evstS hH hTk hc.he0 hc.het hsz (k := 12) (by decide)
          (rd u.memory (e0.cell 12) + rd u.memory (c0.cell 12))
        have nE : ∀ j, j < 35 → j ≠ 12 → e0.cell j ≠ e0.cell 12 := fun j hj hne =>
          adr_ne e0.base (by omega) (by omega) (by omega)
        have nC : ∀ j, j < 35 → c0.cell j ≠ e0.cell 12 := fun j hj =>
          cne hc.hord0 hc.hL0 hc.hc0 hc.he0 (ictx_slot hc (Or.inr rfl) hj)
            (ictx_slot hc (Or.inl rfl) (by omega)) fun ⟨h, _⟩ => hc.hne h
        refine ⟨rfl, rd (Spec.Inv.upd u.memory (e0.cell 12) _) (e0.cell 9), hlc,
          ⟨Γ, hT', lsI_store_e0 hLH hc hTk hLs (k := 12) (by omega) _⟩, ?_, rfl,
          ?_, ?_, ?_, ?_, ?_⟩
        · show rd (Spec.Inv.upd u.memory _ _) _ = _
          rw [rd_iupd_ne (nE 8 (by omega) (by omega))]; exact h8
        · show rd (Spec.Inv.upd u.memory _ _) _ = _
          rw [rd_iupd_ne (nE 24 (by omega) (by omega))]; exact h24
        · show rd (Spec.Inv.upd u.memory _ _) _ = _
          rw [rd_iupd_ne (nC 24 (by omega))]; exact hc24
        · show rd (Spec.Inv.upd u.memory _ _) _ = _
          rw [rd_iupd_ne (nE 11 (by omega) (by omega))]; exact h11
        · show rd (Spec.Inv.upd u.memory _ _) _ = _
          rw [rd_iupd_ne (nE 17 (by omega) (by omega))]; exact h17
        · show rd (Spec.Inv.upd u.memory _ _) _ = _
          rw [rd_iupd_ne (nC 17 (by omega))]; exact hc17
    · refine hoare_seq (R := fun r t => r = none ∧ IT H Γ0 s0 p0 e0 c0 t)
        (fun t ht ⟨_, hI⟩ htr => un_step hF hM hLH hT hc hI t ht rfl htr)
        (fun _ _ _ hr _ h => absurd h.1 hr) ?_
      refine hoare_return fun t _ hP w _ => fun v' _ => ?_
      obtain ⟨_, x9, -, ⟨Γ, hTk, hLs⟩, h8, -, h24, -⟩ := hP
      exact ⟨Γ, Struct.trk_congr hH hTk rfl rfl rfl rfl, h8, h24,
        fun p' hp' => (hLs p' ((Frames.ptrsOf_congr rfl).symm.trans hp')).1⟩
  · -- the entry of the loop
    subst hu
    have hz : ∀ b : BitVec 64, b + BitVec.ofNat 64 0 = b := by intro b; simp
    refine ⟨it_locals hH hIT0 ?_ rfl rfl rfl rfl, 0, Nat.zero_le _, ?_, ?_, ?_⟩
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide),
        lk_set_ne _ _ (by decide)]
    · rw [lk_set_self]
    · rw [lk_set_ne _ _ (by decide), lk_set_ne _ _ (by decide), lk_set_self]
      exact congrArg (fun w => some (ValueHOL.val (HolWordLab.word w))) hEF.2.2
    · rw [lk_set_ne _ _ (by decide), lk_set_self, hz]
      exact congrArg (fun w => some (ValueHOL.val (HolWordLab.word w))) hEF.2.1

end tail

/-! ## The gas segment and the whole body -/

theorem iceMem_8 (m : Mem) (E C : BitVec 64) :
    rd (iceMem m E C) (E + BitVec.ofNat 64 64) = rd m (E + BitVec.ofNat 64 64) + rd m (C + BitVec.ofNat 64 64) := by
  unfold iceMem
  dsimp only
  rw [rd_iupd_ne (adr_ne E (by decide) (by decide) (by decide)),
    rd_iupd_ne (adr_ne E (by decide) (by decide) (by decide)), rd_iupd_self]

theorem iceMem_9 (m : Mem) (E C : BitVec 64) (h : C + BitVec.ofNat 64 72 ≠ E + BitVec.ofNat 64 64) :
    rd (iceMem m E C) (E + BitVec.ofNat 64 72) = rd m (E + BitVec.ofNat 64 72) + rd m (C + BitVec.ofNat 64 72) := by
  unfold iceMem
  dsimp only
  rw [rd_iupd_ne (adr_ne E (by decide) (by decide) (by decide)), rd_iupd_self,
    rd_iupd_ne (adr_ne E (by decide) (by decide) (by decide)), rd_iupd_ne h]

theorem iceMem_o (m : Mem) (E C : BitVec 64) {a : BitVec 64} (h1 : a ≠ E + BitVec.ofNat 64 64)
    (h2 : a ≠ E + BitVec.ofNat 64 72) (h3 : a ≠ E + BitVec.ofNat 64 184) :
    rd (iceMem m E C) a = rd m a := by
  unfold iceMem
  dsimp only
  rw [rd_iupd_ne h3, rd_iupd_ne h2, rd_iupd_ne h1]

theorem mo_upd {R : BitVec 64 → Prop} {m m' : Mem} (h : ModifiesOnly R m m') {w : BitVec 64}
    (hw : R w) (x : BitVec 64) : ModifiesOnly R m (Spec.Inv.upd m' w x) := by
  intro a ha
  have hne : a ≠ w := fun e => ha (e ▸ hw)
  show Spec.Inv.upd m' w x a = m a
  rw [Spec.Inv.upd_ne hne]
  exact h a ha

theorem pmx_ice (e0 : Obj) (m : Mem) (C : BitVec 64) : ModifiesOnly (EC e0) m (iceMem m e0.base C) := by
  unfold iceMem
  exact mo_upd (mo_upd (mo_upd (fun _ _ => rfl) (w := e0.base + BitVec.ofNat 64 64) ⟨8, by omega, rfl⟩ _)
    (w := e0.base + BitVec.ofNat 64 72) ⟨9, by omega, rfl⟩ _)
    (w := e0.base + BitVec.ofNat 64 184) ⟨23, by omega, rfl⟩ _

section gas
variable {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {e0 c0 : Obj}

theorem pwi_ev (hc : ICtx H Γ0 s0 p0 e0 c0) {k : Nat} (hk : k = 8 ∨ k = 24) :
    PWI Γ0 s0 p0 c0.base (e0.cell k) := by
  refine Or.inl ⟨⟨e0, hc.he0, k, ictx_slot hc (Or.inl rfl) (by omega), by
    rw [hc.het]; rcases hk with rfl | rfl; exacts [ev_kinds.1, ev_kinds.2.1], rfl⟩,
    Or.inl ⟨e0, ⟨hc.he0, hc.het, hc.hev⟩, k, by rcases hk with rfl | rfl <;> decide, rfl⟩,
    fun o ho hty hin => ?_⟩
  obtain ⟨-, h1, h2⟩ := cell_lay hc.hord0 hc.hL0 hc.he0 (ictx_slot hc (Or.inl rfl) (k := k)
    (by omega))
  have := gam_eq (gamOK_of_layout hc.hL0) ho hc.he0 hin.1 hin.2 h1 h2
  subst this
  rw [hc.het] at hty
  revert hty; decide

/-- **The gas segment** (from `st ev + 192` to the tail). -/
theorem ics_gas (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hLH : LstHooks H)
    (hT : HtabHooks H) (hEVh : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tEV →
      ∀ j ∈ Frames.evDriverSlots16, ¬ H.fp Γ s o (o'.cell j)) (hc : ICtx H Γ0 s0 p0 e0 c0)
    (hG0 : G guestC H Γ0 s0) :
    Hoare σ X (SP H Γ0 s0 p0 e0 c0 (PMx e0 s0) (rd s0.memory (e0.cell 8) + rd s0.memory (c0.cell 8))
      (gA72 s0.memory e0 c0) (rd s0.memory (e0.cell 24))) icsGas (ICQ H Γ0 s0 p0 e0 c0) := by
  have hH := hF.hH
  have hsz : 280 ≤ e0.size := by
    have := (hc.hL0.1 e0 hc.he0).2.2.2.1; rw [hc.het] at this; exact this
  unfold icsGas
  -- `st ev + 192, ev[192] + child[192]`
  refine hoare_seq (R := fun r u => r = none ∧ SP H Γ0 s0 p0 e0 c0 (PMx e0 s0)
      (rd s0.memory (e0.cell 8) + rd s0.memory (c0.cell 8)) (gA72 s0.memory e0 c0)
      (gA192 s0.memory e0 c0) u) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine Spec.Inv.hoare_store_w (fun _ => e0.cell 24)
      (fun u => rd u.memory (e0.cell 24) + rd u.memory (c0.cell 24)) ?_ ?_ ?_
    · rintro u _ ⟨hlc, ⟨Γ, hTk, hPM⟩, -⟩ w hw
      rw [ev_add2 (ev_gev (gev_trk hTk hc.hev)) (ev_cw _ 192)] at hw
      cases hw; rfl
    · rintro u _ ⟨hlc, ⟨Γ, hTk, hPM⟩, -⟩ w hw
      exact ev_add_ld2 (fun w h => ev_evLd (gev_trk hTk hc.hev) h) (fun w h => ev_chLd hlc h) hw
    · rintro u _ ⟨hlc, ⟨Γ, hTk, hPM⟩, h8, h9, h24, hc24, h11, h17, hc17⟩
      refine ⟨rfl, hlc, ⟨Γ, trk_evstP hH hEVh hTk hc.he0 hc.het (Or.inr rfl) (pwi_ev hc (Or.inr rfl)) _,
        pmx_upd hPM (k := 24) (by omega) _⟩,
        ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> show rd (Spec.Inv.upd u.memory _ _) _ = _
      · rw [rd_iupd_ne (nE e0 (i := 8) (j := 24) (by omega) (by omega) (by omega))]; exact h8
      · rw [rd_iupd_ne (nE e0 (i := 9) (j := 24) (by omega) (by omega) (by omega))]; exact h9
      · rw [rd_iupd_self, h24, hc24]; rfl
      · rw [rd_iupd_ne (nCE hc (by omega) (by omega))]; exact hc24
      · rw [rd_iupd_ne (nE e0 (i := 11) (j := 24) (by omega) (by omega) (by omega))]; exact h11
      · rw [rd_iupd_ne (nE e0 (i := 17) (j := 24) (by omega) (by omega) (by omega))]; exact h17
      · rw [rd_iupd_ne (nCE hc (by omega) (by omega))]; exact hc17
  -- `var rep = ev[72]; if ev[192] <+ rep { rep = ev[192]; }`
  refine Mpt.Leaves.hoare_decL (icq_locals hH) fun u0 _ ⟨_, hSP⟩ v hv _ => ?_
  obtain ⟨hlc, ⟨Γ, hTk, hPM⟩, h8, h9, h24, hc24, h11, h17, hc17⟩ := hSP
  have hg := gev_trk hTk hc.hev
  have hv' := ev_evLd hg hv
  rw [show rd u0.memory (e0.base + BitVec.ofNat 64 72) = gA72 s0.memory e0 c0 from h9] at hv'
  subst hv'
  have hSP0 : SP H Γ0 s0 p0 e0 c0 (PMx e0 s0) (rd s0.memory (e0.cell 8) + rd s0.memory (c0.cell 8))
      (gA72 s0.memory e0 c0) (gA192 s0.memory e0 c0)
      (setVarHOLFinite (nm "rep") (.val (.word (gA72 s0.memory e0 c0))) u0) :=
    sp_locals hH ⟨hlc, ⟨Γ, hTk, hPM⟩, h8, h9, h24, hc24, h11, h17, hc17⟩ (lk_set_ne _ _ (by decide))
      rfl rfl rfl rfl (fun Γ hL => hL)
  refine hoare_seq (R := fun r u => r = none ∧
      u.locals.lookup (nm "rep") = some (.val (.word (gRep s0.memory e0 c0))) ∧
      SP H Γ0 s0 p0 e0 c0 (PMx e0 s0) (rd s0.memory (e0.cell 8) + rd s0.memory (c0.cell 8))
        (gA72 s0.memory e0 c0) (gA192 s0.memory e0 c0) u) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine hoare_ite ?_ ?_
    · refine hoare_assignK fun u _ ⟨hu, w, hw, hw0⟩ v hv _ => ?_
      subst hu
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
      obtain ⟨-, ⟨Γ', hT', -⟩, -, -, h24', -⟩ := id hSP0
      have hx' := ev_evLd (gev_trk hT' hc.hev) hx
      rw [show rd (setVarHOLFinite (nm "rep") (.val (.word (gA72 s0.memory e0 c0))) u0).memory
        (e0.base + BitVec.ofNat 64 192) = gA192 s0.memory e0 c0 from h24'] at hx'
      cases hx'
      rw [lp_ev_lv (lk_set_self _ _ _)] at hy
      cases hy
      have hv' := ev_evLd (gev_trk hT' hc.hev) hv
      rw [show rd (setVarHOLFinite (nm "rep") (.val (.word (gA72 s0.memory e0 c0))) u0).memory
        (e0.base + BitVec.ofNat 64 192) = gA192 s0.memory e0 c0 from h24'] at hv'
      subst hv'
      refine ⟨rfl, ?_, sp_locals hH hSP0 (lk_set_ne _ _ (by decide)) rfl rfl rfl rfl (fun Γ hL => hL)⟩
      show (setVarHOLFinite (nm "rep") _ _).locals.lookup _ = _
      rw [lk_set_self]
      unfold gRep
      rw [if_pos hxy]
    · refine hoare_skip fun u _ ⟨hu, hc'⟩ => ?_
      subst hu
      obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc'
      obtain ⟨-, ⟨Γ', hT', -⟩, -, -, h24', -⟩ := id hSP0
      have hx' := ev_evLd (gev_trk hT' hc.hev) hx
      rw [show rd (setVarHOLFinite (nm "rep") (.val (.word (gA72 s0.memory e0 c0))) u0).memory
        (e0.base + BitVec.ofNat 64 192) = gA192 s0.memory e0 c0 from h24'] at hx'
      cases hx'
      rw [lp_ev_lv (lk_set_self _ _ _)] at hy
      cases hy
      refine ⟨rfl, ?_, hSP0⟩
      rw [lk_set_self]
      unfold gRep
      rw [if_neg (by rw [hxy]; decide)]
  -- the three stores
  have hrep : ∀ u : State σ, u.locals.lookup (nm "rep") = some (.val (.word (gRep s0.memory e0 c0))) →
      ∀ w, ev u (lv (nm "rep")) = some w → w = .val (.word (gRep s0.memory e0 c0)) :=
    fun u h w hw => by rw [lp_ev_lv h] at hw; cases hw; rfl
  -- `st ev + 64, ev[64] + rep`
  refine hoare_seq (R := fun r u => r = none ∧
      u.locals.lookup (nm "rep") = some (.val (.word (gRep s0.memory e0 c0))) ∧
      SP H Γ0 s0 p0 e0 c0 (PMx e0 s0) (gF8 s0.memory e0 c0) (gA72 s0.memory e0 c0) (gA192 s0.memory e0 c0) u) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine Spec.Inv.hoare_store_w (fun _ => e0.cell 8)
      (fun u => rd u.memory (e0.cell 8) + gRep s0.memory e0 c0) ?_ ?_ ?_
    · rintro u _ ⟨_, -, hlc, ⟨Γ, hTk, hPM⟩, -⟩ w hw
      rw [ev_add2 (ev_gev (gev_trk hTk hc.hev)) (ev_cw _ 64)] at hw
      cases hw; rfl
    · rintro u _ ⟨_, hr, hlc, ⟨Γ, hTk, hPM⟩, -⟩ w hw
      exact ev_add_ld2 (fun w h => ev_evLd (gev_trk hTk hc.hev) h) (hrep u hr) hw
    · rintro u _ ⟨_, hr, hlc, ⟨Γ, hTk, hPM⟩, h8, h9, h24, hc24, h11, h17, hc17⟩
      refine ⟨rfl, hr, hlc, ⟨Γ, trk_evstP hH hEVh hTk hc.he0 hc.het (Or.inl rfl) (pwi_ev hc (Or.inl rfl)) _,
        pmx_upd hPM (k := 8) (by omega) _⟩,
        ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> show rd (Spec.Inv.upd u.memory _ _) _ = _
      · rw [rd_iupd_self, h8]; rfl
      · rw [rd_iupd_ne (nE e0 (i := 9) (j := 8) (by omega) (by omega) (by omega))]; exact h9
      · rw [rd_iupd_ne (nE e0 (i := 24) (j := 8) (by omega) (by omega) (by omega))]; exact h24
      · rw [rd_iupd_ne (nCE hc (by omega) (by omega))]; exact hc24
      · rw [rd_iupd_ne (nE e0 (i := 11) (j := 8) (by omega) (by omega) (by omega))]; exact h11
      · rw [rd_iupd_ne (nE e0 (i := 17) (j := 8) (by omega) (by omega) (by omega))]; exact h17
      · rw [rd_iupd_ne (nCE hc (by omega) (by omega))]; exact hc17
  -- `st ev + 72, ev[72] - rep`
  refine hoare_seq (R := fun r u => r = none ∧
      u.locals.lookup (nm "rep") = some (.val (.word (gRep s0.memory e0 c0))) ∧
      SP H Γ0 s0 p0 e0 c0 (PMx e0 s0) (gF8 s0.memory e0 c0) (gA72 s0.memory e0 c0 - gRep s0.memory e0 c0)
        (gA192 s0.memory e0 c0) u) ?_ (fun _ _ _ hr _ h => absurd h.1 hr) ?_
  · refine Spec.Inv.hoare_store_w (fun _ => e0.cell 9)
      (fun u => rd u.memory (e0.cell 9) - gRep s0.memory e0 c0) ?_ ?_ ?_
    · rintro u _ ⟨_, -, hlc, ⟨Γ, hTk, hPM⟩, -⟩ w hw
      rw [ev_add2 (ev_gev (gev_trk hTk hc.hev)) (ev_cw _ 72)] at hw
      cases hw; rfl
    · rintro u _ ⟨_, hr, hlc, ⟨Γ, hTk, hPM⟩, -⟩ w hw
      exact ev_sub_ld2 (fun w h => ev_evLd (gev_trk hTk hc.hev) h) (hrep u hr) hw
    · rintro u _ ⟨_, hr, hlc, ⟨Γ, hTk, hPM⟩, h8, h9, h24, hc24, h11, h17, hc17⟩
      refine ⟨rfl, hr, hlc, ⟨Γ, trk_evstS hH hTk hc.he0 hc.het hsz (Or.inl rfl) _,
        pmx_upd hPM (k := 9) (by omega) _⟩,
        ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;> show rd (Spec.Inv.upd u.memory _ _) _ = _
      · rw [rd_iupd_ne (nE e0 (i := 8) (j := 9) (by omega) (by omega) (by omega))]; exact h8
      · rw [rd_iupd_self, h9]
      · rw [rd_iupd_ne (nE e0 (i := 24) (j := 9) (by omega) (by omega) (by omega))]; exact h24
      · rw [rd_iupd_ne (nCE hc (by omega) (by omega))]; exact hc24
      · rw [rd_iupd_ne (nE e0 (i := 11) (j := 9) (by omega) (by omega) (by omega))]; exact h11
      · rw [rd_iupd_ne (nE e0 (i := 17) (j := 9) (by omega) (by omega) (by omega))]; exact h17
      · rw [rd_iupd_ne (nCE hc (by omega) (by omega))]; exact hc17
  -- `st ev + 192, ev[192] - rep`, then the tail
  refine hoare_seq (R := fun r u => r = none ∧ IT H Γ0 s0 p0 e0 c0 u ∧ EF s0 c0 u) ?_
    (fun _ _ _ hr _ h => absurd h.1 hr) (hoare_pre (ics_tail hF hM hLH hT hc) fun _ _ h => h.2)
  refine Spec.Inv.hoare_store_w (fun _ => e0.cell 24)
    (fun u => rd u.memory (e0.cell 24) - gRep s0.memory e0 c0) ?_ ?_ ?_
  · rintro u _ ⟨_, -, hlc, ⟨Γ, hTk, hPM⟩, -⟩ w hw
    rw [ev_add2 (ev_gev (gev_trk hTk hc.hev)) (ev_cw _ 192)] at hw
    cases hw; rfl
  · rintro u _ ⟨_, hr, hlc, ⟨Γ, hTk, hPM⟩, -⟩ w hw
    exact ev_sub_ld2 (fun w h => ev_evLd (gev_trk hTk hc.hev) h) (hrep u hr) hw
  · rintro u _ ⟨_, hr, hlc, ⟨Γ, hTk, hPM⟩, h8, h9, h24, hc24, h11, h17, hc17⟩
    have hT1 := trk_evstP hH hEVh hTk hc.he0 hc.het (Or.inr rfl) (pwi_ev hc (Or.inr rfl))
      (rd u.memory (e0.cell 24) - gRep s0.memory e0 c0)
    have hP1 := pmx_upd hPM (k := 24) (by omega) (rd u.memory (e0.cell 24) - gRep s0.memory e0 c0)
    obtain ⟨hLs, hEF⟩ := lsI_of_pm hLH hG0 hc hT1 hP1
    refine ⟨rfl, ⟨_, hlc, ⟨Γ, hT1, hLs⟩, ?_, rfl, ?_, ?_, ?_, ?_, ?_⟩, hEF⟩ <;>
      try show rd (Spec.Inv.upd u.memory _ _) _ = _
    · rw [rd_iupd_ne (nE e0 (i := 8) (j := 24) (by omega) (by omega) (by omega))]; exact h8
    · rw [rd_iupd_self, h24]; rfl
    · rw [rd_iupd_ne (nCE hc (by omega) (by omega))]; exact hc24
    · rw [rd_iupd_ne (nE e0 (i := 11) (j := 24) (by omega) (by omega) (by omega))]; exact h11
    · rw [rd_iupd_ne (nE e0 (i := 17) (j := 24) (by omega) (by omega) (by omega))]; exact h17
    · rw [rd_iupd_ne (nCE hc (by omega) (by omega))]; exact hc17

/-- **The body.** -/
theorem ics_hoare (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H) (hLH : LstHooks H)
    (hT : HtabHooks H) (hEVh : ∀ (Γ : Gam) (s : State σ) (o o' : Obj), o' ∈ Γ → o'.ty = tEV →
      ∀ j ∈ Frames.evDriverSlots16, ¬ H.fp Γ s o (o'.cell j)) (hc : ICtx H Γ0 s0 p0 e0 c0)
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hlc : s0.locals.lookup (nm "child") = some (.val (.word c0.base))) :
    Hoare σ X (fun u => u = s0) icsBody (ICQ H Γ0 s0 p0 e0 c0) := by
  have hH := hF.hH
  have hsz : 280 ≤ e0.size := by
    have := (hc.hL0.1 e0 hc.he0).2.2.2.1; rw [hc.het] at this; exact this
  unfold icsBody
  refine hoare_seq (R := fun r u => r = none ∧ SP H Γ0 s0 p0 e0 c0 (PMx e0 s0)
      (rd s0.memory (e0.cell 8) + rd s0.memory (c0.cell 8)) (gA72 s0.memory e0 c0)
      (rd s0.memory (e0.cell 24)) u) ?_ (fun _ _ _ hr _ h => absurd h.1 hr)
    (hoare_pre (ics_gas hF hM hLH hT hEVh hc hG0) fun _ _ h => h.2)
  refine hoare_callD (funSpec_ice hF.hX) fun s _ hs vs hvs callee v st hR _ => ?_
  subst s
  rw [evs_cons (lp_ev_lv hlc) evs_nil] at hvs
  cases hvs
  obtain ⟨hm, hg, hd, hbe⟩ := hR c0.base e0.base rfl hc.hev v rfl
  let m0 := s0.memory
  let x1 := rd m0 (e0.cell 8) + rd m0 (c0.cell 8)
  let m1 := Spec.Inv.upd m0 (e0.cell 8) x1
  let x2 := rd m1 (e0.cell 9) + rd m1 (c0.cell 9)
  let m2 := Spec.Inv.upd m1 (e0.cell 9) x2
  let x3 := rd m2 (e0.cell 23) + rd m2 (c0.cell 23)
  have T1 := trk_evstP hH hEVh (Struct.trk_refl (PW := PWI Γ0 s0 p0 c0.base) hG0 hp0) hc.he0 hc.het
    (Or.inl rfl) (pwi_ev hc (Or.inl rfl)) x1
  have T2 := trk_evstS hH T1 hc.he0 hc.het hsz (k := 9) (Or.inl rfl) x2
  have T3 := trk_evstS hH T2 hc.he0 hc.het hsz (k := 23) (Or.inr (Or.inr rfl)) x3
  have hm' : st.memory = iceMem s0.memory e0.base c0.base := hm
  refine ⟨rfl, hlc, ⟨Γ0, Struct.trk_congr hH T3 (by show st.memory = _; rw [hm']; rfl) hg hd hbe,
      by show ModifiesOnly (EC e0) s0.memory st.memory; rw [hm']; exact pmx_ice e0 _ _⟩, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩ <;>
    show rd st.memory _ = _ <;> rw [hm']
  · exact iceMem_8 _ _ _
  · exact iceMem_9 _ _ _ (nCE hc (i := 9) (j := 8) (by omega) (by omega))
  · exact iceMem_o _ _ _ (nE e0 (i := 24) (j := 8) (by omega) (by omega) (by omega))
      (nE e0 (i := 24) (j := 9) (by omega) (by omega) (by omega))
      (nE e0 (i := 24) (j := 23) (by omega) (by omega) (by omega))
  · exact iceMem_o _ _ _ (nCE hc (i := 24) (j := 8) (by omega) (by omega))
      (nCE hc (i := 24) (j := 9) (by omega) (by omega)) (nCE hc (i := 24) (j := 23) (by omega) (by omega))
  · exact iceMem_o _ _ _ (nE e0 (i := 11) (j := 8) (by omega) (by omega) (by omega))
      (nE e0 (i := 11) (j := 9) (by omega) (by omega) (by omega))
      (nE e0 (i := 11) (j := 23) (by omega) (by omega) (by omega))
  · exact iceMem_o _ _ _ (nE e0 (i := 17) (j := 8) (by omega) (by omega) (by omega))
      (nE e0 (i := 17) (j := 9) (by omega) (by omega) (by omega))
      (nE e0 (i := 17) (j := 23) (by omega) (by omega) (by omega))
  · exact iceMem_o _ _ _ (nCE hc (i := 17) (j := 8) (by omega) (by omega))
      (nCE hc (i := 17) (j := 9) (by omega) (by omega)) (nCE hc (i := 17) (j := 23) (by omega) (by omega))

end gas

end InitECandidate.Solver.MemSafe.Inc
