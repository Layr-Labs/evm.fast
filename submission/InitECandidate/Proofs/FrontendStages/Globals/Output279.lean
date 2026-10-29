import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data279
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate263
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody279_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "go" (Flapjack.Exp.const 0#64)

def globalBody279_1 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "res" (Flapjack.Exp.const 0#64)

def globalBody279_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 2#64]

def globalBody279_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody279_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 0#64)) globalBody279_2 globalBody279_3

def globalBody279_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "node_invalidate" [Flapjack.Exp.var Flapjack.VarKind.local "node"]

def globalBody279_6 : Prog (BitVec 64) :=
.seq globalBody279_4 globalBody279_5

def globalBody279_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "res" (Flapjack.Exp.var Flapjack.VarKind.local "node")

def globalBody279_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) globalBody279_1 globalBody279_3

def globalBody279_9 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64]),
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"],
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.var Flapjack.VarKind.local "level"]]) globalBody279_8

def globalBody279_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64]))
  (Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.var Flapjack.VarKind.local "level"])) globalBody279_9 globalBody279_3

def globalBody279_11 : Prog (BitVec 64) :=
.seq globalBody279_7 globalBody279_10

def globalBody279_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "top")

def globalBody279_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "node")

def globalBody279_14 : Prog (BitVec 64) :=
.seq globalBody279_12 globalBody279_13

def globalBody279_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 2#64)

def globalBody279_16 : Prog (BitVec 64) :=
.seq globalBody279_14 globalBody279_15

def globalBody279_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "seg")

def globalBody279_18 : Prog (BitVec 64) :=
.seq globalBody279_16 globalBody279_17

def globalBody279_19 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "sl")

def globalBody279_20 : Prog (BitVec 64) :=
.seq globalBody279_18 globalBody279_19

def globalBody279_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top" (Flapjack.Exp.var Flapjack.VarKind.local "fr")

def globalBody279_22 : Prog (BitVec 64) :=
.seq globalBody279_20 globalBody279_21

def globalBody279_23 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "node"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 48#64]))

def globalBody279_24 : Prog (BitVec 64) :=
.seq globalBody279_22 globalBody279_23

def globalBody279_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "level"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "level", Flapjack.Exp.var Flapjack.VarKind.local "sl"])

def globalBody279_26 : Prog (BitVec 64) :=
.seq globalBody279_24 globalBody279_25

def globalBody279_27 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "go" (Flapjack.Exp.const 1#64)

def globalBody279_28 : Prog (BitVec 64) :=
.seq globalBody279_26 globalBody279_27

def globalBody279_29 : Prog (BitVec 64) :=
.decCall ("fr") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 40#64]) globalBody279_28

def globalBody279_30 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.var Flapjack.VarKind.local "pl")
  (Flapjack.Exp.var Flapjack.VarKind.local "sl")) globalBody279_7 globalBody279_29

def globalBody279_31 : Prog (BitVec 64) :=
.decCall ("pl") (Flapjack.Shape.one) ("common_prefix_length") ([Flapjack.Exp.var Flapjack.VarKind.local "seg", Flapjack.Exp.var Flapjack.VarKind.local "sl",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"],
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.var Flapjack.VarKind.local "level"]]) globalBody279_30

def globalBody279_32 : Prog (BitVec 64) :=
.dec ("sl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64])) globalBody279_31

def globalBody279_33 : Prog (BitVec 64) :=
.dec ("seg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64])) globalBody279_32

def globalBody279_34 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.const 0#64)

def globalBody279_35 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.const 0#64)

def globalBody279_36 : Prog (BitVec 64) :=
.seq globalBody279_34 globalBody279_35

def globalBody279_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "res"), none)) "_collapse_branch"
  [Flapjack.Exp.var Flapjack.VarKind.local "node"]

def globalBody279_38 : Prog (BitVec 64) :=
.seq globalBody279_36 globalBody279_37

