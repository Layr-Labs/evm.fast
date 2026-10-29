import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data776
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate760
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody776_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p2"]

def globalBody776_1 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def globalBody776_2 : Prog (BitVec 64) :=
.seq globalBody776_0 globalBody776_1

def globalBody776_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody776_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i1") (Flapjack.Exp.const 1#64)) globalBody776_2 globalBody776_3

def globalBody776_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p1"]

def globalBody776_6 : Prog (BitVec 64) :=
.seq globalBody776_5 globalBody776_1

def globalBody776_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "i2") (Flapjack.Exp.const 1#64)) globalBody776_6 globalBody776_3

def globalBody776_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u1",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p2", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.const 192#64]]

def globalBody776_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u2",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p2", Flapjack.Exp.const 192#64]]

def globalBody776_10 : Prog (BitVec 64) :=
.seq globalBody776_8 globalBody776_9

def globalBody776_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "v1", Flapjack.Exp.var Flapjack.VarKind.local "p2",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.const 192#64]]

def globalBody776_12 : Prog (BitVec 64) :=
.seq globalBody776_10 globalBody776_11

def globalBody776_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "v2", Flapjack.Exp.var Flapjack.VarKind.local "p1",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p2", Flapjack.Exp.const 192#64]]

def globalBody776_14 : Prog (BitVec 64) :=
.seq globalBody776_12 globalBody776_13

def globalBody776_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def globalBody776_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_double"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "p1"]

def globalBody776_17 : Prog (BitVec 64) :=
.seq globalBody776_16 globalBody776_1

def globalBody776_18 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ueq") (Flapjack.Exp.const 1#64)) globalBody776_17 globalBody776_3

def globalBody776_19 : Prog (BitVec 64) :=
.seq globalBody776_15 globalBody776_18

def globalBody776_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_set_inf" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def globalBody776_21 : Prog (BitVec 64) :=
.seq globalBody776_19 globalBody776_20

def globalBody776_22 : Prog (BitVec 64) :=
.seq globalBody776_21 globalBody776_1

def globalBody776_23 : Prog (BitVec 64) :=
.decCall ("ueq") (Flapjack.Shape.one) ("fp2_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "u1", Flapjack.Exp.var Flapjack.VarKind.local "u2"]) globalBody776_22

def globalBody776_24 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "veq") (Flapjack.Exp.const 1#64)) globalBody776_23 globalBody776_3

def globalBody776_25 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u1",
    Flapjack.Exp.var Flapjack.VarKind.local "u2"]

def globalBody776_26 : Prog (BitVec 64) :=
.seq globalBody776_24 globalBody776_25

def globalBody776_27 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "v1",
    Flapjack.Exp.var Flapjack.VarKind.local "v2"]

def globalBody776_28 : Prog (BitVec 64) :=
.seq globalBody776_26 globalBody776_27

def globalBody776_29 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "vv", Flapjack.Exp.var Flapjack.VarKind.local "v"]

def globalBody776_30 : Prog (BitVec 64) :=
.seq globalBody776_28 globalBody776_29

def globalBody776_31 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "vvv2", Flapjack.Exp.var Flapjack.VarKind.local "vv",
    Flapjack.Exp.var Flapjack.VarKind.local "v2"]

def globalBody776_32 : Prog (BitVec 64) :=
.seq globalBody776_30 globalBody776_31

def globalBody776_33 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "v3", Flapjack.Exp.var Flapjack.VarKind.local "v",
    Flapjack.Exp.var Flapjack.VarKind.local "vv"]

def globalBody776_34 : Prog (BitVec 64) :=
.seq globalBody776_32 globalBody776_33

def globalBody776_35 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "w",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p1", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p2", Flapjack.Exp.const 192#64]]

def globalBody776_36 : Prog (BitVec 64) :=
.seq globalBody776_34 globalBody776_35

def globalBody776_37 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "u"]

def globalBody776_38 : Prog (BitVec 64) :=
.seq globalBody776_36 globalBody776_37

def globalBody776_39 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def globalBody776_40 : Prog (BitVec 64) :=
.seq globalBody776_38 globalBody776_39

def globalBody776_41 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "v3"]

def globalBody776_42 : Prog (BitVec 64) :=
.seq globalBody776_40 globalBody776_41

def globalBody776_43 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "vvv2",
    Flapjack.Exp.var Flapjack.VarKind.local "vvv2"]

def globalBody776_44 : Prog (BitVec 64) :=
.seq globalBody776_42 globalBody776_43

def globalBody776_45 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "q"]

def globalBody776_46 : Prog (BitVec 64) :=
.seq globalBody776_44 globalBody776_45

