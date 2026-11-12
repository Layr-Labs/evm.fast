import InitECandidate.Solver.Spec.Fq12.FqSub

/-!
# The body of `fq12_inv` and of its helpers

Readable renderings of `fq12_inv` (`fq12InvBody`, split into the inner division loop
`innerLoop`, the cofactor loop `jLoop`, the outer loop `outerLoop` and the final scaling
loop `finLoop`), and of `fq_poly_deg`, `fq_poly_submul`, `is_zero_bytes`, certified
against the literal guest AST (`code_*`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec.Fq12
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

abbrev sh4 : ShapeHOL := shK 4

/-- `x + i * 32` -/
def slotE (x i : ExpHOL 64) : ExpHOL 64 := .op .add [x, .panop .mul [i, cw 32]]

def callN (f : MlS) (args : List (ExpHOL 64)) : ProgHOL 64 := .call (some (none, none)) f args

/-! ## `is_zero_bytes`, `fq_poly_deg`, `fq_poly_submul` -/

def izbLoop : ProgHOL 64 :=
  .while (.cmp .lower (lv (nm "i")) (lv (nm "n")))
    (.seq (.ite (.cmp .notEqual (.loadByte (.op .add [lv (nm "p"), lv (nm "i")])) (cw 0))
        (.return (cw 0)) .skip)
      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))

def izbBody : ProgHOL 64 := .dec (nm "i") .one (cw 0) (.seq izbLoop (.return (cw 1)))

theorem entry_is_zero_bytes : fnEntry Guest.Software.guestFn_is_zero_bytes =
    (nm "is_zero_bytes", [(nm "p", .one), (nm "n", .one)], izbBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_is_zero_bytes : guestCode (nm "is_zero_bytes") =
    some ([(nm "p", .one), (nm "n", .one)], izbBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 19) (by decide)) ⟨_, rfl⟩
    entry_is_zero_bytes

def degLoop : ProgHOL 64 :=
  .while (.cmp .lower (cw 0) (lv (nm "i")))
    (.seq (.assign .local (nm "i") (.op .sub [lv (nm "i"), cw 1]))
      (.decCall (nm "z") .one (nm "is_zero_bytes") [slotE (lv (nm "a")) (lv (nm "i")), cw 32]
        (.ite (.cmp .equal (lv (nm "z")) (cw 0)) (.return (lv (nm "i"))) .skip)))

def degBody : ProgHOL 64 :=
  .dec (nm "i") .one (lv (nm "n")) (.seq degLoop (.return (.op .sub [cw 0, cw 1])))

theorem entry_fq_poly_deg : fnEntry Guest.Software.guestFn_fq_poly_deg =
    (nm "fq_poly_deg", [(nm "a", .one), (nm "n", .one)], degBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_fq_poly_deg : guestCode (nm "fq_poly_deg") =
    some ([(nm "a", .one), (nm "n", .one)], degBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 680) (by decide)) ⟨_, rfl⟩
    entry_fq_poly_deg

/-- `a + (s + i) * 32` -/
def subAddr : ExpHOL 64 :=
  .op .add [lv (nm "a"), .panop .mul [.op .add [lv (nm "s"), lv (nm "i")], cw 32]]

def submulBody1 : ProgHOL 64 :=
  .dec (nm "bi") sh4 (.load sh4 (slotE (lv (nm "b")) (lv (nm "i"))))
    (.decCall (nm "p") sh4 (nm "fq_mul") [lv (nm "q"), lv (nm "bi")]
      (.dec (nm "ai") sh4 (.load sh4 subAddr)
        (.seq (callTo (nm "ai") (nm "fq_sub") [lv (nm "ai"), lv (nm "p")])
          (.seq (.store subAddr (lv (nm "ai")))
            (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))))))

def submulLoop : ProgHOL 64 := .while (.cmp .notLower (lv (nm "db")) (lv (nm "i"))) submulBody1

def submulBody : ProgHOL 64 := .dec (nm "i") .one (cw 0) (.seq submulLoop (.return (cw 0)))

