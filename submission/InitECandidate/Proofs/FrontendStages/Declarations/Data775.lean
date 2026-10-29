import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify759
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body775_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def body775_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "w",
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def body775_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "w", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "w"]

def body775_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "s", Flapjack.Exp.var Flapjack.VarKind.local "y",
    Flapjack.Exp.var Flapjack.VarKind.local "z"]

def body775_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "x",
    Flapjack.Exp.var Flapjack.VarKind.local "y"]

def body775_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "b",
    Flapjack.Exp.var Flapjack.VarKind.local "s"]

def body775_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "b",
    Flapjack.Exp.var Flapjack.VarKind.local "b"]

def body775_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body775_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body775_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "nx", Flapjack.Exp.var Flapjack.VarKind.local "w"]

def body775_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "h", Flapjack.Exp.var Flapjack.VarKind.local "nx",
    Flapjack.Exp.var Flapjack.VarKind.local "h"]

def body775_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "s2", Flapjack.Exp.var Flapjack.VarKind.local "s"]

def body775_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "nx", Flapjack.Exp.var Flapjack.VarKind.local "h",
    Flapjack.Exp.var Flapjack.VarKind.local "s"]

def body775_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "nx", Flapjack.Exp.var Flapjack.VarKind.local "nx",
    Flapjack.Exp.var Flapjack.VarKind.local "nx"]

def body775_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "h"]

def body775_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "ny", Flapjack.Exp.var Flapjack.VarKind.local "w",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body775_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "y"]

def body775_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "s2"]

def body775_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "ny", Flapjack.Exp.var Flapjack.VarKind.local "ny",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body775_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "s",
    Flapjack.Exp.var Flapjack.VarKind.local "s2"]

def body775_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "nx"]

def body775_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "ny"]

def body775_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body775_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body775_24 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body775_25 : Prog (BitVec 64) :=
.seq body775_23 body775_24

def body775_26 : Prog (BitVec 64) :=
.seq body775_22 body775_25

def body775_27 : Prog (BitVec 64) :=
.seq body775_21 body775_26

def body775_28 : Prog (BitVec 64) :=
.seq body775_20 body775_27

def body775_29 : Prog (BitVec 64) :=
.seq body775_7 body775_28

def body775_30 : Prog (BitVec 64) :=
.seq body775_7 body775_29

def body775_31 : Prog (BitVec 64) :=
.seq body775_7 body775_30

def body775_32 : Prog (BitVec 64) :=
.seq body775_19 body775_31

def body775_33 : Prog (BitVec 64) :=
.seq body775_18 body775_32

def body775_34 : Prog (BitVec 64) :=
.seq body775_7 body775_33

def body775_35 : Prog (BitVec 64) :=
.seq body775_7 body775_34

def body775_36 : Prog (BitVec 64) :=
.seq body775_7 body775_35

def body775_37 : Prog (BitVec 64) :=
.seq body775_17 body775_36

def body775_38 : Prog (BitVec 64) :=
.seq body775_16 body775_37

def body775_39 : Prog (BitVec 64) :=
.seq body775_15 body775_38

def body775_40 : Prog (BitVec 64) :=
.seq body775_14 body775_39

def body775_41 : Prog (BitVec 64) :=
.seq body775_13 body775_40

def body775_42 : Prog (BitVec 64) :=
.seq body775_12 body775_41

def body775_43 : Prog (BitVec 64) :=
.seq body775_11 body775_42

def body775_44 : Prog (BitVec 64) :=
.seq body775_10 body775_43

def body775_45 : Prog (BitVec 64) :=
.seq body775_9 body775_44

def body775_46 : Prog (BitVec 64) :=
.seq body775_8 body775_45

def body775_47 : Prog (BitVec 64) :=
.seq body775_7 body775_46

def body775_48 : Prog (BitVec 64) :=
.seq body775_6 body775_47

def body775_49 : Prog (BitVec 64) :=
.seq body775_5 body775_48

def body775_50 : Prog (BitVec 64) :=
.seq body775_4 body775_49

def body775_51 : Prog (BitVec 64) :=
.seq body775_3 body775_50

def body775_52 : Prog (BitVec 64) :=
.seq body775_2 body775_51

def body775_53 : Prog (BitVec 64) :=
.seq body775_1 body775_52

def body775_54 : Prog (BitVec 64) :=
.seq body775_0 body775_53

def body775_55 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 192#64]) body775_54

def body775_56 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 96#64]) body775_55

def body775_57 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p") body775_56

