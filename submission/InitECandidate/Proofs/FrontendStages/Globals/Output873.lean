import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data873
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate840
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody873_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 80#64)

def globalBody873_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody873_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "regular_avail")
  (Flapjack.Exp.var Flapjack.VarKind.local "capped")) globalBody873_0 globalBody873_1

def globalBody873_3 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 81#64)

def globalBody873_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "state_avail")
  (Flapjack.Exp.var Flapjack.VarKind.local "gas")) globalBody873_3 globalBody873_1

def globalBody873_5 : Prog (BitVec 64) :=
.seq globalBody873_2 globalBody873_4

def globalBody873_6 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 82#64)

def globalBody873_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "blob_avail")
  (Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas")) globalBody873_6 globalBody873_1

def globalBody873_8 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 83#64)

def globalBody873_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt") (Flapjack.Exp.const 0#64)) globalBody873_8 globalBody873_1

def globalBody873_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "price" (Flapjack.Exp.var Flapjack.VarKind.local "gp")

def globalBody873_11 : Prog (BitVec 64) :=
.seq globalBody873_9 globalBody873_10

def globalBody873_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "max_fee_per_gas" (Flapjack.Exp.var Flapjack.VarKind.local "gp")

def globalBody873_13 : Prog (BitVec 64) :=
.seq globalBody873_11 globalBody873_12

def globalBody873_14 : Prog (BitVec 64) :=
.decCall ("lt") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "gp", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) globalBody873_13

def globalBody873_15 : Prog (BitVec 64) :=
.dec ("gp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 48#64])) globalBody873_14

def globalBody873_16 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 84#64)

def globalBody873_17 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt1") (Flapjack.Exp.const 0#64)) globalBody873_16 globalBody873_1

def globalBody873_18 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 85#64)

def globalBody873_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt2") (Flapjack.Exp.const 0#64)) globalBody873_18 globalBody873_1

def globalBody873_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "prio" (Flapjack.Exp.var Flapjack.VarKind.local "mp")

def globalBody873_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt3") (Flapjack.Exp.const 0#64)) globalBody873_20 globalBody873_1

def globalBody873_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "price"), none)) "u256_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "prio", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]

def globalBody873_23 : Prog (BitVec 64) :=
.seq globalBody873_21 globalBody873_22

def globalBody873_24 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "max_fee_per_gas" (Flapjack.Exp.var Flapjack.VarKind.local "mf")

def globalBody873_25 : Prog (BitVec 64) :=
.seq globalBody873_23 globalBody873_24

def globalBody873_26 : Prog (BitVec 64) :=
.dec ("prio") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.var Flapjack.VarKind.local "diff") globalBody873_25

def globalBody873_27 : Prog (BitVec 64) :=
.decCall ("lt3") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mp", Flapjack.Exp.var Flapjack.VarKind.local "diff"]) globalBody873_26

def globalBody873_28 : Prog (BitVec 64) :=
.decCall ("diff") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_sub") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) globalBody873_27

def globalBody873_29 : Prog (BitVec 64) :=
.seq globalBody873_19 globalBody873_28

def globalBody873_30 : Prog (BitVec 64) :=
.decCall ("lt2") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "base_fee"]) globalBody873_29

def globalBody873_31 : Prog (BitVec 64) :=
.seq globalBody873_17 globalBody873_30

def globalBody873_32 : Prog (BitVec 64) :=
.decCall ("lt1") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mf", Flapjack.Exp.var Flapjack.VarKind.local "mp"]) globalBody873_31

def globalBody873_33 : Prog (BitVec 64) :=
.dec ("mp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 80#64])) globalBody873_32

def globalBody873_34 : Prog (BitVec 64) :=
.dec ("mf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 112#64])) globalBody873_33

def globalBody873_35 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 0#64),
      Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 1#64)])) globalBody873_15 globalBody873_34

def globalBody873_36 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 86#64)

def globalBody873_37 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "nb") (Flapjack.Exp.const 0#64)) globalBody873_36 globalBody873_1

def globalBody873_38 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 87#64)

def globalBody873_39 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 6#64) (Flapjack.Exp.var Flapjack.VarKind.local "nb")) globalBody873_38 globalBody873_1

def globalBody873_40 : Prog (BitVec 64) :=
.seq globalBody873_37 globalBody873_39

def globalBody873_41 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 88#64)

def globalBody873_42 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.loadByte
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.add
            [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 256#64]),
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 32#64]]))
  (Flapjack.Exp.const 1#64)) globalBody873_41 globalBody873_1

def globalBody873_43 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "j"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "j", Flapjack.Exp.const 1#64])

def globalBody873_44 : Prog (BitVec 64) :=
.seq globalBody873_42 globalBody873_43

def globalBody873_45 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "j")
  (Flapjack.Exp.var Flapjack.VarKind.local "nb")) globalBody873_44

def globalBody873_46 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 89#64)

def globalBody873_47 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt4") (Flapjack.Exp.const 0#64)) globalBody873_46 globalBody873_1

def globalBody873_48 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "ovf" (Flapjack.Exp.const 1#64)

def globalBody873_49 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "bf"))
  (Flapjack.Exp.const 0#64)) globalBody873_48 globalBody873_1

def globalBody873_50 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "sum"))
  (Flapjack.Exp.const 0#64)) globalBody873_48 globalBody873_1

def globalBody873_51 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "max_gas_fee"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sum"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sum"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "sum"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "sum")])

