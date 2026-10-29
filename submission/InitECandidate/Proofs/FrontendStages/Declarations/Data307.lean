import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify291
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body307_0 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 1#64)

def body307_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body307_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "len") (Flapjack.Exp.const 0#64)) body307_0 body307_1

def body307_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 400#64]

def body307_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 384#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "p")

def body307_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 392#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "len")

def body307_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "top"), none)) "rlp_decode_fully"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64],
    Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "len", Flapjack.Exp.const 1#64]]

def body307_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "t" (Flapjack.Exp.var Flapjack.VarKind.local "b0")

def body307_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nfields" (Flapjack.Exp.const 11#64)

def body307_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 1#64)) body307_8 body307_1

def body307_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nfields" (Flapjack.Exp.const 12#64)

def body307_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 2#64)) body307_10 body307_1

def body307_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nfields" (Flapjack.Exp.const 14#64)

def body307_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 3#64)) body307_12 body307_1

def body307_14 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "nfields" (Flapjack.Exp.const 13#64)

def body307_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 4#64)) body307_14 body307_1

def body307_16 : Prog (BitVec 64) :=
.seq body307_13 body307_15

def body307_17 : Prog (BitVec 64) :=
.seq body307_11 body307_16

def body307_18 : Prog (BitVec 64) :=
.seq body307_9 body307_17

def body307_19 : Prog (BitVec 64) :=
.seq body307_7 body307_18

def body307_20 : Prog (BitVec 64) :=
.seq body307_6 body307_19

def body307_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "top"), none)) "rlp_decode_fully"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "len"]

def body307_22 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 2#64)

def body307_23 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "b0")
        (Flapjack.Exp.const 192#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 254#64)
        (Flapjack.Exp.var Flapjack.VarKind.local "b0"))]) body307_21 body307_22

def body307_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "b0") (Flapjack.Exp.const 1#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 4#64) (Flapjack.Exp.var Flapjack.VarKind.local "b0"))]) body307_20 body307_23

def body307_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body307_26 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 3#64)

def body307_27 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "top"))
  (Flapjack.Exp.const 1#64)) body307_26 body307_1

def body307_28 : Prog (BitVec 64) :=
Flapjack.Prog.raise "TxErr" (Flapjack.Exp.const 4#64)

def body307_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "lst"))
  (Flapjack.Exp.var Flapjack.VarKind.local "nfields")) body307_28 body307_1

def body307_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_scalar_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.const 0#64, Flapjack.Exp.const 8#64,
    Flapjack.Exp.const 12#64]

def body307_31 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body307_32 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k" (Flapjack.Exp.const 1#64)

def body307_33 : Prog (BitVec 64) :=
.seq body307_31 body307_32

def body307_34 : Prog (BitVec 64) :=
.seq body307_30 body307_33

def body307_35 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 0#64)) body307_34 body307_1

def body307_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_scalar_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 8#64,
    Flapjack.Exp.const 12#64]

def body307_37 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "v"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 0#64])

def body307_38 : Prog (BitVec 64) :=
.seq body307_36 body307_37

def body307_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "v"), none)) "tx_scalar_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 32#64]

def body307_40 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 4#64)) body307_38 body307_39

def body307_41 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body307_42 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64])

def body307_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "v"), none)) "tx_scalar_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 0#64]

def body307_44 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body307_45 : Prog (BitVec 64) :=
.seq body307_44 body307_42

def body307_46 : Prog (BitVec 64) :=
.seq body307_43 body307_45

def body307_47 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body307_48 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "v"), none)) "tx_scalar_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64],
    Flapjack.Exp.const 0#64]

def body307_49 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body307_50 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "k"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 2#64])

def body307_51 : Prog (BitVec 64) :=
.seq body307_49 body307_50

def body307_52 : Prog (BitVec 64) :=
.seq body307_48 body307_51

def body307_53 : Prog (BitVec 64) :=
.seq body307_47 body307_52

def body307_54 : Prog (BitVec 64) :=
.seq body307_43 body307_53

def body307_55 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "t")) body307_46 body307_54

def body307_56 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_scalar_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 0#64,
    Flapjack.Exp.const 14#64]

def body307_57 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body307_58 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_fixed_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 20#64]

def body307_59 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_to_item"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "k"]

def body307_60 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 3#64)) body307_58 body307_59

def body307_61 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "w")

def body307_62 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body307_63 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 192#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "data"))

def body307_64 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "data"))

def body307_65 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "acc"))

def body307_66 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 216#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "acc"))

