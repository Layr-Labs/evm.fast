import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify760
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body776_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p2"]

def body776_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body776_2 : Prog (BitVec 64) :=
.seq body776_0 body776_1

def body776_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body776_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i1") (Flapjack.Exp.const 1#64)) body776_2 body776_3

def body776_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p1"]

def body776_6 : Prog (BitVec 64) :=
.seq body776_5 body776_1

def body776_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i2") (Flapjack.Exp.const 1#64)) body776_6 body776_3

def body776_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u1",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p2", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.const 192#64]]

def body776_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u2",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p2", Flapjack.Exp.const 192#64]]

def body776_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "v1", Flapjack.Exp.var Flapjack.VarKind.local "p2",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.const 192#64]]

def body776_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "v2", Flapjack.Exp.var Flapjack.VarKind.local "p1",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p2", Flapjack.Exp.const 192#64]]

def body776_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body776_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_double"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p1"]

def body776_14 : Prog (BitVec 64) :=
.seq body776_13 body776_1

def body776_15 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ueq") (Flapjack.Exp.const 1#64)) body776_14 body776_3

def body776_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_set_inf" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body776_17 : Prog (BitVec 64) :=
.seq body776_16 body776_1

def body776_18 : Prog (BitVec 64) :=
.seq body776_15 body776_17

def body776_19 : Prog (BitVec 64) :=
.seq body776_12 body776_18

def body776_20 : Prog (BitVec 64) :=
.decCall ("ueq") (Flapjack.Shape.one) ("fp2_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "u1", Flapjack.Exp.var Flapjack.VarKind.local "u2"]) body776_19

def body776_21 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "veq") (Flapjack.Exp.const 1#64)) body776_20 body776_3

def body776_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u1",
    Flapjack.Exp.var Flapjack.VarKind.local "u2"]

def body776_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "v1",
    Flapjack.Exp.var Flapjack.VarKind.local "v2"]

def body776_24 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "vv", Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body776_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "vvv2", Flapjack.Exp.var Flapjack.VarKind.local "vv",
    Flapjack.Exp.var Flapjack.VarKind.local "v2"]

def body776_26 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "v3", Flapjack.Exp.var Flapjack.VarKind.local "v",
    Flapjack.Exp.var Flapjack.VarKind.local "vv"]

def body776_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "w",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p2", Flapjack.Exp.const 192#64]]

def body776_28 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body776_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def body776_30 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "v3"]

def body776_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "vvv2",
    Flapjack.Exp.var Flapjack.VarKind.local "vvv2"]

def body776_32 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "q"]

def body776_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "v",
    Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body776_34 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "u1", Flapjack.Exp.var Flapjack.VarKind.local "vvv2",
    Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body776_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u1", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "u1"]

def body776_36 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u2", Flapjack.Exp.var Flapjack.VarKind.local "v3",
    Flapjack.Exp.var Flapjack.VarKind.local "u2"]

def body776_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "u1", Flapjack.Exp.var Flapjack.VarKind.local "u1",
    Flapjack.Exp.var Flapjack.VarKind.local "u2"]

def body776_38 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "v3",
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def body776_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "q"]

def body776_40 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "u1"]

def body776_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def body776_42 : Prog (BitVec 64) :=
.seq body776_12 body776_1

def body776_43 : Prog (BitVec 64) :=
.seq body776_41 body776_42

def body776_44 : Prog (BitVec 64) :=
.seq body776_40 body776_43

def body776_45 : Prog (BitVec 64) :=
.seq body776_39 body776_44

def body776_46 : Prog (BitVec 64) :=
.seq body776_38 body776_45

def body776_47 : Prog (BitVec 64) :=
.seq body776_37 body776_46

def body776_48 : Prog (BitVec 64) :=
.seq body776_36 body776_47

def body776_49 : Prog (BitVec 64) :=
.seq body776_35 body776_48

def body776_50 : Prog (BitVec 64) :=
.seq body776_34 body776_49

def body776_51 : Prog (BitVec 64) :=
.seq body776_33 body776_50

