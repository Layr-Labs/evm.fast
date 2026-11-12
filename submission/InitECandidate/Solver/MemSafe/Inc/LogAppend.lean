import InitECandidate.Solver.MemSafe.Inc.Code
import InitECandidate.Solver.MemSafe.LogDefs
import InitECandidate.Solver.MemSafe.LogW

/-!
# `log_append` (local spec) and tracking helpers

* `back_cell`: a slot of an object of the current typing is a slot of an entry object of the
  same type, or unallocated at entry;
* `trk_sumCoreA`: the final `SumCore` of a tracking whose footprint is `PWs ∨ unallocated`;
* **`sumSpec_log_append`**: `log_append(e, x)` when `e[88]` is the base of a list header of
  element size 8: only list header / list array cells are written (`LaPW`).
-/

set_option maxRecDepth 100000
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Inc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.HtabEntries
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

/-! ## Tracking helpers -/

section trk
variable {C : Cfg} {H : Hooks σ} {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {PW : BitVec 64 → Prop}

/-- A slot of a current object is a slot of an entry object of the same base and type, or a cell
unallocated at entry. -/
theorem back_cell (hord0 : p0.Ordered) (hL0 : Layout C p0 Γ0) {Γ : Gam} {t : State σ}
    (h : Struct.Trk C H Γ0 s0 p0 PW Γ t) {A : Obj} (hA : A ∈ Γ) {k : Nat} (hk : A.HasSlot k) :
    (∃ o0 ∈ Γ0, o0.base = A.base ∧ o0.ty = A.ty ∧ o0.HasSlot k ∧ A.cell k = o0.cell k) ∨
      ¬ p0.Allocated (A.cell k).toNat := by
  obtain ⟨p, hp, hm, -, hnf, hG, -⟩ := h
  obtain ⟨q, hq, hord, hLay, -⟩ := hG
  rw [hp] at hq
  cases hq
  obtain ⟨e, h1, h2⟩ := cell_lay hord hLay hA hk
  rcases hnf A hA _ h1 h2 with ⟨o0, ho0, hb, ht, h3, h4⟩ | hf
  · left
    have h8 := (hL0.1 o0 ho0).2.1
    have hlo : o0.lo = A.lo := by unfold Obj.lo; rw [hb]
    refine ⟨o0, ho0, hb, ht, ?_, by unfold Obj.cell; rw [hb]⟩
    rw [e] at h4
    unfold Obj.HasSlot
    unfold Obj.hi at h4
    unfold Obj.lo at hlo h4
    omega
  · exact Or.inr (Struct.fresh_notAlloc hord0 hord hm hf)

/-- The final `SumCore` when the tracked footprint is `PWs` or unallocated at entry. -/
theorem trk_sumCoreA {Γ : Gam} {t : State σ} {sg : Sig} {PWs : BitVec 64 → Prop}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64}
    (h : Struct.Trk C H Γ0 s0 p0 (fun a => PWs a ∨ ¬ p0.Allocated a.toNat) Γ t)
    (hp0 : ptrsOf s0 = some p0)
    (hgrow : sg.grows = false → ∀ p, ptrsOf t = some p → NewFresh Γ0 Γ p0 p0)
    (hret : ∀ p, ptrsOf t = some p → ∀ v, r = .returned v → RetOK Γ p0 p vs sg.ret v) :
    ∃ p, SumCore C H sg PWs Γ0 s0 vs r t Γ p0 p := by
  obtain ⟨p, hp, hm0, hx, hnf, hG, hmod, hpg, -, -⟩ := h
  refine ⟨p, hp0, hp, hm0, hx, hnf, hG, ?_, fun g hg _ => hpg g hg, fun hg => hgrow hg p hp,
    hret p hp⟩
  exact hmod.mono fun a ha => by
    rcases ha with ha | ha | ha | ha
    · exact Or.inl ha
    · exact Or.inr (Or.inr (Or.inl ha))
    · exact Or.inr (Or.inr (Or.inr ha))
    · exact Or.inr (Or.inr (Or.inl ha))

end trk

/-! ## `log_append` -/

/-- The cells `log_append` may write: list header and list array cells. -/
def LaPW (Γ : Gam) (a : BitVec 64) : Prop :=
  (∃ L ∈ Γ, L.ty ∈ lstTys ∧ LCell L a) ∨ (∃ y ∈ Γ, IsLstA y.ty ∧ ∃ k, y.HasSlot k ∧ a = y.cell k)

/-- `e[88]` is the base of a list header of element size 8. -/
def LaPre (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) : Prop :=
  ∃ E : BitVec 64, ∃ L ∈ Γ, vs.head? = some (.val (.word E)) ∧
    L.base = rd s.memory (E + BitVec.ofNat 64 88) ∧ L.ty ∈ lstTys ∧ lstE L.ty = 8

def laSig : Sig := ⟨[.any, .any], [], [], true⟩

theorem argsOK_any2 {C : Cfg} {Γ : Gam} {p : Ptrs} {a b : ValueHOL 64} :
    ArgsOK C Γ p [.any, .any] [a, b] :=
  ⟨rfl, fun i pt w hpt _ => by rcases i with _ | _ | i <;> simp at hpt <;> subst hpt <;> trivial⟩

theorem argCells_any2 {vs : List (ValueHOL 64)} {a : BitVec 64} : ¬ ArgCells [.any, .any] vs a := by
  rintro ⟨i, w, -, h⟩
  rcases h with ⟨n, hn, -⟩ | ⟨j, c, d, x, hj, -⟩
  · rcases i with _ | _ | i <;> simp at hn
  · rcases i with _ | _ | i <;> simp at hj