def body307_67 : Prog (BitVec 64) :=
.seq body307_66 body307_42

def body307_68 : Prog (BitVec 64) :=
.seq body307_65 body307_67

def body307_69 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("decode_access_list") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "al"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "al")]) body307_68

def body307_70 : Prog (BitVec 64) :=
.decCall ("al") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_list_item") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "k"]) body307_69

def body307_71 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 0#64)) body307_70 body307_1

def body307_72 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 224#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body307_73 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 256#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "bh"))

def body307_74 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bh"))

def body307_75 : Prog (BitVec 64) :=
.seq body307_74 body307_50

def body307_76 : Prog (BitVec 64) :=
.seq body307_73 body307_75

def body307_77 : Prog (BitVec 64) :=
.decCall ("bh") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("decode_blob_hashes") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "bl"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bl")]) body307_76

def body307_78 : Prog (BitVec 64) :=
.decCall ("bl") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_list_item") ([Flapjack.Exp.var Flapjack.VarKind.local "arr",
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64]]) body307_77

def body307_79 : Prog (BitVec 64) :=
.seq body307_72 body307_78

def body307_80 : Prog (BitVec 64) :=
.seq body307_39 body307_79

def body307_81 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 3#64)) body307_80 body307_1

def body307_82 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 272#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "au"))

def body307_83 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 280#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "au"))

def body307_84 : Prog (BitVec 64) :=
.seq body307_83 body307_42

def body307_85 : Prog (BitVec 64) :=
.seq body307_82 body307_84

def body307_86 : Prog (BitVec 64) :=
.decCall ("au") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("decode_authorizations") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "aul"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "aul")]) body307_85

def body307_87 : Prog (BitVec 64) :=
.decCall ("aul") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_list_item") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "k"]) body307_86

def body307_88 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 4#64)) body307_87 body307_1

def body307_89 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 288#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body307_90 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "v"), none)) "tx_scalar_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64],
    Flapjack.Exp.const 32#64]

def body307_91 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 320#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body307_92 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "v"), none)) "tx_scalar_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "arr",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 2#64],
    Flapjack.Exp.const 32#64]

def body307_93 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 352#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body307_94 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "tx")

def body307_95 : Prog (BitVec 64) :=
.seq body307_93 body307_94

def body307_96 : Prog (BitVec 64) :=
.seq body307_92 body307_95

def body307_97 : Prog (BitVec 64) :=
.seq body307_91 body307_96

def body307_98 : Prog (BitVec 64) :=
.seq body307_90 body307_97

def body307_99 : Prog (BitVec 64) :=
.seq body307_89 body307_98

def body307_100 : Prog (BitVec 64) :=
.seq body307_39 body307_99

def body307_101 : Prog (BitVec 64) :=
.seq body307_88 body307_100

def body307_102 : Prog (BitVec 64) :=
.seq body307_81 body307_101

def body307_103 : Prog (BitVec 64) :=
.seq body307_71 body307_102

def body307_104 : Prog (BitVec 64) :=
.seq body307_42 body307_103

def body307_105 : Prog (BitVec 64) :=
.seq body307_64 body307_104

def body307_106 : Prog (BitVec 64) :=
.seq body307_63 body307_105

def body307_107 : Prog (BitVec 64) :=
.decCall ("data") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_bytes_item") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "k"]) body307_106

def body307_108 : Prog (BitVec 64) :=
.seq body307_42 body307_107

def body307_109 : Prog (BitVec 64) :=
.seq body307_62 body307_108

def body307_110 : Prog (BitVec 64) :=
.seq body307_39 body307_109

def body307_111 : Prog (BitVec 64) :=
.seq body307_42 body307_110

def body307_112 : Prog (BitVec 64) :=
.seq body307_61 body307_111

def body307_113 : Prog (BitVec 64) :=
.seq body307_60 body307_112

def body307_114 : Prog (BitVec 64) :=
.seq body307_42 body307_113

def body307_115 : Prog (BitVec 64) :=
.seq body307_57 body307_114

def body307_116 : Prog (BitVec 64) :=
.seq body307_56 body307_115

def body307_117 : Prog (BitVec 64) :=
.seq body307_55 body307_116

def body307_118 : Prog (BitVec 64) :=
.seq body307_42 body307_117

def body307_119 : Prog (BitVec 64) :=
.seq body307_41 body307_118

def body307_120 : Prog (BitVec 64) :=
.seq body307_40 body307_119

def body307_121 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body307_120

def body307_122 : Prog (BitVec 64) :=
.seq body307_35 body307_121

def body307_123 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body307_122

