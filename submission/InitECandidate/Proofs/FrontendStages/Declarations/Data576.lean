import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify560
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body576_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "written",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 0#64]),
    Flapjack.Exp.const 1#64]

def body576_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "written",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 1#64]

def body576_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body576_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "vz") (Flapjack.Exp.const 0#64)) body576_1 body576_2

def body576_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cid_ok" (Flapjack.Exp.const 1#64)

def body576_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cz") (Flapjack.Exp.const 0#64)) body576_4 body576_2

def body576_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cfit")
        (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "cid"))
        (Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 0#64])))]) body576_4 body576_2

def body576_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_address" [Flapjack.Exp.var Flapjack.VarKind.local "rec"]

def body576_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "authority" (Flapjack.Exp.var Flapjack.VarKind.local "rec")

def body576_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body576_8 body576_2

def body576_10 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("validate_authorization_checks") ([Flapjack.Exp.var Flapjack.VarKind.local "auth", Flapjack.Exp.var Flapjack.VarKind.local "rec"]) body576_9

def body576_11 : Prog (BitVec 64) :=
.seq body576_7 body576_10

def body576_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "rec") (Flapjack.Exp.const 0#64)) body576_11 body576_2

def body576_13 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("recover_authority") ([Flapjack.Exp.var Flapjack.VarKind.local "auth"]) body576_12

def body576_14 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "auth", Flapjack.Exp.const 40#64]))
  (Flapjack.Exp.const 18446744073709551615#64)) body576_13 body576_2

def body576_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cid_ok") (Flapjack.Exp.const 0#64)) body576_14 body576_2

def body576_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_state_gas" [Flapjack.Exp.const 183600#64]

def body576_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ex") (Flapjack.Exp.const 0#64)) body576_16 body576_2

def body576_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 9000#64]

def body576_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "written", Flapjack.Exp.var Flapjack.VarKind.local "authority",
    Flapjack.Exp.const 1#64]

def body576_20 : Prog (BitVec 64) :=
.seq body576_18 body576_19

def body576_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "wr") (Flapjack.Exp.const 0#64)) body576_20 body576_2

def body576_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_code"
  [Flapjack.Exp.var Flapjack.VarKind.local "authority", Flapjack.Exp.var Flapjack.VarKind.global "null_address",
    Flapjack.Exp.const 0#64]

def body576_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_state_gas" [Flapjack.Exp.const 35190#64]

def body576_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "delegated_before")
        (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sf") (Flapjack.Exp.const 0#64))]) body576_23 body576_2

def body576_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "set_for", Flapjack.Exp.var Flapjack.VarKind.local "authority",
    Flapjack.Exp.const 1#64]

def body576_26 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "code") (Flapjack.Exp.const 239#64)

def body576_27 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)

def body576_28 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.const 2#64])
  (Flapjack.Exp.const 0#64)

def body576_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.const 3#64],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "auth", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 20#64]

def body576_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_code"
  [Flapjack.Exp.var Flapjack.VarKind.local "authority", Flapjack.Exp.var Flapjack.VarKind.local "code",
    Flapjack.Exp.const 23#64]

def body576_31 : Prog (BitVec 64) :=
.seq body576_29 body576_30

def body576_32 : Prog (BitVec 64) :=
.seq body576_28 body576_31

def body576_33 : Prog (BitVec 64) :=
.seq body576_27 body576_32

def body576_34 : Prog (BitVec 64) :=
.seq body576_26 body576_33

def body576_35 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body576_34

def body576_36 : Prog (BitVec 64) :=
.seq body576_25 body576_35

def body576_37 : Prog (BitVec 64) :=
.seq body576_24 body576_36

def body576_38 : Prog (BitVec 64) :=
.decCall ("sf") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.var Flapjack.VarKind.local "set_for", Flapjack.Exp.var Flapjack.VarKind.local "authority"]) body576_37

def body576_39 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "is_null") (Flapjack.Exp.const 0#64)) body576_22 body576_38

def body576_40 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "increment_nonce" [Flapjack.Exp.var Flapjack.VarKind.local "authority"]

def body576_41 : Prog (BitVec 64) :=
.seq body576_39 body576_40

def body576_42 : Prog (BitVec 64) :=
.decCall ("is_null") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "auth", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.var Flapjack.VarKind.global "null_address", Flapjack.Exp.const 20#64]) body576_41

def body576_43 : Prog (BitVec 64) :=
.decCall ("delegated_before") (Flapjack.Shape.one) ("is_valid_delegation") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pre_code"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "pre_code")]) body576_42

def body576_44 : Prog (BitVec 64) :=
.decCall ("pre_code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("get_code") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pre", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "authority"]) body576_43

def body576_45 : Prog (BitVec 64) :=
.decCall ("pre") (Flapjack.Shape.one) ("get_pre_state_account") ([Flapjack.Exp.var Flapjack.VarKind.local "authority"]) body576_44

def body576_46 : Prog (BitVec 64) :=
.seq body576_21 body576_45

def body576_47 : Prog (BitVec 64) :=
.decCall ("wr") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.var Flapjack.VarKind.local "written", Flapjack.Exp.var Flapjack.VarKind.local "authority"]) body576_46