/-! ## The value part of `log_append` (package L) -/

/-- **What `log_append(E, lg)` did to the lists** (value part): the final header `L'` of the list
`L0`, `LpV` (the array is unchanged or a fresh heap array with the old elements), `N' = N0 + 1`,
the record `lg` at `PTR' + 8 N0`, and the `prot` cells of `Γ0` that changed: header cells of `L0`,
or the slot (written `lg`). -/
def LaVal (Γ0 : Gam) (s0 : State σ) (m : Mem) (p0 : Ptrs) (Γ' : Gam) (L0 : Obj) (lg : BitVec 64) :
    Prop :=
  ∃ L' ∈ Γ', L'.base = L0.base ∧ L'.ty = L0.ty ∧ LpV Γ0 s0 m p0 Γ' L0 L' ∧
    (rd m (L'.cell 1)).toNat = (lN s0.memory L0).toNat + 1 ∧
    rd m (rd m (L'.cell 0) + BitVec.ofNat 64 (8 * (lN s0.memory L0).toNat)) = lg ∧
    ∀ a, ProtCell guestC Γ0 a → rd m a ≠ rd s0.memory a → LCell L0 a ∨
      (a = rd m (L'.cell 0) + BitVec.ofNat 64 (8 * (lN s0.memory L0).toNat) ∧ rd m a = lg)

/-- `log_append` writes no frozen cell. -/
theorem la_logKeep {H : Hooks σ} {Γ0 Γ' : Gam} {s0 t : State σ} {p0 : Ptrs}
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    {L0 : Obj} (hL0 : L0 ∈ Γ0) (hLt : L0.ty ∈ lstTys) (hLE : lstE L0.ty = 8)
    {lg : BitVec 64} (hV : LaVal Γ0 s0 t.memory p0 Γ' L0 lg) :
    LogKeep Γ0 s0.memory t.memory := by
  obtain ⟨q0, hq0, hord0, hLay0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  obtain ⟨L', hL'Γ, hL'b, hL't, hLV, hN', hslot, hDff⟩ := hV
  intro o ho ht k hk
  by_contra hch
  have hch' : rd t.memory (o.cell k) ≠ rd s0.memory (o.cell k) := hch
  have hne : o ≠ L0 := by
    rintro rfl
    rw [ht] at hLt
    exact absurd hLt (by decide)
  have hnl : ¬ IsLstA o.ty := by
    rw [ht]; unfold IsLstA; decide
  have hhdr_slot : ∀ k, k < 3 → L0.HasSlot k := fun k hk => lst_slot hLay0 hL0 hLt hk
  have hpc : ProtCell guestC Γ0 (o.cell k) := ⟨o, ho, k, hk, by rw [ht]; exact tlog_prot k, rfl⟩
  rcases hDff _ hpc hch' with hl | ⟨he, -⟩
  · rcases hl with h | h | h
    · exact hne (cell_inj hord0 hLay0 ho hL0 hk (hhdr_slot 0 (by omega)) h).1
    · exact hne (cell_inj hord0 hLay0 ho hL0 hk (hhdr_slot 1 (by omega)) h).1
    · exact hne (cell_inj hord0 hLay0 ho hL0 hk (hhdr_slot 2 (by omega)) h).1
  · rcases hLV with ⟨h1, z, hz, hzb, hzt, hzs⟩ | ⟨hcp, hpos, ⟨hlt, hun⟩, hy⟩
    · have hzc : rd t.memory (L'.cell 0) + BitVec.ofNat 64 (8 * (lN s0.memory L0).toNat) =
          z.cell (lN s0.memory L0).toNat := by rw [h1, ← hzb]; rfl
      rw [hzc] at he
      obtain ⟨rfl, -⟩ := cell_inj hord0 hLay0 ho hz hk (by unfold Obj.HasSlot; rw [hLE] at hzs; omega) he
      exact hnl hzt
    · rw [hLE] at hlt hun
      have hb : (rd t.memory (L'.cell 0) + BitVec.ofNat 64 (8 * (lN s0.memory L0).toNat)).toNat =
          (rd t.memory (L'.cell 0)).toNat + 8 * (lN s0.memory L0).toNat :=
        Spec.Inv.add_ofNat_toNat (by omega)
      have hna := hun _ (Nat.le_add_right _ (8 * (lN s0.memory L0).toNat))
        (by omega : (rd t.memory (L'.cell 0)).toNat + 8 * (lN s0.memory L0).toNat < _)
      rw [← hb, ← he] at hna
      exact hna (Helpers.allocated_of_inObj hLay0 (cell_in hord0 hLay0 ho hk))

/-- **`LogSub` from the value part of `log_append`.** -/
theorem la_logSub {H : Hooks σ} (hLH : LstHooks H) {Γ0 Γ' : Gam} {s0 t : State σ} {p0 p' : Ptrs}
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hord' : p'.Ordered) (hext : Ext Γ0 Γ') (hnf : NewFresh Γ0 Γ' p0 p') (hmo : p0.Mono p')
    {L0 : Obj} (hL0 : L0 ∈ Γ0) (hLt : L0.ty ∈ lstTys) (hLE : lstE L0.ty = 8)
    {lg : BitVec 64} (hlg : LogRecF Γ0 p0.hp s0.memory lg) (hV : LaVal Γ0 s0 t.memory p0 Γ' L0 lg) :
    LogSub Γ0 Γ' p'.hp s0.memory t.memory := by
  have hlg' := logRecF_step hmo hext (la_logKeep hG0 hp0 hL0 hLt hLE hV) hlg
  obtain ⟨q0, hq0, hord0, hLay0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hGO : GamOK Γ0 := gamOK_of_layout hLay0
  obtain ⟨L', hL'Γ, hL'b, hL't, hLV, hN', hslot, hDff⟩ := hV
  have hc0 : ∀ o : Obj, o.cell 0 = o.base := fun o => by simp [Obj.cell]
  have hc1 : ∀ o : Obj, o.cell 1 = o.base + BitVec.ofNat 64 8 := fun o => rfl
  have hL'cell : ∀ k, L'.cell k = L0.cell k := fun k => by unfold Obj.cell; rw [hL'b]
  have hpc : ∀ o ∈ Γ0, ∀ k, o.HasSlot k → (guestC.ty o.ty).slot k = .prot →
      ProtCell guestC Γ0 (o.cell k) := fun o ho k hk hp => ⟨o, ho, k, hk, hp, rfl⟩
  have hallocC : ∀ o ∈ Γ0, ∀ k, o.HasSlot k → p0.Allocated (o.cell k).toNat := fun o ho k hk =>
    Helpers.allocated_of_inObj hLay0 (cell_in hord0 hLay0 ho hk)
  set N0 := (lN s0.memory L0).toNat with hN0def
  have hhdr_slot : ∀ k, k < 3 → L0.HasSlot k := fun k hk => lst_slot hLay0 hL0 hLt hk
  -- where the slot is
  have hslotInfo : (∃ z ∈ Γ0, IsLstA z.ty ∧ z.HasSlot N0 ∧
        rd t.memory (L'.cell 0) + BitVec.ofNat 64 (8 * N0) = z.cell N0) ∨
      ¬ p0.Allocated (rd t.memory (L'.cell 0) + BitVec.ofNat 64 (8 * N0)).toNat := by
    rcases hLV with ⟨h1, z, hz, hzb, hzt, hzs⟩ | ⟨hcp, hpos, ⟨hlt, hun⟩, hy⟩
    · left
      refine ⟨z, hz, hzt, by unfold Obj.HasSlot; rw [hLE] at hzs; omega, ?_⟩
      rw [h1, ← hzb]; rfl
    · right
      have hb : (rd t.memory (L'.cell 0) + BitVec.ofNat 64 (8 * N0)).toNat =
          (rd t.memory (L'.cell 0)).toNat + 8 * N0 := Spec.Inv.add_ofNat_toNat (by rw [hLE] at hlt; omega)
      rw [hb]
      rw [hLE] at hun
      exact hun _ (by omega) (by omega)
  have hnotSlot : ∀ o ∈ Γ0, ∀ k, o.HasSlot k → ¬ IsLstA o.ty →
      o.cell k ≠ rd t.memory (L'.cell 0) + BitVec.ofNat 64 (8 * N0) := by
    intro o ho k hk hnt he
    rcases hslotInfo with ⟨z, hz, hzt, hzs, hze⟩ | hun
    · rw [hze] at he
      obtain ⟨rfl, -⟩ := cell_inj hord0 hLay0 ho hz hk hzs he
      exact hnt hzt
    · exact hun (by rw [← he]; exact hallocC o ho k hk)
  -- a `prot` cell of an object other than `L0` / not the slot is unchanged
  have hunch : ∀ o ∈ Γ0, ∀ k, o.HasSlot k → (guestC.ty o.ty).slot k = .prot → o ≠ L0 →
      o.cell k ≠ rd t.memory (L'.cell 0) + BitVec.ofNat 64 (8 * N0) →
      rd t.memory (o.cell k) = rd s0.memory (o.cell k) := by
    intro o ho k hk hp hne hns
    by_contra hch
    have hch' : rd t.memory (o.cell k) ≠ rd s0.memory (o.cell k) := hch
    rcases hDff _ (hpc o ho k hk hp) hch' with hl | ⟨he, -⟩
    · rcases hl with h | h | h
      · exact hne (cell_inj hord0 hLay0 ho hL0 hk (hhdr_slot 0 (by omega)) h).1
      · exact hne (cell_inj hord0 hLay0 ho hL0 hk (hhdr_slot 1 (by omega)) h).1
      · exact hne (cell_inj hord0 hLay0 ho hL0 hk (hhdr_slot 2 (by omega)) h).1
    · exact hns he
  intro M hM hMh
  have hMt : M.ty ∈ lstTys := by rcases hMh with h | h <;> rw [h] <;> decide
  have hME : lstE M.ty = 8 := by rcases hMh with h | h <;> rw [h] <;> decide
  obtain ⟨-, hnc, hc00, zM, hzM, hzMb, hzMt, hzMs⟩ := lst_hook hLH hG0 hM hMt
  have hzMb' : zM.base = rd s0.memory M.base := by rw [hzMb]; unfold lP; rw [hc0]
  have hzMs' : 8 * (lC s0.memory M).toNat ≤ zM.size := by rw [hME] at hzMs; exact hzMs
  have hMnot : ¬ IsLstA M.ty := fun h => (lstA_ne h).2.2.2.1 hMt
  have hLN : LNn s0.memory M.base = (lN s0.memory M).toNat := by
    unfold LNn lN; rw [← hc1 M]
  have hzMA : IsLstA zM.ty := by rcases hzMt with h | ⟨h, -⟩ <;> [exact Or.inl h; exact Or.inr h]
  by_cases hMb : M.base = L0.base
  · -- the list that was appended to
    have hML : M = L0 := base_eq hGO hL0 hM hMb
    subst hML
    have hN'' : LNn t.memory M.base = N0 + 1 := by
      unfold LNn; rw [← hc1 M, ← hL'cell]; exact hN'
    have hLN0 : LNn s0.memory M.base = N0 := hLN
    refine ⟨?_, fun i hi => ?_⟩
    · rcases hLV with ⟨h1, -⟩ | ⟨-, -, -, y, hy, hyb, hyt⟩
      · left; simp only [hL'cell, hc0] at h1; exact h1
      · right; simp only [hL'cell, hc0] at hyb; exact ⟨y, hy, hyb, hyt⟩
    · rw [hN''] at hi
      rcases Nat.lt_or_ge i N0 with hlt | hge
      · left
        refine ⟨i, by rw [hLN0]; exact hlt, ?_⟩
        unfold LEl
        rcases hLV with ⟨h1, z, hz, hzb, hzt, hzs⟩ | ⟨hcp, hpos, hb, hy⟩
        · have h1' := h1
          simp only [hL'cell, hc0] at h1'
          rw [h1']
          have hzc : rd s0.memory M.base + BitVec.ofNat 64 (8 * i) = z.cell i := by
            unfold Obj.cell; rw [hzb, ← hc0 M]
          rw [hzc]
          have hzi : z.HasSlot i := by unfold Obj.HasSlot; rw [hLE] at hzs; omega
          by_contra hch
          rcases hDff _ (hpc z hz i hzi (lstA_prot hzt i)) hch with hl | ⟨he, -⟩
          · rcases hl with h | h | h
            · exact (lstA_ne hzt).2.2.2.1 ((cell_inj hord0 hLay0 hz hL0 hzi (hhdr_slot 0 (by omega)) h).1 ▸ hMt)
            · exact (lstA_ne hzt).2.2.2.1 ((cell_inj hord0 hLay0 hz hL0 hzi (hhdr_slot 1 (by omega)) h).1 ▸ hMt)
            · exact (lstA_ne hzt).2.2.2.1 ((cell_inj hord0 hLay0 hz hL0 hzi (hhdr_slot 2 (by omega)) h).1 ▸ hMt)
          · have hzs' : z.HasSlot N0 := by unfold Obj.HasSlot; rw [hLE] at hzs; omega
            have hsl : rd t.memory (L'.cell 0) + BitVec.ofNat 64 (8 * N0) = z.cell N0 := by
              rw [h1, ← hzb]; rfl
            have : z.cell i = z.cell N0 := by rw [he, hsl]
            have := (cell_inj hord0 hLay0 hz hz hzi hzs' this).2
            omega
        · have := hcp i (by rw [hLE]; omega)
          simp only [hL'cell, hc0] at this
          exact this
      · right
        have hi' : i = N0 := by omega
        subst hi'
        have := hslot
        simp only [hL'cell, hc0] at this
        show LogRecF Γ' p'.hp t.memory (rd t.memory (rd t.memory M.base + BitVec.ofNat 64 (8 * N0)))
        rw [this]
        exact hlg'
  · -- another list: unchanged, except for slot writes of `lg`
    have hMne : M ≠ L0 := fun h => hMb (by rw [h])
    have hMhdr : ∀ k, k < 2 → M.HasSlot k := fun k hk => lst_slot hLay0 hM hMt (by omega)
    have hMprot : ∀ k, (guestC.ty M.ty).slot k = .prot := lst_prot _ hMt
    have hns : ∀ k, M.HasSlot k → M.cell k ≠ rd t.memory (L'.cell 0) + BitVec.ofNat 64 (8 * N0) :=
      fun k hk => hnotSlot M hM k hk hMnot
    have hP : rd t.memory M.base = rd s0.memory M.base := by
      have := hunch M hM 0 (hMhdr 0 (by omega)) (hMprot 0) hMne (hns 0 (hMhdr 0 (by omega)))
      rwa [hc0] at this
    have hNn : rd t.memory (M.base + BitVec.ofNat 64 8) = rd s0.memory (M.base + BitVec.ofNat 64 8) := by
      have := hunch M hM 1 (hMhdr 1 (by omega)) (hMprot 1) hMne (hns 1 (hMhdr 1 (by omega)))
      rwa [hc1] at this
    refine ⟨Or.inl hP, fun i hi => ?_⟩
    have hLNt : LNn t.memory M.base = LNn s0.memory M.base := by unfold LNn; rw [hNn]
    rw [hLNt, hLN] at hi
    have hzi : zM.HasSlot i := by unfold Obj.HasSlot; omega
    have hc : rd s0.memory M.base + BitVec.ofNat 64 (8 * i) = zM.cell i := by
      unfold Obj.cell; rw [hzMb']
    unfold LEl
    rw [hP, hc]
    by_cases hch : rd t.memory (zM.cell i) = rd s0.memory (zM.cell i)
    · left
      exact ⟨i, by rw [hLN]; exact hi, by rw [hch, hc]⟩
    · rcases hDff _ (hpc zM hzM i hzi (lstA_prot hzMA i)) hch with hl | ⟨-, hv⟩
      · exfalso
        rcases hl with h | h | h
        · exact (lstA_ne hzMA).2.2.2.1 ((cell_inj hord0 hLay0 hzM hL0 hzi (hhdr_slot 0 (by omega)) h).1 ▸ hLt)
        · exact (lstA_ne hzMA).2.2.2.1 ((cell_inj hord0 hLay0 hzM hL0 hzi (hhdr_slot 1 (by omega)) h).1 ▸ hLt)
        · exact (lstA_ne hzMA).2.2.2.1 ((cell_inj hord0 hLay0 hzM hL0 hzi (hhdr_slot 2 (by omega)) h).1 ▸ hLt)
      · right
        rw [hv]
        exact hlg'

/-- **`LogW` from the value part of `log_append`**: every list array cell of `Γ0` is unchanged or now
holds a log record in range (the only cell written is the new slot, with the record `lg`). -/
theorem la_logW {H : Hooks σ} {Γ0 Γ' : Gam} {s0 t : State σ} {p0 p' : Ptrs}
    (hG0 : G guestC H Γ0 s0) (hp0 : ptrsOf s0 = some p0)
    (hord' : p'.Ordered) (hext : Ext Γ0 Γ') (hnf : NewFresh Γ0 Γ' p0 p') (hmo : p0.Mono p')
    {L0 : Obj} (hL0 : L0 ∈ Γ0) (hLt : L0.ty ∈ lstTys) (hLE : lstE L0.ty = 8)
    {lg : BitVec 64} (hlg : LogRecF Γ0 p0.hp s0.memory lg) (hV : LaVal Γ0 s0 t.memory p0 Γ' L0 lg) :
    LogW Γ0 Γ' p'.hp s0.memory t.memory := by
  have hlg' := logRecF_step hmo hext (la_logKeep hG0 hp0 hL0 hLt hLE hV) hlg
  obtain ⟨q0, hq0, hord0, hLay0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  obtain ⟨L', hL'Γ, hL'b, hL't, hLV, hN', hslot, hDff⟩ := hV
  rintro a ⟨x, hx, hxt, k, hk, rfl⟩
  by_cases hch : rd t.memory (x.cell k) = rd s0.memory (x.cell k)
  · exact Or.inl hch
  · right
    have hxA : IsLstA x.ty := hxt
    have hpc : ProtCell guestC Γ0 (x.cell k) := ⟨x, hx, k, hk, lstA_prot hxA k, rfl⟩
    rcases hDff _ hpc hch with hl | ⟨-, hv⟩
    · exfalso
      rcases hl with h | h | h
      · exact (lstA_ne hxA).2.2.2.1 ((cell_inj hord0 hLay0 hx hL0 hk (lst_slot hLay0 hL0 hLt (by omega)) h).1 ▸ hLt)
      · exact (lstA_ne hxA).2.2.2.1 ((cell_inj hord0 hLay0 hx hL0 hk (lst_slot hLay0 hL0 hLt (by omega)) h).1 ▸ hLt)
      · exact (lstA_ne hxA).2.2.2.1 ((cell_inj hord0 hLay0 hx hL0 hk (lst_slot hLay0 hL0 hLt (by omega)) h).1 ▸ hLt)
    · rw [hv]; exact hlg'

/-- **`log_append`'s post** (package L): with the record `lg` in range at entry, every list of `Γ` is
described by `LogSub` afterwards. -/
def LaQ (vs : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64) (t : State σ)
    (Γ' : Gam) : Prop :=
  (∃ v, r = .returned v) ∧
  ∀ v, r = .returned v → LaPre vs s Γ → ∀ E lg, vs = [.val (.word E), .val (.word lg)] →
    ∀ p0 p', ptrsOf s = some p0 → ptrsOf t = some p' → LogRecF Γ p0.hp s.memory lg →
      LogSub Γ Γ' p'.hp s.memory t.memory ∧ LogW Γ Γ' p'.hp s.memory t.memory ∧
        LogKeep Γ s.memory t.memory

/-- **`log_append(e, x)`**: pushes onto the list at `e[88]` and stores `x` into the new slot; only
list header and list array cells are written, and the lists afterwards are described by `LogSub`
(`LaQ`). -/
theorem sumSpec_log_appendV {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hLH : LstHooks H) :
    SumSpecA σ X guestC H (nm "log_append") laSig LaPre (fun _ _ Γ a => LaPW Γ a) LaQ := by
  refine sumSpecA_of_returns (noExc_log_append hF.hX) ?_
  intro vs body callee rs hl s0 hs hloc r hr v hv Γ0 hG0 hargs hpre
  have hH := hF.hH
  have hl' := hl
  rw [hF.hX] at hl'
  obtain ⟨rfl, -, A, B, rfl, sa, sb, hA, hB⟩ := lookupCode_two code_log_append (by decide) hl'
  obtain ⟨Ew, rfl⟩ := val_of_shapeEq_one sa
  obtain ⟨xw, rfl⟩ := val_of_shapeEq_one sb
  have hpre0 := hpre
  obtain ⟨E, L, hL, hE, hLb, hLt, hLE⟩ := hpre
  simp only [List.head?_cons, Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hE
  subst hE
  obtain ⟨p0, hp0, -⟩ := hargs
  obtain ⟨q0, hq0, hord0, hL0, -⟩ := id hG0
  rw [hp0] at hq0
  cases hq0
  have hle : s0.locals.lookup (nm "e") = some (.val (.word Ew)) := by rw [hloc]; exact hA
  have hlx : s0.locals.lookup (nm "log") = some (.val (.word xw)) := by rw [hloc]; exact hB
  have H' : Hoare σ X (fun u => u = s0) laBody (fun r t => ∀ v, r = some (.returned v) →
      ∃ Γ', Struct.Trk guestC H Γ0 s0 p0
        (fun a => (ProtCell guestC Γ0 a ∧ LaPW Γ0 a) ∨ ¬ p0.Allocated a.toNat) Γ' t ∧
        LaVal Γ0 s0 t.memory p0 Γ' L xw) := by
    unfold laBody
    refine Mpt.Leaves.hoare_decCallL (FunSpec.and (sumSpec_lst_push hF hM hLH) (Frames.funSpec_dom _))
      (fun r t L h v hv => by
        obtain ⟨Γ', hT, hV⟩ := h v hv
        exact ⟨Γ', Struct.trk_congr hH hT rfl rfl rfl rfl, hV⟩)
      fun s _ hs vs' hvs callee v st hRR _ _ => ?_
    subst s
    obtain ⟨hS, hd, hbe⟩ := hRR
    obtain ⟨a1, r1, rfl, ha1, hr1⟩ := evs_cons_inv hvs
    have ha1' := lp_ev_ld (ev_add2 (lp_ev_lv hle) (ev_cw _ 88)) ha1
    subst ha1'
    rw [show evs s0 [cw 8] = some [.val (.word (BitVec.ofNat 64 8))] from
      evs_cons (ev_cw _ 8) evs_nil] at hr1
    cases hr1
    have hGe : G guestC H Γ0 (callEntryStateHOLFinite s0 callee) :=
      Struct.G_congr (s := s0) hH rfl rfl rfl rfl hG0
    have hpe : ptrsOf (callEntryStateHOLFinite s0 callee) = some p0 :=
      (Frames.ptrsOf_congr rfl).trans hp0
    obtain ⟨Γ1, q1, q2, hc, hpost⟩ := hS (by simp [Good]) (by simp [Abortive]) Γ0 hGe
      ⟨p0, hpe, argsOK_any2⟩ ⟨L, hL, hLt, by rw [hLE, hLb]⟩
    have hq1 : p0 = q1 := Option.some.inj (hpe.symm.trans hc.1)
    subst hq1
    have hT1 := Struct.trk_call (Struct.trk_refl (PW := fun a => (ProtCell guestC Γ0 a ∧ LaPW Γ0 a) ∨
        ¬ p0.Allocated a.toNat) hG0 hp0) hord0 hL0 rfl rfl hc (fun g _ => by simp [lpSigA])
      (fun a ha => absurd ha argCells_any2)
      (fun a hpc ⟨L', hL', hL't, _, hcl⟩ => Or.inl ⟨hpc, Or.inl ⟨L', hL', hL't, hcl⟩⟩) hd hbe
    obtain ⟨L', hL', hL't, hL'b, hR, hVall⟩ := hpost v rfl
    simp only [List.getElem?_cons_zero, Option.some.injEq, ValueHOL.val.injEq,
      HolWordLab.word.injEq] at hL'b
    have hLL : L' = L := base_eq (gamOK_of_layout hL0) hL hL' (hL'b.symm.trans hLb.symm)
    subst hLL
    obtain ⟨Lf, hLf, hLfb, hLft, hVf0⟩ := hVall p0 hpe
    have hVf : LpV Γ0 s0 st.memory p0 Γ1 L' Lf := hVf0
    obtain ⟨Lr, hLr, hLrb, hLrt, hNr, x, hx, hxt, hxb, hxk, rfl⟩ := lpR_slot8' hR hLE
    have hG1 := Struct.trk_G hT1
    obtain ⟨q1', hq1', hord1, hLay1, -⟩ := id hG1
    have hLfr : Lf = Lr := base_eq (gamOK_of_layout hLay1) hLr hLf (by rw [hLfb, hLrb])
    subst hLfr
    refine hoare_seq (R := fun r t => r = none ∧ ∃ Γ', Struct.Trk guestC H Γ0 s0 p0
        (fun a => (ProtCell guestC Γ0 a ∧ LaPW Γ0 a) ∨ ¬ p0.Allocated a.toNat) Γ' t ∧
        LaVal Γ0 s0 t.memory p0 Γ' L' xw) ?_
      (fun _ _ _ hr _ h => absurd h.1 hr) ?_
    · refine Spec.Inv.hoare_store_w (fun _ => x.cell (lN s0.memory L').toNat) (fun _ => xw) ?_ ?_ ?_
      · intro t _ ht w hw
        subst ht
        rw [lp_ev_lv (lk_set_self _ _ _)] at hw
        cases hw; rfl
      · intro t _ ht w hw
        subst ht
        rw [lp_ev_lv (by rw [lk_set_ne _ _ (show nm "slot" ≠ nm "log" by decide)]; exact hlx)] at hw
        cases hw; rfl
      · intro t _ ht
        subst ht
        refine ⟨rfl, Γ1, ?_, ?_⟩
        · refine trk_astore hH hLH (Struct.trk_congr (t' := setVarHOLFinite (nm "slot")
            (.val (.word (x.cell (lN (callEntryStateHOLFinite s0 callee).memory L').toNat)))
            { st with locals := s0.locals }) hH hT1 rfl rfl rfl rfl) hx hxt hxk ?_ xw
          rcases back_cell hord0 hL0 hT1 hx hxk with ⟨o0, ho0, hob, hot, hok, hce⟩ | hna
          · refine Or.inl ⟨⟨o0, ho0, _, hok, lstA_prot (hot ▸ hxt) _, hce⟩,
              Or.inr ⟨o0, ho0, hot ▸ hxt, _, hok, hce⟩⟩
          · exact Or.inr hna
        · -- the value part
          show LaVal Γ0 s0 (Spec.Inv.upd st.memory (x.cell (lN s0.memory L').toNat) xw) p0 Γ1 L' xw
          have hcn : ∀ k, k < 3 → Lf.cell k ≠ x.cell (lN s0.memory L').toNat := by
            intro k hk he
            have := (cell_inj hord1 hLay1 hLf hx (lst_slot hLay1 hLf (hLft ▸ hLt) hk) hxk he).1
            exact (lstA_ne hxt).2.2.2.1 (this ▸ hLft ▸ hLt)
          have hLfc0 : Lf.cell 0 ≠ x.cell (lN s0.memory L').toNat := hcn 0 (by omega)
          have hLfc1 : Lf.cell 1 ≠ x.cell (lN s0.memory L').toNat := hcn 1 (by omega)
          have hxcell : x.cell (lN s0.memory L').toNat =
              rd st.memory (Lf.cell 0) + BitVec.ofNat 64 (8 * (lN s0.memory L').toNat) := by
            unfold Obj.cell; rw [hxb]; rfl
          refine ⟨Lf, hLf, hLfb, hLft, ?_, ?_, ?_, ?_⟩
          · rcases hVf with hl | hr
            · exact Or.inl (lpV_storeL hl hLfc0)
            · refine Or.inr (lpV_storeR hr hLfc0 fun k hk he => ?_)
              obtain ⟨hcp, hpos, ⟨hlt, hun⟩, hy⟩ := hr
              rw [hLE] at hlt hk
              rw [hxcell] at he
              have e := congrArg BitVec.toNat he
              rw [Spec.Inv.add_ofNat_toNat (by omega), Spec.Inv.add_ofNat_toNat (by omega)] at e
              omega
          · have : rd (Spec.Inv.upd st.memory (x.cell (lN s0.memory L').toNat) xw) (Lf.cell 1) =
                rd st.memory (Lf.cell 1) := rd_iupd_ne hLfc1
            rw [this]; exact hNr
          · rw [rd_iupd_ne hLfc0, ← hxcell]
            exact rd_iupd_self _ _ _
          · intro a' hpa' hne'
            by_cases haa : a' = x.cell (lN s0.memory L').toNat
            · right
              refine ⟨?_, ?_⟩
              · rw [rd_iupd_ne hLfc0, ← hxcell]; exact haa
              · rw [haa]; exact rd_iupd_self _ _ _
            · left
              by_contra hnl
              apply hne'
              have := Struct.sumCore_prot hGe hc (fun a ha => absurd ha argCells_any2) (a := a') hpa' (by
                rintro ⟨L2, hL2, -, hv2, hl2⟩
                simp only [List.getElem?_cons_zero, Option.some.injEq, ValueHOL.val.injEq,
                  HolWordLab.word.injEq] at hv2
                have hLe2 : L2 = L' := base_eq (gamOK_of_layout hL0) hL hL2 (by rw [← hv2, hLb])
                exact hnl (hLe2 ▸ hl2))
              rw [rd_iupd_ne haa]
              unfold rd
              rw [this]
              try rfl
    · refine hoare_return fun t _ ⟨_, Γ', hT, hV⟩ w _ => fun v' _ => ⟨Γ', ?_, hV⟩
      exact Struct.trk_congr hH hT rfl rfl rfl rfl
  have H2 := H' s0 hs rfl (by rw [hr, hv]; trivial)
  rw [hr, hv] at H2
  obtain ⟨Γ', hT, hV⟩ := H2 v rfl
  obtain ⟨p', hc⟩ := trk_sumCoreA (sg := laSig) (PWs := fun a => ProtCell guestC Γ0 a ∧ LaPW Γ0 a)
    (vs := [.val (.word Ew), .val (.word xw)]) (r := r) hT hp0 (fun h => by simp [laSig] at h)
    (fun _ _ w _ i rt w' hi _ => by simp [laSig] at hi)
  refine ⟨Γ', p0, p', hc, ⟨v, hv⟩, ?_⟩
  intro w hw hpre' E' lg hvs q0 q' hq0' hq' hlg
  simp only [List.cons.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq, and_true] at hvs
  obtain ⟨rfl, rfl⟩ := hvs
  obtain rfl : q0 = p0 := Option.some.inj (hq0'.symm.trans hp0)
  obtain rfl : q' = p' := Option.some.inj (hq'.symm.trans hc.2.1)
  have hGt := hc.2.2.2.2.2.1
  obtain ⟨pG, hpG, hord', -⟩ := hGt
  rw [hc.2.1] at hpG
  cases hpG
  exact ⟨la_logSub hLH hG0 hp0 hord' hc.2.2.2.1 hc.2.2.2.2.1 hc.2.2.1 hL hLt hLE hlg hV,
    la_logW hG0 hp0 hord' hc.2.2.2.1 hc.2.2.2.2.1 hc.2.2.1 hL hLt hLE hlg hV,
    la_logKeep hG0 hp0 hL hLt hLE hV⟩

/-- **`log_append(e, x)`**: pushes onto the list at `e[88]` and stores `x` into the new slot; only
list header and list array cells are written. -/
theorem sumSpec_log_append {H : Hooks σ} (hF : FoldOK σ X guestC H) (hM : HooksMono guestC H)
    (hLH : LstHooks H) :
    SumSpecA σ X guestC H (nm "log_append") laSig LaPre (fun _ _ Γ a => LaPW Γ a)
      (fun _ _ _ _ _ _ => True) :=
  sumSpecA_mono (sumSpec_log_appendV hF hM hLH) (fun _ _ _ h => h) (fun _ _ _ _ h => h)
    (fun _ _ _ _ _ _ _ => trivial)

/-- A cell of a list header or array of `Γ` is a `prot` cell of `Γ`. -/
theorem listCell_prot {Γ : Gam} {a : BitVec 64} (h : ListCell Γ a) : ProtCell guestC Γ a := by
  rcases h with ⟨L, hL, ht, k, hk, hks, rfl⟩ | ⟨x, hx, hxt, k, hk, rfl⟩
  · have hMt : L.ty ∈ lstTys := by rcases ht with h | h <;> rw [h] <;> decide
    exact ⟨L, hL, k, hks, lst_prot _ hMt k, rfl⟩
  · exact ⟨x, hx, k, hk, lstA_prot hxt k, rfl⟩

/-- **A run that keeps every list cell of `Γ0` keeps the lists**: `LogSub` for any later typing. -/
theorem logSub_of_listKeep {H : Hooks σ} (hLH : LstHooks H) {Γ0 Γ1 : Gam} {s0 u : State σ}
    {hp1 : Nat} (hG0 : G guestC H Γ0 s0)
    (hk : ∀ a, ListCell Γ0 a → u.memory a = s0.memory a) :
    LogSub Γ0 Γ1 hp1 s0.memory u.memory := by
  obtain ⟨q0, hq0, hord0, hLay0, -⟩ := id hG0
  apply logSub_of_eq
  intro M hM hMh
  have hMt : M.ty ∈ lstTys := by rcases hMh with h | h <;> rw [h] <;> decide
  have hME : lstE M.ty = 8 := by rcases hMh with h | h <;> rw [h] <;> decide
  obtain ⟨-, hnc, hc00, zM, hzM, hzMb, hzMt, hzMs⟩ := lst_hook hLH hG0 hM hMt
  have hc0 : M.cell 0 = M.base := by simp [Obj.cell]
  have hc1 : M.cell 1 = M.base + BitVec.ofNat 64 8 := rfl
  have hzMA : IsLstA zM.ty := by rcases hzMt with h | ⟨h, -⟩ <;> [exact Or.inl h; exact Or.inr h]
  have hMs : ∀ k, k < 2 → M.HasSlot k := fun k hk => lst_slot hLay0 hM hMt (by omega)
  have h0 : rd u.memory M.base = rd s0.memory M.base := by
    have := hk (M.cell 0) (Or.inl ⟨M, hM, hMh, 0, by omega, hMs 0 (by omega), rfl⟩)
    rw [hc0] at this
    unfold rd; rw [this]
  have h1 : rd u.memory (M.base + BitVec.ofNat 64 8) = rd s0.memory (M.base + BitVec.ofNat 64 8) := by
    have := hk (M.cell 1) (Or.inl ⟨M, hM, hMh, 1, by omega, hMs 1 (by omega), rfl⟩)
    rw [hc1] at this
    unfold rd; rw [this]
  refine ⟨h0, h1, fun i hi => ?_⟩
  have hzb' : zM.base = rd s0.memory M.base := by rw [hzMb]; unfold lP; rw [hc0]
  have hLN : LNn s0.memory M.base = (lN s0.memory M).toNat := by unfold LNn lN; rw [← hc1]
  rw [hLN] at hi
  have hzi : zM.HasSlot i := by
    unfold Obj.HasSlot; rw [hME] at hzMs; omega
  have hc : rd s0.memory M.base + BitVec.ofNat 64 (8 * i) = zM.cell i := by
    unfold Obj.cell; rw [hzb']
  unfold LEl
  rw [h0, hc]
  have := hk (zM.cell i) (Or.inr ⟨zM, hzM, hzMA, i, hzi, rfl⟩)
  unfold rd; rw [this]

/-- **A run that keeps every `prot` cell of `Γ0` keeps the lists**: `LogSub` for any later typing. -/
theorem logSub_of_protKeep {H : Hooks σ} (hLH : LstHooks H) {Γ0 Γ1 : Gam} {s0 u : State σ}
    {hp1 : Nat} (hG0 : G guestC H Γ0 s0)
    (hk : ∀ a, ProtCell guestC Γ0 a → u.memory a = s0.memory a) :
    LogSub Γ0 Γ1 hp1 s0.memory u.memory :=
  logSub_of_listKeep hLH hG0 fun a ha => hk a (listCell_prot ha)

/-- A list cell is not a cell of an object that is not a log object. -/
theorem ne_listCell {p : Ptrs} {Γ : Gam} (hord : p.Ordered) (hL : Layout guestC p Γ) {o : Obj}
    (ho : o ∈ Γ) (hot : o.ty ∉ [15, 16, 17, 18]) {k : Nat} (hk : o.HasSlot k) {a : BitVec 64}
    (h : ListCell Γ a) : o.cell k ≠ a := by
  intro he
  rcases h with ⟨L, hL', ht, j, hj, hjs, rfl⟩ | ⟨x, hx, hxt, j, hj, rfl⟩
  · obtain ⟨rfl, -⟩ := cell_inj hord hL ho hL' hk hjs he
    apply hot
    rcases ht with h | h <;> rw [h] <;> decide
  · obtain ⟨rfl, -⟩ := cell_inj hord hL ho hx hk hj he
    apply hot
    rcases hxt with h | h <;> rw [h] <;> decide

end InitECandidate.Solver.MemSafe.Inc
