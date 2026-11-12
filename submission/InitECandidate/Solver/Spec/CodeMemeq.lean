import InitECandidate.Solver.Spec.CodeWalk

/-!
# `memeq` as guest code

`memeqBody`: the body of `memeq(a, b, n)` (`guest/src/lib/mem.pnk`), rendered mechanically
from the guest AST and certified by `cbv` (`code_memeq`). `memeq_shape` exposes its
skeleton: the aligned fast paths for `n = 20, 32, 52`, two aligned word loops, a byte
loop by eights, a byte loop, `return 1`.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost

def memeqBody : ProgHOL 64 :=
        (.dec (nm "i") .one (cw 0)
          (.seq
            (.ite (.cmp .equal (.op .and [(.op .or [(lv (nm "a")), (lv (nm "b"))]), (cw 7)]) (cw 0))
              (.seq
                (.ite (.cmp .equal (lv (nm "n")) (cw 20))
                  (.seq
                    (.ite (.cmp .notEqual (.load .one (lv (nm "a"))) (.load .one (lv (nm "b"))))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.load .one (.op .add [(lv (nm "a")), (cw 8)])) (.load .one (.op .add [(lv (nm "b")), (cw 8)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (cw 16)])) (.loadByte (.op .add [(lv (nm "b")), (cw 16)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (cw 17)])) (.loadByte (.op .add [(lv (nm "b")), (cw 17)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (cw 18)])) (.loadByte (.op .add [(lv (nm "b")), (cw 18)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (cw 19)])) (.loadByte (.op .add [(lv (nm "b")), (cw 19)])))
                      (.return (cw 0))
                      .skip)
                    (.return (cw 1))))))))
                  .skip)
                (.seq
                (.ite (.cmp .equal (lv (nm "n")) (cw 32))
                  (.seq
                    (.ite (.cmp .notEqual (.load .one (lv (nm "a"))) (.load .one (lv (nm "b"))))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.load .one (.op .add [(lv (nm "a")), (cw 8)])) (.load .one (.op .add [(lv (nm "b")), (cw 8)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.load .one (.op .add [(lv (nm "a")), (cw 16)])) (.load .one (.op .add [(lv (nm "b")), (cw 16)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.load .one (.op .add [(lv (nm "a")), (cw 24)])) (.load .one (.op .add [(lv (nm "b")), (cw 24)])))
                      (.return (cw 0))
                      .skip)
                    (.return (cw 1))))))
                  .skip)
                (.seq
                (.ite (.cmp .equal (lv (nm "n")) (cw 52))
                  (.seq
                    (.ite (.cmp .notEqual (.load .one (lv (nm "a"))) (.load .one (lv (nm "b"))))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.load .one (.op .add [(lv (nm "a")), (cw 8)])) (.load .one (.op .add [(lv (nm "b")), (cw 8)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.load .one (.op .add [(lv (nm "a")), (cw 16)])) (.load .one (.op .add [(lv (nm "b")), (cw 16)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.load .one (.op .add [(lv (nm "a")), (cw 24)])) (.load .one (.op .add [(lv (nm "b")), (cw 24)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.load .one (.op .add [(lv (nm "a")), (cw 32)])) (.load .one (.op .add [(lv (nm "b")), (cw 32)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.load .one (.op .add [(lv (nm "a")), (cw 40)])) (.load .one (.op .add [(lv (nm "b")), (cw 40)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (cw 48)])) (.loadByte (.op .add [(lv (nm "b")), (cw 48)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (cw 49)])) (.loadByte (.op .add [(lv (nm "b")), (cw 49)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (cw 50)])) (.loadByte (.op .add [(lv (nm "b")), (cw 50)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (cw 51)])) (.loadByte (.op .add [(lv (nm "b")), (cw 51)])))
                      (.return (cw 0))
                      .skip)
                    (.return (cw 1))))))))))))
                  .skip)
                (.seq
                (.while (.cmp .notLower (lv (nm "n")) (.op .add [(lv (nm "i")), (cw 32)]))
                  (.seq
                    (.ite (.cmp .notEqual (.load .one (.op .add [(lv (nm "a")), (lv (nm "i"))])) (.load .one (.op .add [(lv (nm "b")), (lv (nm "i"))])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.load .one (.op .add [(lv (nm "a")), (lv (nm "i")), (cw 8)])) (.load .one (.op .add [(lv (nm "b")), (lv (nm "i")), (cw 8)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.load .one (.op .add [(lv (nm "a")), (lv (nm "i")), (cw 16)])) (.load .one (.op .add [(lv (nm "b")), (lv (nm "i")), (cw 16)])))
                      (.return (cw 0))
                      .skip)
                    (.seq
                    (.ite (.cmp .notEqual (.load .one (.op .add [(lv (nm "a")), (lv (nm "i")), (cw 24)])) (.load .one (.op .add [(lv (nm "b")), (lv (nm "i")), (cw 24)])))
                      (.return (cw 0))
                      .skip)
                    (.assign .local (nm "i") (.op .add [(lv (nm "i")), (cw 32)])))))))
                (.while (.cmp .notLower (lv (nm "n")) (.op .add [(lv (nm "i")), (cw 8)]))
                  (.seq
                    (.ite (.cmp .notEqual (.load .one (.op .add [(lv (nm "a")), (lv (nm "i"))])) (.load .one (.op .add [(lv (nm "b")), (lv (nm "i"))])))
                      (.return (cw 0))
                      .skip)
                    (.assign .local (nm "i") (.op .add [(lv (nm "i")), (cw 8)]))))))))
              .skip)
            (.seq
            (.while (.cmp .notLower (lv (nm "n")) (.op .add [(lv (nm "i")), (cw 8)]))
              (.seq
                (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (lv (nm "i"))])) (.loadByte (.op .add [(lv (nm "b")), (lv (nm "i"))])))
                  (.return (cw 0))
                  .skip)
                (.seq
                (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (lv (nm "i")), (cw 1)])) (.loadByte (.op .add [(lv (nm "b")), (lv (nm "i")), (cw 1)])))
                  (.return (cw 0))
                  .skip)
                (.seq
                (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (lv (nm "i")), (cw 2)])) (.loadByte (.op .add [(lv (nm "b")), (lv (nm "i")), (cw 2)])))
                  (.return (cw 0))
                  .skip)
                (.seq
                (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (lv (nm "i")), (cw 3)])) (.loadByte (.op .add [(lv (nm "b")), (lv (nm "i")), (cw 3)])))
                  (.return (cw 0))
                  .skip)
                (.seq
                (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (lv (nm "i")), (cw 4)])) (.loadByte (.op .add [(lv (nm "b")), (lv (nm "i")), (cw 4)])))
                  (.return (cw 0))
                  .skip)
                (.seq
                (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (lv (nm "i")), (cw 5)])) (.loadByte (.op .add [(lv (nm "b")), (lv (nm "i")), (cw 5)])))
                  (.return (cw 0))
                  .skip)
                (.seq
                (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (lv (nm "i")), (cw 6)])) (.loadByte (.op .add [(lv (nm "b")), (lv (nm "i")), (cw 6)])))
                  (.return (cw 0))
                  .skip)
                (.seq
                (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (lv (nm "i")), (cw 7)])) (.loadByte (.op .add [(lv (nm "b")), (lv (nm "i")), (cw 7)])))
                  (.return (cw 0))
                  .skip)
                (.assign .local (nm "i") (.op .add [(lv (nm "i")), (cw 8)])))))))))))
            (.seq
            (.while (.cmp .lower (lv (nm "i")) (lv (nm "n")))
              (.seq
                (.ite (.cmp .notEqual (.loadByte (.op .add [(lv (nm "a")), (lv (nm "i"))])) (.loadByte (.op .add [(lv (nm "b")), (lv (nm "i"))])))
                  (.return (cw 0))
                  .skip)
                (.assign .local (nm "i") (.op .add [(lv (nm "i")), (cw 1)]))))
            (.return (cw 1))))))

