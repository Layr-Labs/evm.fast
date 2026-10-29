import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify895
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body911_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 80#64)

def body911_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body911_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "regular_avail")
  (Flapjack.Exp.var Flapjack.VarKind.local "capped")) body911_0 body911_1

def body911_3 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 81#64)

def body911_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "state_avail")
  (Flapjack.Exp.var Flapjack.VarKind.local "gas")) body911_3 body911_1

def body911_5 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 82#64)

def body911_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "blob_avail")
  (Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas")) body911_5 body911_1

def body911_7 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 83#64)

def body911_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 0#64)) body911_7 body911_1

def body911_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "price" (Flapjack.Exp.var Flapjack.VarKind.local "gp")

def body911_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "max_fee_per_gas" (Flapjack.Exp.var Flapjack.VarKind.local "gp")

def body911_11 : Prog (BitVec 64) :=
.seq body911_9 body911_10

def body911_12 : Prog (BitVec 64) :=
.seq body911_8 body911_11

def body911_13 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "gp", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) body911_12

def body911_14 : Prog (BitVec 64) :=
.dec ("gp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 48#64])) body911_13

def body911_15 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 84#64)

def body911_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt1") (Flapjack.Exp.const 0#64)) body911_15 body911_1

def body911_17 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 85#64)

def body911_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt2") (Flapjack.Exp.const 0#64)) body911_17 body911_1

def body911_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "prio" (Flapjack.Exp.var Flapjack.VarKind.local "mp")

def body911_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt3") (Flapjack.Exp.const 0#64)) body911_19 body911_1

def body911_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "price"), none)) "u256_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "prio", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]

def body911_22 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "max_fee_per_gas" (Flapjack.Exp.var Flapjack.VarKind.local "mf")

def body911_23 : Prog (BitVec 64) :=
.seq body911_21 body911_22

def body911_24 : Prog (BitVec 64) :=
.seq body911_20 body911_23

def body911_25 : Prog (BitVec 64) :=
.dec ("prio") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.var Flapjack.VarKind.local "diff") body911_24

def body911_26 : Prog (BitVec 64) :=
.decCall ("lt3") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mp", Flapjack.Exp.var Flapjack.VarKind.local "diff"]) body911_25

def body911_27 : Prog (BitVec 64) :=
.decCall ("diff") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) body911_26

def body911_28 : Prog (BitVec 64) :=
.seq body911_18 body911_27

def body911_29 : Prog (BitVec 64) :=
.decCall ("lt2") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) body911_28

def body911_30 : Prog (BitVec 64) :=
.seq body911_16 body911_29

def body911_31 : Prog (BitVec 64) :=
.decCall ("lt1") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "mp"]) body911_30

def body911_32 : Prog (BitVec 64) :=
.dec ("mp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 80#64])) body911_31

def body911_33 : Prog (BitVec 64) :=
.dec ("mf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 112#64])) body911_32

def body911_34 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 1#64)])) body911_14 body911_33

def body911_35 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 86#64)

def body911_36 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "nb") (Flapjack.Exp.const 0#64)) body911_35 body911_1

def body911_37 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 87#64)

def body911_38 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 6#64) (Flapjack.Exp.var Flapjack.VarKind.local "nb")) body911_37 body911_1

def body911_39 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 88#64)

def body911_40 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 256#64]),
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 32#64]]))
  (Flapjack.Exp.const 1#64)) body911_39 body911_1

def body911_41 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body911_42 : Prog (BitVec 64) :=
.seq body911_40 body911_41

def body911_43 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "nb")) body911_42

def body911_44 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 89#64)

def body911_45 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt4") (Flapjack.Exp.const 0#64)) body911_44 body911_1

def body911_46 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ovf" (Flapjack.Exp.const 1#64)

def body911_47 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "bf"))
  (Flapjack.Exp.const 0#64)) body911_46 body911_1

def body911_48 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "sum"))
  (Flapjack.Exp.const 0#64)) body911_46 body911_1

def body911_49 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "max_gas_fee"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sum"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sum"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "sum"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "sum")])