def body576_48 : Prog (BitVec 64) :=
.seq body576_17 body576_47

def body576_49 : Prog (BitVec 64) :=
.decCall ("ex") (Flapjack.Shape.one) ("account_exists") ([Flapjack.Exp.var Flapjack.VarKind.local "authority"]) body576_48

def body576_50 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "authority") (Flapjack.Exp.const 0#64)) body576_49 body576_2

def body576_51 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body576_52 : Prog (BitVec 64) :=
.seq body576_50 body576_51

def body576_53 : Prog (BitVec 64) :=
.seq body576_15 body576_52

def body576_54 : Prog (BitVec 64) :=
.seq body576_6 body576_53

def body576_55 : Prog (BitVec 64) :=
.seq body576_5 body576_54

def body576_56 : Prog (BitVec 64) :=
.dec ("cid_ok") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body576_55

def body576_57 : Prog (BitVec 64) :=
.decCall ("cfit") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "cid"]) body576_56

def body576_58 : Prog (BitVec 64) :=
.decCall ("cz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "cid"]) body576_57

def body576_59 : Prog (BitVec 64) :=
.dec ("cid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "auth", Flapjack.Exp.const 0#64])) body576_58

def body576_60 : Prog (BitVec 64) :=
.dec ("authority") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body576_59

def body576_61 : Prog (BitVec 64) :=
.dec ("auth") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "auths",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 120#64]]) body576_60

def body576_62 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body576_61

def body576_63 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body576_64 : Prog (BitVec 64) :=
.seq body576_62 body576_63

def body576_65 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body576_64

def body576_66 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 152#64])) body576_65

def body576_67 : Prog (BitVec 64) :=
.dec ("auths") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 144#64])) body576_66

def body576_68 : Prog (BitVec 64) :=
.decCall ("set_for") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 8#64]) body576_67

def body576_69 : Prog (BitVec 64) :=
.seq body576_3 body576_68

def body576_70 : Prog (BitVec 64) :=
.decCall ("vz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 16#64])]) body576_69

def body576_71 : Prog (BitVec 64) :=
.seq body576_0 body576_70

def body576_72 : Prog (BitVec 64) :=
.decCall ("written") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 8#64]) body576_71

def body576_73 : Prog (BitVec 64) :=
.dec ("benv") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 0#64])) body576_72

def body576_74 : Prog (BitVec 64) :=
.dec ("te") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 8#64])) body576_73

def body576_75 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body576_74

def body576_76 : Prog (BitVec 64) :=
.seq body576_5 body576_6

def body576_77 : Prog (BitVec 64) :=
.seq body576_76 body576_15

def body576_78 : Prog (BitVec 64) :=
.seq body576_24 body576_25

def body576_79 : Prog (BitVec 64) :=
.seq body576_26 body576_27

def body576_80 : Prog (BitVec 64) :=
.seq body576_79 body576_28

def body576_81 : Prog (BitVec 64) :=
.seq body576_80 body576_29

def body576_82 : Prog (BitVec 64) :=
.seq body576_81 body576_30

def body576_83 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) body576_82

def body576_84 : Prog (BitVec 64) :=
.seq body576_78 body576_83

def body576_85 : Prog (BitVec 64) :=
.decCall ("sf") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.var Flapjack.VarKind.local "set_for", Flapjack.Exp.var Flapjack.VarKind.local "authority"]) body576_84