def globalBody776_47 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "q", Flapjack.Exp.var Flapjack.VarKind.local "v",
    Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody776_48 : Prog (BitVec 64) :=
.seq globalBody776_46 globalBody776_47

def globalBody776_49 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "u1", Flapjack.Exp.var Flapjack.VarKind.local "vvv2",
    Flapjack.Exp.var Flapjack.VarKind.local "a"]

def globalBody776_50 : Prog (BitVec 64) :=
.seq globalBody776_48 globalBody776_49

def globalBody776_51 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u1", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "u1"]

def globalBody776_52 : Prog (BitVec 64) :=
.seq globalBody776_50 globalBody776_51

def globalBody776_53 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u2", Flapjack.Exp.var Flapjack.VarKind.local "v3",
    Flapjack.Exp.var Flapjack.VarKind.local "u2"]

def globalBody776_54 : Prog (BitVec 64) :=
.seq globalBody776_52 globalBody776_53

def globalBody776_55 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "u1", Flapjack.Exp.var Flapjack.VarKind.local "u1",
    Flapjack.Exp.var Flapjack.VarKind.local "u2"]

def globalBody776_56 : Prog (BitVec 64) :=
.seq globalBody776_54 globalBody776_55

def globalBody776_57 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "v3",
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def globalBody776_58 : Prog (BitVec 64) :=
.seq globalBody776_56 globalBody776_57

def globalBody776_59 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "q"]

def globalBody776_60 : Prog (BitVec 64) :=
.seq globalBody776_58 globalBody776_59

def globalBody776_61 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "u1"]

def globalBody776_62 : Prog (BitVec 64) :=
.seq globalBody776_60 globalBody776_61

def globalBody776_63 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def globalBody776_64 : Prog (BitVec 64) :=
.seq globalBody776_62 globalBody776_63

def globalBody776_65 : Prog (BitVec 64) :=
.seq globalBody776_64 globalBody776_15

def globalBody776_66 : Prog (BitVec 64) :=
.seq globalBody776_65 globalBody776_1

def globalBody776_67 : Prog (BitVec 64) :=
.decCall ("veq") (Flapjack.Shape.one) ("fp2_eq") ([Flapjack.Exp.var Flapjack.VarKind.local "v1", Flapjack.Exp.var Flapjack.VarKind.local "v2"]) globalBody776_66

def globalBody776_68 : Prog (BitVec 64) :=
.seq globalBody776_14 globalBody776_67

def globalBody776_69 : Prog (BitVec 64) :=
.dec ("q") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1056#64]) globalBody776_68

def globalBody776_70 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 960#64]) globalBody776_69

def globalBody776_71 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 864#64]) globalBody776_70

def globalBody776_72 : Prog (BitVec 64) :=
.dec ("v3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 768#64]) globalBody776_71

def globalBody776_73 : Prog (BitVec 64) :=
.dec ("vvv2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64]) globalBody776_72

def globalBody776_74 : Prog (BitVec 64) :=
.dec ("vv") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) globalBody776_73

def globalBody776_75 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) globalBody776_74

def globalBody776_76 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) globalBody776_75

def globalBody776_77 : Prog (BitVec 64) :=
.dec ("v2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) globalBody776_76

def globalBody776_78 : Prog (BitVec 64) :=
.dec ("v1") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) globalBody776_77

def globalBody776_79 : Prog (BitVec 64) :=
.dec ("u2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) globalBody776_78

def globalBody776_80 : Prog (BitVec 64) :=
.dec ("u1") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") globalBody776_79

def globalBody776_81 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 12#64]]) globalBody776_80

def globalBody776_82 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) globalBody776_81

def globalBody776_83 : Prog (BitVec 64) :=
.seq globalBody776_7 globalBody776_82

def globalBody776_84 : Prog (BitVec 64) :=
.decCall ("i2") (Flapjack.Shape.one) ("g2_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "p2"]) globalBody776_83

def globalBody776_85 : Prog (BitVec 64) :=
.seq globalBody776_4 globalBody776_84

def globalBody776_86 : Prog (BitVec 64) :=
.decCall ("i1") (Flapjack.Shape.one) ("g2_is_inf") ([Flapjack.Exp.var Flapjack.VarKind.local "p1"]) globalBody776_85

def globalData776 : Decl (BitVec 64) :=
.function { name := "g2_add", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p1", Flapjack.Shape.one), ("p2", Flapjack.Shape.one)], body := globalBody776_86, returnShape := (Flapjack.Shape.one) }
def globalOutput776 := Pancake.PanLang.declToHOL globalData776
end InitECandidate.Proofs.FrontendStages.Declarations
