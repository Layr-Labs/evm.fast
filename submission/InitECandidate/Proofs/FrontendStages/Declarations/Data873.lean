import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify857
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body873_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 80#64)

def body873_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body873_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "regular_avail")
  (Flapjack.Exp.var Flapjack.VarKind.local "capped")) body873_0 body873_1

def body873_3 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 81#64)

def body873_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "state_avail")
  (Flapjack.Exp.var Flapjack.VarKind.local "gas")) body873_3 body873_1

def body873_5 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 82#64)

def body873_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "blob_avail")
  (Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas")) body873_5 body873_1

def body873_7 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 83#64)

def body873_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 0#64)) body873_7 body873_1

def body873_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "price" (Flapjack.Exp.var Flapjack.VarKind.local "gp")

def body873_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "max_fee_per_gas" (Flapjack.Exp.var Flapjack.VarKind.local "gp")

def body873_11 : Prog (BitVec 64) :=
.seq body873_9 body873_10

def body873_12 : Prog (BitVec 64) :=
.seq body873_8 body873_11

def body873_13 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "gp", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) body873_12

def body873_14 : Prog (BitVec 64) :=
.dec ("gp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 48#64])) body873_13

def body873_15 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 84#64)

def body873_16 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt1") (Flapjack.Exp.const 0#64)) body873_15 body873_1

def body873_17 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 85#64)

def body873_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt2") (Flapjack.Exp.const 0#64)) body873_17 body873_1

def body873_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "prio" (Flapjack.Exp.var Flapjack.VarKind.local "mp")

def body873_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt3") (Flapjack.Exp.const 0#64)) body873_19 body873_1

def body873_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "price"), none)) "u256_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "prio", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]

def body873_22 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "max_fee_per_gas" (Flapjack.Exp.var Flapjack.VarKind.local "mf")

def body873_23 : Prog (BitVec 64) :=
.seq body873_21 body873_22

def body873_24 : Prog (BitVec 64) :=
.seq body873_20 body873_23

def body873_25 : Prog (BitVec 64) :=
.dec ("prio") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.var Flapjack.VarKind.local "diff") body873_24

def body873_26 : Prog (BitVec 64) :=
.decCall ("lt3") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mp", Flapjack.Exp.var Flapjack.VarKind.local "diff"]) body873_25

def body873_27 : Prog (BitVec 64) :=
.decCall ("diff") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) body873_26

def body873_28 : Prog (BitVec 64) :=
.seq body873_18 body873_27

def body873_29 : Prog (BitVec 64) :=
.decCall ("lt2") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) body873_28

def body873_30 : Prog (BitVec 64) :=
.seq body873_16 body873_29

def body873_31 : Prog (BitVec 64) :=
.decCall ("lt1") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "mp"]) body873_30

def body873_32 : Prog (BitVec 64) :=
.dec ("mp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 80#64])) body873_31

def body873_33 : Prog (BitVec 64) :=
.dec ("mf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 112#64])) body873_32

def body873_34 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 1#64)])) body873_14 body873_33

def body873_35 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 86#64)

def body873_36 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "nb") (Flapjack.Exp.const 0#64)) body873_35 body873_1

def body873_37 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 87#64)

def body873_38 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 6#64) (Flapjack.Exp.var Flapjack.VarKind.local "nb")) body873_37 body873_1

def body873_39 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 88#64)

def body873_40 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 256#64]),
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 32#64]]))
  (Flapjack.Exp.const 1#64)) body873_39 body873_1

def body873_41 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def body873_42 : Prog (BitVec 64) :=
.seq body873_40 body873_41

def body873_43 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "nb")) body873_42

def body873_44 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 89#64)

def body873_45 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt4") (Flapjack.Exp.const 0#64)) body873_44 body873_1

def body873_46 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ovf" (Flapjack.Exp.const 1#64)

def body873_47 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "bf"))
  (Flapjack.Exp.const 0#64)) body873_46 body873_1

def body873_48 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "sum"))
  (Flapjack.Exp.const 0#64)) body873_46 body873_1

def body873_49 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "max_gas_fee"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sum"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sum"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "sum"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "sum")])