def body911_50 : Prog (BitVec 64) :=
.seq body911_48 body911_49

def body911_51 : Prog (BitVec 64) :=
.decCall ("sum") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "max_gas_fee",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bf"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "bf"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "bf"),
      Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "bf")]]) body911_50

def body911_52 : Prog (BitVec 64) :=
.seq body911_47 body911_51

def body911_53 : Prog (BitVec 64) :=
.decCall ("bf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas", Flapjack.Exp.var Flapjack.VarKind.local "mfb"]) body911_52

def body911_54 : Prog (BitVec 64) :=
.seq body911_45 body911_53

def body911_55 : Prog (BitVec 64) :=
.decCall ("lt4") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mfb", Flapjack.Exp.var Flapjack.VarKind.local "bgp"]) body911_54

def body911_56 : Prog (BitVec 64) :=
.dec ("mfb") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 224#64])) body911_55

def body911_57 : Prog (BitVec 64) :=
.decCall ("bgp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_blob_gas_price") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 96#64])]) body911_56

def body911_58 : Prog (BitVec 64) :=
.seq body911_43 body911_57

def body911_59 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body911_58

def body911_60 : Prog (BitVec 64) :=
.seq body911_38 body911_59

def body911_61 : Prog (BitVec 64) :=
.seq body911_36 body911_60

def body911_62 : Prog (BitVec 64) :=
.dec ("nb") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64])) body911_61

def body911_63 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 3#64)) body911_62 body911_1

def body911_64 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 90#64)

def body911_65 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 280#64]))
  (Flapjack.Exp.const 0#64)) body911_64 body911_1

def body911_66 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 4#64)) body911_65 body911_1

def body911_67 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 92#64)

def body911_68 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "fits") (Flapjack.Exp.const 0#64)) body911_67 body911_1

def body911_69 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 91#64)

def body911_70 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "tn"))
  (Flapjack.Exp.var Flapjack.VarKind.local "an")) body911_69 body911_1

def body911_71 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "an")
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "tn"))) body911_67 body911_1

def body911_72 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 93#64)

def body911_73 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "ovf") (Flapjack.Exp.const 0#64)) body911_72 body911_1

def body911_74 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "need"))
  (Flapjack.Exp.const 0#64)) body911_72 body911_1

def body911_75 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt5") (Flapjack.Exp.const 0#64)) body911_72 body911_1

def body911_76 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 94#64)

def body911_77 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "vd") (Flapjack.Exp.const 0#64)) body911_76 body911_1

def body911_78 : Prog (BitVec 64) :=
.decCall ("vd") (Flapjack.Shape.one) ("is_valid_delegation") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "scode"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "scode")]) body911_77

def body911_79 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "che") (Flapjack.Exp.const 0#64)) body911_78 body911_1

def body911_80 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "price")

def body911_81 : Prog (BitVec 64) :=
.seq body911_79 body911_80

def body911_82 : Prog (BitVec 64) :=
.decCall ("che") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.global "empty_code_hash", Flapjack.Exp.const 32#64]) body911_81

def body911_83 : Prog (BitVec 64) :=
.decCall ("scode") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("get_code") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body911_82

def body911_84 : Prog (BitVec 64) :=
.seq body911_75 body911_83

def body911_85 : Prog (BitVec 64) :=
.decCall ("lt5") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "need"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "need"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "need"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "need")]]) body911_84

def body911_86 : Prog (BitVec 64) :=
.seq body911_74 body911_85

def body911_87 : Prog (BitVec 64) :=
.decCall ("need") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "max_gas_fee",
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64])]) body911_86

def body911_88 : Prog (BitVec 64) :=
.seq body911_73 body911_87

def body911_89 : Prog (BitVec 64) :=
.seq body911_71 body911_88

