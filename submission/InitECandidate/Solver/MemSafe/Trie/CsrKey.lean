import InitECandidate.Solver.MemSafe.Trie.CsrM

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false

/-!
# `compute_state_root`: keys of table items

* `NoBufB`, `argCells_nb`: a signature without buffer parameters has no argument cells.
* `KeyIn`: a key range lies in objects owned by a given table; stable under `Ext` (`keyin_ext`).
* `keyin_of_item`: the key of a found `htab_item` result.
* `rdkey_of_keyin`: `RdKeyPre` for `htab_set` into a different table.
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn InitECandidate.Solver.MemSafe.Ins
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def noBufP : PT → Bool
  | .buf _ => false
  | .bufArg _ _ _ => false
  | _ => true

theorem argCells_nb {ps : List PT} {vs : List (ValueHOL 64)} {x : BitVec 64}
    (h : ps.all noBufP = true) : ¬ ArgCells ps vs x := by
  rintro ⟨i, w, -, ⟨n, hn, -⟩ | ⟨j, c, d, y, hj, -⟩⟩
  · have := List.all_eq_true.mp h _ (List.mem_of_getElem? hn)
    simp [noBufP] at this
  · have := List.all_eq_true.mp h _ (List.mem_of_getElem? hj)
    simp [noBufP] at this

theorem tabw_of_G {Γ : Gam} {s : State σ} (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ s)
    {o : Obj} (ho : o ∈ Γ) (hk : hkOf o.ty = .tab) : tabW Γ s o := by
  obtain ⟨p, hp, hord, hL, -, -, -, hW⟩ := id hG
  exact htabHooks_guestR.get Γ s o hk (hW o ho)

/-- The `n` bytes at `key` lie in objects owned by the table of type `t` at `B`. -/
def KeyIn (Γ : Gam) (B : BitVec 64) (t : Nat) (key : BitVec 64) (n : Nat) : Prop :=
  key.toNat + n ≤ 2 ^ 64 ∧ ∃ o ∈ Γ, o.base = B ∧ o.ty = t ∧
    ∀ a : Nat, key.toNat ≤ a → a < key.toNat + n → ∃ x ∈ Γ, x.lo ≤ a ∧ a < x.hi ∧ Owns o x