def body873_50 : Prog (BitVec 64) :=
.seq body873_48 body873_49

def body873_51 : Prog (BitVec 64) :=
.decCall ("sum") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "max_gas_fee",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bf"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "bf"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "bf"),
      Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "bf")]]) body873_50

def body873_52 : Prog (BitVec 64) :=
.seq body873_47 body873_51

def body873_53 : Prog (BitVec 64) :=
.decCall ("bf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas", Flapjack.Exp.var Flapjack.VarKind.local "mfb"]) body873_52

def body873_54 : Prog (BitVec 64) :=
.seq body873_45 body873_53

def body873_55 : Prog (BitVec 64) :=
.decCall ("lt4") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mfb", Flapjack.Exp.var Flapjack.VarKind.local "bgp"]) body873_54

def body873_56 : Prog (BitVec 64) :=
.dec ("mfb") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 224#64])) body873_55

def body873_57 : Prog (BitVec 64) :=
.decCall ("bgp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_blob_gas_price") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 96#64])]) body873_56

def body873_58 : Prog (BitVec 64) :=
.seq body873_43 body873_57

def body873_59 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body873_58

def body873_60 : Prog (BitVec 64) :=
.seq body873_38 body873_59

def body873_61 : Prog (BitVec 64) :=
.seq body873_36 body873_60

def body873_62 : Prog (BitVec 64) :=
.dec ("nb") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64])) body873_61

def body873_63 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 3#64)) body873_62 body873_1

def body873_64 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 90#64)

def body873_65 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 280#64]))
  (Flapjack.Exp.const 0#64)) body873_64 body873_1

def body873_66 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 4#64)) body873_65 body873_1

def body873_67 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 92#64)

def body873_68 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "fits") (Flapjack.Exp.const 0#64)) body873_67 body873_1

def body873_69 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 91#64)

def body873_70 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "tn"))
  (Flapjack.Exp.var Flapjack.VarKind.local "an")) body873_69 body873_1

def body873_71 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "an")
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "tn"))) body873_67 body873_1

def body873_72 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 93#64)

def body873_73 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "ovf") (Flapjack.Exp.const 0#64)) body873_72 body873_1

def body873_74 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "need"))
  (Flapjack.Exp.const 0#64)) body873_72 body873_1

def body873_75 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt5") (Flapjack.Exp.const 0#64)) body873_72 body873_1

def body873_76 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 94#64)

def body873_77 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "vd") (Flapjack.Exp.const 0#64)) body873_76 body873_1

def body873_78 : Prog (BitVec 64) :=
.decCall ("vd") (Flapjack.Shape.one) ("is_valid_delegation") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "scode"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "scode")]) body873_77

def body873_79 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "che") (Flapjack.Exp.const 0#64)) body873_78 body873_1

def body873_80 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "price")

def body873_81 : Prog (BitVec 64) :=
.seq body873_79 body873_80

def body873_82 : Prog (BitVec 64) :=
.decCall ("che") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.global "empty_code_hash", Flapjack.Exp.const 32#64]) body873_81

def body873_83 : Prog (BitVec 64) :=
.decCall ("scode") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("get_code") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body873_82

def body873_84 : Prog (BitVec 64) :=
.seq body873_75 body873_83

def body873_85 : Prog (BitVec 64) :=
.decCall ("lt5") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "need"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "need"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "need"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "need")]]) body873_84

def body873_86 : Prog (BitVec 64) :=
.seq body873_74 body873_85

def body873_87 : Prog (BitVec 64) :=
.decCall ("need") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "max_gas_fee",
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64])]) body873_86

def body873_88 : Prog (BitVec 64) :=
.seq body873_73 body873_87

def body873_89 : Prog (BitVec 64) :=
.seq body873_71 body873_88

