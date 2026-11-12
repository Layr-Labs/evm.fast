import InitECandidate.Solver.Spec.Code

/-!
# The fp384 functions used by `bls_fp_inv_raw`

Readable renderings of `bls_fp_lt_raw`, `bls_fp_sub_raw`, `bls_fp_shr1` and
`bls_fp_inv_raw`, certified against the literal guest AST (`code_*`).
-/

set_option maxRecDepth 100000
set_option cbv.warning false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL progToHOL paramToHOL shapeToHOL)
open InitECandidate.Solver.SourceCost
open Flapjack.Basis.Pure.MlString

def blsLtBody : ProgHOL 64 := ltChain (nm "a") (nm "b") [5, 4, 3, 2, 1]

def subRet6 : ProgHOL 64 :=
  .return (.rstruct [.rfield 0 (lv (nm "r0")), .rfield 0 (lv (nm "r1")),
    .rfield 0 (lv (nm "r2")), .rfield 0 (lv (nm "r3")), .rfield 0 (lv (nm "r4")),
    .rfield 0 (lv (nm "r5")), .rfield 1 (lv (nm "r5"))])

def blsSubBody : ProgHOL 64 :=
  subStep (nm "a") (nm "b") (nm "r0") 0 (cw 1)
    (subStep (nm "a") (nm "b") (nm "r1") 1 (.rfield 1 (lv (nm "r0")))
      (subStep (nm "a") (nm "b") (nm "r2") 2 (.rfield 1 (lv (nm "r1")))
        (subStep (nm "a") (nm "b") (nm "r3") 3 (.rfield 1 (lv (nm "r2")))
          (subStep (nm "a") (nm "b") (nm "r4") 4 (.rfield 1 (lv (nm "r3")))
            (subStep (nm "a") (nm "b") (nm "r5") 5 (.rfield 1 (lv (nm "r4"))) subRet6)))))

def blsShrBody : ProgHOL 64 := .return (.rstruct (shrE (lv (nm "x")) 0 6))

theorem entry_bls_fp_lt_raw : fnEntry Guest.Software.guestFn_bls_fp_lt_raw =
    (nm "bls_fp_lt_raw", params2 6, blsLtBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_bls_fp_lt_raw :
    guestCode (nm "bls_fp_lt_raw") = some (params2 6, blsLtBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 699) (by decide)) ⟨_, rfl⟩
    entry_bls_fp_lt_raw

theorem entry_bls_fp_sub_raw : fnEntry Guest.Software.guestFn_bls_fp_sub_raw =
    (nm "bls_fp_sub_raw", params2 6, blsSubBody, shK 7) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_bls_fp_sub_raw :
    guestCode (nm "bls_fp_sub_raw") = some (params2 6, blsSubBody, shK 7) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 701) (by decide)) ⟨_, rfl⟩
    entry_bls_fp_sub_raw

theorem entry_bls_fp_shr1 : fnEntry Guest.Software.guestFn_bls_fp_shr1 =
    (nm "bls_fp_shr1", [(nm "x", shK 6)], blsShrBody, shK 6) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_bls_fp_shr1 :
    guestCode (nm "bls_fp_shr1") = some ([(nm "x", shK 6)], blsShrBody, shK 6) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 710) (by decide)) ⟨_, rfl⟩
    entry_bls_fp_shr1

/-! ## `bls_fp_inv_raw` -/

/-- `while (u.0 & 1) == 0 { u = bls_fp_shr1(u); x = bls_fp_half_can(x) }` -/
def blsHalve (u x : MlS) : ProgHOL 64 :=
  .while (evenC u)
    (.seq (callTo u (nm "bls_fp_shr1") [lv u]) (callTo x (nm "bls_fp_half_can") [lv x]))

/-- `<d.0, ..., d.5>` -/
def first6 (d : MlS) : ExpHOL 64 := .rstruct ((List.range 6).map fun i => .rfield i (lv d))

def blsTail (u v x1 x2 ult d e : MlS) : ProgHOL 64 :=
  .decCall ult .one (nm "bls_fp_lt_raw") [lv u, lv v]
    (.ite (.cmp .equal (lv ult) (cw 0))
      (.decCall d (shK 7) (nm "bls_fp_sub_raw") [lv u, lv v]
        (.seq (.assign .local u (first6 d)) (callTo x1 (nm "bls_fp_sub") [lv x1, lv x2])))
      (.decCall e (shK 7) (nm "bls_fp_sub_raw") [lv v, lv u]
        (.seq (.assign .local v (first6 e)) (callTo x2 (nm "bls_fp_sub") [lv x2, lv x1]))))

def blsOuter (u v x1 x2 ult d e : MlS) : ProgHOL 64 :=
  .seq (guardRet u x1 6) (.seq (guardRet v x2 6)
    (.seq (blsHalve u x1) (.seq (blsHalve v x2) (blsTail u v x1 x2 ult d e))))

def blsLoop : ProgHOL 64 :=
  .while (cw 1) (blsOuter (nm "u") (nm "v") (nm "x1") (nm "x2") (nm "ult") (nm "d") (nm "e"))

/-- The BLS12-381 base-field prime as six limbs. -/
def blsP : ExpHOL 64 :=
  .rstruct [cw 13402431016077863595, cw 2210141511517208575, cw 7435674573564081700,
    cw 7239337960414712511, cw 5412103778470702295, cw 1873798617647539866]

def blsInvBody : ProgHOL 64 :=
  .decCall (nm "az") .one (nm "bls_fp_is_zero") [lv (nm "a")]
    (.seq (.ite (.cmp .equal (lv (nm "az")) (cw 1)) (.return (zeros 6)) .skip)
      (.dec (nm "u") (shK 6) (lv (nm "a")) (.dec (nm "v") (shK 6) blsP
        (.dec (nm "x1") (shK 6) (one_ 6) (.dec (nm "x2") (shK 6) (zeros 6)
          (.seq blsLoop (.return (zeros 6))))))))

theorem entry_bls_fp_inv_raw : fnEntry Guest.Software.guestFn_bls_fp_inv_raw =
    (nm "bls_fp_inv_raw", [(nm "a", shK 6)], blsInvBody, shK 6) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_bls_fp_inv_raw :
    guestCode (nm "bls_fp_inv_raw") = some ([(nm "a", shK 6)], blsInvBody, shK 6) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 712) (by decide)) ⟨_, rfl⟩
    entry_bls_fp_inv_raw

end InitECandidate.Solver.Spec
