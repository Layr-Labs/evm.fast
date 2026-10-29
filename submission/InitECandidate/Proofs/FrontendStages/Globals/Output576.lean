import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data576
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate556
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody576_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "written",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 0#64]),
    Flapjack.Exp.const 1#64]

def globalBody576_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "written",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 1#64]

def globalBody576_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody576_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "vz") (Flapjack.Exp.const 0#64)) globalBody576_1 globalBody576_2

def globalBody576_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cid_ok" (Flapjack.Exp.const 1#64)

def globalBody576_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cz") (Flapjack.Exp.const 0#64)) globalBody576_4 globalBody576_2

def globalBody576_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cfit")
        (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "cid"))
        (Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "benv", Flapjack.Exp.const 0#64])))]) globalBody576_4 globalBody576_2

def globalBody576_7 : Prog (BitVec 64) :=
.seq globalBody576_5 globalBody576_6

def globalBody576_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "warm_address" [Flapjack.Exp.var Flapjack.VarKind.local "rec"]

def globalBody576_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "authority" (Flapjack.Exp.var Flapjack.VarKind.local "rec")

def globalBody576_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) globalBody576_9 globalBody576_2

def globalBody576_11 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("validate_authorization_checks") ([Flapjack.Exp.var Flapjack.VarKind.local "auth", Flapjack.Exp.var Flapjack.VarKind.local "rec"]) globalBody576_10

def globalBody576_12 : Prog (BitVec 64) :=
.seq globalBody576_8 globalBody576_11

