import InitECandidate.Solver.Band.Dec
import InitECandidate.Solver.Spec.Mpt.DelBody
import InitECandidate.Solver.Spec.Mpt.Fill.Pre
import InitECandidate.Solver.MemSafe.Shrink
import InitECandidate.Solver.MemSafe.Types

/-!
# The root preconditions from `G` plus local facts (band1)

The four roots of the conditional band and where their preconditions come from
(`band1-design.md` §3).

* **Delete** (`_mpt_delete_node_body`, `DelPre`): **`delPre_of_G`**. From `G guestC H Γ s`, a root
  argument fitting `nodeU` (null or a `Γ` node) and the local key fact `KeyNib`.
  `NdClosed` holds for `NdOf Γ` (the bases of the `Γ` objects of the four node types,
  **`ndClosed_of_G`**). Tags give "kind decides type", `Fields` gives `uptr` children, and
  `Layout` with `minSz` gives the extents below `heap_ptr ≤ heapEnd`.
* **Fill** (`_node_rlp_fill`, `FillPre`): **`fillPre_of_G`**. `NdShape` (`ndShape_of_G`),
  `NdDisj` (`ndDisj_of_G`) and `KBSep` (`kbSep_of_G`: `keccak_st` / `keccak_pad` are typed
  `ptr tB200` / `ptr tB136`, so `Layout` separates them from the nodes) follow from `G`.
  **`ValSep` does not**: leaf / branch value slots are `scalar`. It stays a hypothesis of the
  call site (`band1-design.md` §3.3).
* **Decode** (`_decode_witness_node_body`, `DecPre NdbW`): discharged at
  `decode_witness_to_mpt` from `DwPre` (`Band.dwtm_costP`, template T3). `DwPre` at
  `ws_storage_trie` comes from **`WsW`** (`dwPre_of_wsW`). `WsW` from `G` is the open
  configuration hypothesis **`WitG`** (`band1-design.md` §3.1).
* **`htab_truncate`** (`TableWF`): `Frames.rb_tab` (frames lane), used by `Frames.rb_condCost`.
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.Band
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.Spec.Mpt (NullOrNd NdClosed KeyNib DelPre FillPre TrieOK NdShape NdDisj
  KBSep ValSep RecKind nsz slot gKst gKpad)
open InitECandidate.Solver.Spec.Mpt.Leaves (NdbW)

variable {σ : Type}

/-! ## The `Γ` trie nodes -/

def nodeTys : List Nat := [tNHASHED, tNLEAF, tNEXT, tNBRANCH]

/-- The bases of the `Γ` objects of the four node types. -/
def NdOf (Γ : Gam) (a : BitVec 64) : Prop := ∃ o ∈ Γ, o.base = a ∧ o.ty ∈ nodeTys

theorem nullOrNd_of_fits {Γ : Gam} {v : BitVec 64} (h : Fits Γ nodeU v) : NullOrNd (NdOf Γ) v := by
  unfold Fits at h
  rcases h with h | ⟨o, ho, hb, ht⟩
  · left; unfold nullMax at h; unfold heapBase; omega
  · right; exact ⟨o, ho, hb, ht⟩

theorem branch_slot : ∀ i, i < 16 → (guestC.ty tNBRANCH).slot (4 + i) = nodeU := by decide

theorem branch_cell (o : Obj) (i : Nat) :
    o.cell (4 + i) = o.base + BitVec.ofNat 64 (32 + 8 * i) := by
  unfold Obj.cell; congr 2; omega