theorem keyin_ext {Γ Γ' : Gam} (he : Ext Γ Γ') (hG : GamOK Γ') {B : BitVec 64} {t : Nat}
    {key : BitVec 64} {n : Nat} (h : KeyIn Γ B t key n) : KeyIn Γ' B t key n := by
  obtain ⟨hk, o, ho, hob, hot, hx⟩ := h
  obtain ⟨o', ho', hb, ht, hs⟩ := he o ho
  refine ⟨hk, o', ho', hb.trans hob, ht.trans hot, fun a h1 h2 => ?_⟩
  obtain ⟨x, hxm, hl, hh, hown⟩ := hx a h1 h2
  obtain ⟨x', hx', hxb, hxt, hxs⟩ := he x hxm
  have hlo : ∀ y y' : Obj, y'.base = y.base → y'.lo = y.lo := fun y y' h => by
    unfold Obj.lo; rw [h]
  have hxhi : x.hi = x.lo + x.size := rfl
  have hxhi' : x'.hi = x'.lo + x'.size := rfl
  have hohi' : o'.hi = o'.lo + o'.size := rfl
  have l1 := hlo x x' hxb
  have l2 := hlo o o' hb
  refine ⟨x', hx', by omega, by omega, ?_⟩
  rcases hown with h | h | ⟨h, h2'⟩
  · exact Or.inl (hxb.trans (h.trans hb.symm))
  · refine Or.inr (Or.inl ?_)
    rw [hxt, h, hb]
  · refine Or.inr (Or.inr ⟨hxt.trans h, ?_⟩)
    by_cases hxo : x' = o'
    · subst hxo
      exfalso
      have := hG.1 x' hx'
      have hpos := this.2.2.1
      omega
    · have hd := hG.2 x' hx' o' ho' hxo
      have hp := (hG.1 o' ho').2.2.1
      have hq := (hG.1 x' hx').2.2.1
      omega

/-- `HiRet` depends on the memory only. -/
theorem hiret_mem {s u : State σ} {T I : BitVec 64} {v : ValueHOL 64} (hm : s.memory = u.memory)
    (h : HtabEntries.HiRet s T I v) : HtabEntries.HiRet u T I v := by
  unfold HtabEntries.HiRet at *
  rw [← hm]; exact h

/-- The key of a found item of a table of type `t` at `T` lies in objects the table owns. -/
theorem keyin_of_item {Γ : Gam} {u : State σ}
    (hG : G Types.guestC (Hooks.guestHooksR (σ := σ)) Γ u) {t : Nat} (ht : t ∈ hdrTys) {T I a b c : BitVec 64}
    {o : Obj} (ho : o ∈ Γ) (hob : o.base = T) (hot : o.ty = t)
    (hret : HtabEntries.HiRet u T I (wv [a, b, c])) (ha : a ≠ 0) :
    KeyIn Γ T t b (htKL t) ∧ Fits Γ (valK t) c := by
  have hk : hkOf t = .tab := hkOf_of_tab ht
  have hkO : hkOf o.ty = .tab := by rw [hot]; exact hk
  have hw : tabW Γ u o := tabw_of_G hG ho hkO
  obtain ⟨hI, rfl, rfl⟩ := hret a b c rfl ha
  have hwf : Spec.Inv.TableWF u T := by have := hw.2.2.1; rw [hob] at this; exact this
  obtain ⟨hkw, hkreg⟩ := HtabEntries.item_key_reg hwf hI
  have hKL : (Spec.Inv.hdr u.memory T 0).toNat = htKL t := by
    have := hw.2.2.2.2.2
    unfold KLOK at this
    rw [hob, hot] at this
    rw [this, BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by have := HtabEntries.htKL_le t; omega)]
  rw [hKL] at hkw hkreg
  refine ⟨⟨hkw, o, ho, hob, hot, fun x h1 h2 => ?_⟩, ?_⟩
  · have hreg := hkreg (BitVec.ofNat 64 x) (by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; exact h1) (by
      rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)]; exact h2)
    rw [← hob] at hreg
    obtain ⟨y, hy, hown, -, hy1, hy2⟩ := tab_obj hw hkO hreg
    rw [BitVec.toNat_ofNat, Nat.mod_eq_of_lt (by omega)] at hy1 hy2
    exact ⟨y, hy, hy1, hy2, hown⟩
  · have := hw.2.2.2.2.1 _ (by rw [hob]; exact HtabEntries.item_leafVal hI)
    rw [hot] at this
    exact this

/-- `RdKeyPre` for `htab_set` into the table of type `th` at `T`, with a key owned by a table of another type. -/
theorem rdkey_of_keyin {Γ : Gam} {s : State σ} (hGO : GamOK Γ) {th t : Nat} (hth : th ∈ hdrTys)
    (ht : t ∈ hdrTys) (hne : th ≠ t) {B T key val : BitVec 64} (hKL : htKL t = htKL th)
    (hk : KeyIn Γ B t key (htKL th)) {od : Obj} (hod : od ∈ Γ) (hodb : od.base = T) (hodt : od.ty = th) :
    HtabEntries.RdKeyPre th [.val (.word T), .val (.word key), .val (.word val)] s Γ := by
  obtain ⟨hkb, o, ho, hob, hot, hx⟩ := hk
  refine ⟨T, key, val, rfl, hkb, od, hod, hodb, hodt, fun a h1 h2 => ?_⟩
  obtain ⟨x, hxm, hl, hh, hown⟩ := hx a h1 h2
  refine ⟨x, hxm, hl, hh, fun hown' => ?_⟩
  have := own_unique hGO ho hod (hkOf_of_tab ht |> fun h => by rw [hot]; exact h)
    (by rw [hodt]; exact hkOf_of_tab hth) hxm hown hown'
  subst this
  exact hne (hodt.symm.trans hot)

end InitECandidate.Solver.MemSafe.Trie
