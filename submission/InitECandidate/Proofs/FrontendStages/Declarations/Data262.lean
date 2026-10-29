import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify246
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body262_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (some (Flapjack.VarKind.local, "it"),
      some ("RlpErr", "e", Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 3#64])))
  "rlp_decode_fully" [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def body262_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body262_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body262_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 0#64)) body262_1 body262_2

def body262_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 4#64]

def body262_5 : Prog (BitVec 64) :=
.seq body262_3 body262_4

def body262_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 0#64)) body262_5 body262_2

def body262_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 5#64]

def body262_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pi"))
  (Flapjack.Exp.const 0#64)) body262_7 body262_2

def body262_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 6#64]

def body262_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "vi"))
  (Flapjack.Exp.const 0#64)) body262_9 body262_2

def body262_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "lf", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "p")

def body262_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "lf", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body262_13 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "lf"])

def body262_14 : Prog (BitVec 64) :=
.seq body262_12 body262_13

def body262_15 : Prog (BitVec 64) :=
.seq body262_11 body262_14

def body262_16 : Prog (BitVec 64) :=
.decCall ("lf") (Flapjack.Shape.one) ("node_new_leaf") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "cn"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "cn"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "vi"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "vi")]) body262_15

def body262_17 : Prog (BitVec 64) :=
.seq body262_10 body262_16

def body262_18 : Prog (BitVec 64) :=
.decCall ("vi") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 1#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 1#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body262_17

def body262_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "cn"))
  (Flapjack.Exp.const 0#64)) body262_18 body262_2

def body262_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 7#64]

def body262_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "cn"))
  (Flapjack.Exp.const 0#64)) body262_20 body262_2

def body262_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 1#64)

def body262_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "arr")

def body262_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "p")

def body262_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body262_26 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "cn"))

def body262_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "cn"))

def body262_28 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "rec"])

def body262_29 : Prog (BitVec 64) :=
.seq body262_27 body262_28

def body262_30 : Prog (BitVec 64) :=
.seq body262_26 body262_29

def body262_31 : Prog (BitVec 64) :=
.seq body262_25 body262_30

def body262_32 : Prog (BitVec 64) :=
.seq body262_24 body262_31

def body262_33 : Prog (BitVec 64) :=
.seq body262_23 body262_32

def body262_34 : Prog (BitVec 64) :=
.seq body262_22 body262_33

def body262_35 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 88#64]) body262_34

def body262_36 : Prog (BitVec 64) :=
.seq body262_21 body262_35

def body262_37 : Prog (BitVec 64) :=
.seq body262_19 body262_36

def body262_38 : Prog (BitVec 64) :=
.decCall ("cn") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("compact_to_nibbles") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "pi"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "pi")]) body262_37

def body262_39 : Prog (BitVec 64) :=
.seq body262_8 body262_38

def body262_40 : Prog (BitVec 64) :=
.decCall ("pi") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 0#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 0#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body262_39

def body262_41 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sl"))
  (Flapjack.Exp.const 2#64)) body262_40 body262_2

def body262_42 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sl"))
  (Flapjack.Exp.const 17#64)) body262_4 body262_2

def body262_43 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec2", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 2#64)

def body262_44 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec2", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "br")

def body262_45 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec2", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "arr")

def body262_46 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec2", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 0#64)

def body262_47 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec2", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 0#64)

def body262_48 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec2", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "p")

def body262_49 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec2", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def body262_50 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "rec2"])

def body262_51 : Prog (BitVec 64) :=
.seq body262_49 body262_50

def body262_52 : Prog (BitVec 64) :=
.seq body262_48 body262_51

def body262_53 : Prog (BitVec 64) :=
.seq body262_47 body262_52

def body262_54 : Prog (BitVec 64) :=
.seq body262_46 body262_53

def body262_55 : Prog (BitVec 64) :=
.seq body262_45 body262_54

def body262_56 : Prog (BitVec 64) :=
.seq body262_44 body262_55

def body262_57 : Prog (BitVec 64) :=
.seq body262_43 body262_56

def body262_58 : Prog (BitVec 64) :=
.decCall ("rec2") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 88#64]) body262_57

def body262_59 : Prog (BitVec 64) :=
.decCall ("br") (Flapjack.Shape.one) ("node_new_branch") ([]) body262_58

def body262_60 : Prog (BitVec 64) :=
.seq body262_42 body262_59

def body262_61 : Prog (BitVec 64) :=
.seq body262_41 body262_60

def body262_62 : Prog (BitVec 64) :=
.dec ("arr") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sl")) body262_61

def body262_63 : Prog (BitVec 64) :=
.decCall ("sl") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")]) body262_62

def body262_64 : Prog (BitVec 64) :=
.seq body262_6 body262_63

def body262_65 : Prog (BitVec 64) :=
.seq body262_0 body262_64

def body262_66 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body262_65

def body262_67 : Prog (BitVec 64) :=
.dec ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body262_66

def body262_68 : Prog (BitVec 64) :=
.seq body262_0 body262_6

def body262_69 : Prog (BitVec 64) :=
.seq body262_11 body262_12

def body262_70 : Prog (BitVec 64) :=
.seq body262_69 body262_13

def body262_71 : Prog (BitVec 64) :=
.decCall ("lf") (Flapjack.Shape.one) ("node_new_leaf") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "cn"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "cn"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "vi"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "vi")]) body262_70

