import InitECandidate.Solver.MemSafe.Store

/-!
# `store_post`: soundness of the store rule (M1)
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type}

theorem cell_add {ob : Obj} {o i : Nat} (h8 : o % 8 = 0) :
    ob.base + BitVec.ofNat 64 o + BitVec.ofNat 64 (8 * i) = ob.cell (o / 8 + i) := by
  unfold Obj.cell
  rw [BitVec.add_assoc, ← BitVec.ofNat_add]
  congr 2
  omega

/-- The heap part after a memory change: `G` from `G_write`, footprint from `hfoot`. -/
theorem heap_write {a : Act σ} {X : Ctx 64} (ha : ActOK a X) {Γ : Gam} {p : Ptrs}
    {s : State σ} (hh : Heap a Γ p s) {mem : Mem} {R : BitVec 64 → Prop}
    (hmod : ModifiesOnly R s.memory mem)
    (hR : ∀ x, R x → ¬ InObj Γ x.toNat ∨ WCell a.C Γ x)
    (hfit : ∀ o ∈ Γ, ∀ k, o.HasSlot k → R (o.cell k) →
      Fits Γ ((a.C.ty o.ty).slot k) (rd mem (o.cell k)))
    (hfoot : ∀ x, R x → a.Foot x) : Heap a Γ p { s with memory := mem } := by
  obtain ⟨hG, hps, hmono, hext, hnf, hm0, hpg, hng⟩ := hh
  refine ⟨G_write ha.hH ha.hC hG rfl (fun _ _ _ => rfl) (fun _ _ => rfl) rfl rfl hmod hR hfit,
    hps, hmono, hext, hnf, ?_, hpg, hng⟩
  intro x hx
  have h1 : mem x = s.memory x := hmod x (fun hr => hx (hfoot x hr))
  exact h1.trans (hm0 x hx)

