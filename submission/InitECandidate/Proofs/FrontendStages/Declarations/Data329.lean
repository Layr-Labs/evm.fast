import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify313
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body329_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 8#64])]

def body329_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body329_2 : Prog (BitVec 64) :=
.seq body329_0 body329_1

def body329_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body329_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 0#64)) body329_2 body329_3

def body329_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 16#64])]

def body329_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 48#64])]

def body329_7 : Prog (BitVec 64) :=
.seq body329_6 body329_1

def body329_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 80#64])]

def body329_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 112#64])]

def body329_10 : Prog (BitVec 64) :=
.seq body329_9 body329_1

def body329_11 : Prog (BitVec 64) :=
.seq body329_1 body329_10

def body329_12 : Prog (BitVec 64) :=
.seq body329_8 body329_11

def body329_13 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "t")) body329_7 body329_12

def body329_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 144#64])]

def body329_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_to"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 152#64])]

def body329_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 160#64])]

def body329_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 192#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 200#64])]

def body329_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_access_list"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 208#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 216#64])]

def body329_19 : Prog (BitVec 64) :=
.seq body329_18 body329_1

def body329_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 0#64)) body329_19 body329_3

def body329_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 224#64])]

def body329_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_blob_hashes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 256#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 264#64])]

def body329_23 : Prog (BitVec 64) :=
.seq body329_22 body329_1

def body329_24 : Prog (BitVec 64) :=
.seq body329_1 body329_23

def body329_25 : Prog (BitVec 64) :=
.seq body329_21 body329_24

def body329_26 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 3#64)) body329_25 body329_3

def body329_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_authorizations"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 272#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 280#64])]

def body329_28 : Prog (BitVec 64) :=
.seq body329_27 body329_1

def body329_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 4#64)) body329_28 body329_3

def body329_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 288#64])]

def body329_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 320#64])]

def body329_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "tx_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 352#64])]

def body329_33 : Prog (BitVec 64) :=
.seq body329_32 body329_1

def body329_34 : Prog (BitVec 64) :=
.seq body329_1 body329_33

def body329_35 : Prog (BitVec 64) :=
.seq body329_31 body329_34

def body329_36 : Prog (BitVec 64) :=
.seq body329_1 body329_35

def body329_37 : Prog (BitVec 64) :=
.seq body329_30 body329_36

def body329_38 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mode") (Flapjack.Exp.const 0#64)) body329_37 body329_3

def body329_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "chain_id"]

def body329_40 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.const 128#64)

def body329_41 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 128#64)

def body329_42 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 2#64])

def body329_43 : Prog (BitVec 64) :=
.seq body329_41 body329_42

def body329_44 : Prog (BitVec 64) :=
.seq body329_40 body329_43

def body329_45 : Prog (BitVec 64) :=
.seq body329_1 body329_44

def body329_46 : Prog (BitVec 64) :=
.seq body329_39 body329_45

def body329_47 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mode") (Flapjack.Exp.const 2#64)) body329_46 body329_3

def body329_48 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.var Flapjack.VarKind.local "payload_len"]

def body329_49 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "start"
  (Flapjack.Exp.op Flapjack.BinOp.sub [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.const 1#64])

def body329_50 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "start") (Flapjack.Exp.var Flapjack.VarKind.local "t")

def body329_51 : Prog (BitVec 64) :=
.seq body329_49 body329_50

def body329_52 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 0#64)) body329_51 body329_3

def body329_53 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "start",
      Flapjack.Exp.op Flapjack.BinOp.sub
        [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "start"]])

def body329_54 : Prog (BitVec 64) :=
.seq body329_52 body329_53

def body329_55 : Prog (BitVec 64) :=
.seq body329_48 body329_54

def body329_56 : Prog (BitVec 64) :=
.dec ("start") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "body", Flapjack.Exp.var Flapjack.VarKind.local "hl"]) body329_55

def body329_57 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "payload_len"]) body329_56

def body329_58 : Prog (BitVec 64) :=
.dec ("payload_len") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "body"]) body329_57

def body329_59 : Prog (BitVec 64) :=
.seq body329_47 body329_58

def body329_60 : Prog (BitVec 64) :=
.seq body329_38 body329_59

def body329_61 : Prog (BitVec 64) :=
.seq body329_29 body329_60

def body329_62 : Prog (BitVec 64) :=
.seq body329_26 body329_61

def body329_63 : Prog (BitVec 64) :=
.seq body329_20 body329_62

def body329_64 : Prog (BitVec 64) :=
.seq body329_1 body329_63

def body329_65 : Prog (BitVec 64) :=
.seq body329_17 body329_64

def body329_66 : Prog (BitVec 64) :=
.seq body329_1 body329_65

def body329_67 : Prog (BitVec 64) :=
.seq body329_16 body329_66

def body329_68 : Prog (BitVec 64) :=
.seq body329_1 body329_67

def body329_69 : Prog (BitVec 64) :=
.seq body329_15 body329_68

def body329_70 : Prog (BitVec 64) :=
.seq body329_1 body329_69

def body329_71 : Prog (BitVec 64) :=
.seq body329_14 body329_70

def body329_72 : Prog (BitVec 64) :=
.seq body329_13 body329_71

def body329_73 : Prog (BitVec 64) :=
.seq body329_1 body329_72

def body329_74 : Prog (BitVec 64) :=
.seq body329_5 body329_73

