import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify260
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body276_0 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "go" (Flapjack.Exp.const 0#64)

def body276_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "node_new_leaf"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.var Flapjack.VarKind.local "level"],
    Flapjack.Exp.var Flapjack.VarKind.local "vptr", Flapjack.Exp.var Flapjack.VarKind.local "vlen"]

def body276_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "mpt_fail" [Flapjack.Exp.const 2#64]

def body276_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body276_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 0#64)) body276_2 body276_3

def body276_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "node_invalidate" [Flapjack.Exp.var Flapjack.VarKind.local "node"]

def body276_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "_insert_into_leaf"
  [Flapjack.Exp.var Flapjack.VarKind.local "node",
    Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"],
    Flapjack.Exp.op Flapjack.BinOp.sub
      [Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.var Flapjack.VarKind.local "level"],
    Flapjack.Exp.var Flapjack.VarKind.local "vptr", Flapjack.Exp.var Flapjack.VarKind.local "vlen"]

def body276_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r" (Flapjack.Exp.var Flapjack.VarKind.local "node")

def body276_8 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "next_node"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 48#64]))

def body276_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "next_slot"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 48#64])

def body276_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "next_level"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "level", Flapjack.Exp.var Flapjack.VarKind.local "pl"])

def body276_11 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "go" (Flapjack.Exp.const 1#64)

def body276_12 : Prog (BitVec 64) :=
.seq body276_10 body276_11

def body276_13 : Prog (BitVec 64) :=
.seq body276_9 body276_12

def body276_14 : Prog (BitVec 64) :=
.seq body276_8 body276_13

def body276_15 : Prog (BitVec 64) :=
.seq body276_7 body276_14

def body276_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "node_new_ext"
  [Flapjack.Exp.var Flapjack.VarKind.local "seg", Flapjack.Exp.var Flapjack.VarKind.local "pl",
    Flapjack.Exp.var Flapjack.VarKind.local "br"]

def body276_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "r" (Flapjack.Exp.var Flapjack.VarKind.local "br")

def body276_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower (Flapjack.Exp.const 0#64) (Flapjack.Exp.var Flapjack.VarKind.local "pl")) body276_16 body276_17

def body276_19 : Prog (BitVec 64) :=
.decCall ("br") (Flapjack.Shape.one) ("_split_extension") ([Flapjack.Exp.var Flapjack.VarKind.local "node",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"],
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.var Flapjack.VarKind.local "level"],
  Flapjack.Exp.var Flapjack.VarKind.local "vptr", Flapjack.Exp.var Flapjack.VarKind.local "vlen",
  Flapjack.Exp.var Flapjack.VarKind.local "pl"]) body276_18

def body276_20 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "pl")
  (Flapjack.Exp.var Flapjack.VarKind.local "sl")) body276_15 body276_19

def body276_21 : Prog (BitVec 64) :=
.decCall ("pl") (Flapjack.Shape.one) ("common_prefix_length") ([Flapjack.Exp.var Flapjack.VarKind.local "seg", Flapjack.Exp.var Flapjack.VarKind.local "sl",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"],
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.var Flapjack.VarKind.local "level"]]) body276_20

def body276_22 : Prog (BitVec 64) :=
.dec ("sl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64])) body276_21

def body276_23 : Prog (BitVec 64) :=
.dec ("seg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64])) body276_22

def body276_24 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "vptr")

def body276_25 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "vlen")

def body276_26 : Prog (BitVec 64) :=
.seq body276_25 body276_7

def body276_27 : Prog (BitVec 64) :=
.seq body276_24 body276_26