def submulParams : List (MlS × ShapeHOL) :=
  [(nm "a", .one), (nm "b", .one), (nm "q", sh4), (nm "s", .one), (nm "db", .one)]

theorem entry_fq_poly_submul : fnEntry Guest.Software.guestFn_fq_poly_submul =
    (nm "fq_poly_submul", submulParams, submulBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_fq_poly_submul : guestCode (nm "fq_poly_submul") =
    some (submulParams, submulBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 681) (by decide)) ⟨_, rfl⟩
    entry_fq_poly_submul

/-! ## `fq12_inv` -/

def innerBody : ProgHOL 64 :=
  .dec (nm "top") sh4 (.load sh4 (slotE (lv (nm "r0")) (lv (nm "d0"))))
    (.decCall (nm "cf") sh4 (nm "fq_mul") [lv (nm "top"), lv (nm "linv")]
      (.seq (.store (slotE (lv (nm "q")) (.op .sub [lv (nm "d0"), lv (nm "d1")])) (lv (nm "cf")))
        (.seq (callN (nm "fq_poly_submul") [lv (nm "r0"), lv (nm "r1"), lv (nm "cf"),
            .op .sub [lv (nm "d0"), lv (nm "d1")], lv (nm "d1")])
          (callTo (nm "d0") (nm "fq_poly_deg") [lv (nm "r0"), cw 13]))))

def innerCond : ExpHOL 64 := .cmp .notLess (lv (nm "d0")) (lv (nm "d1"))

def innerLoop : ProgHOL 64 := .while innerCond innerBody

def jBody : ProgHOL 64 :=
  .dec (nm "qj") sh4 (.load sh4 (slotE (lv (nm "q")) (lv (nm "j"))))
    (.decCall (nm "qz") .one (nm "u256_is_zero") [lv (nm "qj")]
      (.seq (.ite (.cmp .equal (lv (nm "qz")) (cw 0))
          (callN (nm "fq_poly_submul") [lv (nm "tmp"), lv (nm "s1"), lv (nm "qj"), lv (nm "j"),
            .op .sub [cw 12, lv (nm "j")]]) .skip)
        (.assign .local (nm "j") (.op .add [lv (nm "j"), cw 1]))))

def jLoop : ProgHOL 64 := .while (.cmp .lower (lv (nm "j")) (cw 13)) jBody

/-- `var t = r0; r0 = r1; r1 = t; t = s0; s0 = s1; s1 = tmp; tmp = t` -/
def swapP : ProgHOL 64 :=
  .dec (nm "t") .one (lv (nm "r0"))
    (.seq (.assign .local (nm "r0") (lv (nm "r1")))
      (.seq (.assign .local (nm "r1") (lv (nm "t")))
        (.seq (.assign .local (nm "t") (lv (nm "s0")))
          (.seq (.assign .local (nm "s0") (lv (nm "s1")))
            (.seq (.assign .local (nm "s1") (lv (nm "tmp")))
              (.assign .local (nm "tmp") (lv (nm "t"))))))))

/-- The part of the outer body after `linv = fq_inv(lead)`. -/
def outerTail : ProgHOL 64 :=
  .seq innerLoop
    (.seq (callN (nm "memcpy") [lv (nm "tmp"), lv (nm "s0"), cw 416])
      (.dec (nm "j") .one (cw 0) (.seq jLoop swapP)))

def outerBody : ProgHOL 64 :=
  .decCall (nm "d1") .one (nm "fq_poly_deg") [lv (nm "r1"), cw 13]
    (.seq (.ite (.cmp .notLess (cw 0) (lv (nm "d1"))) .break .skip)
      (.decCall (nm "d0") .one (nm "fq_poly_deg") [lv (nm "r0"), cw 13]
        (.seq (callN (nm "memzero") [lv (nm "q"), cw 416])
          (.dec (nm "lead") sh4 (.load sh4 (slotE (lv (nm "r1")) (lv (nm "d1"))))
            (.decCall (nm "linv") sh4 (nm "fq_inv") [lv (nm "lead")] outerTail)))))

