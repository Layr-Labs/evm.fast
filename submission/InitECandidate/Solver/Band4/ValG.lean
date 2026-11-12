import InitECandidate.Solver.Band4.MptSet
import InitECandidate.Solver.Band2.MptRoot

/-!
# The trie-values invariant at the `G` level (trie-inv)

`ValSep` (`Spec/Mpt/Fill/Pre.lean`, inside `TrieOK`, needed by `node_rlp` / `node_hash` /
`mpt_root`) and the `[buf 32]` argument of `ws_storage_trie` in `ws_get_storage` both ask where a
trie value `(vp, vl)` points. The value slots are `scalar` today, so `G` says nothing. The staged
design (`trie-inv-status.md` §1.6, `research/notes/trie-inv-stage/`): the value slots become
`prot`, and the node hook states **`NVal`**: every leaf / branch value of a `Γ` node lies inside a
`Γ` object of an all-scalar value type `tV` (`VIn`). This file proves what that buys, with the hook
as the hypothesis `hNV : ∀ o ∈ Γ, NVal tV Γ s o` and the type facts `VTy tV` (both hold for the
staged `tVAL`; generic here so nothing depends on the stage):

* **`valSep_of_nval`**: `G ∧ hNV → ValSep s (NdOf Γ) hp`;
* **`trieOK_of_nval`**, **`nrPre_of_nval`**, **`mrPre_of_nval`**: `node_hash` / `mpt_root`'s
  preconditions (`Band2.NrPre`, `Band2.MrPre`) from `G`, the hook and the root fact `RootOK`;
* **`bufOK_of_vIn`**: a sub-slice `[r, r + n)` of a `VIn` value is `BufOK` (every overlapped cell is
  an `SCell` of the value object; table regions and the free heap are elsewhere). With `n = 32`
  this is the `[buf 32]` argument `ws_storage_trie` needs in `ws_get_storage`;
* `vIn_ext`: `VIn` survives `Γ` extension (`HooksMono` for the hook).
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.Band4
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe (State Ptrs ptrsOf gword heapBase heapEnd rd Gam Obj Fits InObj G
  Hooks Ext BufOK SCell Overlap Layout)
open InitECandidate.Solver.MemSafe.Types (guestC tNLEAF tNBRANCH tB200 tB136)
open InitECandidate.Solver.Band (NdOf nodeTys)
open InitECandidate.Solver.Spec.Mpt (ValSep ValAl ValOK CacheCell KBuf TrieOK gKst gKpad)

variable {σ : Type}

/-! ## The invariant -/

/-- The value slice `(vp, vl)` is empty or lies inside a `Γ` object of the value type `tV`. -/
def VIn (tV : Nat) (Γ : Gam) (vp vl : BitVec 64) : Prop :=
  vl = 0 ∨ ∃ x ∈ Γ, x.ty = tV ∧ x.lo ≤ vp.toNat ∧ vp.toNat + vl.toNat ≤ x.hi

/-- **The node-value hook** (staged; it reads the leaf / branch value slots, `prot` after the
stage). -/
def NVal (tV : Nat) (Γ : Gam) (s : State σ) (o : Obj) : Prop :=
  (o.ty = tNLEAF → VIn tV Γ (rd s.memory (o.base + 48)) (rd s.memory (o.base + 56))) ∧
  (o.ty = tNBRANCH → VIn tV Γ (rd s.memory (o.base + 160)) (rd s.memory (o.base + 168)))

/-- What the value type must be: an all-scalar heap type, no node type, no keccak buffer type. -/
structure VTy (tV : Nat) : Prop where
  heap : (guestC.ty tV).region = .heap
  scalar : ∀ k, (guestC.ty tV).slot k = .scalar
  notNode : tV ∉ nodeTys
  notK1 : tV ≠ tB200
  notK2 : tV ≠ tB136