def body276_28 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "next_node"
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64,
        Flapjack.Exp.panOp Flapjack.PanOp.mul
          [Flapjack.Exp.var Flapjack.VarKind.local "idx", Flapjack.Exp.const 8#64]]))

def body276_29 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "next_slot"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64,
      Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "idx", Flapjack.Exp.const 8#64]])

def body276_30 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "next_level"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "level", Flapjack.Exp.const 1#64])

def body276_31 : Prog (BitVec 64) :=
.seq body276_30 body276_11

def body276_32 : Prog (BitVec 64) :=
.seq body276_29 body276_31

def body276_33 : Prog (BitVec 64) :=
.seq body276_28 body276_32

def body276_34 : Prog (BitVec 64) :=
.seq body276_7 body276_33

def body276_35 : Prog (BitVec 64) :=
.dec ("idx") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"])) body276_34

def body276_36 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "level")
  (Flapjack.Exp.var Flapjack.VarKind.local "klen")) body276_27 body276_35

def body276_37 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 2#64)) body276_23 body276_36

def body276_38 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 1#64)) body276_6 body276_37

def body276_39 : Prog (BitVec 64) :=
.seq body276_5 body276_38

def body276_40 : Prog (BitVec 64) :=
.seq body276_4 body276_39

def body276_41 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 0#64])) body276_40

def body276_42 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "node") (Flapjack.Exp.const 0#64)) body276_1 body276_41

def body276_43 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "result" (Flapjack.Exp.var Flapjack.VarKind.local "r")

def body276_44 : Prog (BitVec 64) :=
Flapjack.Prog.store (Flapjack.Exp.var Flapjack.VarKind.local "slot") (Flapjack.Exp.var Flapjack.VarKind.local "r")

def body276_45 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "slot") (Flapjack.Exp.const 0#64)) body276_43 body276_44

def body276_46 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "node" (Flapjack.Exp.var Flapjack.VarKind.local "next_node")

def body276_47 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "slot" (Flapjack.Exp.var Flapjack.VarKind.local "next_slot")

def body276_48 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "level" (Flapjack.Exp.var Flapjack.VarKind.local "next_level")

def body276_49 : Prog (BitVec 64) :=
.seq body276_47 body276_48

def body276_50 : Prog (BitVec 64) :=
.seq body276_46 body276_49

def body276_51 : Prog (BitVec 64) :=
.seq body276_45 body276_50

def body276_52 : Prog (BitVec 64) :=
.seq body276_42 body276_51

def body276_53 : Prog (BitVec 64) :=
.seq body276_0 body276_52

def body276_54 : Prog (BitVec 64) :=
.dec ("next_level") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body276_53

def body276_55 : Prog (BitVec 64) :=
.dec ("next_slot") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body276_54

def body276_56 : Prog (BitVec 64) :=
.dec ("next_node") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body276_55

def body276_57 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body276_56

def body276_58 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "go") (Flapjack.Exp.const 0#64)) body276_57

def body276_59 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "result")

def body276_60 : Prog (BitVec 64) :=
.seq body276_58 body276_59

def body276_61 : Prog (BitVec 64) :=
.dec ("go") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body276_60

def body276_62 : Prog (BitVec 64) :=
.dec ("slot") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body276_61

def body276_63 : Prog (BitVec 64) :=
.dec ("result") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body276_62

def body276_64 : Prog (BitVec 64) :=
.seq body276_4 body276_5

def body276_65 : Prog (BitVec 64) :=
.seq body276_7 body276_8

def body276_66 : Prog (BitVec 64) :=
.seq body276_65 body276_9

def body276_67 : Prog (BitVec 64) :=
.seq body276_66 body276_10

def body276_68 : Prog (BitVec 64) :=
.seq body276_67 body276_11

def body276_69 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "pl")
  (Flapjack.Exp.var Flapjack.VarKind.local "sl")) body276_68 body276_19

def body276_70 : Prog (BitVec 64) :=
.decCall ("pl") (Flapjack.Shape.one) ("common_prefix_length") ([Flapjack.Exp.var Flapjack.VarKind.local "seg", Flapjack.Exp.var Flapjack.VarKind.local "sl",
  Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"],
  Flapjack.Exp.op Flapjack.BinOp.sub
    [Flapjack.Exp.var Flapjack.VarKind.local "klen", Flapjack.Exp.var Flapjack.VarKind.local "level"]]) body276_69

