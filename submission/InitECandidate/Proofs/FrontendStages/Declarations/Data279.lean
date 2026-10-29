import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify263
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body279_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "go" (Flapjack.Exp.const 0#64)

def body279_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "res" (Flapjack.Exp.const 0#64)

def body279_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 2#64]

def body279_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body279_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 0#64)) body279_2 body279_3

def body279_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "node_invalidate" [Flapjack.Exp.var Flapjack.VarKind.local "node"]

def body279_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "res" (Flapjack.Exp.var Flapjack.VarKind.local "node")

def body279_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body279_1 body279_3

def body279_8 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"],
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.var Flapjack.VarKind.local "level"]]) body279_7

def body279_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64]))
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.var Flapjack.VarKind.local "level"])) body279_8 body279_3

def body279_10 : Prog (BitVec 64) :=
.seq body279_6 body279_9

def body279_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "top")

def body279_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "node")

def body279_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 2#64)

def body279_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "seg")

def body279_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "sl")

def body279_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top" (Flapjack.Exp.var Flapjack.VarKind.local "fr")

def body279_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "node"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 48#64]))

def body279_18 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "level"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "level", Flapjack.Exp.var Flapjack.VarKind.local "sl"])

def body279_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "go" (Flapjack.Exp.const 1#64)

def body279_20 : Prog (BitVec 64) :=
.seq body279_18 body279_19

def body279_21 : Prog (BitVec 64) :=
.seq body279_17 body279_20

def body279_22 : Prog (BitVec 64) :=
.seq body279_16 body279_21

def body279_23 : Prog (BitVec 64) :=
.seq body279_15 body279_22

def body279_24 : Prog (BitVec 64) :=
.seq body279_14 body279_23

def body279_25 : Prog (BitVec 64) :=
.seq body279_13 body279_24

def body279_26 : Prog (BitVec 64) :=
.seq body279_12 body279_25

def body279_27 : Prog (BitVec 64) :=
.seq body279_11 body279_26

def body279_28 : Prog (BitVec 64) :=
.decCall ("fr") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 40#64]) body279_27

def body279_29 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "pl")
  (Flapjack.Exp.var Flapjack.VarKind.local "sl")) body279_6 body279_28

def body279_30 : Prog (BitVec 64) :=
.decCall ("pl") (Flapjack.Shape.one) ("common_prefix_length") ([Flapjack.Exp.var Flapjack.VarKind.local "seg", Flapjack.Exp.var Flapjack.VarKind.local "sl",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"],
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.var Flapjack.VarKind.local "level"]]) body279_29

def body279_31 : Prog (BitVec 64) :=
.dec ("sl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64])) body279_30

def body279_32 : Prog (BitVec 64) :=
.dec ("seg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64])) body279_31

def body279_33 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.const 0#64)

def body279_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.const 0#64)

def body279_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "res"), none)) "_collapse_branch"
  [Flapjack.Exp.var Flapjack.VarKind.local "node"]

def body279_36 : Prog (BitVec 64) :=
.seq body279_34 body279_35

def body279_37 : Prog (BitVec 64) :=
.seq body279_33 body279_36

def body279_38 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 168#64]))
  (Flapjack.Exp.const 0#64)) body279_6 body279_37

def body279_39 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr2", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "top")

def body279_40 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr2", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "node")

def body279_41 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr2", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 3#64)

def body279_42 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr2", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "idx")

def body279_43 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top" (Flapjack.Exp.var Flapjack.VarKind.local "fr2")

def body279_44 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "node"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64,
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "idx", Flapjack.Exp.const 8#64]]))

def body279_45 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "level"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "level", Flapjack.Exp.const 1#64])

def body279_46 : Prog (BitVec 64) :=
.seq body279_45 body279_19

def body279_47 : Prog (BitVec 64) :=
.seq body279_44 body279_46

def body279_48 : Prog (BitVec 64) :=
.seq body279_43 body279_47

def body279_49 : Prog (BitVec 64) :=
.seq body279_42 body279_48

def body279_50 : Prog (BitVec 64) :=
.seq body279_41 body279_49

def body279_51 : Prog (BitVec 64) :=
.seq body279_40 body279_50

def body279_52 : Prog (BitVec 64) :=
.seq body279_39 body279_51

def body279_53 : Prog (BitVec 64) :=
.decCall ("fr2") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 40#64]) body279_52

def body279_54 : Prog (BitVec 64) :=
.dec ("idx") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"])) body279_53

def body279_55 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "level")
  (Flapjack.Exp.var Flapjack.VarKind.local "klen")) body279_38 body279_54

def body279_56 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 2#64)) body279_32 body279_55

def body279_57 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 1#64)) body279_10 body279_56

def body279_58 : Prog (BitVec 64) :=
.seq body279_5 body279_57

def body279_59 : Prog (BitVec 64) :=
.seq body279_4 body279_58

def body279_60 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 0#64])) body279_59

def body279_61 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "node") (Flapjack.Exp.const 0#64)) body279_1 body279_60

def body279_62 : Prog (BitVec 64) :=
.seq body279_0 body279_61

def body279_63 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "go") (Flapjack.Exp.const 0#64)) body279_62

def body279_64 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "res"), none)) "_delete_ext_finish"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnode",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "res"]

def body279_65 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "fnode", Flapjack.Exp.const 32#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 32#64]),
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "res")

