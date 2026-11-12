import InitECandidate.Solver.MemSafe.Struct.StackCode

/-!
# The memory-cost helpers: certified code

`u256_is_zero`, `sat_word`, `add_sat`, `ceil32`, `words_of`, `mul64x64`, `memory_gas_cost`,
`extend_memory_cost1` (`guest/src/evm.pnk`, `guest/src/lib/u256.pnk`), each certified to be the
code-map entry by `cbv` against the per-function `guestFn_*` AST.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Struct
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- `0xffff_ffff_ffff_ffff` -/
def cMax : ExpHOL 64 := cw 18446744073709551615

def rf (i : Nat) (x : String) : ExpHOL 64 := .rfield i (lv (nm x))

def isZeroBody : ProgHOL 64 :=
  .seq (.ite (.cmp .equal (.op .or [rf 0 "a", rf 1 "a", rf 2 "a", rf 3 "a"]) (cw 0)) (.return (cw 1))
      .skip) (.return (cw 0))

def satWordBody : ProgHOL 64 :=
  .seq (.ite (.cmp .notEqual (.op .or [rf 1 "v", rf 2 "v", rf 3 "v"]) (cw 0)) (.return cMax) .skip)
    (.return (rf 0 "v"))

def addSatBody : ProgHOL 64 :=
  .dec (nm "s") .one (.op .add [lv (nm "a"), lv (nm "b")])
    (.seq (.ite (.cmp .lower (lv (nm "s")) (lv (nm "a"))) (.return cMax) .skip) (.return (lv (nm "s"))))

def ceil32Body : ProgHOL 64 :=
  .dec (nm "r") .one (.op .and [lv (nm "v"), cw 31])
    (.seq (.ite (.cmp .equal (lv (nm "r")) (cw 0)) (.return (lv (nm "v"))) .skip)
      (.decCall (nm "s") .one (nm "add_sat") [lv (nm "v"), .op .sub [cw 32, lv (nm "r")]]
        (.return (lv (nm "s")))))

def wordsOfBody : ProgHOL 64 :=
  .decCall (nm "c") .one (nm "ceil32") [lv (nm "n")] (.return (.shift .lsr (lv (nm "c")) (cw 5)))

def mul64Body : ProgHOL 64 :=
  .dec (nm "a0") .one (.op .and [lv (nm "a"), cw 4294967295])
    (.dec (nm "a1") .one (.shift .lsr (lv (nm "a")) (cw 32))
      (.dec (nm "b0") .one (.op .and [lv (nm "b"), cw 4294967295])
        (.dec (nm "b1") .one (.shift .lsr (lv (nm "b")) (cw 32))
          (.dec (nm "p00") .one (.panop .mul [lv (nm "a0"), lv (nm "b0")])
            (.dec (nm "p11") .one (.panop .mul [lv (nm "a1"), lv (nm "b1")])
              (.dec (nm "mid") (shK 2) (.rstruct [cw 0, cw 0])
                (.seq (.primitive (nm "mid") .addCarry [.panop .mul [lv (nm "a0"), lv (nm "b1")],
                    .panop .mul [lv (nm "a1"), lv (nm "b0")], cw 0])
                  (.dec (nm "lo") (shK 2) (.rstruct [cw 0, cw 0])
                    (.seq (.primitive (nm "lo") .addCarry [lv (nm "p00"),
                        .shift .lsl (rf 0 "mid") (cw 32), cw 0])
                      (.dec (nm "hi") .one (.op .add [lv (nm "p11"), .shift .lsr (rf 0 "mid") (cw 32),
                          .shift .lsl (rf 1 "mid") (cw 32), rf 1 "lo"])
                        (.return (.rstruct [rf 0 "lo", lv (nm "hi")]))))))))))))

def mgcBody : ProgHOL 64 :=
  .decCall (nm "w") .one (nm "words_of") [lv (nm "size")]
    (.decCall (nm "sq") (shK 2) (nm "mul64x64") [lv (nm "w"), lv (nm "w")]
      (.seq (.ite (.cmp .notEqual (rf 1 "sq") (cw 0)) (.return cMax) .skip)
        (.decCall (nm "a") .one (nm "add_sat") [.panop .mul [lv (nm "w"), cw 3],
            .shift .lsr (rf 0 "sq") (cw 9)]
          (.return (lv (nm "a"))))))

def ret2 (a b : ExpHOL 64) : ProgHOL 64 := .return (.rstruct [a, b])