theorem vIn_ext {tV : Nat} {Γ Γ' : Gam} (he : Ext Γ Γ') {vp vl : BitVec 64} (h : VIn tV Γ vp vl) :
    VIn tV Γ' vp vl := by
  rcases h with h | ⟨x, hx, ht, h1, h2⟩
  · exact Or.inl h
  · obtain ⟨x', hx', hb, ht', hs⟩ := he x hx
    refine Or.inr ⟨x', hx', ht'.trans ht, ?_, ?_⟩
    · unfold Obj.lo at *; rw [hb]; exact h1
    · unfold Obj.hi at *; rw [hb]; omega

/-! ## Location of a value cell -/

/-- A nonempty `VIn` value: its first aligned cell is inside the value object, which is live
heap below `hp`. -/
theorem vIn_cell {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {p : Ptrs}
    (hp : ptrsOf s = some p) {tV : Nat} (hV : VTy tV) {vp vl : BitVec 64} (hv : VIn tV Γ vp vl)
    (hvl : vl ≠ 0) : ∃ x ∈ Γ, x.ty = tV ∧ x.lo ≤ (panByteAlignHOL vp).toNat ∧
      (panByteAlignHOL vp).toNat < x.hi ∧ heapBase ≤ x.lo ∧ x.hi ≤ p.hp := by
  rcases hv with h | ⟨x, hx, ht, h1, h2⟩
  · exact absurd h hvl
  obtain ⟨p', hp', -, hL, -⟩ := hG
  rw [hp] at hp'
  cases hp'
  obtain ⟨hal, -, -, -, hlive⟩ := hL.1 x hx
  rw [ht, hV.heap] at hlive
  obtain ⟨hl1, hl2⟩ := hlive
  have hvl' : 0 < vl.toNat := by
    rcases Nat.eq_zero_or_pos vl.toNat with h | h
    · exact absurd (BitVec.eq_of_toNat_eq (by simpa using h)) hvl
    · exact h
  rw [Spec.Inv.align_toNat]
  unfold Obj.lo Obj.hi at *
  refine ⟨x, hx, ht, by omega, by omega, hl1, hl2⟩

/-- Two different objects of `Γ` are disjoint. -/
theorem vObj_disj {C : MemSafe.Cfg} {p : Ptrs} {Γ : Gam} (hL : Layout C p Γ) {x o : Obj} (hx : x ∈ Γ)
    (ho : o ∈ Γ) (hne : x.ty ≠ o.ty) {a : Nat} (h1 : x.lo ≤ a) (h2 : a < x.hi) (h3 : o.lo ≤ a) :
    o.hi ≤ a := by
  have hxo : x ≠ o := fun e => hne (by rw [e])
  rcases MemSafe.layout_disj hL hx ho hxo with h | h <;> omega

/-! ## `ValSep` from the hook -/

/-- A nonempty `VIn` value's first cell: live heap, no node cache cell, no keccak cell. -/
theorem vIn_avoid {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {p : Ptrs}
    (hp : ptrsOf s = some p) {tV : Nat} (hV : VTy tV) {vp vl : BitVec 64} (hv : VIn tV Γ vp vl)
    (hvl : vl ≠ 0) :
    heapBase ≤ (panByteAlignHOL vp).toNat ∧ (panByteAlignHOL vp).toNat < p.hp ∧
      (∀ b, NdOf Γ b → ¬ CacheCell b (panByteAlignHOL vp)) ∧ ¬ KBuf s (panByteAlignHOL vp) := by
  obtain ⟨x, hx, hxt, hx1, hx2, hx3, hx4⟩ := vIn_cell hG hp hV hv hvl
  have hG0 := hG
  obtain ⟨p', hp', hord, hL, -, -, hGl, -⟩ := hG0
  rw [hp] at hp'
  cases hp'
  have hE : p.hp ≤ heapEnd := hord.2.1
  have hE2 : heapEnd < 2 ^ 62 := by decide
  -- an object `o` of another type covering `[o.lo, o.lo + n)` cannot contain the cell
  have away : ∀ o ∈ Γ, o.ty ≠ tV → ∀ n, n ≤ o.size →
      ¬ (o.lo ≤ (panByteAlignHOL vp).toNat ∧ (panByteAlignHOL vp).toNat < o.lo + n) := by
    intro o ho hot n hn ⟨h1, h2⟩
    have := vObj_disj hL hx ho (fun e => hot (e.symm.trans hxt)) hx1 hx2 h1
    unfold Obj.hi Obj.lo at *
    omega
  refine ⟨by omega, by omega, ?_, ?_⟩
  · rintro b ⟨ob, hob, rfl, hobt⟩ hc
    obtain ⟨p2, hp2, -, hlo, hhi, hk⟩ := Band.node_facts hG hob hobt
    rw [hp] at hp2
    cases hp2
    have hsz : 32 ≤ ob.size := by
      rcases hk with ⟨_, _, h⟩ | ⟨_, _, h⟩ | ⟨_, _, h, _⟩ | ⟨_, _, h, _⟩ <;> omega
    have hne : ob.ty ≠ tV := fun e => hV.notNode (e ▸ hobt)
    apply away ob hob hne 32 hsz
    unfold Obj.lo
    rcases hc with h | h | h <;> rw [h]
    · have e8 : (ob.base + 8).toNat = ob.base.toNat + 8 := by
        rw [BitVec.toNat_add, show (8 : BitVec 64).toNat = 8 from rfl, Nat.mod_eq_of_lt (by omega)]
      rw [e8]; omega
    · have e8 : (ob.base + 16).toNat = ob.base.toNat + 16 := by
        rw [BitVec.toNat_add, show (16 : BitVec 64).toNat = 16 from rfl, Nat.mod_eq_of_lt (by omega)]
      rw [e8]; omega
    · have e8 : (ob.base + 24).toNat = ob.base.toNat + 24 := by
        rw [BitVec.toNat_add, show (24 : BitVec 64).toNat = 24 from rfl, Nat.mod_eq_of_lt (by omega)]
      rw [e8]; omega
  · have kobj : ∀ (g : MlS) (tk n : Nat), guestC.GT.lookup g = some (.ptr tk) → tk ≠ tV →
        n ≤ (guestC.ty tk).minSz → ∀ w, gword s g = some w →
        ¬ (w.toNat ≤ (panByteAlignHOL vp).toNat ∧ (panByteAlignHOL vp).toNat < w.toNat + n) := by
      intro g tk n hgt htk hn w hw hin
      obtain ⟨v, hv', ok, hok, hb, hokt⟩ := hGl g _ hgt
      rw [hw] at hv'
      cases hv'
      have hmin := (hL.1 ok hok).2.2.2.1
      rw [hokt] at hmin
      refine away ok hok (by rw [hokt]; exact htk) n (by omega) ?_
      unfold Obj.lo
      rw [hb]
      exact hin
    rintro (⟨w, hw, h1, h2⟩ | ⟨w, hw, h1, h2⟩)
    · exact kobj gKst tB200 200 rfl (Ne.symm hV.notK1) (by decide) w hw ⟨h1, h2⟩
    · exact kobj gKpad tB136 136 rfl (Ne.symm hV.notK2) (by decide) w hw ⟨h1, h2⟩

/-- **`ValSep` for all `Γ` nodes**, from `G` and the node-value hook. -/
theorem valSep_of_nval {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {tV : Nat}
    (hV : VTy tV) (hNV : ∀ o ∈ Γ, NVal tV Γ s o) {p : Ptrs} (hp : ptrsOf s = some p) :
    ValSep s (NdOf Γ) p.hp := by
  rintro a ⟨o, ho, rfl, ht⟩
  obtain ⟨-, -, -, -, -, hk⟩ := Band.node_facts hG ho ht
  refine ⟨fun h1 => ?_, fun h3 => ?_⟩
  · have hl : o.ty = tNLEAF := by
      rcases hk with ⟨-, hr, -⟩ | ⟨e, -, -⟩ | ⟨-, hr, -⟩ | ⟨-, hr, -⟩
      · exact absurd (hr.symm.trans h1) (by decide)
      · exact e
      · exact absurd (hr.symm.trans h1) (by decide)
      · exact absurd (hr.symm.trans h1) (by decide)
    intro hvl
    obtain ⟨a1, a2, -, -⟩ := vIn_avoid hG hp hV ((hNV o ho).1 hl) hvl
    exact ⟨a1, a2⟩
  · have hb : o.ty = tNBRANCH := by
      rcases hk with ⟨-, hr, -⟩ | ⟨-, hr, -⟩ | ⟨-, hr, -⟩ | ⟨e, -, -⟩
      · exact absurd (hr.symm.trans h3) (by decide)
      · exact absurd (hr.symm.trans h3) (by decide)
      · exact absurd (hr.symm.trans h3) (by decide)
      · exact e
    intro hvl
    exact vIn_avoid hG hp hV ((hNV o ho).2 hb) hvl

/-- **`TrieOK` for all `Γ` nodes** from `G` and the hook. -/
theorem trieOK_of_nval {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {tV : Nat}
    (hV : VTy tV) (hNV : ∀ o ∈ Γ, NVal tV Γ s o) {p : Ptrs} (hp : ptrsOf s = some p) :
    TrieOK s (NdOf Γ) p.hp :=
  ⟨Band.ndShape_of_G hG hp, Band.ndDisj_of_G hG, Band.kbSep_of_G hG hp, valSep_of_nval hG hV hNV hp⟩

/-- **`node_hash` / `node_rlp`'s precondition** from `G`, the hook and a `Γ` node. -/
theorem nrPre_of_nval {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {tV : Nat}
    (hV : VTy tV) (hNV : ∀ o ∈ Γ, NVal tV Γ s o) {node : BitVec 64} (hn : NdOf Γ node) :
    Band2.NrPre [.val (.word node)] s := by
  obtain ⟨p, hp, hord, -⟩ := id hG
  exact ⟨node, rfl, p, hp, hord, NdOf Γ, trieOK_of_nval hG hV hNV hp, hn⟩

/-- **`mpt_root`'s precondition** from `G`, the hook and the root fact of the record. -/
theorem mrPre_of_nval {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {tV : Nat}
    (hV : VTy tV) (hNV : ∀ o ∈ Γ, NVal tV Γ s o) {m : BitVec 64} (out : ValueHOL 64)
    (hr : RootOK Γ (rd s.memory m)) : Band2.MrPre [.val (.word m), out] s := by
  obtain ⟨p, hp, hord, -⟩ := id hG
  exact ⟨m, out, rfl, p, hp, hord, NdOf Γ, trieOK_of_nval hG hV hNV hp, hr⟩

/-! ## `BufOK` of a value sub-slice -/

/-- **A sub-slice of a `VIn` value is a writable buffer** (`BufOK`): every overlapped cell is an
`SCell` of the value object. This is the `[buf 32]` argument of `ws_storage_trie` in
`ws_get_storage` (the storage-root field of an account leaf value). -/
theorem bufOK_of_vIn {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {p : Ptrs}
    (hp : ptrsOf s = some p) {tV : Nat} (hV : VTy tV) {vp vl r : BitVec 64} {n : Nat}
    (hv : VIn tV Γ vp vl) (h1 : vp.toNat ≤ r.toNat) (h2 : r.toNat + n ≤ vp.toNat + vl.toNat)
    (hn : 0 < n) : BufOK guestC Γ p r.toNat n := by
  have hvl : vl ≠ 0 := by
    rintro rfl
    simp at h2
    omega
  rcases hv with h | ⟨x, hx, hxt, hx1, hx2⟩
  · exact absurd h hvl
  have hG0 := hG
  obtain ⟨p', hp', hord, hL, -⟩ := hG0
  rw [hp] at hp'
  cases hp'
  obtain ⟨hal, hsz8, -, -, hlive⟩ := hL.1 x hx
  rw [hxt, hV.heap] at hlive
  have hE : p.hp ≤ heapEnd := hord.2.1
  have hE2 : heapEnd < 2 ^ 62 := by decide
  intro a ⟨ha8, ha1, ha2⟩
  left
  unfold Obj.lo Obj.hi at *
  obtain ⟨hl1, hl2⟩ := hlive
  have hxa : x.base.toNat ≤ a.toNat := by omega
  refine ⟨x, hx, (a.toNat - x.base.toNat) / 8, ?_, ?_, ?_⟩
  · unfold Obj.HasSlot; omega
  · rw [hxt]; exact hV.scalar _
  · apply BitVec.eq_of_toNat_eq
    unfold Obj.cell
    rw [Spec.Inv.add_ofNat_toNat (by omega)]
    omega

/-- A typed global naming an all-scalar heap buffer (`empty_trie_root : ptr tB32`, …) is a
writable buffer of up to its minimum size: the other case of `ws_storage_root_of`'s result. -/
theorem bufOK_of_glob {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {p : Ptrs}
    (hp : ptrsOf s = some p) {g : MlS} {tk n : Nat} (hgt : guestC.GT.lookup g = some (.ptr tk))
    (hreg : (guestC.ty tk).region = .heap) (hsc : ∀ k, (guestC.ty tk).slot k = .scalar)
    (hn : n ≤ (guestC.ty tk).minSz) {w : BitVec 64} (hw : gword s g = some w) :
    BufOK guestC Γ p w.toNat n := by
  have hG0 := hG
  obtain ⟨p', hp', hord, hL, -, -, hGl, -⟩ := hG0
  rw [hp] at hp'
  cases hp'
  obtain ⟨v, hv, x, hx, hb, hxt⟩ := hGl g _ hgt
  rw [hw] at hv
  cases hv
  obtain ⟨hal, hsz8, -, hmin, hlive⟩ := hL.1 x hx
  rw [hxt, hreg] at hlive
  rw [hxt] at hmin
  have hE : p.hp ≤ heapEnd := hord.2.1
  have hE2 : heapEnd < 2 ^ 62 := by decide
  intro a ⟨ha8, ha1, ha2⟩
  left
  unfold Obj.lo at *
  obtain ⟨hl1, hl2⟩ := hlive
  rw [← hb] at ha1 ha2
  have hxa : x.base.toNat ≤ a.toNat := by omega
  refine ⟨x, hx, (a.toNat - x.base.toNat) / 8, ?_, ?_, ?_⟩
  · unfold Obj.HasSlot; omega
  · rw [hxt]; exact hsc _
  · apply BitVec.eq_of_toNat_eq
    unfold Obj.cell
    rw [Spec.Inv.add_ofNat_toNat (by omega)]
    omega

/-- `empty_trie_root`'s 32 bytes are a writable buffer. -/
theorem bufOK_empty_trie_root {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s)
    {p : Ptrs} (hp : ptrsOf s = some p) {w : BitVec 64}
    (hw : gword s (nm "empty_trie_root") = some w) : BufOK guestC Γ p w.toNat 32 :=
  bufOK_of_glob hG hp MemSafe.Types.gt_empty_trie_root rfl
    (fun k => by show MemSafe.Types.b32Ty.slot k = .scalar; unfold MemSafe.TyD.slot; simp [MemSafe.Types.b32Ty])
    (by decide) hw

end InitECandidate.Solver.Band4

#print axioms InitECandidate.Solver.Band4.vIn_avoid
#print axioms InitECandidate.Solver.Band4.valSep_of_nval
#print axioms InitECandidate.Solver.Band4.nrPre_of_nval
#print axioms InitECandidate.Solver.Band4.mrPre_of_nval
#print axioms InitECandidate.Solver.Band4.bufOK_of_vIn
#print axioms InitECandidate.Solver.Band4.bufOK_empty_trie_root