def body279_66 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "res"), none)) "_collapse_branch"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnode"]

def body279_67 : Prog (BitVec 64) :=
.seq body279_65 body279_66

def body279_68 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.const 2#64)) body279_64 body279_67

def body279_69 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 0#64]))

def body279_70 : Prog (BitVec 64) :=
.seq body279_68 body279_69

def body279_71 : Prog (BitVec 64) :=
.dec ("fnode") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 8#64])) body279_70

def body279_72 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 0#64)) body279_71

def body279_73 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "res")

def body279_74 : Prog (BitVec 64) :=
.seq body279_72 body279_73

def body279_75 : Prog (BitVec 64) :=
.seq body279_63 body279_74

def body279_76 : Prog (BitVec 64) :=
.dec ("go") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body279_75

def body279_77 : Prog (BitVec 64) :=
.dec ("res") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body279_76

def body279_78 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body279_77

def body279_79 : Prog (BitVec 64) :=
.seq body279_4 body279_5

def body279_80 : Prog (BitVec 64) :=
.seq body279_11 body279_12

def body279_81 : Prog (BitVec 64) :=
.seq body279_80 body279_13

def body279_82 : Prog (BitVec 64) :=
.seq body279_81 body279_14

def body279_83 : Prog (BitVec 64) :=
.seq body279_82 body279_15

def body279_84 : Prog (BitVec 64) :=
.seq body279_83 body279_16

def body279_85 : Prog (BitVec 64) :=
.seq body279_84 body279_17

def body279_86 : Prog (BitVec 64) :=
.seq body279_85 body279_18

def body279_87 : Prog (BitVec 64) :=
.seq body279_86 body279_19

def body279_88 : Prog (BitVec 64) :=
.decCall ("fr") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 40#64]) body279_87

def body279_89 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "pl")
  (Flapjack.Exp.var Flapjack.VarKind.local "sl")) body279_6 body279_88

def body279_90 : Prog (BitVec 64) :=
.decCall ("pl") (Flapjack.Shape.one) ("common_prefix_length") ([Flapjack.Exp.var Flapjack.VarKind.local "seg", Flapjack.Exp.var Flapjack.VarKind.local "sl",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"],
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.var Flapjack.VarKind.local "level"]]) body279_89

def body279_91 : Prog (BitVec 64) :=
.dec ("sl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64])) body279_90

def body279_92 : Prog (BitVec 64) :=
.dec ("seg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64])) body279_91

def body279_93 : Prog (BitVec 64) :=
.seq body279_33 body279_34

def body279_94 : Prog (BitVec 64) :=
.seq body279_93 body279_35

def body279_95 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 168#64]))
  (Flapjack.Exp.const 0#64)) body279_6 body279_94

def body279_96 : Prog (BitVec 64) :=
.seq body279_39 body279_40

def body279_97 : Prog (BitVec 64) :=
.seq body279_96 body279_41

def body279_98 : Prog (BitVec 64) :=
.seq body279_97 body279_42

def body279_99 : Prog (BitVec 64) :=
.seq body279_98 body279_43

def body279_100 : Prog (BitVec 64) :=
.seq body279_99 body279_44

def body279_101 : Prog (BitVec 64) :=
.seq body279_100 body279_45

def body279_102 : Prog (BitVec 64) :=
.seq body279_101 body279_19

def body279_103 : Prog (BitVec 64) :=
.decCall ("fr2") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 40#64]) body279_102

def body279_104 : Prog (BitVec 64) :=
.dec ("idx") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"])) body279_103

def body279_105 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "level")
  (Flapjack.Exp.var Flapjack.VarKind.local "klen")) body279_95 body279_104

def body279_106 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 2#64)) body279_92 body279_105

def body279_107 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 1#64)) body279_10 body279_106

def body279_108 : Prog (BitVec 64) :=
.seq body279_79 body279_107

def body279_109 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 0#64])) body279_108

def body279_110 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "node") (Flapjack.Exp.const 0#64)) body279_1 body279_109

def body279_111 : Prog (BitVec 64) :=
.seq body279_0 body279_110

def body279_112 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "go") (Flapjack.Exp.const 0#64)) body279_111

def body279_113 : Prog (BitVec 64) :=
.seq body279_112 body279_72

def body279_114 : Prog (BitVec 64) :=
.seq body279_113 body279_73

def body279_115 : Prog (BitVec 64) :=
.dec ("go") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body279_114

def body279_116 : Prog (BitVec 64) :=
.dec ("res") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body279_115

def body279_117 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body279_116

def originalData279 : Decl (BitVec 64) :=
.function { name := "_mpt_delete_node_body", inline := false, exported := false, params := [("node", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("klen", Flapjack.Shape.one), ("level", Flapjack.Shape.one)], body := body279_78, returnShape := (Flapjack.Shape.one) }
def simplifiedData279 : Decl (BitVec 64) :=
.function { name := "_mpt_delete_node_body", inline := false, exported := false, params := [("node", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("klen", Flapjack.Shape.one), ("level", Flapjack.Shape.one)], body := body279_117, returnShape := (Flapjack.Shape.one) }
def original279 := Pancake.PanLang.declToHOL originalData279
def simplified279 := Pancake.PanLang.declToHOL simplifiedData279
end InitECandidate.Proofs.FrontendStages.Declarations