def emc1Body : ProgHOL 64 :=
  .decCall (nm "z") .one (nm "u256_is_zero") [lv (nm "size")]
    (.seq (.ite (.cmp .notEqual (lv (nm "z")) (cw 0)) (ret2 (cw 0) (cw 0)) .skip)
      (.decCall (nm "s") .one (nm "sat_word") [lv (nm "start")]
        (.decCall (nm "n") .one (nm "sat_word") [lv (nm "size")]
          (.decCall (nm "endp") .one (nm "add_sat") [lv (nm "s"), lv (nm "n")]
            (.seq (.ite (.cmp .equal (lv (nm "endp")) cMax) (ret2 cMax (cw 0)) .skip)
              (.dec (nm "cur") .one (evL 32)
                (.decCall (nm "before") .one (nm "ceil32") [lv (nm "cur")]
                  (.decCall (nm "after") .one (nm "ceil32") [lv (nm "endp")]
                    (.seq (.ite (.cmp .notLower (lv (nm "before")) (lv (nm "after")))
                        (ret2 (cw 0) (cw 0)) .skip)
                      (.decCall (nm "ca") .one (nm "memory_gas_cost") [lv (nm "after")]
                        (.decCall (nm "cb") .one (nm "memory_gas_cost") [lv (nm "before")]
                          (.seq (.ite (.cmp .equal (lv (nm "ca")) cMax) (ret2 cMax (cw 0)) .skip)
                            (ret2 (.op .sub [lv (nm "ca"), lv (nm "cb")])
                              (.op .sub [lv (nm "after"), lv (nm "before")]))))))))))))))

theorem entry_u256_is_zero : fnEntry Guest.Software.guestFn_u256_is_zero =
    (nm "u256_is_zero", [(nm "a", shK 4)], isZeroBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_u256_is_zero :
    guestCode (nm "u256_is_zero") = some ([(nm "a", shK 4)], isZeroBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 42) (by decide)) ⟨_, rfl⟩
    entry_u256_is_zero

theorem entry_sat_word : fnEntry Guest.Software.guestFn_sat_word =
    (nm "sat_word", [(nm "v", shK 4)], satWordBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_sat_word : guestCode (nm "sat_word") = some ([(nm "v", shK 4)], satWordBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 440) (by decide)) ⟨_, rfl⟩
    entry_sat_word

theorem entry_add_sat : fnEntry Guest.Software.guestFn_add_sat =
    (nm "add_sat", [(nm "a", .one), (nm "b", .one)], addSatBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_add_sat :
    guestCode (nm "add_sat") = some ([(nm "a", .one), (nm "b", .one)], addSatBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 441) (by decide)) ⟨_, rfl⟩
    entry_add_sat

theorem entry_ceil32 : fnEntry Guest.Software.guestFn_ceil32 =
    (nm "ceil32", [(nm "v", .one)], ceil32Body, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_ceil32 : guestCode (nm "ceil32") = some ([(nm "v", .one)], ceil32Body, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 442) (by decide)) ⟨_, rfl⟩
    entry_ceil32

theorem entry_words_of : fnEntry Guest.Software.guestFn_words_of =
    (nm "words_of", [(nm "n", .one)], wordsOfBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_words_of : guestCode (nm "words_of") = some ([(nm "n", .one)], wordsOfBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 443) (by decide)) ⟨_, rfl⟩
    entry_words_of

theorem entry_mul64x64 : fnEntry Guest.Software.guestFn_mul64x64 =
    (nm "mul64x64", [(nm "a", .one), (nm "b", .one)], mul64Body, shK 2) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_mul64x64 :
    guestCode (nm "mul64x64") = some ([(nm "a", .one), (nm "b", .one)], mul64Body, shK 2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 59) (by decide)) ⟨_, rfl⟩
    entry_mul64x64

theorem entry_memory_gas_cost : fnEntry Guest.Software.guestFn_memory_gas_cost =
    (nm "memory_gas_cost", [(nm "size", .one)], mgcBody, .one) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_memory_gas_cost :
    guestCode (nm "memory_gas_cost") = some ([(nm "size", .one)], mgcBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 457) (by decide)) ⟨_, rfl⟩
    entry_memory_gas_cost

theorem entry_extend_memory_cost1 : fnEntry Guest.Software.guestFn_extend_memory_cost1 =
    (nm "extend_memory_cost1", [(nm "start", shK 4), (nm "size", shK 4)], emc1Body, shK 2) := by
  conv => lhs; cbv
  conv => rhs; cbv
  all_goals rfl

theorem code_extend_memory_cost1 : guestCode (nm "extend_memory_cost1") =
    some ([(nm "start", shK 4), (nm "size", shK 4)], emc1Body, shK 2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 458) (by decide)) ⟨_, rfl⟩
    entry_extend_memory_cost1

end InitECandidate.Solver.MemSafe.Struct