def body576_86 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "is_null") (Flapjack.Exp.const 0#64)) body576_22 body576_85

def body576_87 : Prog (BitVec 64) :=
.seq body576_86 body576_40

def body576_88 : Prog (BitVec 64) :=
.decCall ("is_null") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "auth", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.var Flapjack.VarKind.global "null_address", Flapjack.Exp.const 20#64]) body576_87

def body576_89 : Prog (BitVec 64) :=
.decCall ("delegated_before") (Flapjack.Shape.one) ("is_valid_delegation") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pre_code"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "pre_code")]) body576_88

def body576_90 : Prog (BitVec 64) :=
.decCall ("pre_code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("get_code") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pre", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "authority"]) body576_89

def body576_91 : Prog (BitVec 64) :=
.decCall ("pre") (Flapjack.Shape.one) ("get_pre_state_account") ([Flapjack.Exp.var Flapjack.VarKind.local "authority"]) body576_90

def body576_92 : Prog (BitVec 64) :=
.seq body576_21 body576_91

def body576_93 : Prog (BitVec 64) :=
.decCall ("wr") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.var Flapjack.VarKind.local "written", Flapjack.Exp.var Flapjack.VarKind.local "authority"]) body576_92

def body576_94 : Prog (BitVec 64) :=
.seq body576_17 body576_93

def body576_95 : Prog (BitVec 64) :=
.decCall ("ex") (Flapjack.Shape.one) ("account_exists") ([Flapjack.Exp.var Flapjack.VarKind.local "authority"]) body576_94

def body576_96 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "authority") (Flapjack.Exp.const 0#64)) body576_95 body576_2

def body576_97 : Prog (BitVec 64) :=
.seq body576_77 body576_96

def body576_98 : Prog (BitVec 64) :=
.seq body576_97 body576_51

def body576_99 : Prog (BitVec 64) :=
.dec ("cid_ok") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body576_98

def body576_100 : Prog (BitVec 64) :=
.decCall ("cfit") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "cid"]) body576_99

def body576_101 : Prog (BitVec 64) :=
.decCall ("cz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "cid"]) body576_100

def body576_102 : Prog (BitVec 64) :=
.dec ("cid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "auth", Flapjack.Exp.const 0#64])) body576_101

def body576_103 : Prog (BitVec 64) :=
.dec ("authority") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body576_102

def body576_104 : Prog (BitVec 64) :=
.dec ("auth") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "auths",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 120#64]]) body576_103

def body576_105 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) body576_104

def body576_106 : Prog (BitVec 64) :=
.seq body576_105 body576_63

def body576_107 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body576_106

def body576_108 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 152#64])) body576_107

def body576_109 : Prog (BitVec 64) :=
.dec ("auths") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 144#64])) body576_108

def body576_110 : Prog (BitVec 64) :=
.decCall ("set_for") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 8#64]) body576_109

def body576_111 : Prog (BitVec 64) :=
.seq body576_3 body576_110

def body576_112 : Prog (BitVec 64) :=
.decCall ("vz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 16#64])]) body576_111

def body576_113 : Prog (BitVec 64) :=
.seq body576_0 body576_112

def body576_114 : Prog (BitVec 64) :=
.decCall ("written") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 8#64]) body576_113

def body576_115 : Prog (BitVec 64) :=
.dec ("benv") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 0#64])) body576_114

def body576_116 : Prog (BitVec 64) :=
.dec ("te") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 8#64])) body576_115

def body576_117 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 112#64])) body576_116

def originalData576 : Decl (BitVec 64) :=
.function { name := "set_delegation", inline := false, exported := false, params := [], body := body576_75, returnShape := (Flapjack.Shape.one) }
def simplifiedData576 : Decl (BitVec 64) :=
.function { name := "set_delegation", inline := false, exported := false, params := [], body := body576_117, returnShape := (Flapjack.Shape.one) }
def original576 := Pancake.PanLang.declToHOL originalData576
def simplified576 := Pancake.PanLang.declToHOL simplifiedData576
end InitECandidate.Proofs.FrontendStages.Declarations
