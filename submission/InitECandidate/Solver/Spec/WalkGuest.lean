import InitECandidate.Solver.Spec.TrieWalk
import InitECandidate.Solver.Spec.RlpCount
import InitECandidate.Solver.Spec.Bridge
import InitECandidate.Solver.SourceCost.Table

/-!
# The walker bounds for the guest's memory domain; table composition

The guest's ordinary domain `[sourceBase, sourceBase + 8 N)` lies in an interval of length
`2 ^ 35` (`guest_domIn`, the computation of `guestCtx_bounded`). For a context with that
domain (`X.memaddrs = guestCtx.memaddrs`) and the guest code map:

* `_rlp_validate_items_body`: `(2 ^ 36 + 18) * (Bh + Ba + 3)`;
* `rlp_validate_items`: `Bm + Bv + 2 * Br + 4`;
* `rlp_item_total`: `Bh + Bvi + 2`;
* `rlp_list_count`: `(2 ^ 35 + 9) * (Btot + 2)` (`rlp_list_count_cost_dom`, `Spec/RlpCount.lean`;
  `Spec/Rlp.lean` has `2 ^ 64 * (Btot + 2)`);
* `trie_walk`: `(2 ^ 35 + 9) * (2 ^ 35 + 2) * (Bf + 2 * Bq + 4)`,

with `Bh, Ba, Bm, Br, Bf, Bq` the costs of `rlp_item_header`, `scratch_alloc`,
`scratch_mark`, `scratch_release`, `mpt_fail`, `memeq`. `walk_tblSound` inserts all five
bounds into a sound table that has entries for those six callees. For any context with
`DomBounded X` (interval length `< 2 ^ 64`): `rlp_validate_items_body_cost_dom`
(`(2 ^ 36 + 18) * (Bh + Ba + 3)`), `trie_walk_cost_dom`
(`(2 ^ 35 + 9) * (2 ^ 35 + 2) * (Bf + 2 * Bq + 4)`), given `L ≤ 2 ^ 35` in `DomBounded`.
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

/-- The guest's ordinary memory domain lies in `[sourceBase, sourceBase + 2 ^ 35)`. -/
theorem guest_domIn :
    DomIn guestCtx.memaddrs (BitVec.ofNat 64 InitE.sourceBase) (2 ^ 35) := by
  intro a ha
  obtain ⟨i, hi, rfl⟩ := (Compiler.Backend.StackRemove.mem_addresses _ _ _).mp ha
  rw [BitVec.add_comm, BitVec.add_sub_cancel]
  simp only [Compiler.Backend.StackRemove.bytesInWord, BitVec.toNat_mul, BitVec.toNat_ofNat]
  simp only [InitE.stackStart, InitE.sourceBase, InitE.ramEnd, InitE.ramStart, InitE.ramSize,
    InitE.stackSize, InitE.globalsWords] at hi ⊢
  omega

theorem guest_domIn' (hX : X.memaddrs = guestCtx.memaddrs) :
    DomIn X.memaddrs (BitVec.ofNat 64 InitE.sourceBase) (2 ^ 35) := by
  rw [hX]; exact guest_domIn