def body307_124 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body307_123

def body307_125 : Prog (BitVec 64) :=
.seq body307_29 body307_124

def body307_126 : Prog (BitVec 64) :=
.dec ("arr") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "lst")) body307_125

def body307_127 : Prog (BitVec 64) :=
.decCall ("lst") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "top"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "top")]) body307_126

def body307_128 : Prog (BitVec 64) :=
.seq body307_27 body307_127

def body307_129 : Prog (BitVec 64) :=
.seq body307_25 body307_128

def body307_130 : Prog (BitVec 64) :=
.seq body307_24 body307_129

def body307_131 : Prog (BitVec 64) :=
.dec ("nfields") (Flapjack.Shape.one) (Flapjack.Exp.const 9#64) body307_130

def body307_132 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body307_131

def body307_133 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body307_132

def body307_134 : Prog (BitVec 64) :=
.seq body307_5 body307_133

def body307_135 : Prog (BitVec 64) :=
.seq body307_4 body307_134

def body307_136 : Prog (BitVec 64) :=
.seq body307_3 body307_135

def body307_137 : Prog (BitVec 64) :=
.decCall ("tx") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 400#64]) body307_136

def body307_138 : Prog (BitVec 64) :=
.dec ("b0") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p")) body307_137

def body307_139 : Prog (BitVec 64) :=
.seq body307_2 body307_138

def body307_140 : Prog (BitVec 64) :=
.seq body307_3 body307_4

def body307_141 : Prog (BitVec 64) :=
.seq body307_140 body307_5

def body307_142 : Prog (BitVec 64) :=
.seq body307_6 body307_7

def body307_143 : Prog (BitVec 64) :=
.seq body307_142 body307_9

def body307_144 : Prog (BitVec 64) :=
.seq body307_143 body307_11

def body307_145 : Prog (BitVec 64) :=
.seq body307_144 body307_13

def body307_146 : Prog (BitVec 64) :=
.seq body307_145 body307_15

def body307_147 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.var Flapjack.VarKind.local "b0") (Flapjack.Exp.const 1#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 4#64) (Flapjack.Exp.var Flapjack.VarKind.local "b0"))]) body307_146 body307_23

def body307_148 : Prog (BitVec 64) :=
.seq body307_147 body307_25

def body307_149 : Prog (BitVec 64) :=
.seq body307_148 body307_27

def body307_150 : Prog (BitVec 64) :=
.seq body307_30 body307_31

def body307_151 : Prog (BitVec 64) :=
.seq body307_150 body307_32

def body307_152 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 0#64)) body307_151 body307_1

def body307_153 : Prog (BitVec 64) :=
.seq body307_40 body307_41

def body307_154 : Prog (BitVec 64) :=
.seq body307_153 body307_42

def body307_155 : Prog (BitVec 64) :=
.seq body307_43 body307_44

def body307_156 : Prog (BitVec 64) :=
.seq body307_155 body307_42

def body307_157 : Prog (BitVec 64) :=
.seq body307_43 body307_47

def body307_158 : Prog (BitVec 64) :=
.seq body307_157 body307_48

def body307_159 : Prog (BitVec 64) :=
.seq body307_158 body307_49

def body307_160 : Prog (BitVec 64) :=
.seq body307_159 body307_50

def body307_161 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "t")) body307_156 body307_160

def body307_162 : Prog (BitVec 64) :=
.seq body307_154 body307_161

def body307_163 : Prog (BitVec 64) :=
.seq body307_162 body307_56

def body307_164 : Prog (BitVec 64) :=
.seq body307_163 body307_57

def body307_165 : Prog (BitVec 64) :=
.seq body307_164 body307_42

def body307_166 : Prog (BitVec 64) :=
.seq body307_165 body307_60

def body307_167 : Prog (BitVec 64) :=
.seq body307_166 body307_61

def body307_168 : Prog (BitVec 64) :=
.seq body307_167 body307_42

def body307_169 : Prog (BitVec 64) :=
.seq body307_168 body307_39

def body307_170 : Prog (BitVec 64) :=
.seq body307_169 body307_62

def body307_171 : Prog (BitVec 64) :=
.seq body307_170 body307_42

def body307_172 : Prog (BitVec 64) :=
.seq body307_63 body307_64

def body307_173 : Prog (BitVec 64) :=
.seq body307_172 body307_42

def body307_174 : Prog (BitVec 64) :=
.seq body307_65 body307_66

def body307_175 : Prog (BitVec 64) :=
.seq body307_174 body307_42

def body307_176 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("decode_access_list") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "al"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "al")]) body307_175

