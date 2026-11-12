import InitECandidate.Solver.SourceCost.Table

/-!
# Manual entries of the cost table

Some guest functions have hand-proved tick bounds (`Solver/Spec/`) that are far smaller
than what the syntactic analyzer `costA` finds (or the analyzer finds none). A *manual
entry* `(f, mk)` supplies such a bound: `mk tbl ef` computes a bound for `f` from the
current table's callee bounds `tbl` and escape-free marks `ef`.

* `ManualSound f mk`: for every context with the guest code map, every sound table and
  escape-free set, a bound `mk` returns is a cost of every body installed under `f` (a
  `TblSound` entry, `Spec.CalleeCost`).
* `costM ms tbl ef efz f body`: the manual bound of `f` when `ms` has an entry for `f` and
  it returns one, otherwise `costA`.
* `tblStepM ms`: `tblStepF` with `costM ms` in place of `costA` (the escape-free marks are
  computed as before); `tblStepM_sound` under `ManualListSound ms`.

The entries' bound functions are plain data (this file does not depend on the proofs);
their soundness, `manualEntries_sound`, is proved in `ManualSound.lean` from the `Spec`
cost theorems, and only the final assembly of the table (`Shards/All.lean`) needs it.

All case analyses are `match`es (fast under `decide_cbv`), and no bound computes a large
power: factors such as `2 ^ 64` are written as literals (`18446744073709551616`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Basis.Pure.MlString

/-- The bound function of a manual entry: callee bounds and escape-free marks to a bound. -/
abbrev ManualMk := (MlS → Option Nat) → (MlS → Bool) → Option Nat

/-- A list of manual entries keyed by function name. -/
abbrev ManualList := List (MlS × ManualMk)

/-- Soundness of a manual entry `(f, mk)`: under the guest code map, with a sound table
`tbl` and sound escape-free marks `ef`, every bound `mk tbl ef` is a cost of every body
installed under `f`. -/
def ManualSound (f : MlS) (mk : ManualMk) : Prop :=
  ∀ {σ : Type} {X : Ctx 64}, X.code.lookup = guestCode → DomBounded X →
    ∀ (tbl : MlS → Option Nat) (ef : MlS → Bool), TblSound σ X tbl → EfSound σ X.code ef →
      ∀ B, mk tbl ef = some B → ∀ vs body callee rs,
        lookupCodeHOLFinite X.code.lookup f vs = some (body, callee, rs) → Cost σ X body B

def ManualListSound (ms : ManualList) : Prop := ∀ p ∈ ms, ManualSound p.1 p.2

theorem manualListSound_nil : ManualListSound [] := by intro p h; cases h

theorem manualListSound_cons {f : MlS} {mk : ManualMk} {ms : ManualList}
    (h : ManualSound f mk) (hs : ManualListSound ms) : ManualListSound ((f, mk) :: ms) := by
  intro p hp
  rcases List.mem_cons.mp hp with rfl | hp
  · exact h
  · exact hs p hp

/-- Bound of `f` with body `body`: a manual entry's bound when there is one and it applies,
else the analyzer's. -/
def costM (ms : ManualList) (tbl : MlS → Option Nat) (ef efz : MlS → Bool) (f : MlS)
    (body : ProgHOL 64) : Option Nat :=
  match ms.lookup f with
  | some bnd =>
    match bnd tbl ef with
    | some B => some B
    | none => costA tbl ef efz body
  | none => costA tbl ef efz body

variable {σ : Type}

theorem costM_sound {ms : ManualList} (hms : ManualListSound ms) {X : Ctx 64}
    (hC : X.code.lookup = guestCode) (hX : DomBounded X) {tbl : MlS → Option Nat}
    {ef efz : MlS → Bool} (ht : TblSound σ X tbl) (hef : EfSound σ X.code ef)
    (hefz : ∀ f, efz f = true → EfArgZero σ X.code f 1) {f : MlS} {ps : List (MlS × ShapeHOL)}
    {body : ProgHOL 64} {rs : ShapeHOL} (hf : guestCode f = some (ps, body, rs)) {B : Nat}
    (h : costM ms tbl ef efz f body = some B) :
    ∀ vs bd cl r, lookupCodeHOLFinite X.code.lookup f vs = some (bd, cl, r) → Cost σ X bd B := by
  intro vs bd cl r hl
  have hbd : bd = body := by
    obtain ⟨ps', hcode⟩ := lookupCode_some hl
    rw [hC, hf] at hcode
    simp only [Option.some.injEq, Prod.mk.injEq] at hcode
    exact hcode.2.1.symm
  have hA : costA tbl ef efz body = some B → Cost σ X bd B := fun hA => by
    rw [hbd]; exact costA_sound ht hef hefz hX (Arith.guestArithTbls hC)
      (InitECandidate.Solver.Spec.p256Rule hC) body B hA
  unfold costM at h
  split at h
  · rename_i bnd hbnd
    split at h
    · rename_i B' hB'
      simp only [Option.some.injEq] at h
      subst h
      exact hms (f, bnd) (lookup_mem hbnd) hC hX tbl ef ht hef B' hB' vs bd cl r hl
    · exact hA h
  · exact hA h

/-- `tblStepF` with the manual entries `ms` taking precedence over the analyzer. -/
def tblStepM (ms : ManualList) (st : TblState) (f : MlS) (ps : List (MlS × ShapeHOL))
    (body : ProgHOL 64) : TblState :=
  let ef : MlS → Bool := fun g => st.2.1.contains g
  let efz : MlS → Bool := fun g => ef g || st.2.2.contains g
  ((match costM ms (fun g => st.1.lookup g) ef efz f body with
      | some B => (f, B) :: st.1
      | none => st.1),
    (match escFreeB ef body with | true => f :: st.2.1 | false => st.2.1),
    (match efzCheck ef ps body with | true => f :: st.2.2 | false => st.2.2))

theorem tblStepM_sound {ms : ManualList} (hms : ManualListSound ms) {X : Ctx 64}
    (hC : X.code.lookup = guestCode) (hX : DomBounded X) (st : TblState) {f : MlS}
    {ps : List (MlS × ShapeHOL)} {body : ProgHOL 64} {rs : ShapeHOL}
    (hf : guestCode f = some (ps, body, rs)) (h : StateSound σ X st) :
    StateSound σ X (tblStepM ms st f ps body) := by
  -- the escape-free components are those of `tblStepF`
  have hF := tblStepF_sound hC hX st hf h
  obtain ⟨ht, hef, hefz⟩ := h
  have hefz' : ∀ g, (st.2.1.contains g || st.2.2.contains g) = true →
      EfArgZero σ X.code g 1 := by
    intro g hg
    rcases Bool.or_eq_true_iff.mp hg with hg | hg
    · exact efArgZero_of_ef hef hg 1
    · exact hefz g hg
  refine ⟨?_, hF.2.1, hF.2.2⟩
  unfold tblStepM
  dsimp only
  split
  · rename_i B hB
    intro g Bg hg vs bd cl r hl
    by_cases hgf : g = f
    · subst hgf
      simp only [List.lookup, beq_self_eq_true, Option.some.injEq] at hg
      subst hg
      exact costM_sound hms hC hX ht hef hefz' hf hB vs bd cl r hl
    · have : (g == f) = false := by simpa using hgf
      simp only [List.lookup, this] at hg
      exact ht g Bg hg vs bd cl r hl
  · exact ht

/-! ## The entries -/

/-- `modinv_bin` (`Spec.modinv_bin_cost`): `1 + Bz + 1026 * (514 * Bh + Blt + Bsub + Bms + 1032)`
from the bounds of `u256_is_zero`, `u256_lt`, `u256_sub`, `mod_half`, `mod_sub`, when
`mod_half` is escape-free. -/
def mkModinvBin (tbl : MlS → Option Nat) (ef : MlS → Bool) : Option Nat :=
  match tbl (ofString "u256_is_zero"), tbl (ofString "u256_lt"), tbl (ofString "u256_sub"),
    tbl (ofString "mod_half"), tbl (ofString "mod_sub"), ef (ofString "mod_half") with
  | some Bz, some Blt, some Bsub, some Bh, some Bms, true =>
      some (1 + Bz + 1026 * (514 * Bh + Blt + Bsub + Bms + 1032))
  | _, _, _, _, _, _ => none

/-- `bls_fp_inv_raw` (`Spec.bls_fp_inv_raw_cost`):
`1 + Bz + 1538 * (770 * (Bshr + Bhc) + Blt + Bsub + Bfs + 2314)` from the bounds of
`bls_fp_is_zero`, `bls_fp_lt_raw`, `bls_fp_sub_raw`, `bls_fp_shr1`, `bls_fp_half_can`,
`bls_fp_sub`, when `bls_fp_half_can` is escape-free. -/
def mkBlsFpInvRaw (tbl : MlS → Option Nat) (ef : MlS → Bool) : Option Nat :=
  match tbl (ofString "bls_fp_is_zero"), tbl (ofString "bls_fp_lt_raw"),
    tbl (ofString "bls_fp_sub_raw"), tbl (ofString "bls_fp_shr1"),
    tbl (ofString "bls_fp_half_can"), tbl (ofString "bls_fp_sub"),
    ef (ofString "bls_fp_half_can") with
  | some Bz, some Blt, some Bsub, some Bshr, some Bhc, some Bfs, true =>
      some (1 + Bz + 1538 * (770 * (Bshr + Bhc) + Blt + Bsub + Bfs + 2314))
  | _, _, _, _, _, _, _ => none

/-- `state_restore` (`Spec.state_restore_cost`): `2 ^ 64 * (Bset + Bdel + 2)` from the
bounds of `htab_set`, `htab_del`. -/
def mkStateRestore (tbl : MlS → Option Nat) (_ef : MlS → Bool) : Option Nat :=
  match tbl (ofString "htab_set"), tbl (ofString "htab_del") with
  | some Bset, some Bdel => some (18446744073709551616 * (Bset + Bdel + 2))
  | _, _ => none

/-- `_rlp_validate_items_body` (`Spec.rlp_validate_items_body_cost_dom`):
`(2 ^ 36 + 18) * (Bh + Ba + 3)` from the bounds of `rlp_item_header`, `scratch_alloc`. -/
def mkRlpValidateItemsBody (tbl : MlS → Option Nat) (_ef : MlS → Bool) : Option Nat :=
  match tbl (ofString "rlp_item_header"), tbl (ofString "scratch_alloc") with
  | some Bh, some Ba => some (68719476754 * (Bh + Ba + 3))
  | _, _ => none

/-- `rlp_list_count` (`Spec.rlp_list_count_cost_domB`): `(2 ^ 35 + 9) * (Btot + 2)` from the bound of
`rlp_item_total`. -/
def mkRlpListCount (tbl : MlS → Option Nat) (_ef : MlS → Bool) : Option Nat :=
  match tbl (ofString "rlp_item_total") with
  | some Btot => some (34359738377 * (Btot + 2))
  | none => none

/-- `trie_walk` (`Spec.trie_walk_cost_dom`): `(2 ^ 35 + 9) * (2 ^ 35 + 2) * (Bf + 2 * Bq + 4)`
from the bounds of `mpt_fail`, `memeq`. -/
def mkTrieWalk (tbl : MlS → Option Nat) (_ef : MlS → Bool) : Option Nat :=
  match tbl (ofString "mpt_fail"), tbl (ofString "memeq") with
  | some Bf, some Bq =>
      some (34359738377 * 34359738370 * (Bf + 2 * Bq + 4))
  | _, _ => none

/-! `fq12_inv` (`Spec.Fq12.calleeCost_fq12_inv`). The bound below copies
`Spec.Fq12.fq12InvB` and its parts (`setupB`, `outerB`, `finB`, `innerB`, `jB`), with `2 ^ 64`
written as a literal. `ManualSound.lean` checks that the two agree. -/

def fqInnerBM (Bmul Bsm Bdeg : Nat) : Nat := (1 + Bmul) + (1 + Bsm) + (1 + Bdeg)

def fqJBM (Bz Bsm : Nat) : Nat := 1 + Bz + (1 + Bsm)

def fqOuterBM (Bdeg Bmz Binv Bmc Bmul Bsm Bz : Nat) : Nat :=
  1 + Bdeg + (max 0 0 + (1 + Bdeg + ((1 + Bmz + 0) + (1 + Binv +
    ((13 + 1) * (fqInnerBM Bmul Bsm Bdeg + 1) + ((1 + Bmc + 0) + ((13 + 1) * (fqJBM Bz Bsm + 1) + 0)))))))

def fqFinBM (Bdeg Bmz Bhr Binv Bmul : Nat) : Nat :=
  1 + Bdeg + (max ((1 + Bmz + 0) + ((1 + Bhr + 0) + 0)) 0 +
    (1 + Binv + ((18446744073709551616 + 1) * ((1 + Bmul + (0 + 0)) + 1) + ((1 + Bhr + 0) + 0))))

def fqSetupBM (Bmz Bmc Bk : Nat) : Nat :=
  (1 + Bmz + 0) + (0 + (0 + (0 + ((1 + Bmz + 0) + ((1 + Bmc + 0) + ((1 + Bmz + 0) +
    ((1 + Bmz + 0) + (0 + Bk))))))))

def fq12InvBM (Bhm Bal Bmz Bmc Bdeg Binv Bmul Bsm Bz Bhr : Nat) : Nat :=
  1 + Bhm + (1 + Bal + (1 + Bal + (1 + Bal + (1 + Bal + (1 + Bal + (1 + Bal +
    fqSetupBM Bmz Bmc ((13 + 1) * (fqOuterBM Bdeg Bmz Binv Bmc Bmul Bsm Bz + 1) +
      fqFinBM Bdeg Bmz Bhr Binv Bmul)))))))

/-- `fq12_inv`, from the bounds of `heap_mark`, `alloc`, `memzero`, `memcpy`, `fq_poly_deg`,
`fq_inv`, `fq_mul`, `fq_poly_submul`, `u256_is_zero` and `heap_release`, when `fq_mul`,
`fq_poly_submul` and `fq_poly_deg` are escape-free. -/
def mkFq12Inv (tbl : MlS → Option Nat) (ef : MlS → Bool) : Option Nat :=
  match tbl (ofString "heap_mark"), tbl (ofString "alloc"), tbl (ofString "memzero"),
    tbl (ofString "memcpy"), tbl (ofString "fq_poly_deg"), tbl (ofString "fq_inv"),
    tbl (ofString "fq_mul"), tbl (ofString "fq_poly_submul"), tbl (ofString "u256_is_zero"),
    tbl (ofString "heap_release"), ef (ofString "fq_mul"), ef (ofString "fq_poly_submul"),
    ef (ofString "fq_poly_deg") with
  | some Bhm, some Bal, some Bmz, some Bmc, some Bdeg, some Binv, some Bmul, some Bsm, some Bz,
    some Bhr, true, true, true =>
      some (fq12InvBM Bhm Bal Bmz Bmc Bdeg Binv Bmul Bsm Bz Bhr)
  | _, _, _, _, _, _, _, _, _, _, _, _, _ => none

/-- `_mpt_insert_node` (`Spec.Mpt.mpt_insert_node_cost`):
`(insMb + 1) * (Bnl + Bmf + Bni + Bil + Bcpl + Bse + Bne + 8 + 1)`, where
`insMb + 1 = 1361129467683753854001072382316749258754` (about 2^130). The callee bounds are those
of `node_new_leaf`, `mpt_fail`, `node_invalidate`, `_insert_into_leaf`,
`common_prefix_length`, `_split_extension` and `node_new_ext`, and `node_invalidate` and
`common_prefix_length` must be escape-free. -/
def mkMptInsertNode (tbl : MlS → Option Nat) (ef : MlS → Bool) : Option Nat :=
  match tbl (ofString "node_new_leaf"), tbl (ofString "mpt_fail"),
    tbl (ofString "node_invalidate"), tbl (ofString "_insert_into_leaf"),
    tbl (ofString "common_prefix_length"), tbl (ofString "_split_extension"),
    tbl (ofString "node_new_ext"), ef (ofString "node_invalidate"),
    ef (ofString "common_prefix_length") with
  | some Bnl, some Bmf, some Bni, some Bil, some Bcpl, some Bse, some Bne, true, true =>
      some (1361129467683753854001072382316749258754 *
        (Bnl + Bmf + Bni + Bil + Bcpl + Bse + Bne + 8 + 1))
  | _, _, _, _, _, _, _, _, _ => none

/-- The manual entries of the guest's cost table. -/
def manualEntries : ManualList :=
  [(ofString "modinv_bin", mkModinvBin),
   (ofString "bls_fp_inv_raw", mkBlsFpInvRaw),
   (ofString "state_restore", mkStateRestore),
   (ofString "_rlp_validate_items_body", mkRlpValidateItemsBody),
   (ofString "rlp_list_count", mkRlpListCount),
   (ofString "trie_walk", mkTrieWalk),
   (ofString "fq12_inv", mkFq12Inv),
   (ofString "_mpt_insert_node", mkMptInsertNode)]

end InitECandidate.Solver.SourceCost