def globalBody873_52 : Prog (BitVec 64) :=
.seq globalBody873_50 globalBody873_51

def globalBody873_53 : Prog (BitVec 64) :=
.decCall ("sum") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "max_gas_fee",
  Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bf"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "bf"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "bf"),
      Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "bf")]]) globalBody873_52

def globalBody873_54 : Prog (BitVec 64) :=
.seq globalBody873_49 globalBody873_53

def globalBody873_55 : Prog (BitVec 64) :=
.decCall ("bf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "tx_blob_gas", Flapjack.Exp.var Flapjack.VarKind.local "mfb"]) globalBody873_54

def globalBody873_56 : Prog (BitVec 64) :=
.seq globalBody873_47 globalBody873_55

def globalBody873_57 : Prog (BitVec 64) :=
.decCall ("lt4") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.var Flapjack.VarKind.local "mfb", Flapjack.Exp.var Flapjack.VarKind.local "bgp"]) globalBody873_56

def globalBody873_58 : Prog (BitVec 64) :=
.dec ("mfb") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 224#64])) globalBody873_57

def globalBody873_59 : Prog (BitVec 64) :=
.decCall ("bgp") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("calculate_blob_gas_price") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.load Flapjack.Shape.one
          (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 408#64]),
        Flapjack.Exp.const 96#64])]) globalBody873_58

def globalBody873_60 : Prog (BitVec 64) :=
.seq globalBody873_45 globalBody873_59

def globalBody873_61 : Prog (BitVec 64) :=
.dec ("j") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody873_60

def globalBody873_62 : Prog (BitVec 64) :=
.seq globalBody873_40 globalBody873_61

def globalBody873_63 : Prog (BitVec 64) :=
.dec ("nb") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64])) globalBody873_62

def globalBody873_64 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 3#64)) globalBody873_63 globalBody873_1

def globalBody873_65 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 90#64)

def globalBody873_66 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 280#64]))
  (Flapjack.Exp.const 0#64)) globalBody873_65 globalBody873_1

def globalBody873_67 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ty") (Flapjack.Exp.const 4#64)) globalBody873_66 globalBody873_1

def globalBody873_68 : Prog (BitVec 64) :=
.seq globalBody873_64 globalBody873_67

def globalBody873_69 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 92#64)

def globalBody873_70 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "fits") (Flapjack.Exp.const 0#64)) globalBody873_69 globalBody873_1

def globalBody873_71 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 91#64)

def globalBody873_72 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "tn"))
  (Flapjack.Exp.var Flapjack.VarKind.local "an")) globalBody873_71 globalBody873_1

def globalBody873_73 : Prog (BitVec 64) :=
.seq globalBody873_70 globalBody873_72

def globalBody873_74 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "an")
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "tn"))) globalBody873_69 globalBody873_1

def globalBody873_75 : Prog (BitVec 64) :=
.seq globalBody873_73 globalBody873_74

def globalBody873_76 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 93#64)

def globalBody873_77 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "ovf") (Flapjack.Exp.const 0#64)) globalBody873_76 globalBody873_1

def globalBody873_78 : Prog (BitVec 64) :=
.seq globalBody873_75 globalBody873_77

def globalBody873_79 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "need"))
  (Flapjack.Exp.const 0#64)) globalBody873_76 globalBody873_1

def globalBody873_80 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "lt5") (Flapjack.Exp.const 0#64)) globalBody873_76 globalBody873_1

def globalBody873_81 : Prog (BitVec 64) :=
Flapjack.Prog.raise "BlockErr" (Flapjack.Exp.const 94#64)

def globalBody873_82 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "vd") (Flapjack.Exp.const 0#64)) globalBody873_81 globalBody873_1

def globalBody873_83 : Prog (BitVec 64) :=
.decCall ("vd") (Flapjack.Shape.one) ("is_valid_delegation") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "scode"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "scode")]) globalBody873_82

def globalBody873_84 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "che") (Flapjack.Exp.const 0#64)) globalBody873_83 globalBody873_1

def globalBody873_85 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "price")

def globalBody873_86 : Prog (BitVec 64) :=
.seq globalBody873_84 globalBody873_85