def globalBody576_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "rec") (Flapjack.Exp.const 0#64)) globalBody576_12 globalBody576_2

def globalBody576_14 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("recover_authority") ([Flapjack.Exp.var Flapjack.VarKind.local "auth"]) globalBody576_13

def globalBody576_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "auth", Flapjack.Exp.const 40#64]))
  (Flapjack.Exp.const 18446744073709551615#64)) globalBody576_14 globalBody576_2

def globalBody576_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "cid_ok") (Flapjack.Exp.const 0#64)) globalBody576_15 globalBody576_2

def globalBody576_17 : Prog (BitVec 64) :=
.seq globalBody576_7 globalBody576_16

def globalBody576_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_state_gas" [Flapjack.Exp.const 183600#64]

def globalBody576_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ex") (Flapjack.Exp.const 0#64)) globalBody576_18 globalBody576_2

def globalBody576_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_gas" [Flapjack.Exp.const 9000#64]

def globalBody576_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "written", Flapjack.Exp.var Flapjack.VarKind.local "authority",
    Flapjack.Exp.const 1#64]

def globalBody576_22 : Prog (BitVec 64) :=
.seq globalBody576_20 globalBody576_21

def globalBody576_23 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "wr") (Flapjack.Exp.const 0#64)) globalBody576_22 globalBody576_2

def globalBody576_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_code"
  [Flapjack.Exp.var Flapjack.VarKind.local "authority",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 312#64]),
    Flapjack.Exp.const 0#64]

def globalBody576_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "charge_state_gas" [Flapjack.Exp.const 35190#64]

def globalBody576_26 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "delegated_before")
        (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sf") (Flapjack.Exp.const 0#64))]) globalBody576_25 globalBody576_2

def globalBody576_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "htab_set"
  [Flapjack.Exp.var Flapjack.VarKind.local "set_for", Flapjack.Exp.var Flapjack.VarKind.local "authority",
    Flapjack.Exp.const 1#64]

def globalBody576_28 : Prog (BitVec 64) :=
.seq globalBody576_26 globalBody576_27

def globalBody576_29 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "code") (Flapjack.Exp.const 239#64)

def globalBody576_30 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 1#64)

def globalBody576_31 : Prog (BitVec 64) :=
.seq globalBody576_29 globalBody576_30

def globalBody576_32 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.const 2#64])
  (Flapjack.Exp.const 0#64)

def globalBody576_33 : Prog (BitVec 64) :=
.seq globalBody576_31 globalBody576_32

def globalBody576_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "code", Flapjack.Exp.const 3#64],
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "auth", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 20#64]

def globalBody576_35 : Prog (BitVec 64) :=
.seq globalBody576_33 globalBody576_34

def globalBody576_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "set_code"
  [Flapjack.Exp.var Flapjack.VarKind.local "authority", Flapjack.Exp.var Flapjack.VarKind.local "code",
    Flapjack.Exp.const 23#64]

def globalBody576_37 : Prog (BitVec 64) :=
.seq globalBody576_35 globalBody576_36

def globalBody576_38 : Prog (BitVec 64) :=
.decCall ("code") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 24#64]) globalBody576_37

def globalBody576_39 : Prog (BitVec 64) :=
.seq globalBody576_28 globalBody576_38

def globalBody576_40 : Prog (BitVec 64) :=
.decCall ("sf") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.var Flapjack.VarKind.local "set_for", Flapjack.Exp.var Flapjack.VarKind.local "authority"]) globalBody576_39

def globalBody576_41 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "is_null") (Flapjack.Exp.const 0#64)) globalBody576_24 globalBody576_40

def globalBody576_42 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "increment_nonce" [Flapjack.Exp.var Flapjack.VarKind.local "authority"]

def globalBody576_43 : Prog (BitVec 64) :=
.seq globalBody576_41 globalBody576_42

def globalBody576_44 : Prog (BitVec 64) :=
.decCall ("is_null") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "auth", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 312#64]),
  Flapjack.Exp.const 20#64]) globalBody576_43

def globalBody576_45 : Prog (BitVec 64) :=
.decCall ("delegated_before") (Flapjack.Shape.one) ("is_valid_delegation") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pre_code"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "pre_code")]) globalBody576_44

def globalBody576_46 : Prog (BitVec 64) :=
.decCall ("pre_code") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("get_code") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pre", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "authority"]) globalBody576_45

def globalBody576_47 : Prog (BitVec 64) :=
.decCall ("pre") (Flapjack.Shape.one) ("get_pre_state_account") ([Flapjack.Exp.var Flapjack.VarKind.local "authority"]) globalBody576_46

def globalBody576_48 : Prog (BitVec 64) :=
.seq globalBody576_23 globalBody576_47

def globalBody576_49 : Prog (BitVec 64) :=
.decCall ("wr") (Flapjack.Shape.one) ("htab_has") ([Flapjack.Exp.var Flapjack.VarKind.local "written", Flapjack.Exp.var Flapjack.VarKind.local "authority"]) globalBody576_48

def globalBody576_50 : Prog (BitVec 64) :=
.seq globalBody576_19 globalBody576_49

def globalBody576_51 : Prog (BitVec 64) :=
.decCall ("ex") (Flapjack.Shape.one) ("account_exists") ([Flapjack.Exp.var Flapjack.VarKind.local "authority"]) globalBody576_50

def globalBody576_52 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "authority") (Flapjack.Exp.const 0#64)) globalBody576_51 globalBody576_2

def globalBody576_53 : Prog (BitVec 64) :=
.seq globalBody576_17 globalBody576_52

def globalBody576_54 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody576_55 : Prog (BitVec 64) :=
.seq globalBody576_53 globalBody576_54

def globalBody576_56 : Prog (BitVec 64) :=
.dec ("cid_ok") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody576_55

def globalBody576_57 : Prog (BitVec 64) :=
.decCall ("cfit") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "cid"]) globalBody576_56

def globalBody576_58 : Prog (BitVec 64) :=
.decCall ("cz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "cid"]) globalBody576_57

def globalBody576_59 : Prog (BitVec 64) :=
.dec ("cid") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "auth", Flapjack.Exp.const 0#64])) globalBody576_58

def globalBody576_60 : Prog (BitVec 64) :=
.dec ("authority") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody576_59

def globalBody576_61 : Prog (BitVec 64) :=
.dec ("auth") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "auths",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 120#64]]) globalBody576_60

def globalBody576_62 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "n")) globalBody576_61

def globalBody576_63 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody576_64 : Prog (BitVec 64) :=
.seq globalBody576_62 globalBody576_63

def globalBody576_65 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody576_64

def globalBody576_66 : Prog (BitVec 64) :=
.dec ("n") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 152#64])) globalBody576_65

def globalBody576_67 : Prog (BitVec 64) :=
.dec ("auths") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 144#64])) globalBody576_66

def globalBody576_68 : Prog (BitVec 64) :=
.decCall ("set_for") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 8#64]) globalBody576_67

def globalBody576_69 : Prog (BitVec 64) :=
.seq globalBody576_3 globalBody576_68

def globalBody576_70 : Prog (BitVec 64) :=
.decCall ("vz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "te", Flapjack.Exp.const 16#64])]) globalBody576_69

def globalBody576_71 : Prog (BitVec 64) :=
.seq globalBody576_0 globalBody576_70

def globalBody576_72 : Prog (BitVec 64) :=
.decCall ("written") (Flapjack.Shape.one) ("htab_new") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 8#64]) globalBody576_71

def globalBody576_73 : Prog (BitVec 64) :=
.dec ("benv") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 0#64])) globalBody576_72

def globalBody576_74 : Prog (BitVec 64) :=
.dec ("te") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 8#64])) globalBody576_73

def globalBody576_75 : Prog (BitVec 64) :=
.dec ("msg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 256#64]),
      Flapjack.Exp.const 112#64])) globalBody576_74

def globalData576 : Decl (BitVec 64) :=
.function { name := "set_delegation", inline := false, exported := false, params := [], body := globalBody576_75, returnShape := (Flapjack.Shape.one) }
def globalOutput576 := Pancake.PanLang.declToHOL globalData576
end InitECandidate.Proofs.FrontendStages.Declarations