def body776_52 : Prog (BitVec 64) :=
.seq body776_32 body776_51

def body776_53 : Prog (BitVec 64) :=
.seq body776_31 body776_52

def body776_54 : Prog (BitVec 64) :=
.seq body776_30 body776_53

def body776_55 : Prog (BitVec 64) :=
.seq body776_29 body776_54

def body776_56 : Prog (BitVec 64) :=
.seq body776_28 body776_55

def body776_57 : Prog (BitVec 64) :=
.seq body776_27 body776_56

def body776_58 : Prog (BitVec 64) :=
.seq body776_26 body776_57

def body776_59 : Prog (BitVec 64) :=
.seq body776_25 body776_58

def body776_60 : Prog (BitVec 64) :=
.seq body776_24 body776_59

def body776_61 : Prog (BitVec 64) :=
.seq body776_23 body776_60

def body776_62 : Prog (BitVec 64) :=
.seq body776_22 body776_61

def body776_63 : Prog (BitVec 64) :=
.seq body776_21 body776_62

def body776_64 : Prog (BitVec 64) :=
.decCall ("veq") (Flapjack.Shape.one) ("fp2_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "v1", Flapjack.Exp.var Flapjack.VarKind.local "v2"]) body776_63

def body776_65 : Prog (BitVec 64) :=
.seq body776_11 body776_64

def body776_66 : Prog (BitVec 64) :=
.seq body776_10 body776_65

def body776_67 : Prog (BitVec 64) :=
.seq body776_9 body776_66

def body776_68 : Prog (BitVec 64) :=
.seq body776_8 body776_67

def body776_69 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1056#64]) body776_68

def body776_70 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 960#64]) body776_69

def body776_71 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 864#64]) body776_70

def body776_72 : Prog (BitVec 64) :=
.dec ("v3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 768#64]) body776_71

def body776_73 : Prog (BitVec 64) :=
.dec ("vvv2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64]) body776_72

def body776_74 : Prog (BitVec 64) :=
.dec ("vv") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) body776_73

def body776_75 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) body776_74

def body776_76 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) body776_75