def body307_177 : Prog (BitVec 64) :=
.decCall ("al") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_list_item") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "k"]) body307_176

def body307_178 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 0#64)) body307_177 body307_1

def body307_179 : Prog (BitVec 64) :=
.seq body307_173 body307_178

def body307_180 : Prog (BitVec 64) :=
.seq body307_39 body307_72

def body307_181 : Prog (BitVec 64) :=
.seq body307_73 body307_74

def body307_182 : Prog (BitVec 64) :=
.seq body307_181 body307_50

def body307_183 : Prog (BitVec 64) :=
.decCall ("bh") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("decode_blob_hashes") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "bl"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bl")]) body307_182

def body307_184 : Prog (BitVec 64) :=
.decCall ("bl") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_list_item") ([Flapjack.Exp.var Flapjack.VarKind.local "arr",
  Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "k", Flapjack.Exp.const 1#64]]) body307_183

def body307_185 : Prog (BitVec 64) :=
.seq body307_180 body307_184

def body307_186 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 3#64)) body307_185 body307_1

def body307_187 : Prog (BitVec 64) :=
.seq body307_179 body307_186

def body307_188 : Prog (BitVec 64) :=
.seq body307_82 body307_83

def body307_189 : Prog (BitVec 64) :=
.seq body307_188 body307_42

def body307_190 : Prog (BitVec 64) :=
.decCall ("au") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("decode_authorizations") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "aul"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "aul")]) body307_189

def body307_191 : Prog (BitVec 64) :=
.decCall ("aul") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_list_item") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "k"]) body307_190

def body307_192 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 4#64)) body307_191 body307_1

def body307_193 : Prog (BitVec 64) :=
.seq body307_187 body307_192

def body307_194 : Prog (BitVec 64) :=
.seq body307_193 body307_39

def body307_195 : Prog (BitVec 64) :=
.seq body307_194 body307_89

def body307_196 : Prog (BitVec 64) :=
.seq body307_195 body307_90

def body307_197 : Prog (BitVec 64) :=
.seq body307_196 body307_91

def body307_198 : Prog (BitVec 64) :=
.seq body307_197 body307_92

def body307_199 : Prog (BitVec 64) :=
.seq body307_198 body307_93

def body307_200 : Prog (BitVec 64) :=
.seq body307_199 body307_94

def body307_201 : Prog (BitVec 64) :=
.decCall ("data") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("tx_bytes_item") ([Flapjack.Exp.var Flapjack.VarKind.local "arr", Flapjack.Exp.var Flapjack.VarKind.local "k"]) body307_200

def body307_202 : Prog (BitVec 64) :=
.seq body307_171 body307_201

def body307_203 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body307_202

def body307_204 : Prog (BitVec 64) :=
.seq body307_152 body307_203

def body307_205 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body307_204

def body307_206 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body307_205

def body307_207 : Prog (BitVec 64) :=
.seq body307_29 body307_206

def body307_208 : Prog (BitVec 64) :=
.dec ("arr") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "lst")) body307_207

def body307_209 : Prog (BitVec 64) :=
.decCall ("lst") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "top"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "top")]) body307_208

def body307_210 : Prog (BitVec 64) :=
.seq body307_149 body307_209

def body307_211 : Prog (BitVec 64) :=
.dec ("nfields") (Flapjack.Shape.one) (Flapjack.Exp.const 9#64) body307_210

def body307_212 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body307_211

def body307_213 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body307_212

def body307_214 : Prog (BitVec 64) :=
.seq body307_141 body307_213

def body307_215 : Prog (BitVec 64) :=
.decCall ("tx") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 400#64]) body307_214

def body307_216 : Prog (BitVec 64) :=
.dec ("b0") (Flapjack.Shape.one) (Flapjack.Exp.loadByte (Flapjack.Exp.var Flapjack.VarKind.local "p")) body307_215

def body307_217 : Prog (BitVec 64) :=
.seq body307_2 body307_216

def originalData307 : Decl (BitVec 64) :=
.function { name := "decode_transaction_rlp", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body307_139, returnShape := (Flapjack.Shape.one) }
def simplifiedData307 : Decl (BitVec 64) :=
.function { name := "decode_transaction_rlp", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("len", Flapjack.Shape.one)], body := body307_217, returnShape := (Flapjack.Shape.one) }
def original307 := Pancake.PanLang.declToHOL originalData307
def simplified307 := Pancake.PanLang.declToHOL simplifiedData307
end InitECandidate.Proofs.FrontendStages.Declarations
