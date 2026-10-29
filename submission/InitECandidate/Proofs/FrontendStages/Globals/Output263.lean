import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data263
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate247
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody263_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "result"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "d"))

def globalBody263_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "mode" (Flapjack.Exp.const 0#64)

def globalBody263_2 : Prog (BitVec 64) :=
.seq globalBody263_0 globalBody263_1

def globalBody263_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "d"), Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "top")

def globalBody263_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top" (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "d"))

def globalBody263_5 : Prog (BitVec 64) :=
.seq globalBody263_3 globalBody263_4

def globalBody263_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "slot" (Flapjack.Exp.const 1#64)

def globalBody263_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "slot" (Flapjack.Exp.const 0#64)

def globalBody263_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.const 1#64)) globalBody263_6 globalBody263_7

def globalBody263_9 : Prog (BitVec 64) :=
.seq globalBody263_5 globalBody263_8

def globalBody263_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "mode" (Flapjack.Exp.const 2#64)

def globalBody263_11 : Prog (BitVec 64) :=
.seq globalBody263_9 globalBody263_10

def globalBody263_12 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "d"))
  (Flapjack.Exp.const 0#64)) globalBody263_2 globalBody263_11

def globalBody263_13 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("_decode_step") ([Flapjack.Exp.var Flapjack.VarKind.local "db", Flapjack.Exp.var Flapjack.VarKind.local "cur_p",
  Flapjack.Exp.var Flapjack.VarKind.local "cur_n"]) globalBody263_12

def globalBody263_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.const 0#64)

def globalBody263_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "result"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r"))

def globalBody263_16 : Prog (BitVec 64) :=
.seq globalBody263_14 globalBody263_15

def globalBody263_17 : Prog (BitVec 64) :=
.seq globalBody263_16 globalBody263_1

def globalBody263_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "r"))

def globalBody263_19 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cur_p"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "r"))

def globalBody263_20 : Prog (BitVec 64) :=
.seq globalBody263_18 globalBody263_19

def globalBody263_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "cur_n"
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "r"))

def globalBody263_22 : Prog (BitVec 64) :=
.seq globalBody263_20 globalBody263_21

def globalBody263_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "mode" (Flapjack.Exp.const 1#64)

def globalBody263_24 : Prog (BitVec 64) :=
.seq globalBody263_22 globalBody263_23

def globalBody263_25 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "r"))
  (Flapjack.Exp.const 0#64)) globalBody263_17 globalBody263_24

def globalBody263_26 : Prog (BitVec 64) :=
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
        Flapjack.Exp.const 8#64])]) globalBody263_25

def globalBody263_27 : Prog (BitVec 64) :=
.dec ("arr") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 24#64])) globalBody263_26

def globalBody263_28 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "go" (Flapjack.Exp.const 0#64)

def globalBody263_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "result", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "hash")

def globalBody263_30 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody263_31 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "hash")
        (Flapjack.Exp.const 0#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "result")
        (Flapjack.Exp.const 0#64))]) globalBody263_29 globalBody263_30

def globalBody263_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 8#64]

def globalBody263_33 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "result") (Flapjack.Exp.const 0#64)) globalBody263_32 globalBody263_30

def globalBody263_34 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "ck") (Flapjack.Exp.const 3#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "ck") (Flapjack.Exp.const 0#64))]) globalBody263_32 globalBody263_30

def globalBody263_35 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ex", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 48#64]))

def globalBody263_36 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "ex", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 56#64]))

def globalBody263_37 : Prog (BitVec 64) :=
.seq globalBody263_35 globalBody263_36

def globalBody263_38 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 0#64]))

def globalBody263_39 : Prog (BitVec 64) :=
.seq globalBody263_37 globalBody263_38

def globalBody263_40 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "result" (Flapjack.Exp.var Flapjack.VarKind.local "ex")

def globalBody263_41 : Prog (BitVec 64) :=
.seq globalBody263_39 globalBody263_40

def globalBody263_42 : Prog (BitVec 64) :=
.decCall ("ex") (Flapjack.Shape.one) ("node_new_ext") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 64#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 72#64]),
  Flapjack.Exp.var Flapjack.VarKind.local "result"]) globalBody263_41

def globalBody263_43 : Prog (BitVec 64) :=
.seq globalBody263_34 globalBody263_42

def globalBody263_44 : Prog (BitVec 64) :=
.dec ("ck") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "result", Flapjack.Exp.const 0#64])) globalBody263_43

def globalBody263_45 : Prog (BitVec 64) :=
.seq globalBody263_33 globalBody263_44

def globalBody263_46 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 32#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "result")

def globalBody263_47 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 40#64]),
      Flapjack.Exp.const 1#64])