/-- **`_rlp_validate_items_body`** in the guest domain: at most `2 ^ 36 + 18` iterations. -/
theorem rlp_validate_items_body_cost_guest (hC : X.code.lookup = guestCode)
    (hX : X.memaddrs = guestCtx.memaddrs) {Bh Ba : Nat}
    (hh : CalleeCost σ X (nm "rlp_item_header") Bh) (ha : CalleeCost σ X (nm "scratch_alloc") Ba) :
    CalleeCost σ X (nm "_rlp_validate_items_body") ((2 ^ 36 + 18) * (Bh + Ba + 3)) := by
  have := rlp_validate_items_body_cost (σ := σ) hC (guest_domIn' hX) (by decide) hh ha
  rwa [show 2 * 2 ^ 35 + 18 = 2 ^ 36 + 18 by rfl] at this

/-- **`trie_walk`** in the guest domain: at most `(2 ^ 35 + 9)(2 ^ 35 + 2)` iterations. -/
theorem trie_walk_cost_guest (hC : X.code.lookup = guestCode)
    (hX : X.memaddrs = guestCtx.memaddrs) {Bf Bq : Nat}
    (hf : CalleeCost σ X (nm "mpt_fail") Bf) (hq : CalleeCost σ X (nm "memeq") Bq) :
    CalleeCost σ X (nm "trie_walk") ((2 ^ 35 + 9) * (2 ^ 35 + 2) * (Bf + 2 * Bq + 4)) :=
  trie_walk_cost (σ := σ) hC (guest_domIn' hX) (by decide) hf hq

/-- The composed bounds. -/
def bvBody (Bh Ba : Nat) : Nat := (2 ^ 36 + 18) * (Bh + Ba + 3)
def bvItems (Bh Ba Bm Br : Nat) : Nat := Bm + bvBody Bh Ba + 2 * Br + 4
def bvTotal (Bh Ba Bm Br : Nat) : Nat := Bh + bvItems Bh Ba Bm Br + 2
def bvCount (Bh Ba Bm Br : Nat) : Nat := (2 ^ 35 + 9) * (bvTotal Bh Ba Bm Br + 2)
def bvWalk (Bf Bq : Nat) : Nat := (2 ^ 35 + 9) * (2 ^ 35 + 2) * (Bf + 2 * Bq + 4)

/-- **The RLP chain** `_rlp_validate_items_body → rlp_validate_items → rlp_item_total →
rlp_list_count`, in the guest domain. -/
theorem rlp_chain_cost_guest (hC : X.code.lookup = guestCode)
    (hX : X.memaddrs = guestCtx.memaddrs) {Bh Ba Bm Br : Nat}
    (hh : CalleeCost σ X (nm "rlp_item_header") Bh) (ha : CalleeCost σ X (nm "scratch_alloc") Ba)
    (hm : CalleeCost σ X (nm "scratch_mark") Bm) (hr : CalleeCost σ X (nm "scratch_release") Br) :
    CalleeCost σ X (nm "_rlp_validate_items_body") (bvBody Bh Ba) ∧
    CalleeCost σ X (nm "rlp_validate_items") (bvItems Bh Ba Bm Br) ∧
    CalleeCost σ X (nm "rlp_item_total") (bvTotal Bh Ba Bm Br) ∧
    CalleeCost σ X (nm "rlp_list_count") (bvCount Bh Ba Bm Br) := by
  have h1 := rlp_validate_items_body_cost_guest hC hX hh ha
  have h2 := rlp_validate_items_cost hC hm h1 hr
  have h3 := rlp_item_total_cost hC hh h2
  exact ⟨h1, h2, h3, rlp_list_count_cost_dom hC (guest_domIn' hX) (by decide) h3⟩

/-- **Table composition.** A sound table with entries for the six callees stays sound with
the five walker bounds inserted. -/
theorem walk_tblSound (hC : X.code.lookup = guestCode) (hX : X.memaddrs = guestCtx.memaddrs)
    {tbl : MlS → Option Nat} (ht : TblSound σ X tbl) {Bh Ba Bm Br Bf Bq : Nat}
    (hh : tbl (nm "rlp_item_header") = some Bh) (ha : tbl (nm "scratch_alloc") = some Ba)
    (hm : tbl (nm "scratch_mark") = some Bm) (hr : tbl (nm "scratch_release") = some Br)
    (hf : tbl (nm "mpt_fail") = some Bf) (hq : tbl (nm "memeq") = some Bq) :
    TblSound σ X (fun g =>
      if g = nm "trie_walk" then some (bvWalk Bf Bq) else
      if g = nm "rlp_list_count" then some (bvCount Bh Ba Bm Br) else
      if g = nm "rlp_item_total" then some (bvTotal Bh Ba Bm Br) else
      if g = nm "rlp_validate_items" then some (bvItems Bh Ba Bm Br) else
      if g = nm "_rlp_validate_items_body" then some (bvBody Bh Ba) else tbl g) := by
  obtain ⟨h1, h2, h3, h4⟩ := rlp_chain_cost_guest hC hX (calleeCost_of_tbl ht hh)
    (calleeCost_of_tbl ht ha) (calleeCost_of_tbl ht hm) (calleeCost_of_tbl ht hr)
  have h5 := trie_walk_cost_guest (σ := σ) hC hX (calleeCost_of_tbl ht hf) (calleeCost_of_tbl ht hq)
  exact tblSound_insert (tblSound_insert (tblSound_insert (tblSound_insert
    (tblSound_insert ht h1) h2) h3) h4) h5

/-! ## Any context with bounded domains (`DomBounded`) -/

theorem CalleeCost.mono' {f : MlS} {B B' : Nat} (h : CalleeCost σ X f B) (hle : B ≤ B') :
    CalleeCost σ X f B' :=
  fun vs body callee rs hl => (h vs body callee rs hl).mono hle

theorem rlp_validate_items_body_cost_dom (hC : X.code.lookup = guestCode) (hX : DomBounded X)
    {Bh Ba : Nat} (hh : CalleeCost σ X (nm "rlp_item_header") Bh)
    (ha : CalleeCost σ X (nm "scratch_alloc") Ba) :
    CalleeCost σ X (nm "_rlp_validate_items_body") ((2 ^ 36 + 18) * (Bh + Ba + 3)) := by
  obtain ⟨L, hL, ⟨lo, hD⟩, _, h35⟩ := hX
  rw [alignSlack_64] at hL
  exact (rlp_validate_items_body_cost hC hD (by omega) hh ha).mono'
    (Nat.mul_le_mul_right _ (by omega))

theorem rlp_list_count_cost_domB (hC : X.code.lookup = guestCode) (hX : DomBounded X)
    {Btot : Nat} (htot : CalleeCost σ X (nm "rlp_item_total") Btot) :
    CalleeCost σ X (nm "rlp_list_count") ((2 ^ 35 + 9) * (Btot + 2)) := by
  obtain ⟨L, hL, ⟨lo, hD⟩, _, h35⟩ := hX
  rw [alignSlack_64] at hL
  exact (rlp_list_count_cost_dom hC hD (by omega) htot).mono'
    (Nat.mul_le_mul_right _ (by omega))

theorem trie_walk_cost_dom (hC : X.code.lookup = guestCode) (hX : DomBounded X) {Bf Bq : Nat}
    (hf : CalleeCost σ X (nm "mpt_fail") Bf) (hq : CalleeCost σ X (nm "memeq") Bq) :
    CalleeCost σ X (nm "trie_walk") ((2 ^ 35 + 9) * (2 ^ 35 + 2) * (Bf + 2 * Bq + 4)) := by
  obtain ⟨L, hL, ⟨lo, hD⟩, _, h35⟩ := hX
  rw [alignSlack_64] at hL
  exact (trie_walk_cost hC hD (by omega) hf hq).mono'
    (Nat.mul_le_mul_right _ (Nat.mul_le_mul (by omega) (by omega)))

end InitECandidate.Solver.Spec