def body873_90 : Prog (BitVec 64) :=
.seq body873_70 body873_89

def body873_91 : Prog (BitVec 64) :=
.seq body873_68 body873_90

def body873_92 : Prog (BitVec 64) :=
.dec ("an") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 0#64])) body873_91

def body873_93 : Prog (BitVec 64) :=
.decCall ("fits") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "tn"]) body873_92

def body873_94 : Prog (BitVec 64) :=
.dec ("tn") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 16#64])) body873_93

def body873_95 : Prog (BitVec 64) :=
.seq body873_66 body873_94

def body873_96 : Prog (BitVec 64) :=
.seq body873_63 body873_95

def body873_97 : Prog (BitVec 64) :=
.dec ("max_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "mgf")]) body873_96

def body873_98 : Prog (BitVec 64) :=
.dec ("ovf") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "mgf")) body873_97

def body873_99 : Prog (BitVec 64) :=
.decCall ("mgf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "max_fee_per_gas"]) body873_98

def body873_100 : Prog (BitVec 64) :=
.seq body873_34 body873_99

def body873_101 : Prog (BitVec 64) :=
.dec ("ty") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64])) body873_100

def body873_102 : Prog (BitVec 64) :=
.dec ("max_fee_per_gas") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body873_101

def body873_103 : Prog (BitVec 64) :=
.dec ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body873_102

def body873_104 : Prog (BitVec 64) :=
.dec ("base_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 48#64])) body873_103

def body873_105 : Prog (BitVec 64) :=
.decCall ("acct") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body873_104

def body873_106 : Prog (BitVec 64) :=
.seq body873_6 body873_105

def body873_107 : Prog (BitVec 64) :=
.decCall ("tx_blob_gas") (Flapjack.Shape.one) ("calculate_total_blob_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body873_106

def body873_108 : Prog (BitVec 64) :=
.seq body873_4 body873_107

def body873_109 : Prog (BitVec 64) :=
.seq body873_2 body873_108

def body873_110 : Prog (BitVec 64) :=
.decCall ("capped") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.const 16777216#64, Flapjack.Exp.var Flapjack.VarKind.local "gas"]) body873_109

def body873_111 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) body873_110

def body873_112 : Prog (BitVec 64) :=
.dec ("blob_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.const 2752512#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 48#64])]) body873_111

def body873_113 : Prog (BitVec 64) :=
.dec ("state_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "block_gas_limit",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 8#64])]) body873_112

def body873_114 : Prog (BitVec 64) :=
.dec ("regular_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "block_gas_limit",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 0#64])]) body873_113

def body873_115 : Prog (BitVec 64) :=
.dec ("block_gas_limit") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 8#64])) body873_114

def body873_116 : Prog (BitVec 64) :=
.seq body873_2 body873_4

def body873_117 : Prog (BitVec 64) :=
.seq body873_8 body873_9

def body873_118 : Prog (BitVec 64) :=
.seq body873_117 body873_10

def body873_119 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "gp", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) body873_118

def body873_120 : Prog (BitVec 64) :=
.dec ("gp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 48#64])) body873_119

def body873_121 : Prog (BitVec 64) :=
.seq body873_20 body873_21

def body873_122 : Prog (BitVec 64) :=
.seq body873_121 body873_22

def body873_123 : Prog (BitVec 64) :=
.dec ("prio") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.var Flapjack.VarKind.local "diff") body873_122

def body873_124 : Prog (BitVec 64) :=
.decCall ("lt3") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mp", Flapjack.Exp.var Flapjack.VarKind.local "diff"]) body873_123

def body873_125 : Prog (BitVec 64) :=
.decCall ("diff") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) body873_124

def body873_126 : Prog (BitVec 64) :=
.seq body873_18 body873_125

def body873_127 : Prog (BitVec 64) :=
.decCall ("lt2") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) body873_126

def body873_128 : Prog (BitVec 64) :=
.seq body873_16 body873_127

def body873_129 : Prog (BitVec 64) :=
.decCall ("lt1") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "mp"]) body873_128

