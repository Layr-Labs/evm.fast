import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify214
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body230_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "p"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "w"])

def body230_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 16#64]),
    Flapjack.Exp.const 32#64]

def body230_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.const 20#64]

def body230_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.const 32#64]

def body230_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 40#64]),
    Flapjack.Exp.const 32#64]

def body230_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 48#64]),
    Flapjack.Exp.const 32#64]

def body230_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 56#64]),
    Flapjack.Exp.const 256#64]

def body230_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 64#64])]

def body230_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 96#64])]

def body230_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 104#64])]

def body230_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 112#64])]

def body230_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 120#64])]

def body230_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 128#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 136#64])]

def body230_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 144#64]),
    Flapjack.Exp.const 32#64]

def body230_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 152#64]),
    Flapjack.Exp.const 8#64]

def body230_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_put_u256"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load
      (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 160#64])]

def body230_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 192#64]),
    Flapjack.Exp.const 32#64]

def body230_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 200#64])]

def body230_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 208#64])]

def body230_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 216#64]),
    Flapjack.Exp.const 32#64]

def body230_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 224#64]),
    Flapjack.Exp.const 32#64]

def body230_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_bytes"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 232#64]),
    Flapjack.Exp.const 32#64]

def body230_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "w"), none)) "rlp_encode_word"
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 240#64])]

def body230_23 : Prog (BitVec 64) :=
.seq body230_22 body230_0

def body230_24 : Prog (BitVec 64) :=
.seq body230_0 body230_23

def body230_25 : Prog (BitVec 64) :=
.seq body230_21 body230_24

def body230_26 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body230_27 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) body230_25 body230_26

def body230_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "rlp_encode_list_header"
  [Flapjack.Exp.var Flapjack.VarKind.local "start", Flapjack.Exp.var Flapjack.VarKind.local "payload_len"]

def body230_29 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "start",
      Flapjack.Exp.op Flapjack.BinOp.add
        [Flapjack.Exp.var Flapjack.VarKind.local "payload_len", Flapjack.Exp.var Flapjack.VarKind.local "hl"]])

def body230_30 : Prog (BitVec 64) :=
.seq body230_28 body230_29

def body230_31 : Prog (BitVec 64) :=
.dec ("start") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 9#64],
    Flapjack.Exp.var Flapjack.VarKind.local "hl"]) body230_30

def body230_32 : Prog (BitVec 64) :=
.decCall ("hl") (Flapjack.Shape.one) ("rlp_list_header_len") ([Flapjack.Exp.var Flapjack.VarKind.local "payload_len"]) body230_31