def globalBody279_39 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 168#64]))
  (Flapjack.Exp.const 0#64)) globalBody279_7 globalBody279_38

def globalBody279_40 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr2", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "top")

def globalBody279_41 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr2", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "node")

def globalBody279_42 : Prog (BitVec 64) :=
.seq globalBody279_40 globalBody279_41

def globalBody279_43 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr2", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 3#64)

def globalBody279_44 : Prog (BitVec 64) :=
.seq globalBody279_42 globalBody279_43

def globalBody279_45 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr2", Flapjack.Exp.const 32#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "idx")

def globalBody279_46 : Prog (BitVec 64) :=
.seq globalBody279_44 globalBody279_45

def globalBody279_47 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top" (Flapjack.Exp.var Flapjack.VarKind.local "fr2")

def globalBody279_48 : Prog (BitVec 64) :=
.seq globalBody279_46 globalBody279_47

def globalBody279_49 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "node"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64,
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "idx", Flapjack.Exp.const 8#64]]))

def globalBody279_50 : Prog (BitVec 64) :=
.seq globalBody279_48 globalBody279_49

def globalBody279_51 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "level"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "level", Flapjack.Exp.const 1#64])

def globalBody279_52 : Prog (BitVec 64) :=
.seq globalBody279_50 globalBody279_51

def globalBody279_53 : Prog (BitVec 64) :=
.seq globalBody279_52 globalBody279_27

def globalBody279_54 : Prog (BitVec 64) :=
.decCall ("fr2") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 40#64]) globalBody279_53

def globalBody279_55 : Prog (BitVec 64) :=
.dec ("idx") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"])) globalBody279_54

def globalBody279_56 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "level")
  (Flapjack.Exp.var Flapjack.VarKind.local "klen")) globalBody279_39 globalBody279_55

def globalBody279_57 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 2#64)) globalBody279_33 globalBody279_56

def globalBody279_58 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 1#64)) globalBody279_11 globalBody279_57

def globalBody279_59 : Prog (BitVec 64) :=
.seq globalBody279_6 globalBody279_58

def globalBody279_60 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 0#64])) globalBody279_59

def globalBody279_61 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "node") (Flapjack.Exp.const 0#64)) globalBody279_1 globalBody279_60

def globalBody279_62 : Prog (BitVec 64) :=
.seq globalBody279_0 globalBody279_61

def globalBody279_63 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "go") (Flapjack.Exp.const 0#64)) globalBody279_62

def globalBody279_64 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "res"), none)) "_delete_ext_finish"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnode",
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 24#64]),
    Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 32#64]),
    Flapjack.Exp.var Flapjack.VarKind.local "res"]

def globalBody279_65 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "fnode", Flapjack.Exp.const 32#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul
        [Flapjack.Exp.load Flapjack.Shape.one
            (Flapjack.Exp.op Flapjack.BinOp.add
              [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 32#64]),
          Flapjack.Exp.const 8#64]])
  (Flapjack.Exp.var Flapjack.VarKind.local "res")

def globalBody279_66 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "res"), none)) "_collapse_branch"
  [Flapjack.Exp.var Flapjack.VarKind.local "fnode"]

def globalBody279_67 : Prog (BitVec 64) :=
.seq globalBody279_65 globalBody279_66

def globalBody279_68 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.const 2#64)) globalBody279_64 globalBody279_67

def globalBody279_69 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 0#64]))

def globalBody279_70 : Prog (BitVec 64) :=
.seq globalBody279_68 globalBody279_69

def globalBody279_71 : Prog (BitVec 64) :=
.dec ("fnode") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 8#64])) globalBody279_70

def globalBody279_72 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 0#64)) globalBody279_71

def globalBody279_73 : Prog (BitVec 64) :=
.seq globalBody279_63 globalBody279_72

def globalBody279_74 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "res")

def globalBody279_75 : Prog (BitVec 64) :=
.seq globalBody279_73 globalBody279_74

def globalBody279_76 : Prog (BitVec 64) :=
.dec ("go") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) globalBody279_75

def globalBody279_77 : Prog (BitVec 64) :=
.dec ("res") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody279_76

def globalBody279_78 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody279_77

def globalData279 : Decl (BitVec 64) :=
.function { name := "_mpt_delete_node_body", inline := false, exported := false, params := [("node", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("klen", Flapjack.Shape.one), ("level", Flapjack.Shape.one)], body := globalBody279_78, returnShape := (Flapjack.Shape.one) }
def globalOutput279 := Pancake.PanLang.declToHOL globalData279
end InitECandidate.Proofs.FrontendStages.Declarations