def body775_58 : Prog (BitVec 64) :=
.dec ("ny") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64]) body775_57

def body775_59 : Prog (BitVec 64) :=
.dec ("nx") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) body775_58

def body775_60 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) body775_59

def body775_61 : Prog (BitVec 64) :=
.dec ("s2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) body775_60

def body775_62 : Prog (BitVec 64) :=
.dec ("h") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) body775_61

def body775_63 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) body775_62

def body775_64 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) body775_63

def body775_65 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body775_64

def body775_66 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 8#64]]) body775_65

def body775_67 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body775_66

def body775_68 : Prog (BitVec 64) :=
.seq body775_0 body775_1

def body775_69 : Prog (BitVec 64) :=
.seq body775_68 body775_2

def body775_70 : Prog (BitVec 64) :=
.seq body775_69 body775_3

def body775_71 : Prog (BitVec 64) :=
.seq body775_70 body775_4

def body775_72 : Prog (BitVec 64) :=
.seq body775_71 body775_5

def body775_73 : Prog (BitVec 64) :=
.seq body775_72 body775_6

def body775_74 : Prog (BitVec 64) :=
.seq body775_73 body775_7

def body775_75 : Prog (BitVec 64) :=
.seq body775_74 body775_8

def body775_76 : Prog (BitVec 64) :=
.seq body775_75 body775_9

def body775_77 : Prog (BitVec 64) :=
.seq body775_76 body775_10

def body775_78 : Prog (BitVec 64) :=
.seq body775_77 body775_11

def body775_79 : Prog (BitVec 64) :=
.seq body775_78 body775_12

def body775_80 : Prog (BitVec 64) :=
.seq body775_79 body775_13

def body775_81 : Prog (BitVec 64) :=
.seq body775_80 body775_14

def body775_82 : Prog (BitVec 64) :=
.seq body775_81 body775_15

def body775_83 : Prog (BitVec 64) :=
.seq body775_82 body775_16

def body775_84 : Prog (BitVec 64) :=
.seq body775_83 body775_17

def body775_85 : Prog (BitVec 64) :=
.seq body775_84 body775_7

def body775_86 : Prog (BitVec 64) :=
.seq body775_85 body775_7

def body775_87 : Prog (BitVec 64) :=
.seq body775_86 body775_7

def body775_88 : Prog (BitVec 64) :=
.seq body775_87 body775_18

def body775_89 : Prog (BitVec 64) :=
.seq body775_88 body775_19

def body775_90 : Prog (BitVec 64) :=
.seq body775_89 body775_7

def body775_91 : Prog (BitVec 64) :=
.seq body775_90 body775_7

def body775_92 : Prog (BitVec 64) :=
.seq body775_91 body775_7

def body775_93 : Prog (BitVec 64) :=
.seq body775_92 body775_20

def body775_94 : Prog (BitVec 64) :=
.seq body775_93 body775_21

def body775_95 : Prog (BitVec 64) :=
.seq body775_94 body775_22

def body775_96 : Prog (BitVec 64) :=
.seq body775_95 body775_23

def body775_97 : Prog (BitVec 64) :=
.seq body775_96 body775_24

def body775_98 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 192#64]) body775_97

def body775_99 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 96#64]) body775_98

def body775_100 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p") body775_99

def body775_101 : Prog (BitVec 64) :=
.dec ("ny") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 672#64]) body775_100

def body775_102 : Prog (BitVec 64) :=
.dec ("nx") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) body775_101

def body775_103 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 480#64]) body775_102

def body775_104 : Prog (BitVec 64) :=
.dec ("s2") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 384#64]) body775_103

def body775_105 : Prog (BitVec 64) :=
.dec ("h") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 288#64]) body775_104

def body775_106 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 192#64]) body775_105

def body775_107 : Prog (BitVec 64) :=
.dec ("s") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 96#64]) body775_106

def body775_108 : Prog (BitVec 64) :=
.dec ("w") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body775_107

def body775_109 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 8#64]]) body775_108

def body775_110 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body775_109

def originalData775 : Decl (BitVec 64) :=
.function { name := "g2_double", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := body775_67, returnShape := (Flapjack.Shape.one) }
def simplifiedData775 : Decl (BitVec 64) :=
.function { name := "g2_double", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := body775_110, returnShape := (Flapjack.Shape.one) }
def original775 := Pancake.PanLang.declToHOL originalData775
def simplified775 := Pancake.PanLang.declToHOL simplifiedData775
end InitECandidate.Proofs.FrontendStages.Declarations