def body230_33 : Prog (BitVec 64) :=
.dec ("payload_len") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.sub
  [Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 9#64]]) body230_32

def body230_34 : Prog (BitVec 64) :=
.seq body230_27 body230_33

def body230_35 : Prog (BitVec 64) :=
.seq body230_0 body230_34

def body230_36 : Prog (BitVec 64) :=
.seq body230_20 body230_35

def body230_37 : Prog (BitVec 64) :=
.seq body230_0 body230_36

def body230_38 : Prog (BitVec 64) :=
.seq body230_19 body230_37

def body230_39 : Prog (BitVec 64) :=
.seq body230_0 body230_38

def body230_40 : Prog (BitVec 64) :=
.seq body230_18 body230_39

def body230_41 : Prog (BitVec 64) :=
.seq body230_0 body230_40

def body230_42 : Prog (BitVec 64) :=
.seq body230_17 body230_41

def body230_43 : Prog (BitVec 64) :=
.seq body230_0 body230_42

def body230_44 : Prog (BitVec 64) :=
.seq body230_16 body230_43

def body230_45 : Prog (BitVec 64) :=
.seq body230_0 body230_44

def body230_46 : Prog (BitVec 64) :=
.seq body230_15 body230_45

def body230_47 : Prog (BitVec 64) :=
.seq body230_0 body230_46

def body230_48 : Prog (BitVec 64) :=
.seq body230_14 body230_47

def body230_49 : Prog (BitVec 64) :=
.seq body230_0 body230_48

def body230_50 : Prog (BitVec 64) :=
.seq body230_13 body230_49

def body230_51 : Prog (BitVec 64) :=
.seq body230_0 body230_50

def body230_52 : Prog (BitVec 64) :=
.seq body230_12 body230_51

def body230_53 : Prog (BitVec 64) :=
.seq body230_0 body230_52

def body230_54 : Prog (BitVec 64) :=
.seq body230_11 body230_53

def body230_55 : Prog (BitVec 64) :=
.seq body230_0 body230_54

def body230_56 : Prog (BitVec 64) :=
.seq body230_10 body230_55

def body230_57 : Prog (BitVec 64) :=
.seq body230_0 body230_56

def body230_58 : Prog (BitVec 64) :=
.seq body230_9 body230_57

def body230_59 : Prog (BitVec 64) :=
.seq body230_0 body230_58

def body230_60 : Prog (BitVec 64) :=
.seq body230_8 body230_59

def body230_61 : Prog (BitVec 64) :=
.seq body230_0 body230_60

def body230_62 : Prog (BitVec 64) :=
.seq body230_7 body230_61

def body230_63 : Prog (BitVec 64) :=
.seq body230_0 body230_62

def body230_64 : Prog (BitVec 64) :=
.seq body230_6 body230_63

def body230_65 : Prog (BitVec 64) :=
.seq body230_0 body230_64

def body230_66 : Prog (BitVec 64) :=
.seq body230_5 body230_65

def body230_67 : Prog (BitVec 64) :=
.seq body230_0 body230_66

def body230_68 : Prog (BitVec 64) :=
.seq body230_4 body230_67

def body230_69 : Prog (BitVec 64) :=
.seq body230_0 body230_68

def body230_70 : Prog (BitVec 64) :=
.seq body230_3 body230_69

def body230_71 : Prog (BitVec 64) :=
.seq body230_0 body230_70

def body230_72 : Prog (BitVec 64) :=
.seq body230_2 body230_71

def body230_73 : Prog (BitVec 64) :=
.seq body230_0 body230_72

def body230_74 : Prog (BitVec 64) :=
.seq body230_1 body230_73

def body230_75 : Prog (BitVec 64) :=
.seq body230_0 body230_74

def body230_76 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.const 32#64]) body230_75

def body230_77 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 9#64]) body230_76

def body230_78 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1024#64]) body230_77

def body230_79 : Prog (BitVec 64) :=
.seq body230_0 body230_1

def body230_80 : Prog (BitVec 64) :=
.seq body230_79 body230_0

def body230_81 : Prog (BitVec 64) :=
.seq body230_80 body230_2

def body230_82 : Prog (BitVec 64) :=
.seq body230_81 body230_0

def body230_83 : Prog (BitVec 64) :=
.seq body230_82 body230_3

def body230_84 : Prog (BitVec 64) :=
.seq body230_83 body230_0

def body230_85 : Prog (BitVec 64) :=
.seq body230_84 body230_4

def body230_86 : Prog (BitVec 64) :=
.seq body230_85 body230_0

def body230_87 : Prog (BitVec 64) :=
.seq body230_86 body230_5

def body230_88 : Prog (BitVec 64) :=
.seq body230_87 body230_0

def body230_89 : Prog (BitVec 64) :=
.seq body230_88 body230_6

def body230_90 : Prog (BitVec 64) :=
.seq body230_89 body230_0

def body230_91 : Prog (BitVec 64) :=
.seq body230_90 body230_7

def body230_92 : Prog (BitVec 64) :=
.seq body230_91 body230_0

def body230_93 : Prog (BitVec 64) :=
.seq body230_92 body230_8

def body230_94 : Prog (BitVec 64) :=
.seq body230_93 body230_0

def body230_95 : Prog (BitVec 64) :=
.seq body230_94 body230_9

def body230_96 : Prog (BitVec 64) :=
.seq body230_95 body230_0

def body230_97 : Prog (BitVec 64) :=
.seq body230_96 body230_10

def body230_98 : Prog (BitVec 64) :=
.seq body230_97 body230_0

def body230_99 : Prog (BitVec 64) :=
.seq body230_98 body230_11

def body230_100 : Prog (BitVec 64) :=
.seq body230_99 body230_0

def body230_101 : Prog (BitVec 64) :=
.seq body230_100 body230_12

def body230_102 : Prog (BitVec 64) :=
.seq body230_101 body230_0

def body230_103 : Prog (BitVec 64) :=
.seq body230_102 body230_13

def body230_104 : Prog (BitVec 64) :=
.seq body230_103 body230_0

def body230_105 : Prog (BitVec 64) :=
.seq body230_104 body230_14

def body230_106 : Prog (BitVec 64) :=
.seq body230_105 body230_0

def body230_107 : Prog (BitVec 64) :=
.seq body230_106 body230_15

def body230_108 : Prog (BitVec 64) :=
.seq body230_107 body230_0

def body230_109 : Prog (BitVec 64) :=
.seq body230_108 body230_16

def body230_110 : Prog (BitVec 64) :=
.seq body230_109 body230_0

def body230_111 : Prog (BitVec 64) :=
.seq body230_110 body230_17

def body230_112 : Prog (BitVec 64) :=
.seq body230_111 body230_0

def body230_113 : Prog (BitVec 64) :=
.seq body230_112 body230_18

def body230_114 : Prog (BitVec 64) :=
.seq body230_113 body230_0

def body230_115 : Prog (BitVec 64) :=
.seq body230_114 body230_19

def body230_116 : Prog (BitVec 64) :=
.seq body230_115 body230_0

def body230_117 : Prog (BitVec 64) :=
.seq body230_116 body230_20

def body230_118 : Prog (BitVec 64) :=
.seq body230_117 body230_0

def body230_119 : Prog (BitVec 64) :=
.seq body230_21 body230_0

def body230_120 : Prog (BitVec 64) :=
.seq body230_119 body230_22

def body230_121 : Prog (BitVec 64) :=
.seq body230_120 body230_0

def body230_122 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) body230_121 body230_26

def body230_123 : Prog (BitVec 64) :=
.seq body230_118 body230_122

def body230_124 : Prog (BitVec 64) :=
.seq body230_123 body230_33

def body230_125 : Prog (BitVec 64) :=
.decCall ("w") (Flapjack.Shape.one) ("rlp_encode_bytes") ([Flapjack.Exp.var Flapjack.VarKind.local "p",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.const 8#64]),
  Flapjack.Exp.const 32#64]) body230_124

def body230_126 : Prog (BitVec 64) :=
.dec ("p") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "buf", Flapjack.Exp.const 9#64]) body230_125

def body230_127 : Prog (BitVec 64) :=
.decCall ("buf") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 1024#64]) body230_126

def originalData230 : Decl (BitVec 64) :=
.function { name := "encode_header", inline := false, exported := false, params := [("h", Flapjack.Shape.one)], body := body230_78, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData230 : Decl (BitVec 64) :=
.function { name := "encode_header", inline := false, exported := false, params := [("h", Flapjack.Shape.one)], body := body230_127, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original230 := Pancake.PanLang.declToHOL originalData230
def simplified230 := Pancake.PanLang.declToHOL simplifiedData230
end InitECandidate.Proofs.FrontendStages.Declarations
