import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify269
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body285_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.const 0#64)

def body285_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "node")

def body285_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def body285_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "_node_rlp_begin"
  [Flapjack.Exp.var Flapjack.VarKind.local "fr", Flapjack.Exp.var Flapjack.VarKind.local "node"]

def body285_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 1#64)

def body285_5 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "child"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 48#64]))

def body285_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "found"), none)) "_node_needs_rlp"
  [Flapjack.Exp.var Flapjack.VarKind.local "child"]

def body285_7 : Prog (BitVec 64) :=
.seq body285_5 body285_6

def body285_8 : Prog (BitVec 64) :=
.seq body285_4 body285_7

def body285_9 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body285_10 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.const 0#64)) body285_8 body285_9

def body285_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "child"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 32#64,
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 8#64]]))

def body285_12 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body285_13 : Prog (BitVec 64) :=
.seq body285_12 body285_6

def body285_14 : Prog (BitVec 64) :=
.seq body285_11 body285_13

def body285_15 : Prog (BitVec 64) :=
.while (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 16#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "found") (Flapjack.Exp.const 0#64))]) body285_14

def body285_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "i")

def body285_17 : Prog (BitVec 64) :=
.seq body285_15 body285_16

def body285_18 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 16#64])) body285_17

def body285_19 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 3#64)) body285_18 body285_9

def body285_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 2#64)) body285_10 body285_19

def body285_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cf", Flapjack.Exp.const 0#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "top")

def body285_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cf", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "child")

def body285_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "cf", Flapjack.Exp.const 16#64])
  (Flapjack.Exp.const 0#64)

def body285_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "_node_rlp_begin"
  [Flapjack.Exp.var Flapjack.VarKind.local "cf", Flapjack.Exp.var Flapjack.VarKind.local "child"]

def body285_25 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top" (Flapjack.Exp.var Flapjack.VarKind.local "cf")

def body285_26 : Prog (BitVec 64) :=
.seq body285_24 body285_25

def body285_27 : Prog (BitVec 64) :=
.seq body285_23 body285_26

def body285_28 : Prog (BitVec 64) :=
.seq body285_22 body285_27

def body285_29 : Prog (BitVec 64) :=
.seq body285_21 body285_28

def body285_30 : Prog (BitVec 64) :=
.decCall ("cf") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 48#64]) body285_29

def body285_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "_node_rlp_finish"
  [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.var Flapjack.VarKind.local "nd"]

def body285_32 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "top"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 0#64]))

def body285_33 : Prog (BitVec 64) :=
.seq body285_31 body285_32

def body285_34 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "found") (Flapjack.Exp.const 0#64)) body285_30 body285_33

def body285_35 : Prog (BitVec 64) :=
.seq body285_20 body285_34

def body285_36 : Prog (BitVec 64) :=
.dec ("found") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body285_35

def body285_37 : Prog (BitVec 64) :=
.dec ("child") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body285_36

def body285_38 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 0#64])) body285_37

def body285_39 : Prog (BitVec 64) :=
.dec ("nd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 8#64])) body285_38

def body285_40 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 0#64)) body285_39

def body285_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "scratch_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body285_42 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body285_43 : Prog (BitVec 64) :=
.seq body285_41 body285_42

def body285_44 : Prog (BitVec 64) :=
.seq body285_40 body285_43

def body285_45 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "fr") body285_44

def body285_46 : Prog (BitVec 64) :=
.seq body285_3 body285_45

def body285_47 : Prog (BitVec 64) :=
.seq body285_2 body285_46

def body285_48 : Prog (BitVec 64) :=
.seq body285_1 body285_47

def body285_49 : Prog (BitVec 64) :=
.seq body285_0 body285_48

def body285_50 : Prog (BitVec 64) :=
.decCall ("fr") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 48#64]) body285_49

def body285_51 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("scratch_mark") ([]) body285_50

def body285_52 : Prog (BitVec 64) :=
.seq body285_0 body285_1

def body285_53 : Prog (BitVec 64) :=
.seq body285_52 body285_2

def body285_54 : Prog (BitVec 64) :=
.seq body285_53 body285_3

def body285_55 : Prog (BitVec 64) :=
.seq body285_4 body285_5

def body285_56 : Prog (BitVec 64) :=
.seq body285_55 body285_6

def body285_57 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 16#64]))
  (Flapjack.Exp.const 0#64)) body285_56 body285_9

def body285_58 : Prog (BitVec 64) :=
.seq body285_11 body285_12

def body285_59 : Prog (BitVec 64) :=
.seq body285_58 body285_6

def body285_60 : Prog (BitVec 64) :=
.while (Flapjack.Exp.op Flapjack.BinOp.and
  [Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i") (Flapjack.Exp.const 16#64)),
    Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.const 0#64)
      (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "found") (Flapjack.Exp.const 0#64))]) body285_59

def body285_61 : Prog (BitVec 64) :=
.seq body285_60 body285_16

def body285_62 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 16#64])) body285_61

def body285_63 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 3#64)) body285_62 body285_9

def body285_64 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 2#64)) body285_57 body285_63

def body285_65 : Prog (BitVec 64) :=
.seq body285_21 body285_22

def body285_66 : Prog (BitVec 64) :=
.seq body285_65 body285_23

def body285_67 : Prog (BitVec 64) :=
.seq body285_66 body285_24

def body285_68 : Prog (BitVec 64) :=
.seq body285_67 body285_25

def body285_69 : Prog (BitVec 64) :=
.decCall ("cf") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 48#64]) body285_68

def body285_70 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "found") (Flapjack.Exp.const 0#64)) body285_69 body285_33

def body285_71 : Prog (BitVec 64) :=
.seq body285_64 body285_70

def body285_72 : Prog (BitVec 64) :=
.dec ("found") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body285_71

def body285_73 : Prog (BitVec 64) :=
.dec ("child") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body285_72

def body285_74 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "nd", Flapjack.Exp.const 0#64])) body285_73

def body285_75 : Prog (BitVec 64) :=
.dec ("nd") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "top", Flapjack.Exp.const 8#64])) body285_74

def body285_76 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "top") (Flapjack.Exp.const 0#64)) body285_75

def body285_77 : Prog (BitVec 64) :=
.seq body285_76 body285_41

def body285_78 : Prog (BitVec 64) :=
.seq body285_77 body285_42

def body285_79 : Prog (BitVec 64) :=
.dec ("top") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "fr") body285_78

def body285_80 : Prog (BitVec 64) :=
.seq body285_54 body285_79

def body285_81 : Prog (BitVec 64) :=
.decCall ("fr") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 48#64]) body285_80

def body285_82 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("scratch_mark") ([]) body285_81

def originalData285 : Decl (BitVec 64) :=
.function { name := "_node_rlp_fill", inline := false, exported := false, params := [("node", Flapjack.Shape.one)], body := body285_51, returnShape := (Flapjack.Shape.one) }
def simplifiedData285 : Decl (BitVec 64) :=
.function { name := "_node_rlp_fill", inline := false, exported := false, params := [("node", Flapjack.Shape.one)], body := body285_82, returnShape := (Flapjack.Shape.one) }
def original285 := Pancake.PanLang.declToHOL originalData285
def simplified285 := Pancake.PanLang.declToHOL simplifiedData285
end InitECandidate.Proofs.FrontendStages.Declarations