def globalBody873_87 : Prog (BitVec 64) :=
.decCall ("che") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 136#64]),
  Flapjack.Exp.const 32#64]) globalBody873_86

def globalBody873_88 : Prog (BitVec 64) :=
.decCall ("scode") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("get_code") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "sender"]) globalBody873_87

def globalBody873_89 : Prog (BitVec 64) :=
.seq globalBody873_80 globalBody873_88

def globalBody873_90 : Prog (BitVec 64) :=
.decCall ("lt5") (Flapjack.Shape.one) ("u256_lt") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "need"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "need"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "need"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "need")]]) globalBody873_89

def globalBody873_91 : Prog (BitVec 64) :=
.seq globalBody873_79 globalBody873_90

def globalBody873_92 : Prog (BitVec 64) :=
.decCall ("need") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_add_carry") ([Flapjack.Exp.var Flapjack.VarKind.local "max_gas_fee",
  Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64])]) globalBody873_91

def globalBody873_93 : Prog (BitVec 64) :=
.seq globalBody873_78 globalBody873_92

def globalBody873_94 : Prog (BitVec 64) :=
.dec ("an") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "acct", Flapjack.Exp.const 0#64])) globalBody873_93

def globalBody873_95 : Prog (BitVec 64) :=
.decCall ("fits") (Flapjack.Shape.one) ("u256_fits_word") ([Flapjack.Exp.var Flapjack.VarKind.local "tn"]) globalBody873_94

def globalBody873_96 : Prog (BitVec 64) :=
.dec ("tn") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 16#64])) globalBody873_95

def globalBody873_97 : Prog (BitVec 64) :=
.seq globalBody873_68 globalBody873_96

def globalBody873_98 : Prog (BitVec 64) :=
.dec ("max_gas_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "mgf"),
    Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "mgf")]) globalBody873_97

def globalBody873_99 : Prog (BitVec 64) :=
.dec ("ovf") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "mgf")) globalBody873_98

def globalBody873_100 : Prog (BitVec 64) :=
.decCall ("mgf") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fee_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "gas", Flapjack.Exp.var Flapjack.VarKind.local "max_fee_per_gas"]) globalBody873_99

def globalBody873_101 : Prog (BitVec 64) :=
.seq globalBody873_35 globalBody873_100

def globalBody873_102 : Prog (BitVec 64) :=
.dec ("ty") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64])) globalBody873_101

def globalBody873_103 : Prog (BitVec 64) :=
.dec ("max_fee_per_gas") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody873_102

def globalBody873_104 : Prog (BitVec 64) :=
.dec ("price") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody873_103

def globalBody873_105 : Prog (BitVec 64) :=
.dec ("base_fee") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 408#64]),
      Flapjack.Exp.const 48#64])) globalBody873_104

def globalBody873_106 : Prog (BitVec 64) :=
.decCall ("acct") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "sender"]) globalBody873_105

def globalBody873_107 : Prog (BitVec 64) :=
.seq globalBody873_7 globalBody873_106

def globalBody873_108 : Prog (BitVec 64) :=
.decCall ("tx_blob_gas") (Flapjack.Shape.one) ("calculate_total_blob_gas") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) globalBody873_107

def globalBody873_109 : Prog (BitVec 64) :=
.seq globalBody873_5 globalBody873_108

def globalBody873_110 : Prog (BitVec 64) :=
.decCall ("capped") (Flapjack.Shape.one) ("min") ([Flapjack.Exp.const 16777216#64, Flapjack.Exp.var Flapjack.VarKind.local "gas"]) globalBody873_109

def globalBody873_111 : Prog (BitVec 64) :=
.dec ("gas") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])) globalBody873_110

def globalBody873_112 : Prog (BitVec 64) :=
.dec ("blob_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.const 2752512#64,
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
          Flapjack.Exp.const 48#64])]) globalBody873_111

def globalBody873_113 : Prog (BitVec 64) :=
.dec ("state_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "block_gas_limit",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
          Flapjack.Exp.const 8#64])]) globalBody873_112

def globalBody873_114 : Prog (BitVec 64) :=
.dec ("regular_avail") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "block_gas_limit",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 416#64]),
          Flapjack.Exp.const 0#64])]) globalBody873_113

def globalBody873_115 : Prog (BitVec 64) :=
.dec ("block_gas_limit") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.topAddr, Flapjack.Exp.const 408#64]),
      Flapjack.Exp.const 8#64])) globalBody873_114

def globalData873 : Decl (BitVec 64) :=
.function { name := "check_transaction", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("sender", Flapjack.Shape.one)], body := globalBody873_115, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput873 := Pancake.PanLang.declToHOL globalData873
end InitECandidate.Proofs.FrontendStages.Declarations