def body873_130 : Prog (BitVec 64) :=
.dec ("mp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 80#64])) body873_129

def body873_131 : Prog (BitVec 64) :=
.dec ("mf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 112#64])) body873_130

def body873_132 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 1#64)])) body873_120 body873_131

def body873_133 : Prog (BitVec 64) :=
.seq body873_36 body873_38

def body873_134 : Prog (BitVec 64) :=
.seq body873_133 body873_59

def body873_135 : Prog (BitVec 64) :=
.dec ("nb") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64])) body873_134

def body873_136 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 3#64)) body873_135 body873_1

def body873_137 : Prog (BitVec 64) :=
.seq body873_136 body873_66

def body873_138 : Prog (BitVec 64) :=
.seq body873_68 body873_70

def body873_139 : Prog (BitVec 64) :=
.seq body873_138 body873_71

def body873_140 : Prog (BitVec 64) :=
.seq body873_139 body873_73

def body873_141 : Prog (BitVec 64) :=
.seq body873_140 body873_87

def body873_142 : Prog (BitVec 64) :=
.dec ("an") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 0#64])) body873_141

def body873_143 : Prog (BitVec 64) :=
.decCall ("fits") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "tn"]) body873_142

def body873_144 : Prog (BitVec 64) :=
.dec ("tn") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 16#64])) body873_143

def body873_145 : Prog (BitVec 64) :=
.seq body873_137 body873_144

def body873_146 : Prog (BitVec 64) :=
.dec ("max_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "mgf")]) body873_145

def body873_147 : Prog (BitVec 64) :=
.dec ("ovf") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "mgf")) body873_146

def body873_148 : Prog (BitVec 64) :=
.decCall ("mgf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "max_fee_per_gas"]) body873_147

def body873_149 : Prog (BitVec 64) :=
.seq body873_132 body873_148

def body873_150 : Prog (BitVec 64) :=
.dec ("ty") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64])) body873_149

def body873_151 : Prog (BitVec 64) :=
.dec ("max_fee_per_gas") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body873_150

def body873_152 : Prog (BitVec 64) :=
.dec ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body873_151

def body873_153 : Prog (BitVec 64) :=
.dec ("base_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 48#64])) body873_152

def body873_154 : Prog (BitVec 64) :=
.decCall ("acct") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) body873_153

def body873_155 : Prog (BitVec 64) :=
.seq body873_6 body873_154

def body873_156 : Prog (BitVec 64) :=
.decCall ("tx_blob_gas") (Flapjack.Shape.one) ("calculate_total_blob_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body873_155

def body873_157 : Prog (BitVec 64) :=
.seq body873_116 body873_156

def body873_158 : Prog (BitVec 64) :=
.decCall ("capped") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.const 16777216#64, Flapjack.Exp.var Flapjack.VarKind.local "gas"]) body873_157

def body873_159 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) body873_158

def body873_160 : Prog (BitVec 64) :=
.dec ("blob_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.const 2752512#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 48#64])]) body873_159

def body873_161 : Prog (BitVec 64) :=
.dec ("state_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "block_gas_limit",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 8#64])]) body873_160

def body873_162 : Prog (BitVec 64) :=
.dec ("regular_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "block_gas_limit",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bo", Flapjack.Exp.const 0#64])]) body873_161

def body873_163 : Prog (BitVec 64) :=
.dec ("block_gas_limit") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "be", Flapjack.Exp.const 8#64])) body873_162

def originalData873 : Decl (BitVec 64) :=
.function { name := "check_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("sender", Flapjack.Shape.one)], body := body873_115, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData873 : Decl (BitVec 64) :=
.function { name := "check_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("sender", Flapjack.Shape.one)], body := body873_163, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original873 := Pancake.PanLang.declToHOL originalData873
def simplified873 := Pancake.PanLang.declToHOL simplifiedData873
end InitECandidate.Proofs.FrontendStages.Declarations