def body262_72 : Prog (BitVec 64) :=
.seq body262_10 body262_71

def body262_73 : Prog (BitVec 64) :=
.decCall ("vi") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 1#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 1#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body262_72

def body262_74 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "cn"))
  (Flapjack.Exp.const 0#64)) body262_73 body262_2

def body262_75 : Prog (BitVec 64) :=
.seq body262_74 body262_21

def body262_76 : Prog (BitVec 64) :=
.seq body262_22 body262_23

def body262_77 : Prog (BitVec 64) :=
.seq body262_76 body262_24

def body262_78 : Prog (BitVec 64) :=
.seq body262_77 body262_25

def body262_79 : Prog (BitVec 64) :=
.seq body262_78 body262_26

def body262_80 : Prog (BitVec 64) :=
.seq body262_79 body262_27

def body262_81 : Prog (BitVec 64) :=
.seq body262_80 body262_28

def body262_82 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 88#64]) body262_81

def body262_83 : Prog (BitVec 64) :=
.seq body262_75 body262_82

def body262_84 : Prog (BitVec 64) :=
.decCall ("cn") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("compact_to_nibbles") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "pi"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "pi")]) body262_83

def body262_85 : Prog (BitVec 64) :=
.seq body262_8 body262_84

def body262_86 : Prog (BitVec 64) :=
.decCall ("pi") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 0#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 0#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body262_85

def body262_87 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sl"))
  (Flapjack.Exp.const 2#64)) body262_86 body262_2

def body262_88 : Prog (BitVec 64) :=
.seq body262_87 body262_42

def body262_89 : Prog (BitVec 64) :=
.seq body262_43 body262_44

def body262_90 : Prog (BitVec 64) :=
.seq body262_89 body262_45

def body262_91 : Prog (BitVec 64) :=
.seq body262_90 body262_46

def body262_92 : Prog (BitVec 64) :=
.seq body262_91 body262_47

def body262_93 : Prog (BitVec 64) :=
.seq body262_92 body262_48

def body262_94 : Prog (BitVec 64) :=
.seq body262_93 body262_49

def body262_95 : Prog (BitVec 64) :=
.seq body262_94 body262_50

def body262_96 : Prog (BitVec 64) :=
.decCall ("rec2") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 88#64]) body262_95

def body262_97 : Prog (BitVec 64) :=
.decCall ("br") (Flapjack.Shape.one) ("node_new_branch") ([]) body262_96

def body262_98 : Prog (BitVec 64) :=
.seq body262_88 body262_97

def body262_99 : Prog (BitVec 64) :=
.dec ("arr") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sl")) body262_98

def body262_100 : Prog (BitVec 64) :=
.decCall ("sl") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")]) body262_99

def body262_101 : Prog (BitVec 64) :=
.seq body262_68 body262_100

def body262_102 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body262_101

def body262_103 : Prog (BitVec 64) :=
.dec ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body262_102

def originalData262 : Decl (BitVec 64) :=
.function { name := "_decode_step", inline := false, exported := false, params := [("db", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body262_67, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData262 : Decl (BitVec 64) :=
.function { name := "_decode_step", inline := false, exported := false, params := [("db", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body262_103, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def original262 := Pancake.PanLang.declToHOL originalData262
def simplified262 := Pancake.PanLang.declToHOL simplifiedData262
end InitECandidate.Proofs.FrontendStages.Declarations
