import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify247
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body263_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "result"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "d"))

def body263_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "mode" (Flapjack.Exp.const 0#64)

def body263_2 : Prog (BitVec 64) :=
.seq body263_0 body263_1

def body263_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "d"), Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "top")

def body263_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top" (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "d"))

def body263_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "slot" (Flapjack.Exp.const 1#64)

def body263_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "slot" (Flapjack.Exp.const 0#64)

def body263_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.const 1#64)) body263_5 body263_6

def body263_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "mode" (Flapjack.Exp.const 2#64)

def body263_9 : Prog (BitVec 64) :=
.seq body263_7 body263_8

def body263_10 : Prog (BitVec 64) :=
.seq body263_4 body263_9

def body263_11 : Prog (BitVec 64) :=
.seq body263_3 body263_10

def body263_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "d"))
  (Flapjack.Exp.const 0#64)) body263_2 body263_11

def body263_13 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("_decode_step") ([Flapjack.Exp.var Flapjack.VarKind.local "db", Flapjack.Exp.var Flapjack.VarKind.local "cur_p",
  Flapjack.Exp.var Flapjack.VarKind.local "cur_n"]) body263_12

def body263_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.const 0#64)

def body263_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "result"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r"))

def body263_16 : Prog (BitVec 64) :=
.seq body263_15 body263_1

def body263_17 : Prog (BitVec 64) :=
.seq body263_14 body263_16

def body263_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "r"))

def body263_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cur_p"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r"))

def body263_20 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cur_n"
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "r"))