def body276_71 : Prog (BitVec 64) :=
.dec ("sl") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 40#64])) body276_70

def body276_72 : Prog (BitVec 64) :=
.dec ("seg") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 32#64])) body276_71

def body276_73 : Prog (BitVec 64) :=
.seq body276_24 body276_25

def body276_74 : Prog (BitVec 64) :=
.seq body276_73 body276_7

def body276_75 : Prog (BitVec 64) :=
.seq body276_7 body276_28

def body276_76 : Prog (BitVec 64) :=
.seq body276_75 body276_29

def body276_77 : Prog (BitVec 64) :=
.seq body276_76 body276_30

def body276_78 : Prog (BitVec 64) :=
.seq body276_77 body276_11

def body276_79 : Prog (BitVec 64) :=
.dec ("idx") (Flapjack.Shape.one) (Flapjack.Exp.loadByte
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "key", Flapjack.Exp.var Flapjack.VarKind.local "level"])) body276_78

def body276_80 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "level")
  (Flapjack.Exp.var Flapjack.VarKind.local "klen")) body276_74 body276_79

def body276_81 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 2#64)) body276_72 body276_80

def body276_82 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "k") (Flapjack.Exp.const 1#64)) body276_6 body276_81

def body276_83 : Prog (BitVec 64) :=
.seq body276_64 body276_82

def body276_84 : Prog (BitVec 64) :=
.dec ("k") (Flapjack.Shape.one) (Flapjack.Exp.load Flapjack.Shape.one
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "node", Flapjack.Exp.const 0#64])) body276_83

def body276_85 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "node") (Flapjack.Exp.const 0#64)) body276_1 body276_84

def body276_86 : Prog (BitVec 64) :=
.seq body276_0 body276_85

def body276_87 : Prog (BitVec 64) :=
.seq body276_86 body276_45

def body276_88 : Prog (BitVec 64) :=
.seq body276_87 body276_46

def body276_89 : Prog (BitVec 64) :=
.seq body276_88 body276_47

def body276_90 : Prog (BitVec 64) :=
.seq body276_89 body276_48

def body276_91 : Prog (BitVec 64) :=
.dec ("next_level") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body276_90

def body276_92 : Prog (BitVec 64) :=
.dec ("next_slot") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body276_91

def body276_93 : Prog (BitVec 64) :=
.dec ("next_node") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body276_92

def body276_94 : Prog (BitVec 64) :=
.dec ("r") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body276_93

def body276_95 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "go") (Flapjack.Exp.const 0#64)) body276_94

def body276_96 : Prog (BitVec 64) :=
.seq body276_95 body276_59

def body276_97 : Prog (BitVec 64) :=
.dec ("go") (Flapjack.Shape.one) (Flapjack.Exp.const 1#64) body276_96

def body276_98 : Prog (BitVec 64) :=
.dec ("slot") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body276_97

def body276_99 : Prog (BitVec 64) :=
.dec ("result") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body276_98

def originalData276 : Decl (BitVec 64) :=
.function { name := "_mpt_insert_node", inline := false, exported := false, params := [("node", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("klen", Flapjack.Shape.one), ("level", Flapjack.Shape.one),
  ("vptr", Flapjack.Shape.one), ("vlen", Flapjack.Shape.one)], body := body276_63, returnShape := (Flapjack.Shape.one) }
def simplifiedData276 : Decl (BitVec 64) :=
.function { name := "_mpt_insert_node", inline := false, exported := false, params := [("node", Flapjack.Shape.one), ("key", Flapjack.Shape.one), ("klen", Flapjack.Shape.one), ("level", Flapjack.Shape.one),
  ("vptr", Flapjack.Shape.one), ("vlen", Flapjack.Shape.one)], body := body276_99, returnShape := (Flapjack.Shape.one) }
def original276 := Pancake.PanLang.declToHOL originalData276
def simplified276 := Pancake.PanLang.declToHOL simplifiedData276
end InitECandidate.Proofs.FrontendStages.Declarations