def body911_90 : Prog (BitVec 64) :=
.seq body911_70 body911_89

def body911_91 : Prog (BitVec 64) :=
.seq body911_68 body911_90

def body911_92 : Prog (BitVec 64) :=
.dec ("an") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 0#64])) body911_91

def body911_93 : Prog (BitVec 64) :=
.decCall ("fits") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "tn"]) body911_92

def body911_94 : Prog (BitVec 64) :=
.dec ("tn") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 16#64])) body911_93

def body911_95 : Prog (BitVec 64) :=
.seq body911_66 body911_94

def body911_96 : Prog (BitVec 64) :=
.seq body911_63 body911_95

def body911_97 : Prog (BitVec 64) :=
.dec ("max_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "mgf")]) body911_96

def body911_98 : Prog (BitVec 64) :=
.dec ("ovf") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "mgf")) body911_97

def body911_99 : Prog (BitVec 64) :=
.decCall ("mgf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "max_fee_per_gas"]) body911_98

def body911_100 : Prog (BitVec 64) :=
.seq body911_34 body911_99

def body911_101 : Prog (BitVec 64) :=
.dec ("ty") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64])) body911_100

def body911_102 : Prog (BitVec 64) :=
.dec ("max_fee_per_gas") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body911_101

def body911_103 : Prog (BitVec 64) :=
.dec ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body911_102

def body911_104 : Prog (BitVec 64) :=
.dec ("base_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 48#64])) body911_103

def body911_105 : Prog (BitVec 64) :=
.decCall ("acct") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body911_104

def body911_106 : Prog (BitVec 64) :=
.seq body911_6 body911_105

def body911_107 : Prog (BitVec 64) :=
.decCall ("tx_blob_gas") (Flapjack.Shape.one) ("calculate_total_blob_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body911_106

def body911_108 : Prog (BitVec 64) :=
.seq body911_4 body911_107

def body911_109 : Prog (BitVec 64) :=
.seq body911_2 body911_108

def body911_110 : Prog (BitVec 64) :=
.decCall ("capped") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.const 16777216#64, Flapjack.Exp.var Flapjack.VarKind.local "gas"]) body911_109

def body911_111 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) body911_110

def body911_112 : Prog (BitVec 64) :=
.dec ("blob_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.const 2752512#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 48#64])]) body911_111

def body911_113 : Prog (BitVec 64) :=
.dec ("state_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "block_gas_limit",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 8#64])]) body911_112

def body911_114 : Prog (BitVec 64) :=
.dec ("regular_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "block_gas_limit",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 0#64])]) body911_113

def body911_115 : Prog (BitVec 64) :=
.dec ("block_gas_limit") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 8#64])) body911_114

def body911_116 : Prog (BitVec 64) :=
.seq body911_2 body911_4

def body911_117 : Prog (BitVec 64) :=
.seq body911_8 body911_9

def body911_118 : Prog (BitVec 64) :=
.seq body911_117 body911_10

def body911_119 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "gp", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) body911_118

def body911_120 : Prog (BitVec 64) :=
.dec ("gp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 48#64])) body911_119

def body911_121 : Prog (BitVec 64) :=
.seq body911_20 body911_21

def body911_122 : Prog (BitVec 64) :=
.seq body911_121 body911_22

def body911_123 : Prog (BitVec 64) :=
.dec ("prio") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.var Flapjack.VarKind.local "diff") body911_122

def body911_124 : Prog (BitVec 64) :=
.decCall ("lt3") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mp", Flapjack.Exp.var Flapjack.VarKind.local "diff"]) body911_123

def body911_125 : Prog (BitVec 64) :=
.decCall ("diff") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) body911_124

def body911_126 : Prog (BitVec 64) :=
.seq body911_18 body911_125

def body911_127 : Prog (BitVec 64) :=
.decCall ("lt2") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) body911_126

def body911_128 : Prog (BitVec 64) :=
.seq body911_16 body911_127

def body911_129 : Prog (BitVec 64) :=
.decCall ("lt1") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "mp"]) body911_128

