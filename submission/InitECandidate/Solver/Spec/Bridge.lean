import InitECandidate.Solver.Spec.BlsInv
import InitECandidate.Solver.SourceCost.Analyzer

/-!
# Connecting the cost theorems to the analyzer's tables

`CalleeCost σ X f B` is exactly a `TblSound` entry, and `CalleeEscFree σ X f` an
`EfSound` entry (`calleeEscFree_of_ef`, `Loop.lean`). `tblSound_insert` adds a proved
bound (e.g. `modinv_bin_cost`, `bls_fp_inv_raw_cost`) to a sound table.
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

theorem calleeCost_of_tbl {tbl : MlS → Option Nat} (ht : TblSound σ X tbl) {f : MlS} {B : Nat}
    (hf : tbl f = some B) : CalleeCost σ X f B :=
  fun vs body callee rs hl => ht f B hf vs body callee rs hl

theorem tblSound_insert {tbl : MlS → Option Nat} (ht : TblSound σ X tbl) {f : MlS} {B : Nat}
    (hf : CalleeCost σ X f B) :
    TblSound σ X (fun g => if g = f then some B else tbl g) := by
  intro g Bg hg vs body callee rs hl
  by_cases hgf : g = f
  · subst hgf
    simp only [if_true, Option.some.injEq] at hg
    subst hg
    exact hf vs body callee rs hl
  · simp only [hgf, if_false] at hg
    exact ht g Bg hg vs body callee rs hl

/-- `modinv_bin` from table entries of its callees. -/
theorem modinv_bin_cost_tbl (hC : X.code.lookup = guestCode) {tbl : MlS → Option Nat}
    {ef : MlS → Bool} (ht : TblSound σ X tbl) (he : EfSound σ X.code ef)
    {Bz Blt Bsub Bh Bms : Nat}
    (hz : tbl (nm "u256_is_zero") = some Bz) (hlt : tbl (nm "u256_lt") = some Blt)
    (hsub : tbl (nm "u256_sub") = some Bsub) (hh : tbl (nm "mod_half") = some Bh)
    (hms : tbl (nm "mod_sub") = some Bms) (hesc : ef (nm "mod_half") = true) :
    CalleeCost σ X (nm "modinv_bin") (1 + Bz + 1026 * (514 * Bh + Blt + Bsub + Bms + 1032)) :=
  modinv_bin_cost hC (calleeCost_of_tbl ht hz) (calleeCost_of_tbl ht hlt)
    (calleeCost_of_tbl ht hsub) (calleeCost_of_tbl ht hh) (calleeCost_of_tbl ht hms)
    (calleeEscFree_of_ef he hesc)

/-- `bls_fp_inv_raw` from table entries of its callees. -/
theorem bls_fp_inv_raw_cost_tbl (hC : X.code.lookup = guestCode) {tbl : MlS → Option Nat}
    {ef : MlS → Bool} (ht : TblSound σ X tbl) (he : EfSound σ X.code ef)
    {Bz Blt Bsub Bshr Bhc Bfs : Nat}
    (hz : tbl (nm "bls_fp_is_zero") = some Bz) (hlt : tbl (nm "bls_fp_lt_raw") = some Blt)
    (hsub : tbl (nm "bls_fp_sub_raw") = some Bsub) (hshr : tbl (nm "bls_fp_shr1") = some Bshr)
    (hhc : tbl (nm "bls_fp_half_can") = some Bhc) (hfs : tbl (nm "bls_fp_sub") = some Bfs)
    (hesc : ef (nm "bls_fp_half_can") = true) :
    CalleeCost σ X (nm "bls_fp_inv_raw")
      (1 + Bz + 1538 * (770 * (Bshr + Bhc) + Blt + Bsub + Bfs + 2314)) :=
  bls_fp_inv_raw_cost hC (calleeCost_of_tbl ht hz) (calleeCost_of_tbl ht hlt)
    (calleeCost_of_tbl ht hsub) (calleeCost_of_tbl ht hshr) (calleeCost_of_tbl ht hhc)
    (calleeCost_of_tbl ht hfs) (calleeEscFree_of_ef he hesc)

end InitECandidate.Solver.Spec