/-- A store of `nw` words at offset `o` of the typed object `ob`, accepted by `slotsOK`. -/
theorem store_obj_heap {a : Act σ} {X : Ctx 64} (ha : ActOK a X) {Γ : Gam} {p : Ptrs}
    {Θ : List (BitVec 64 × Nat)} {s : State σ} (hh : Heap a Γ p s) (hord : p.Ordered)
    (hL : Layout a.C p Γ) {ob : Obj} (hob : ob ∈ Γ) {t o nw : Nat} (hty : ob.ty = t)
    {w : BitVec 64} (hwe : w = ob.base + BitVec.ofNat 64 o) (h8 : o % 8 = 0)
    (hle' : o + 8 * nw ≤ (a.C.ty t).minSz) (hpos : 0 < nw) {ve : AV}
    (hslots : slotsOK (a.C.ty t) (o / 8) nw ve = true) {v : ValueHOL 64}
    (hlen : (flattenHOL v).length = nw)
    (hone : nw = 1 → ve.isWord = true → ∃ x, v = .val (.word x) ∧ AVok Γ Θ ve x) {mem : Mem}
    (hmem : @panMemStoresHOL 64 _ w (flattenHOL v) s.memaddrs
      (fun x => Classical.propDecidable (s.memaddrs x)) s.memory = some mem) :
    Heap a Γ p { s with memory := mem } := by
  have hsz := (hL.1 ob hob).2.2.2.1
  rw [hty] at hsz
  have hbig : ob.size ≤ scratchEnd := by
    have := (cell_toNat hord hL hob (k := 0) (by
      unfold Obj.HasSlot; have := (hL.1 ob hob).2.1; have := (hL.1 ob hob).2.2.1
      omega)).2
    omega
  have hse : scratchEnd < 2 ^ 32 := by decide
  obtain ⟨hmod, hval⟩ := stores_many (flattenHOL v) w s.memory mem (by omega) hmem
  have hcell : ∀ i, w + BitVec.ofNat 64 (8 * i) = ob.cell (o / 8 + i) := fun i =>
    hwe ▸ cell_add h8
  have hslot : ∀ i < nw, ob.HasSlot (o / 8 + i) := by
    intro i hi; unfold Obj.HasSlot; omega
  have hnp : ∀ i < nw, (a.C.ty t).slot (o / 8 + i) ≠ .prot := by
    intro i hi
    by_cases h1 : nw = 1
    · subst h1
      have hi0 : i = 0 := by omega
      subst hi0
      exact fitsAV_not_prot hslots
    · rw [slotsOK_scalar hslots h1 hi]; simp
  refine heap_write ha hh hmod ?_ ?_ ?_
  · rintro x ⟨i, hi, rfl⟩
    rw [hlen] at hi
    right
    exact ⟨ob, hob, o / 8 + i, hslot i hi, by rw [hty]; exact hnp i hi, hcell i⟩
  · intro o' ho' k hk ⟨i, hi, he⟩
    rw [hlen] at hi
    rw [hcell i] at he
    obtain ⟨h1, h2⟩ := cell_inj hord hL ho' hob hk (hslot i hi) he
    subst h2
    rw [h1, hty]
    by_cases hn1 : nw = 1
    · subst hn1
      have hi0 : i = 0 := by omega
      subst hi0
      simp only [Nat.add_zero]
      cases hvw : ve.isWord
      · rw [fitsAV_scalar hslots hvw]; trivial
      · obtain ⟨x, rfl, hx⟩ := hone rfl hvw
        have hm := (hval 0 (by simp [flattenHOL])).1
        rw [hcell 0, Nat.add_zero] at hm
        have hr : rd mem (ob.cell (o / 8)) = x := by
          rw [rd, hm]; simp [flattenHOL]
        rw [hr]
        exact (fits_of_fitsAV hslots hx).2
    · rw [slotsOK_scalar hslots hn1 hi]; trivial
  · rintro x ⟨i, hi, rfl⟩
    rw [hlen] at hi
    exact foot_of_wcell hh ha.hord0 ha.hsz0
      ⟨ob, hob, o / 8 + i, hslot i hi, by rw [hty]; exact hnp i hi, hcell i⟩

theorem store_post {a : Act σ} {X : Ctx 64} (ha : ActOK a X) {E : CEnv} (hE : E.C = a.C)
    {A : AEnv} {ea ee : ExpHOL 64} (hst : stOK E A ea ee = true) (rt : List RT)
    (Γ : Gam) (Θ : List (BitVec 64 × Nat)) :
    HoareG σ X (IG a A Γ Θ) (.store ea ee) (SPost a rt (.normal A) Γ Θ) := by
  apply hoareG_store
  intro s hs hig w v mem hw hv hmem
  obtain ⟨p, hh, ht, hl⟩ := hig
  obtain ⟨p1, hp1, hord, hL, hF, hT, hGl, hW⟩ := hh.1
  have hpp : p1 = p := by
    rw [hh.2.1] at hp1; exact (Option.some.inj hp1).symm
  subst hpp
  suffices H : Heap a Γ p1 { s with memory := mem } from
    ⟨A, Γ, Θ, rfl, later_refl Γ Θ, p1, H, ht, hl⟩
  unfold stOK at hst
  rw [hE] at hst
  have hvok := aev_sound (H := a.H) hh.1 hl (ns_of ha hs) chkFuel ee v hv
  have haok := aev_sound (H := a.H) hh.1 hl (ns_of ha hs) chkFuel ea _ hw
  generalize aev a.C A chkFuel ee = ve at hst hvok
  generalize aev a.C A chkFuel ea = av at hst haok
  split at hst
  · cases hst
  · rename_i nw hnw
    obtain ⟨hlen, hone⟩ := words_len hnw hvok
    split at hst
    · -- a typed object
      rename_i t o
      obtain ⟨w', hw', ob, hob, hty, hwe⟩ := haok
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
      subst hw'
      split at hst
      · rename_i h8 hle
        simp only [Bool.and_eq_true, decide_eq_true_eq] at hst
        obtain ⟨hpos, hslots⟩ := hst
        exact store_obj_heap ha hh hord hL hob hty hwe h8 (Nat.le_of_ble_eq_true hle) hpos hslots
          hlen hone hmem
      · cases hst
    · -- a temporary
      rename_i k o
      obtain ⟨w', hw', q', n', hq', hwe⟩ := haok
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
      subst hw'
      split at hst
      · rename_i td hk
        have hle' := Nat.le_of_ble_eq_true hst
        obtain ⟨q, hq, hbuf, hprov⟩ := ht.2 k td hk
        rw [hq] at hq'
        simp only [Option.some.injEq, Prod.mk.injEq] at hq'
        obtain ⟨rfl, rfl⟩ := hq'
        by_cases hn0 : nw = 0
        · -- nothing is written
          subst hn0
          have hm : mem = s.memory := by
            cases hfl : flattenHOL v with
            | nil =>
                rw [hfl] at hmem
                simp only [panMemStoresHOL, Option.some.injEq] at hmem
                exact hmem.symm
            | cons _ _ => rw [hfl] at hlen; simp at hlen
          subst hm
          exact hh
        · have hbd := bufOK_bound hord hL q.isLt hbuf (by omega)
          have hse : scratchEnd + 8 < 2 ^ 32 := by decide
          obtain ⟨hmod, hval⟩ := stores_many (flattenHOL v) w s.memory mem (by omega) hmem
          -- the written cells are cells of the temporary
          have hc : ∀ i < nw, (w + BitVec.ofNat 64 (8 * i)).toNat = q.toNat + o + 8 * i := by
            intro i hi
            rw [hwe, BitVec.toNat_add, BitVec.toNat_add, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
            have : q.toNat + o + 8 * i < 2 ^ 64 := by omega
            rw [Nat.mod_eq_of_lt (by omega : o < 2 ^ 64), Nat.mod_eq_of_lt (by omega),
              Nat.mod_eq_of_lt (by omega : 8 * i < 2 ^ 64), Nat.mod_eq_of_lt (by omega)]
          have hov : ∀ i < nw, Overlap q.toNat td.size (w + BitVec.ofNat 64 (8 * i)) := by
            intro i hi
            have hd := (hval i (by omega)).2
            have hdom : X.memaddrs (w + BitVec.ofNat 64 (8 * i)) := by rw [← hs.2.1]; exact hd
            refine ⟨ha.hal _ hdom, ?_, ?_⟩ <;> rw [hc i hi] <;> omega
          refine heap_write ha hh hmod ?_ ?_ ?_
          · rintro x ⟨i, hi, rfl⟩
            rw [hlen] at hi
            rcases hbuf _ (hov i hi) with ⟨o', ho', k', hk', hsc, he⟩ | ⟨hn, -⟩
            · exact Or.inr ⟨o', ho', k', hk', by rw [hsc]; simp, he⟩
            · exact Or.inl hn
          · intro o' ho' k' hk' ⟨i, hi, he⟩
            rw [hlen] at hi
            rcases hbuf _ (hov i hi) with ⟨o'', ho'', k'', hk'', hsc, he'⟩ | ⟨hn, -⟩
            · obtain ⟨rfl, rfl⟩ := cell_inj hord hL ho' ho'' hk' hk'' (he ▸ he')
              rw [hsc]; trivial
            · exact absurd (he ▸ cell_in hord hL ho' hk') hn
          · rintro x ⟨i, hi, rfl⟩
            rw [hlen] at hi
            split at hprov
            · exact Or.inr (Or.inr (Or.inl (hprov.2 _ (hov i hi))))
            · exact Or.inr (Or.inl (hprov _ (hov i hi)))
            · exact absurd (hov i hi) (win_no_overlap hprov)
      · cases hst
    · -- through a nullable pointer
      split at hst
      · rename_i ts o hnp
        unfold npStOK at hst
        simp only [Bool.and_eq_true, beq_iff_eq, decide_eq_true_eq, List.all_eq_true] at hst
        obtain ⟨⟨⟨h8, hpos⟩, hmax⟩, hall⟩ := hst
        have hmax' := Nat.le_of_ble_eq_true hmax
        obtain ⟨b, hwb, hcase⟩ := npOf_sound hnp haok
        rcases hcase with hb | ⟨ob, hob, hbb, ht⟩
        · -- a null base: the first written cell is outside the domain
          exfalso
          obtain ⟨-, hval⟩ := stores_many (flattenHOL v) w s.memory mem (by
            unfold npMax heapBase nullMax at hmax'; omega) hmem
          have hd := (hval 0 (by omega)).2
          have h1 := ns_of ha hs _ hd
          have hbig : heapBase < 2 ^ 64 := by decide
          have hw0 : (w + BitVec.ofNat 64 (8 * 0)).toNat = b.toNat + o := by
            rw [hwb]
            simp only [Nat.mul_zero, BitVec.ofNat_eq_ofNat, BitVec.add_zero]
            rw [BitVec.toNat_add, BitVec.toNat_ofNat]
            unfold npMax nullMax at *
            rw [Nat.mod_eq_of_lt (by omega : o < 2 ^ 64), Nat.mod_eq_of_lt (by omega)]
          rw [hw0] at h1
          unfold npMax nullMax at *
          omega
        · obtain ⟨hle, hslots⟩ := hall ob.ty ht
          exact store_obj_heap ha hh hord hL hob rfl (by rw [hwb, hbb]) h8
            (Nat.le_of_ble_eq_true hle) hpos hslots hlen hone hmem
      · cases hst

end InitECandidate.Solver.MemSafe