def params_memeq : List (MlS × ShapeHOL) := [(nm "a", .one), (nm "b", .one), (nm "n", .one)]

theorem entry_memeq : fnEntry Guest.Software.guestFn_memeq =
    (nm "memeq", params_memeq, memeqBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_memeq : guestCode (nm "memeq") = some (params_memeq, memeqBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 18) (by decide)) ⟨_, rfl⟩
    entry_memeq

/-- `n >= i + k` -/
def geI (k : Nat) : ExpHOL 64 := .cmp .notLower (lv (nm "n")) (.op .add [lv (nm "i"), cw k])

/-- `if X != Y { return 0; }` -/
def neRet (x y : ExpHOL 64) : ProgHOL 64 := .ite (.cmp .notEqual x y) (.return (cw 0)) .skip

def ldw (x : ExpHOL 64) : ExpHOL 64 := .load .one x
def addI (x : MlS) : ExpHOL 64 := .op .add [lv x, lv (nm "i")]

/-- Every rest after a first comparison keeps `b` and `n`. -/
def keepsBN (p : ProgHOL 64) : Bool := keepsB (nm "b") p && keepsB (nm "n") p

/-- The skeleton of `memeq`: each fast path and each loop body starts with a comparison
that reads `b` (at offset `i` in the loops), followed by code that keeps `b` and `n`. -/
theorem memeq_shape : ∃ R20 R32 R52 RW32 RW8 RU8 RU1 : ProgHOL 64,
    (keepsBN R20 && keepsBN R32 && keepsBN R52 && keepsBN RW32 && keepsBN RW8 && keepsBN RU8 &&
      keepsBN RU1) = true ∧
    memeqBody =
    .dec (nm "i") .one (cw 0)
      (.seq (.ite (.cmp .equal (.op .and [.op .or [lv (nm "a"), lv (nm "b")], cw 7]) (cw 0))
          (.seq (.ite (.cmp .equal (lv (nm "n")) (cw 20))
              (.seq (neRet (ldw (lv (nm "a"))) (ldw (lv (nm "b")))) R20) .skip)
            (.seq (.ite (.cmp .equal (lv (nm "n")) (cw 32))
                (.seq (neRet (ldw (lv (nm "a"))) (ldw (lv (nm "b")))) R32) .skip)
              (.seq (.ite (.cmp .equal (lv (nm "n")) (cw 52))
                  (.seq (neRet (ldw (lv (nm "a"))) (ldw (lv (nm "b")))) R52) .skip)
                (.seq (.while (geI 32) (.seq (neRet (ldw (addI (nm "a"))) (ldw (addI (nm "b")))) RW32))
                  (.while (geI 8) (.seq (neRet (ldw (addI (nm "a"))) (ldw (addI (nm "b")))) RW8))))))
          .skip)
        (.seq (.while (geI 8) (.seq (neRet (.loadByte (addI (nm "a"))) (.loadByte (addI (nm "b")))) RU8))
          (.seq (.while (.cmp .lower (lv (nm "i")) (lv (nm "n")))
              (.seq (neRet (.loadByte (addI (nm "a"))) (.loadByte (addI (nm "b")))) RU1))
            (.return (cw 1))))) := by
  refine ⟨_, _, _, _, _, _, _, ?_, rfl⟩
  decide

end InitECandidate.Solver.Spec