def body263_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "mode" (Flapjack.Exp.const 1#64)

def body263_22 : Prog (BitVec 64) :=
.seq body263_20 body263_21

def body263_23 : Prog (BitVec 64) :=
.seq body263_19 body263_22

def body263_24 : Prog (BitVec 64) :=
.seq body263_18 body263_23

def body263_25 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r"))
  (Flapjack.Exp.const 0#64)) body263_17 body263_24

def body263_26 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("_resolve_step") ([Flapjack.Exp.var Flapjack.VarKind.local "db",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "slot", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "slot", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body263_25

def body263_27 : Prog (BitVec 64) :=
.dec ("arr") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 24#64])) body263_26

def body263_28 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "go" (Flapjack.Exp.const 0#64)

def body263_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "result", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "hash")

def body263_30 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body263_31 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "hash")
        (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "result")
        (Flapjack.Exp.const 0#64))]) body263_29 body263_30

def body263_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 8#64]

def body263_33 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "result") (Flapjack.Exp.const 0#64)) body263_32 body263_30

def body263_34 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "ck") (Flapjack.Exp.const 3#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "ck") (Flapjack.Exp.const 0#64))]) body263_32 body263_30

def body263_35 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ex", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 48#64]))

def body263_36 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ex", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 56#64]))

def body263_37 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 0#64]))

def body263_38 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "result" (Flapjack.Exp.var Flapjack.VarKind.local "ex")

def body263_39 : Prog (BitVec 64) :=
.seq body263_37 body263_38

def body263_40 : Prog (BitVec 64) :=
.seq body263_36 body263_39

def body263_41 : Prog (BitVec 64) :=
.seq body263_35 body263_40

def body263_42 : Prog (BitVec 64) :=
.decCall ("ex") (Flapjack.Shape.one) ("node_new_ext") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 64#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 72#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "result"]) body263_41

def body263_43 : Prog (BitVec 64) :=
.seq body263_34 body263_42

def body263_44 : Prog (BitVec 64) :=
.dec ("ck") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "result", Flapjack.Exp.const 0#64])) body263_43

def body263_45 : Prog (BitVec 64) :=
.seq body263_33 body263_44

def body263_46 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 32#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "result")

def body263_47 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 40#64]),
      Flapjack.Exp.const 1#64])

def body263_48 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "result") (Flapjack.Exp.const 0#64)) body263_47 body263_30

def body263_49 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body263_50 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "i")

def body263_51 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "slot" (Flapjack.Exp.var Flapjack.VarKind.local "i")

def body263_52 : Prog (BitVec 64) :=
.seq body263_51 body263_8

def body263_53 : Prog (BitVec 64) :=
.seq body263_50 body263_52

def body263_54 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bv"))

def body263_55 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "bv"))

def body263_56 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "occ"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "occ", Flapjack.Exp.const 1#64])

def body263_57 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "bv"))
  (Flapjack.Exp.const 0#64)) body263_56 body263_30

def body263_58 : Prog (BitVec 64) :=
.seq body263_55 body263_57

def body263_59 : Prog (BitVec 64) :=
.seq body263_54 body263_58

def body263_60 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "bv"))
  (Flapjack.Exp.const 0#64)) body263_59 body263_30

def body263_61 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 9#64]

def body263_62 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "occ") (Flapjack.Exp.const 2#64)) body263_61 body263_30

def body263_63 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 48#64]))

def body263_64 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 56#64]))

def body263_65 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "result" (Flapjack.Exp.var Flapjack.VarKind.local "br")

def body263_66 : Prog (BitVec 64) :=
.seq body263_37 body263_65

def body263_67 : Prog (BitVec 64) :=
.seq body263_64 body263_66

def body263_68 : Prog (BitVec 64) :=
.seq body263_63 body263_67

def body263_69 : Prog (BitVec 64) :=
.seq body263_62 body263_68

def body263_70 : Prog (BitVec 64) :=
.seq body263_60 body263_69

def body263_71 : Prog (BitVec 64) :=
.dec ("occ") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 40#64])) body263_70

def body263_72 : Prog (BitVec 64) :=
.decCall ("bv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr2",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 16#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr2",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 16#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body263_71

def body263_73 : Prog (BitVec 64) :=
.dec ("arr2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 24#64])) body263_72

def body263_74 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 16#64)) body263_53 body263_73

def body263_75 : Prog (BitVec 64) :=
.seq body263_49 body263_74

def body263_76 : Prog (BitVec 64) :=
.seq body263_48 body263_75

def body263_77 : Prog (BitVec 64) :=
.seq body263_46 body263_76

def body263_78 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 32#64])) body263_77

def body263_79 : Prog (BitVec 64) :=
.dec ("br") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 16#64])) body263_78

def body263_80 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.const 1#64)) body263_45 body263_79

def body263_81 : Prog (BitVec 64) :=
.seq body263_31 body263_80

def body263_82 : Prog (BitVec 64) :=
.dec ("hash") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 80#64])) body263_81

def body263_83 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 0#64)) body263_28 body263_82

def body263_84 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mode") (Flapjack.Exp.const 2#64)) body263_27 body263_83

def body263_85 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mode") (Flapjack.Exp.const 1#64)) body263_13 body263_84

def body263_86 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "go") (Flapjack.Exp.const 0#64)) body263_85

def body263_87 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "result")

def body263_88 : Prog (BitVec 64) :=
.seq body263_86 body263_87

def body263_89 : Prog (BitVec 64) :=
.dec ("go") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body263_88

def body263_90 : Prog (BitVec 64) :=
.dec ("slot") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body263_89

def body263_91 : Prog (BitVec 64) :=
.dec ("mode") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body263_90

def body263_92 : Prog (BitVec 64) :=
.dec ("cur_n") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "n") body263_91

def body263_93 : Prog (BitVec 64) :=
.dec ("cur_p") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p") body263_92

def body263_94 : Prog (BitVec 64) :=
.dec ("result") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body263_93

def body263_95 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body263_94

def body263_96 : Prog (BitVec 64) :=
.seq body263_3 body263_4

def body263_97 : Prog (BitVec 64) :=
.seq body263_96 body263_7

def body263_98 : Prog (BitVec 64) :=
.seq body263_97 body263_8

def body263_99 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "d"))
  (Flapjack.Exp.const 0#64)) body263_2 body263_98

def body263_100 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("_decode_step") ([Flapjack.Exp.var Flapjack.VarKind.local "db", Flapjack.Exp.var Flapjack.VarKind.local "cur_p",
  Flapjack.Exp.var Flapjack.VarKind.local "cur_n"]) body263_99

def body263_101 : Prog (BitVec 64) :=
.seq body263_14 body263_15

def body263_102 : Prog (BitVec 64) :=
.seq body263_101 body263_1

def body263_103 : Prog (BitVec 64) :=
.seq body263_18 body263_19

def body263_104 : Prog (BitVec 64) :=
.seq body263_103 body263_20

def body263_105 : Prog (BitVec 64) :=
.seq body263_104 body263_21

def body263_106 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r"))
  (Flapjack.Exp.const 0#64)) body263_102 body263_105

def body263_107 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("_resolve_step") ([Flapjack.Exp.var Flapjack.VarKind.local "db",
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "slot", Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "slot", Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body263_106

def body263_108 : Prog (BitVec 64) :=
.dec ("arr") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 24#64])) body263_107

def body263_109 : Prog (BitVec 64) :=
.seq body263_35 body263_36

def body263_110 : Prog (BitVec 64) :=
.seq body263_109 body263_37

def body263_111 : Prog (BitVec 64) :=
.seq body263_110 body263_38

def body263_112 : Prog (BitVec 64) :=
.decCall ("ex") (Flapjack.Shape.one) ("node_new_ext") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 64#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 72#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "result"]) body263_111

def body263_113 : Prog (BitVec 64) :=
.seq body263_34 body263_112

def body263_114 : Prog (BitVec 64) :=
.dec ("ck") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "result", Flapjack.Exp.const 0#64])) body263_113

def body263_115 : Prog (BitVec 64) :=
.seq body263_33 body263_114

def body263_116 : Prog (BitVec 64) :=
.seq body263_46 body263_48

def body263_117 : Prog (BitVec 64) :=
.seq body263_116 body263_49

def body263_118 : Prog (BitVec 64) :=
.seq body263_50 body263_51

def body263_119 : Prog (BitVec 64) :=
.seq body263_118 body263_8

def body263_120 : Prog (BitVec 64) :=
.seq body263_54 body263_55

def body263_121 : Prog (BitVec 64) :=
.seq body263_120 body263_57

def body263_122 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "bv"))
  (Flapjack.Exp.const 0#64)) body263_121 body263_30

def body263_123 : Prog (BitVec 64) :=
.seq body263_122 body263_62

def body263_124 : Prog (BitVec 64) :=
.seq body263_123 body263_63

def body263_125 : Prog (BitVec 64) :=
.seq body263_124 body263_64

def body263_126 : Prog (BitVec 64) :=
.seq body263_125 body263_37

def body263_127 : Prog (BitVec 64) :=
.seq body263_126 body263_65

def body263_128 : Prog (BitVec 64) :=
.dec ("occ") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 40#64])) body263_127

def body263_129 : Prog (BitVec 64) :=
.decCall ("bv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr2",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 16#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr2",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 16#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) body263_128

def body263_130 : Prog (BitVec 64) :=
.dec ("arr2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 24#64])) body263_129

def body263_131 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 16#64)) body263_119 body263_130

def body263_132 : Prog (BitVec 64) :=
.seq body263_117 body263_131

def body263_133 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 32#64])) body263_132

def body263_134 : Prog (BitVec 64) :=
.dec ("br") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 16#64])) body263_133

def body263_135 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.const 1#64)) body263_115 body263_134

def body263_136 : Prog (BitVec 64) :=
.seq body263_31 body263_135

def body263_137 : Prog (BitVec 64) :=
.dec ("hash") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 80#64])) body263_136

def body263_138 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 0#64)) body263_28 body263_137

def body263_139 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mode") (Flapjack.Exp.const 2#64)) body263_108 body263_138

def body263_140 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mode") (Flapjack.Exp.const 1#64)) body263_100 body263_139

def body263_141 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "go") (Flapjack.Exp.const 0#64)) body263_140

def body263_142 : Prog (BitVec 64) :=
.seq body263_141 body263_87

def body263_143 : Prog (BitVec 64) :=
.dec ("go") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body263_142

def body263_144 : Prog (BitVec 64) :=
.dec ("slot") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body263_143

def body263_145 : Prog (BitVec 64) :=
.dec ("mode") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body263_144

def body263_146 : Prog (BitVec 64) :=
.dec ("cur_n") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "n") body263_145

def body263_147 : Prog (BitVec 64) :=
.dec ("cur_p") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p") body263_146

def body263_148 : Prog (BitVec 64) :=
.dec ("result") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body263_147

def body263_149 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body263_148

def originalData263 : Decl (BitVec 64) :=
.function { name := "_decode_witness_node_body", inline := false, exported := false, params := [("db", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body263_95, returnShape := (Flapjack.Shape.one) }
def simplifiedData263 : Decl (BitVec 64) :=
.function { name := "_decode_witness_node_body", inline := false, exported := false, params := [("db", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := body263_149, returnShape := (Flapjack.Shape.one) }
def original263 := Pancake.PanLang.declToHOL originalData263
def simplified263 := Pancake.PanLang.declToHOL simplifiedData263
end InitECandidate.Proofs.FrontendStages.Declarations
