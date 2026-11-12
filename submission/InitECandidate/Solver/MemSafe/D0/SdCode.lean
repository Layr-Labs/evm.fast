import InitECandidate.Solver.MemSafe.D0.Code
import InitECandidate.Solver.MemSafe.D0.PdCode

/-!
# `set_delegation`: the body as named pieces (`sdBody = sdBodyX`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.D0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Frames

/-- The `is_null == 0` branch: record `set_for`, build the delegation code, `set_code`. -/
def sdSet : ProgHOL 64 :=
  .decCall (nm "sf") .one (nm "htab_has") [lv (nm "set_for"), lv (nm "authority")]
    (.seq (.ite (.op .and [.cmp .notEqual (cw 0) (.cmp .equal (lv (nm "delegated_before")) (cw 0)),
          .cmp .notEqual (cw 0) (.cmp .equal (lv (nm "sf")) (cw 0))])
        (callD (nm "charge_state_gas") [cw 35190]) .skip)
      (.seq (callD (nm "htab_set") [lv (nm "set_for"), lv (nm "authority"), cw 1])
        (.decCall (nm "code") .one (nm "alloc") [cw 24]
          (.seq (.storeByte (lv (nm "code")) (cw 239))
            (.seq (.storeByte (.op .add [lv (nm "code"), cw 1]) (cw 1))
              (.seq (.storeByte (.op .add [lv (nm "code"), cw 2]) (cw 0))
                (.seq (callD (nm "memcpy") [.op .add [lv (nm "code"), cw 3], lLoad "auth" 32, cw 20])
                  (callD (nm "set_code") [lv (nm "authority"), lv (nm "code"), cw 23]))))))))

/-- The body for a valid authority. -/
def sdAuth : ProgHOL 64 :=
  .decCall (nm "ex") .one (nm "account_exists") [lv (nm "authority")]
    (.seq (.ite (.cmp .equal (lv (nm "ex")) (cw 0)) (callD (nm "charge_state_gas") [cw 183600]) .skip)
      (.decCall (nm "wr") .one (nm "htab_has") [lv (nm "written"), lv (nm "authority")]
        (.seq (.ite (.cmp .equal (lv (nm "wr")) (cw 0))
            (.seq (callD (nm "charge_gas") [cw 9000])
              (callD (nm "htab_set") [lv (nm "written"), lv (nm "authority"), cw 1])) .skip)
          (.decCall (nm "pre") .one (nm "get_pre_state_account") [lv (nm "authority")]
            (.decCall (nm "pre_code") (.comb [.one, .one]) (nm "get_code")
              [lLoad "pre" 48, lv (nm "authority")]
              (.decCall (nm "delegated_before") .one (nm "is_valid_delegation")
                [.rfield 0 (lv (nm "pre_code")), .rfield 1 (lv (nm "pre_code"))]
                (.decCall (nm "is_null") .one (nm "memeq")
                  [lLoad "auth" 32, .var .global (nm "null_address"), cw 20]
                  (.seq (.ite (.cmp .notEqual (lv (nm "is_null")) (cw 0))
                      (callD (nm "set_code") [lv (nm "authority"), .var .global (nm "null_address"), cw 0])
                      sdSet)
                    (callD (nm "increment_nonce") [lv (nm "authority")])))))))))

/-- The authorization check (chain id, nonce, signature). -/
def sdValid : ProgHOL 64 :=
  .ite (.cmp .lower (lLoad "auth" 40) (.const 18446744073709551615#64))
    (.decCall (nm "rec") .one (nm "recover_authority") [lv (nm "auth")]
      (.ite (.cmp .notEqual (lv (nm "rec")) (cw 0))
        (.seq (callD (nm "warm_address") [lv (nm "rec")])
          (.decCall (nm "ok") .one (nm "validate_authorization_checks") [lv (nm "auth"), lv (nm "rec")]
            (.ite (.cmp .notEqual (lv (nm "ok")) (cw 0))
              (.assign .local (nm "authority") (lv (nm "rec"))) .skip)))
        .skip))
    .skip

/-- One loop iteration. -/
def sdIter : ProgHOL 64 :=
  .dec (nm "auth") .one (.op .add [lv (nm "auths"), .panop .mul [lv (nm "i"), cw 120]])
    (.dec (nm "authority") .one (cw 0)
      (.dec (nm "cid") (.comb [.one, .one, .one, .one])
        (.load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "auth"), cw 0]))
        (.decCall (nm "cz") .one (nm "u256_is_zero") [lv (nm "cid")]
          (.decCall (nm "cfit") .one (nm "u256_fits_word") [lv (nm "cid")]
            (.dec (nm "cid_ok") .one (cw 0)
              (.seq (.ite (.cmp .notEqual (lv (nm "cz")) (cw 0))
                  (.assign .local (nm "cid_ok") (cw 1)) .skip)
                (.seq (.ite (.op .and [.cmp .notEqual (cw 0) (.cmp .notEqual (lv (nm "cfit")) (cw 0)),
                      .cmp .notEqual (cw 0)
                        (.cmp .equal (.rfield 0 (lv (nm "cid"))) (lLoad "benv" 0))])
                    (.assign .local (nm "cid_ok") (cw 1)) .skip)
                  (.seq (.ite (.cmp .notEqual (lv (nm "cid_ok")) (cw 0)) sdValid .skip)
                    (.seq (.ite (.cmp .notEqual (lv (nm "authority")) (cw 0)) sdAuth .skip)
                      (.assign .local (nm "i") (.op .add [lv (nm "i"), cw 1])))))))))))

/-- The loop and the final `return 0`. -/
def sdLoop : ProgHOL 64 :=
  .seq (.while (.cmp .less (lv (nm "i")) (lv (nm "n"))) sdIter) (.return (cw 0))

def sdBodyX : ProgHOL 64 :=
  .dec (nm "msg") .one (gLoad "ev" 112)
    (.dec (nm "te") .one (lLoad "msg" 8)
      (.dec (nm "benv") .one (lLoad "msg" 0)
        (.decCall (nm "written") .one (nm "htab_new") [cw 20, cw 8]
          (.seq (callD (nm "htab_set") [lv (nm "written"), lLoad "te" 0, cw 1])
            (.decCall (nm "vz") .one (nm "u256_is_zero")
              [.load (.comb [.one, .one, .one, .one]) (.op .add [lv (nm "te"), cw 16])]
              (.seq (.ite (.cmp .equal (lv (nm "vz")) (cw 0))
                  (callD (nm "htab_set") [lv (nm "written"), lLoad "msg" 32, cw 1]) .skip)
                (.decCall (nm "set_for") .one (nm "htab_new") [cw 20, cw 8]
                  (.dec (nm "auths") .one (lLoad "te" 144)
                    (.dec (nm "n") .one (lLoad "te" 152)
                      (.dec (nm "i") .one (cw 0) sdLoop))))))))))

theorem sdBody_eq : sdBody = sdBodyX := by
  conv => lhs; unfold sdBody; cbv
  conv => rhs; unfold sdBodyX sdLoop sdIter sdValid sdAuth sdSet; cbv

end InitECandidate.Solver.MemSafe.D0

#print axioms InitECandidate.Solver.MemSafe.D0.sdBody_eq