def body329_75 : Prog (BitVec 64) :=
.seq body329_4 body329_74

def body329_76 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body329_75

def body329_77 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64])) body329_76

def body329_78 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "body") body329_77

def body329_79 : Prog (BitVec 64) :=
.dec ("body") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 10#64]) body329_78

def body329_80 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "bound"]) body329_79

def body329_81 : Prog (BitVec 64) :=
.decCall ("bound") (Flapjack.Shape.one) ("tx_encode_bound") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body329_80

def body329_82 : Prog (BitVec 64) :=
.seq body329_4 body329_5

def body329_83 : Prog (BitVec 64) :=
.seq body329_82 body329_1

def body329_84 : Prog (BitVec 64) :=
.seq body329_8 body329_1

def body329_85 : Prog (BitVec 64) :=
.seq body329_84 body329_9

def body329_86 : Prog (BitVec 64) :=
.seq body329_85 body329_1

def body329_87 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notLower (Flapjack.Exp.const 1#64) (Flapjack.Exp.var Flapjack.VarKind.local "t")) body329_7 body329_86

def body329_88 : Prog (BitVec 64) :=
.seq body329_83 body329_87

def body329_89 : Prog (BitVec 64) :=
.seq body329_88 body329_14

def body329_90 : Prog (BitVec 64) :=
.seq body329_89 body329_1

def body329_91 : Prog (BitVec 64) :=
.seq body329_90 body329_15

def body329_92 : Prog (BitVec 64) :=
.seq body329_91 body329_1

def body329_93 : Prog (BitVec 64) :=
.seq body329_92 body329_16

def body329_94 : Prog (BitVec 64) :=
.seq body329_93 body329_1

def body329_95 : Prog (BitVec 64) :=
.seq body329_94 body329_17

def body329_96 : Prog (BitVec 64) :=
.seq body329_95 body329_1

def body329_97 : Prog (BitVec 64) :=
.seq body329_96 body329_20

def body329_98 : Prog (BitVec 64) :=
.seq body329_21 body329_1

def body329_99 : Prog (BitVec 64) :=
.seq body329_98 body329_22

def body329_100 : Prog (BitVec 64) :=
.seq body329_99 body329_1

def body329_101 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "t") (Flapjack.Exp.const 3#64)) body329_100 body329_3

def body329_102 : Prog (BitVec 64) :=
.seq body329_97 body329_101

def body329_103 : Prog (BitVec 64) :=
.seq body329_102 body329_29

def body329_104 : Prog (BitVec 64) :=
.seq body329_30 body329_1

def body329_105 : Prog (BitVec 64) :=
.seq body329_104 body329_31

def body329_106 : Prog (BitVec 64) :=
.seq body329_105 body329_1

def body329_107 : Prog (BitVec 64) :=
.seq body329_106 body329_32

def body329_108 : Prog (BitVec 64) :=
.seq body329_107 body329_1

def body329_109 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mode") (Flapjack.Exp.const 0#64)) body329_108 body329_3

def body329_110 : Prog (BitVec 64) :=
.seq body329_103 body329_109

def body329_111 : Prog (BitVec 64) :=
.seq body329_39 body329_1

def body329_112 : Prog (BitVec 64) :=
.seq body329_111 body329_40

def body329_113 : Prog (BitVec 64) :=
.seq body329_112 body329_41

def body329_114 : Prog (BitVec 64) :=
.seq body329_113 body329_42

def body329_115 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mode") (Flapjack.Exp.const 2#64)) body329_114 body329_3

def body329_116 : Prog (BitVec 64) :=
.seq body329_110 body329_115

def body329_117 : Prog (BitVec 64) :=
.seq body329_48 body329_52

def body329_118 : Prog (BitVec 64) :=
.seq body329_117 body329_53

def body329_119 : Prog (BitVec 64) :=
.dec ("start") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "body", Flapjack.Exp.var Flapjack.VarKind.local "hl"]) body329_118

def body329_120 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "payload_len"]) body329_119

def body329_121 : Prog (BitVec 64) :=
.dec ("payload_len") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "body"]) body329_120

def body329_122 : Prog (BitVec 64) :=
.seq body329_116 body329_121

def body329_123 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body329_122

def body329_124 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "tx", Flapjack.Exp.const 0#64])) body329_123

def body329_125 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "body") body329_124

def body329_126 : Prog (BitVec 64) :=
.dec ("body") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 10#64]) body329_125

def body329_127 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "bound"]) body329_126

def body329_128 : Prog (BitVec 64) :=
.decCall ("bound") (Flapjack.Shape.one) ("tx_encode_bound") ([Flapjack.Exp.var Flapjack.VarKind.local "tx"]) body329_127

def originalData329 : Decl (BitVec 64) :=
.function { name := "tx_encode_generic", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("mode", Flapjack.Shape.one), ("chain_id", Flapjack.Shape.one)], body := body329_81, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData329 : Decl (BitVec 64) :=
.function { name := "tx_encode_generic", inline := false, exported := false, params := [("tx", Flapjack.Shape.one), ("mode", Flapjack.Shape.one), ("chain_id", Flapjack.Shape.one)], body := body329_128, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original329 := Pancake.PanLang.declToHOL originalData329
def simplified329 := Pancake.PanLang.declToHOL simplifiedData329
end InitECandidate.Proofs.FrontendStages.Declarations