/-- **What `G` says about one node object**: heap extent, tag, size and child slots. -/
theorem node_facts {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {o : Obj}
    (ho : o ∈ Γ) (ht : o.ty ∈ nodeTys) :
    ∃ p, ptrsOf s = some p ∧ p.Ordered ∧ heapBase ≤ o.base.toNat ∧ o.base.toNat + o.size ≤ p.hp ∧
      ((o.ty = tNHASHED ∧ rd s.memory o.base = 0 ∧ 32 ≤ o.size) ∨
       (o.ty = tNLEAF ∧ rd s.memory o.base = 1 ∧ 64 ≤ o.size) ∨
       (o.ty = tNEXT ∧ rd s.memory o.base = 2 ∧ 56 ≤ o.size ∧
          Fits Γ nodeU (rd s.memory (o.base + 48))) ∨
       (o.ty = tNBRANCH ∧ rd s.memory o.base = 3 ∧ 176 ≤ o.size ∧
          ∀ i, i < 16 → Fits Γ nodeU (rd s.memory (o.base + BitVec.ofNat 64 (32 + 8 * i))))) := by
  obtain ⟨p, hp, hord, hL, hF, hT, -, -⟩ := hG
  obtain ⟨-, -, -, hmin, hlive⟩ := hL.1 o ho
  simp only [nodeTys, List.mem_cons, List.not_mem_nil, or_false] at ht
  rcases ht with h | h | h | h
  · have hl : heapBase ≤ o.lo ∧ o.lo + o.size ≤ p.hp := by rw [h] at hlive; exact hlive
    have hm : 32 ≤ o.size := by rw [h] at hmin; exact hmin
    exact ⟨p, hp, hord, hl.1, hl.2, Or.inl ⟨h, hT o ho 0 (by rw [h]; rfl), hm⟩⟩
  · have hl : heapBase ≤ o.lo ∧ o.lo + o.size ≤ p.hp := by rw [h] at hlive; exact hlive
    have hm : 64 ≤ o.size := by rw [h] at hmin; exact hmin
    exact ⟨p, hp, hord, hl.1, hl.2, Or.inr (Or.inl ⟨h, hT o ho 1 (by rw [h]; rfl), hm⟩)⟩
  · have hl : heapBase ≤ o.lo ∧ o.lo + o.size ≤ p.hp := by rw [h] at hlive; exact hlive
    have hm : 56 ≤ o.size := by rw [h] at hmin; exact hmin
    have hc := hF o ho 6 (by unfold Obj.HasSlot; omega)
    rw [h] at hc
    exact ⟨p, hp, hord, hl.1, hl.2, Or.inr (Or.inr (Or.inl ⟨h, hT o ho 2 (by rw [h]; rfl), hm, hc⟩))⟩
  · have hl : heapBase ≤ o.lo ∧ o.lo + o.size ≤ p.hp := by rw [h] at hlive; exact hlive
    have hm : 176 ≤ o.size := by rw [h] at hmin; exact hmin
    refine ⟨p, hp, hord, hl.1, hl.2, Or.inr (Or.inr (Or.inr ⟨h, hT o ho 3 (by rw [h]; rfl), hm,
      fun i hi => ?_⟩))⟩
    have hc := hF o ho (4 + i) (by unfold Obj.HasSlot; omega)
    rw [h, branch_slot i hi, branch_cell] at hc
    exact hc

/-! ## Delete: `DelPre` -/

/-- **The `Γ` nodes are closed** in the sense of the delete loops. -/
theorem ndClosed_of_G {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) :
    NdClosed s.memory (NdOf Γ) := by
  rintro a ⟨o, ho, rfl, ht⟩
  obtain ⟨p, -, hord, -, hhi, hk⟩ := node_facts hG ho ht
  have hE : p.hp ≤ heapEnd := hord.2.1
  rcases hk with ⟨-, hr, hs⟩ | ⟨-, hr, hs⟩ | ⟨-, hr, hs, hc⟩ | ⟨-, hr, hs, hc⟩
  · refine ⟨by omega, fun h2 => absurd (hr.symm.trans h2) (by decide),
      fun h0 _ _ => absurd hr h0⟩
  · refine ⟨by omega, fun h2 => absurd (hr.symm.trans h2) (by decide),
      fun _ h1 _ => absurd hr h1⟩
  · exact ⟨by omega, fun _ => ⟨by omega, nullOrNd_of_fits hc⟩, fun _ _ h2 => absurd hr h2⟩
  · exact ⟨by omega, fun h2 => absurd (hr.symm.trans h2) (by decide),
      fun _ _ _ => ⟨by omega, fun i hi => nullOrNd_of_fits (hc i hi)⟩⟩

/-- **`DelPre` at a `_mpt_delete_node_body(node, key, klen, level)` call** from `G`, the root
argument fitting `nodeU` and the key nibbles (`KeyNib`, a local fact of `mpt_set`). -/
theorem delPre_of_G {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s)
    {node key klen level : BitVec 64} (hn : Fits Γ nodeU node)
    (hk : KeyNib s.be s.memory key klen level) :
    DelPre [.val (.word node), .val (.word key), .val (.word klen), .val (.word level)] s := by
  obtain ⟨p, hp, hord, -⟩ := id hG
  exact ⟨node, key, klen, level, rfl, ⟨p, hp, hord⟩, NdOf Γ, ndClosed_of_G hG,
    nullOrNd_of_fits hn, hk⟩

/-! ## Fill: `FillPre` up to `ValSep` -/

theorem nsz_tag0 : nsz (0 : BitVec 64) = 32 := by decide
theorem nsz_tag1 : nsz (1 : BitVec 64) = 64 := by decide
theorem nsz_tag2 : nsz (2 : BitVec 64) = 56 := by decide
theorem nsz_tag3 : nsz (3 : BitVec 64) = 176 := by decide

/-- A node's `nsz` (by its kind word) fits in its object. -/
theorem nsz_le_size {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {o : Obj}
    (ho : o ∈ Γ) (ht : o.ty ∈ nodeTys) : nsz (rd s.memory o.base) ≤ o.size := by
  obtain ⟨-, -, -, -, -, hk⟩ := node_facts hG ho ht
  rcases hk with ⟨-, hr, hs⟩ | ⟨-, hr, hs⟩ | ⟨-, hr, hs, -⟩ | ⟨-, hr, hs, -⟩
  · rw [hr, nsz_tag0]; exact hs
  · rw [hr, nsz_tag1]; exact hs
  · rw [hr, nsz_tag2]; exact hs
  · rw [hr, nsz_tag3]; exact hs

theorem ndShape_of_G {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {p : Ptrs}
    (hp : ptrsOf s = some p) : NdShape s.memory (NdOf Γ) p.hp := by
  rintro a ⟨o, ho, rfl, ht⟩
  have hn := nsz_le_size hG ho ht
  obtain ⟨p', hp', -, hlo, hhi, hk⟩ := node_facts hG ho ht
  rw [hp] at hp'
  cases hp'
  refine ⟨hlo, by omega, ?_, ?_, ?_⟩
  · rcases hk with ⟨-, hr, -⟩ | ⟨-, hr, -⟩ | ⟨-, hr, -⟩ | ⟨-, hr, -⟩ <;> rw [hr] <;> decide
  · intro h2
    rcases hk with ⟨-, hr, -⟩ | ⟨-, hr, -⟩ | ⟨-, -, -, hc⟩ | ⟨-, hr, -⟩
    · exact absurd (hr.symm.trans h2) (by decide)
    · exact absurd (hr.symm.trans h2) (by decide)
    · exact nullOrNd_of_fits hc
    · exact absurd (hr.symm.trans h2) (by decide)
  · intro h3 i hi
    rcases hk with ⟨-, hr, -⟩ | ⟨-, hr, -⟩ | ⟨-, hr, -⟩ | ⟨-, -, -, hc⟩
    · exact absurd (hr.symm.trans h3) (by decide)
    · exact absurd (hr.symm.trans h3) (by decide)
    · exact absurd (hr.symm.trans h3) (by decide)
    · exact nullOrNd_of_fits (hc i hi)

theorem ndDisj_of_G {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) :
    NdDisj s.memory (NdOf Γ) := by
  rintro a b ⟨o, ho, rfl, ht⟩ ⟨o', ho', rfl, ht'⟩ hne
  have hn := nsz_le_size hG ho ht
  have hn' := nsz_le_size hG ho' ht'
  obtain ⟨p, -, -, hL, -⟩ := hG
  have hoo : o ≠ o' := fun h => hne (by rw [h])
  rcases layout_disj hL ho ho' hoo with h | h
  · left; unfold Obj.hi Obj.lo at h; omega
  · right; unfold Obj.hi Obj.lo at h; omega

/-- A typed buffer global: the base of a `Γ` heap object of at least `n` bytes, 8-aligned, below
`heap_ptr`, disjoint from every node. -/
theorem buf_global {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {p : Ptrs}
    (hp : ptrsOf s = some p) {g : MlS} {t n : Nat} (hgt : guestC.GT.lookup g = some (.ptr t))
    (hreg : (guestC.ty t).region = .heap) (hmin : n ≤ (guestC.ty t).minSz) (htn : t ∉ nodeTys) :
    ∃ w, gword s g = some w ∧ w.toNat % 8 = 0 ∧ heapBase ≤ w.toNat ∧ w.toNat + n ≤ p.hp ∧
      ∀ a, NdOf Γ a → (a.toNat + nsz (rd s.memory a) ≤ w.toNat ∨ w.toNat + n ≤ a.toNat) := by
  have hG0 := hG
  obtain ⟨p', hp', -, hL, -, -, hGl, -⟩ := hG0
  rw [hp] at hp'
  cases hp'
  obtain ⟨w, hw, o, ho, hb, ht⟩ := hGl g _ hgt
  obtain ⟨hal, -, -, hm, hlive⟩ := hL.1 o ho
  rw [ht] at hm hlive
  rw [hreg] at hlive
  obtain ⟨hlo, hhi⟩ := hlive
  subst hb
  refine ⟨o.base, hw, hal, hlo, by unfold Obj.lo at hhi; omega, ?_⟩
  rintro a ⟨o', ho', rfl, ht'⟩
  have hn' := nsz_le_size hG ho' ht'
  have hoo : o' ≠ o := fun h => htn (by rw [← ht, ← h]; exact ht')
  rcases layout_disj hL ho' ho hoo with h | h
  · left; unfold Obj.hi Obj.lo at h; omega
  · right; unfold Obj.hi Obj.lo at h; omega

theorem kbSep_of_G {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s) {p : Ptrs}
    (hp : ptrsOf s = some p) : KBSep s (NdOf Γ) p.hp := by
  obtain ⟨ks, hks, ka, kl, kh, kd⟩ := buf_global (n := 200) hG hp (g := gKst) (t := tB200) rfl rfl
    (by decide) (by decide)
  obtain ⟨kp, hkp, pa, pl, ph, pd⟩ := buf_global (n := 136) hG hp (g := gKpad) (t := tB136) rfl rfl
    (by decide) (by decide)
  exact ⟨ks, kp, hks, hkp, ka, pa, kl, kh, pl, ph, fun a ha => ⟨kd a ha, pd a ha⟩⟩

/-- **`FillPre` at a `_node_rlp_fill(node)` call** from `G`, a `Γ` node of record kind and the
value-separation fact `ValSep` (not a `G` fact: value slots are `scalar`). -/
theorem fillPre_of_G {H : Hooks σ} {Γ : Gam} {s : State σ} (hG : G guestC H Γ s)
    {node : BitVec 64} (hn : NdOf Γ node) (hk : RecKind (rd s.memory node))
    (hV : ∀ p : Ptrs, ptrsOf s = some p → ValSep s (NdOf Γ) p.hp) :
    FillPre [.val (.word node)] s := by
  obtain ⟨p, hp, hord, -⟩ := id hG
  exact ⟨node, rfl, p, hp, hord, NdOf Γ,
    ⟨ndShape_of_G hG hp, ndDisj_of_G hG, kbSep_of_G hG hp, hV p hp⟩, hn, hk⟩

/-! ## Decode: `DwPre` from the witness fact -/

/-- **The witness fact** at a `ws_storage_trie` call: `ws` is null or its node DB (`ws + 0`)
is well formed below `heap_ptr`. -/
def WsW (s : State σ) : Prop :=
  ∃ w, gword s (nm "ws") = some w ∧ (w.toNat < nullMax ∨
    ∃ p : Ptrs, ptrsOf s = some p ∧ p.Ordered ∧ NdbW (rd s.memory w) p.hp s.memory)

/-- **Needed from the configuration lane**: every `G` state has the witness fact. False for the
current `guestC` (WS slot 0 is `scalar`, the slice records are not `Γ` objects); see
`band1-design.md` §3.1 for the proposed WS hook that makes it a lemma. -/
def WitG (C : Cfg) (H : Hooks σ) : Prop := ∀ Γ (s : State σ), G C H Γ s → WsW s

/-- `DwPre` (`decode_witness_to_mpt`'s precondition) at `decode_witness_to_mpt(lds (ws + 0), r)`
from the witness fact, once `ws` is not null. -/
theorem dwPre_of_wsW {s : State σ} (h : WsW s) {w : BitVec 64} (hw : gword s (nm "ws") = some w)
    (hnn : nullMax ≤ w.toNat) (rh : ValueHOL 64) :
    DwPre [.val (.word (rd s.memory w)), rh] s := by
  obtain ⟨w', hw', hc⟩ := h
  rw [hw] at hw'
  cases hw'
  rcases hc with hc | ⟨p, hp, hord, hW⟩
  · omega
  · exact ⟨_, rh, rfl, p, hp, hord, hW⟩

end InitECandidate.Solver.Band

#print axioms InitECandidate.Solver.Band.ndClosed_of_G
#print axioms InitECandidate.Solver.Band.delPre_of_G
#print axioms InitECandidate.Solver.Band.ndShape_of_G
#print axioms InitECandidate.Solver.Band.ndDisj_of_G
#print axioms InitECandidate.Solver.Band.kbSep_of_G
#print axioms InitECandidate.Solver.Band.fillPre_of_G
#print axioms InitECandidate.Solver.Band.dwPre_of_wsW
