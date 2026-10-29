import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data262
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate240
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody262_0 : Prog (BitVec 64) :=
Flapjack.Prog.call
  (some
    (some (Flapjack.VarKind.local, "it"),
      some ("RlpErr", "e", Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 3#64])))
  "rlp_decode_fully" [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.var Flapjack.VarKind.local "n"]

def globalBody262_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def globalBody262_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody262_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 0#64)) globalBody262_1 globalBody262_2

def globalBody262_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 4#64]

def globalBody262_5 : Prog (BitVec 64) :=
.seq globalBody262_3 globalBody262_4

def globalBody262_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "it"))
  (Flapjack.Exp.const 0#64)) globalBody262_5 globalBody262_2

def globalBody262_7 : Prog (BitVec 64) :=
.seq globalBody262_0 globalBody262_6

def globalBody262_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 5#64]

def globalBody262_9 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "pi"))
  (Flapjack.Exp.const 0#64)) globalBody262_8 globalBody262_2

def globalBody262_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 6#64]

def globalBody262_11 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "vi"))
  (Flapjack.Exp.const 0#64)) globalBody262_10 globalBody262_2

def globalBody262_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "lf", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "p")

def globalBody262_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "lf", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def globalBody262_14 : Prog (BitVec 64) :=
.seq globalBody262_12 globalBody262_13

def globalBody262_15 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.var Flapjack.VarKind.local "lf"])

def globalBody262_16 : Prog (BitVec 64) :=
.seq globalBody262_14 globalBody262_15

def globalBody262_17 : Prog (BitVec 64) :=
.decCall ("lf") (Flapjack.Shape.one) ("node_new_leaf") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "cn"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "cn"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "vi"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "vi")]) globalBody262_16

def globalBody262_18 : Prog (BitVec 64) :=
.seq globalBody262_11 globalBody262_17

def globalBody262_19 : Prog (BitVec 64) :=
.decCall ("vi") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 1#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 1#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) globalBody262_18

def globalBody262_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "cn"))
  (Flapjack.Exp.const 0#64)) globalBody262_19 globalBody262_2

def globalBody262_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 7#64]

def globalBody262_22 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "cn"))
  (Flapjack.Exp.const 0#64)) globalBody262_21 globalBody262_2

def globalBody262_23 : Prog (BitVec 64) :=
.seq globalBody262_20 globalBody262_22

def globalBody262_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 1#64)

def globalBody262_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "arr")

def globalBody262_26 : Prog (BitVec 64) :=
.seq globalBody262_24 globalBody262_25

def globalBody262_27 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "p")

def globalBody262_28 : Prog (BitVec 64) :=
.seq globalBody262_26 globalBody262_27

def globalBody262_29 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def globalBody262_30 : Prog (BitVec 64) :=
.seq globalBody262_28 globalBody262_29

def globalBody262_31 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "cn"))

def globalBody262_32 : Prog (BitVec 64) :=
.seq globalBody262_30 globalBody262_31

def globalBody262_33 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "cn"))

def globalBody262_34 : Prog (BitVec 64) :=
.seq globalBody262_32 globalBody262_33

def globalBody262_35 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "rec"])

def globalBody262_36 : Prog (BitVec 64) :=
.seq globalBody262_34 globalBody262_35

def globalBody262_37 : Prog (BitVec 64) :=
.decCall ("rec") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 88#64]) globalBody262_36

def globalBody262_38 : Prog (BitVec 64) :=
.seq globalBody262_23 globalBody262_37

def globalBody262_39 : Prog (BitVec 64) :=
.decCall ("cn") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("compact_to_nibbles") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "pi"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "pi")]) globalBody262_38

def globalBody262_40 : Prog (BitVec 64) :=
.seq globalBody262_9 globalBody262_39

def globalBody262_41 : Prog (BitVec 64) :=
.decCall ("pi") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_item") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 0#64, Flapjack.Exp.const 16#64]]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "arr",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 0#64, Flapjack.Exp.const 16#64],
        Flapjack.Exp.const 8#64])]) globalBody262_40

def globalBody262_42 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sl"))
  (Flapjack.Exp.const 2#64)) globalBody262_41 globalBody262_2

def globalBody262_43 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "sl"))
  (Flapjack.Exp.const 17#64)) globalBody262_4 globalBody262_2

def globalBody262_44 : Prog (BitVec 64) :=
.seq globalBody262_42 globalBody262_43

def globalBody262_45 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec2", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.const 2#64)

def globalBody262_46 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec2", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "br")

def globalBody262_47 : Prog (BitVec 64) :=
.seq globalBody262_45 globalBody262_46

def globalBody262_48 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec2", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "arr")

def globalBody262_49 : Prog (BitVec 64) :=
.seq globalBody262_47 globalBody262_48

def globalBody262_50 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec2", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.const 0#64)

def globalBody262_51 : Prog (BitVec 64) :=
.seq globalBody262_49 globalBody262_50

def globalBody262_52 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec2", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 0#64)

def globalBody262_53 : Prog (BitVec 64) :=
.seq globalBody262_51 globalBody262_52

def globalBody262_54 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec2", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "p")

def globalBody262_55 : Prog (BitVec 64) :=
.seq globalBody262_53 globalBody262_54

def globalBody262_56 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "rec2", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "n")

def globalBody262_57 : Prog (BitVec 64) :=
.seq globalBody262_55 globalBody262_56

def globalBody262_58 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.rStruct [Flapjack.Exp.const 1#64, Flapjack.Exp.var Flapjack.VarKind.local "rec2"])

def globalBody262_59 : Prog (BitVec 64) :=
.seq globalBody262_57 globalBody262_58

def globalBody262_60 : Prog (BitVec 64) :=
.decCall ("rec2") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 88#64]) globalBody262_59

def globalBody262_61 : Prog (BitVec 64) :=
.decCall ("br") (Flapjack.Shape.one) ("node_new_branch") ([]) globalBody262_60

def globalBody262_62 : Prog (BitVec 64) :=
.seq globalBody262_44 globalBody262_61

def globalBody262_63 : Prog (BitVec 64) :=
.dec ("arr") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "sl")) globalBody262_62

def globalBody262_64 : Prog (BitVec 64) :=
.decCall ("sl") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("rlp_list_to_slices") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "it"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "it")]) globalBody262_63

def globalBody262_65 : Prog (BitVec 64) :=
.seq globalBody262_7 globalBody262_64

def globalBody262_66 : Prog (BitVec 64) :=
.dec ("e") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody262_65

def globalBody262_67 : Prog (BitVec 64) :=
.dec ("it") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody262_66

def globalData262 : Decl (BitVec 64) :=
.function { name := "_decode_step", inline := false, exported := false, params := [("db", Flapjack.Shape.one), ("p", Flapjack.Shape.one), ("n", Flapjack.Shape.one)], body := globalBody262_67, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput262 := Pancake.PanLang.declToHOL globalData262
end InitECandidate.Proofs.FrontendStages.Declarations