def body911_130 : Prog (BitVec 64) :=
.dec ("mp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 80#64])) body911_129

def body911_131 : Prog (BitVec 64) :=
.dec ("mf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 112#64])) body911_130

def body911_132 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 1#64)])) body911_120 body911_131

def body911_133 : Prog (BitVec 64) :=
.seq body911_36 body911_38

def body911_134 : Prog (BitVec 64) :=
.seq body911_133 body911_59

def body911_135 : Prog (BitVec 64) :=
.dec ("nb") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64])) body911_134

def body911_136 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 3#64)) body911_135 body911_1

def body911_137 : Prog (BitVec 64) :=
.seq body911_136 body911_66

def body911_138 : Prog (BitVec 64) :=
.seq body911_68 body911_70

def body911_139 : Prog (BitVec 64) :=
.seq body911_138 body911_71

def body911_140 : Prog (BitVec 64) :=
.seq body911_139 body911_73

def body911_141 : Prog (BitVec 64) :=
.seq body911_140 body911_87

def body911_142 : Prog (BitVec 64) :=
.dec ("an") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 0#64])) body911_141

def body911_143 : Prog (BitVec 64) :=
.decCall ("fits") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "tn"]) body911_142

def body911_144 : Prog (BitVec 64) :=
.dec ("tn") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 16#64])) body911_143

def body911_145 : Prog (BitVec 64) :=
.seq body911_137 body911_144

def body911_146 : Prog (BitVec 64) :=
.dec ("max_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "mgf")]) body911_145

def body911_147 : Prog (BitVec 64) :=
.dec ("ovf") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "mgf")) body911_146

def body911_148 : Prog (BitVec 64) :=
.decCall ("mgf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "max_fee_per_gas"]) body911_147

def body911_149 : Prog (BitVec 64) :=
.seq body911_132 body911_148

def body911_150 : Prog (BitVec 64) :=
.dec ("ty") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64])) body911_149

def body911_151 : Prog (BitVec 64) :=
.dec ("max_fee_per_gas") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body911_150

def body911_152 : Prog (BitVec 64) :=
.dec ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body911_151

def body911_153 : Prog (BitVec 64) :=
.dec ("base_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 48#64])) body911_152

def body911_154 : Prog (BitVec 64) :=
.decCall ("acct") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body911_153

def body911_155 : Prog (BitVec 64) :=
.seq body911_6 body911_154

def body911_156 : Prog (BitVec 64) :=
.decCall ("tx_blob_gas") (Flapjack.Shape.one) ("calculate_total_blob_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body911_155

def body911_157 : Prog (BitVec 64) :=
.seq body911_116 body911_156

def body911_158 : Prog (BitVec 64) :=
.decCall ("capped") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.const 16777216#64, Flapjack.Exp.var Flapjack.VarKind.local "gas"]) body911_157

def body911_159 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) body911_158

def body911_160 : Prog (BitVec 64) :=
.dec ("blob_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.const 2752512#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 48#64])]) body911_159

def body911_161 : Prog (BitVec 64) :=
.dec ("state_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "block_gas_limit",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 8#64])]) body911_160

def body911_162 : Prog (BitVec 64) :=
.dec ("regular_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "block_gas_limit",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 0#64])]) body911_161

def body911_163 : Prog (BitVec 64) :=
.dec ("block_gas_limit") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 8#64])) body911_162

def originalData911 : Decl (BitVec 64) :=
.function { name := "check_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("sender", Flapjack.Shape.one)], body := body911_115, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData911 : Decl (BitVec 64) :=
.function { name := "check_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("sender", Flapjack.Shape.one)], body := body911_163, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original911 := Pancake.PanLang.declToHOL originalData911
def simplified911 := Pancake.PanLang.declToHOL simplifiedData911
end InitECandidate.Proofs.FrontendStages.Declarations