def outerLoop : ProgHOL 64 := .while (cw 1) outerBody

def finBody : ProgHOL 64 :=
  .dec (nm "si") sh4 (.load sh4 (slotE (lv (nm "s1")) (lv (nm "i"))))
    (.decCall (nm "ri") sh4 (nm "fq_mul") [lv (nm "si"), lv (nm "cinv")]
      (.seq (.store (slotE (lv (nm "d")) (lv (nm "i"))) (lv (nm "ri")))
        (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1]))))

def finLoop : ProgHOL 64 := .while (.cmp .lower (lv (nm "i")) (cw 12)) finBody

/-- After the outer loop. -/
def finTail : ProgHOL 64 :=
  .decCall (nm "dz") .one (nm "fq_poly_deg") [lv (nm "r1"), cw 13]
    (.seq (.ite (.cmp .less (lv (nm "dz")) (cw 0))
        (.seq (callN (nm "memzero") [lv (nm "d"), cw 384])
          (.seq (callN (nm "heap_release") [lv (nm "mark")]) (.return (cw 0))))
        .skip)
      (.dec (nm "c") sh4 (.load sh4 (lv (nm "r1")))
        (.decCall (nm "cinv") sh4 (nm "fq_inv") [lv (nm "c")]
          (.dec (nm "i") .one (cw 0)
            (.seq finLoop
              (.seq (callN (nm "heap_release") [lv (nm "mark")]) (.return (cw 0))))))))

def c4 (a b c d : Nat) : ExpHOL 64 := .rstruct [cw a, cw b, cw c, cw d]

/-- The set-up before the outer loop, followed by `k`. -/
def setupP (k : ProgHOL 64) : ProgHOL 64 :=
  .seq (callN (nm "memzero") [lv (nm "r0"), cw 416])
    (.seq (.store (lv (nm "r0"))
        (c4 5544790254283102953 13698472384431417117 4628036095437277618 2762764518496934255))
      (.seq (.store (.op .add [lv (nm "r0"), cw 192])
          (c4 10102850021236865696 15026249742141879542 2169086236411634456 2710440286313254821))
        (.seq (.store (.op .add [lv (nm "r0"), cw 384])
            (c4 15230403791020821917 754611498739239741 7381016538464732716 1011752739694698287))
          (.seq (callN (nm "memzero") [lv (nm "r1"), cw 416])
            (.seq (callN (nm "memcpy") [lv (nm "r1"), lv (nm "a"), cw 384])
              (.seq (callN (nm "memzero") [lv (nm "s0"), cw 416])
                (.seq (callN (nm "memzero") [lv (nm "s1"), cw 416])
                  (.seq (.store (lv (nm "s1"))
                    (c4 15230403791020821917 754611498739239741 7381016538464732716
                      1011752739694698287)) k))))))))

def allocs : ProgHOL 64 → ProgHOL 64 := fun k =>
  .decCall (nm "r0") .one (nm "alloc") [cw 416] (.decCall (nm "r1") .one (nm "alloc") [cw 416]
    (.decCall (nm "s0") .one (nm "alloc") [cw 416] (.decCall (nm "s1") .one (nm "alloc") [cw 416]
      (.decCall (nm "q") .one (nm "alloc") [cw 416] (.decCall (nm "tmp") .one (nm "alloc") [cw 416]
        k)))))

def fq12InvBody : ProgHOL 64 :=
  .decCall (nm "mark") .one (nm "heap_mark") []
    (allocs (setupP (.seq outerLoop finTail)))

theorem entry_fq12_inv : fnEntry Guest.Software.guestFn_fq12_inv =
    (nm "fq12_inv", [(nm "d", .one), (nm "a", .one)], fq12InvBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_fq12_inv : guestCode (nm "fq12_inv") =
    some ([(nm "d", .one), (nm "a", .one)], fq12InvBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 682) (by decide)) ⟨_, rfl⟩
    entry_fq12_inv

end InitECandidate.Solver.Spec.Fq12