def body776_77 : Prog (BitVec 64) :=
.dec ("v2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) body776_76

def body776_78 : Prog (BitVec 64) :=
.dec ("v1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) body776_77

def body776_79 : Prog (BitVec 64) :=
.dec ("u2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) body776_78

def body776_80 : Prog (BitVec 64) :=
.dec ("u1") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body776_79

def body776_81 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 12#64]]) body776_80

def body776_82 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body776_81

def body776_83 : Prog (BitVec 64) :=
.seq body776_7 body776_82

def body776_84 : Prog (BitVec 64) :=
.decCall ("i2") (Flapjack.Shape.one) ("g2_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "p2"]) body776_83

def body776_85 : Prog (BitVec 64) :=
.seq body776_4 body776_84

def body776_86 : Prog (BitVec 64) :=
.decCall ("i1") (Flapjack.Shape.one) ("g2_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "p1"]) body776_85

def body776_87 : Prog (BitVec 64) :=
.seq body776_8 body776_9

def body776_88 : Prog (BitVec 64) :=
.seq body776_87 body776_10

def body776_89 : Prog (BitVec 64) :=
.seq body776_88 body776_11

def body776_90 : Prog (BitVec 64) :=
.seq body776_12 body776_15

def body776_91 : Prog (BitVec 64) :=
.seq body776_90 body776_16

def body776_92 : Prog (BitVec 64) :=
.seq body776_91 body776_1

def body776_93 : Prog (BitVec 64) :=
.decCall ("ueq") (Flapjack.Shape.one) ("fp2_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "u1", Flapjack.Exp.var Flapjack.VarKind.local "u2"]) body776_92

def body776_94 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "veq") (Flapjack.Exp.const 1#64)) body776_93 body776_3

def body776_95 : Prog (BitVec 64) :=
.seq body776_94 body776_22

def body776_96 : Prog (BitVec 64) :=
.seq body776_95 body776_23

def body776_97 : Prog (BitVec 64) :=
.seq body776_96 body776_24

def body776_98 : Prog (BitVec 64) :=
.seq body776_97 body776_25

def body776_99 : Prog (BitVec 64) :=
.seq body776_98 body776_26

def body776_100 : Prog (BitVec 64) :=
.seq body776_99 body776_27

def body776_101 : Prog (BitVec 64) :=
.seq body776_100 body776_28

def body776_102 : Prog (BitVec 64) :=
.seq body776_101 body776_29

def body776_103 : Prog (BitVec 64) :=
.seq body776_102 body776_30

def body776_104 : Prog (BitVec 64) :=
.seq body776_103 body776_31

def body776_105 : Prog (BitVec 64) :=
.seq body776_104 body776_32

def body776_106 : Prog (BitVec 64) :=
.seq body776_105 body776_33

def body776_107 : Prog (BitVec 64) :=
.seq body776_106 body776_34

def body776_108 : Prog (BitVec 64) :=
.seq body776_107 body776_35

def body776_109 : Prog (BitVec 64) :=
.seq body776_108 body776_36

def body776_110 : Prog (BitVec 64) :=
.seq body776_109 body776_37

def body776_111 : Prog (BitVec 64) :=
.seq body776_110 body776_38

def body776_112 : Prog (BitVec 64) :=
.seq body776_111 body776_39

def body776_113 : Prog (BitVec 64) :=
.seq body776_112 body776_40

def body776_114 : Prog (BitVec 64) :=
.seq body776_113 body776_41

def body776_115 : Prog (BitVec 64) :=
.seq body776_114 body776_12

def body776_116 : Prog (BitVec 64) :=
.seq body776_115 body776_1

def body776_117 : Prog (BitVec 64) :=
.decCall ("veq") (Flapjack.Shape.one) ("fp2_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "v1", Flapjack.Exp.var Flapjack.VarKind.local "v2"]) body776_116

def body776_118 : Prog (BitVec 64) :=
.seq body776_89 body776_117

def body776_119 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1056#64]) body776_118

def body776_120 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 960#64]) body776_119

def body776_121 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 864#64]) body776_120

def body776_122 : Prog (BitVec 64) :=
.dec ("v3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 768#64]) body776_121

def body776_123 : Prog (BitVec 64) :=
.dec ("vvv2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64]) body776_122

def body776_124 : Prog (BitVec 64) :=
.dec ("vv") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) body776_123

def body776_125 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) body776_124

def body776_126 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) body776_125

def body776_127 : Prog (BitVec 64) :=
.dec ("v2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) body776_126

def body776_128 : Prog (BitVec 64) :=
.dec ("v1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) body776_127

def body776_129 : Prog (BitVec 64) :=
.dec ("u2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) body776_128

def body776_130 : Prog (BitVec 64) :=
.dec ("u1") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body776_129

def body776_131 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 12#64]]) body776_130

def body776_132 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body776_131

def body776_133 : Prog (BitVec 64) :=
.seq body776_7 body776_132

def body776_134 : Prog (BitVec 64) :=
.decCall ("i2") (Flapjack.Shape.one) ("g2_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "p2"]) body776_133

def body776_135 : Prog (BitVec 64) :=
.seq body776_4 body776_134

def body776_136 : Prog (BitVec 64) :=
.decCall ("i1") (Flapjack.Shape.one) ("g2_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "p1"]) body776_135

def originalData776 : Decl (BitVec 64) :=
.function { name := "g2_add", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p1", Flapjack.Shape.one), ("p2", Flapjack.Shape.one)], body := body776_86, returnShape := (Flapjack.Shape.one) }
def simplifiedData776 : Decl (BitVec 64) :=
.function { name := "g2_add", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p1", Flapjack.Shape.one), ("p2", Flapjack.Shape.one)], body := body776_136, returnShape := (Flapjack.Shape.one) }
def original776 := Pancake.PanLang.declToHOL originalData776
def simplified776 := Pancake.PanLang.declToHOL simplifiedData776
end InitECandidate.Proofs.FrontendStages.Declarations