def globalBody263_48 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "result") (Flapjack.Exp.const 0#64)) globalBody263_47 globalBody263_30

def globalBody263_49 : Prog (BitVec 64) :=
.seq globalBody263_46 globalBody263_48

def globalBody263_50 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def globalBody263_51 : Prog (BitVec 64) :=
.seq globalBody263_49 globalBody263_50

def globalBody263_52 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "i")

def globalBody263_53 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "slot" (Flapjack.Exp.var Flapjack.VarKind.local "i")

def globalBody263_54 : Prog (BitVec 64) :=
.seq globalBody263_52 globalBody263_53

def globalBody263_55 : Prog (BitVec 64) :=
.seq globalBody263_54 globalBody263_10

def globalBody263_56 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "bv"))

def globalBody263_57 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "bv"))

def globalBody263_58 : Prog (BitVec 64) :=
.seq globalBody263_56 globalBody263_57

def globalBody263_59 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "occ"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "occ", Flapjack.Exp.const 1#64])

def globalBody263_60 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "bv"))
  (Flapjack.Exp.const 0#64)) globalBody263_59 globalBody263_30

def globalBody263_61 : Prog (BitVec 64) :=
.seq globalBody263_58 globalBody263_60

def globalBody263_62 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "bv"))
  (Flapjack.Exp.const 0#64)) globalBody263_61 globalBody263_30

def globalBody263_63 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 9#64]

def globalBody263_64 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "occ") (Flapjack.Exp.const 2#64)) globalBody263_63 globalBody263_30

def globalBody263_65 : Prog (BitVec 64) :=
.seq globalBody263_62 globalBody263_64

def globalBody263_66 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 48#64]))

def globalBody263_67 : Prog (BitVec 64) :=
.seq globalBody263_65 globalBody263_66

def globalBody263_68 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "br", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 56#64]))

def globalBody263_69 : Prog (BitVec 64) :=
.seq globalBody263_67 globalBody263_68

def globalBody263_70 : Prog (BitVec 64) :=
.seq globalBody263_69 globalBody263_38

def globalBody263_71 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "result" (Flapjack.Exp.var Flapjack.VarKind.local "br")

def globalBody263_72 : Prog (BitVec 64) :=
.seq globalBody263_70 globalBody263_71

def globalBody263_73 : Prog (BitVec 64) :=
.dec ("occ") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 40#64])) globalBody263_72

def globalBody263_74 : Prog (BitVec 64) :=
.decCall ("bv") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr2",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 16#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr2",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 16#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) globalBody263_73

def globalBody263_75 : Prog (BitVec 64) :=
.dec ("arr2") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 24#64])) globalBody263_74

def globalBody263_76 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 16#64)) globalBody263_55 globalBody263_75

def globalBody263_77 : Prog (BitVec 64) :=
.seq globalBody263_51 globalBody263_76

def globalBody263_78 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 32#64])) globalBody263_77

def globalBody263_79 : Prog (BitVec 64) :=
.dec ("br") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 16#64])) globalBody263_78

def globalBody263_80 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.const 1#64)) globalBody263_45 globalBody263_79

def globalBody263_81 : Prog (BitVec 64) :=
.seq globalBody263_31 globalBody263_80

def globalBody263_82 : Prog (BitVec 64) :=
.dec ("hash") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 80#64])) globalBody263_81

def globalBody263_83 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 0#64)) globalBody263_28 globalBody263_82

def globalBody263_84 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mode") (Flapjack.Exp.const 2#64)) globalBody263_27 globalBody263_83

def globalBody263_85 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "mode") (Flapjack.Exp.const 1#64)) globalBody263_13 globalBody263_84

def globalBody263_86 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "go") (Flapjack.Exp.const 0#64)) globalBody263_85

def globalBody263_87 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "result")

def globalBody263_88 : Prog (BitVec 64) :=
.seq globalBody263_86 globalBody263_87

def globalBody263_89 : Prog (BitVec 64) :=
.dec ("go") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody263_88

def globalBody263_90 : Prog (BitVec 64) :=
.dec ("slot") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody263_89

def globalBody263_91 : Prog (BitVec 64) :=
.dec ("mode") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody263_90

def globalBody263_92 : Prog (BitVec 64) :=
.dec ("cur_n") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "n") globalBody263_91

def globalBody263_93 : Prog (BitVec 64) :=
.dec ("cur_p") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p") globalBody263_92

def globalBody263_94 : Prog (BitVec 64) :=
.dec ("result") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody263_93

def globalBody263_95 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody263_94

def globalData263 : Decl (BitVec 64) :=
.function { name := "_decode_witness_node_body", inline := false, exported := false, params := [("db", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody263_95, returnShape := (Flapjack.Shape.one) }
def globalOutput263 := Pancake.PanLang.declToHOL globalData263
end InitECandidate.Proofs.FrontendStages.Declarations
