import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify742
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body758_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_inv"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "f"]

def body758_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_conj"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.var Flapjack.VarKind.local "f"]

def body758_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.var Flapjack.VarKind.local "m",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body758_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_frob"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "m"]

def body758_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_frob"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body758_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_exp_x"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "m"]

def body758_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_conj"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "m"]

def body758_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "a",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body758_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_exp_x"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body758_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_conj"
  [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body758_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_exp_x"
  [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body758_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_frob"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "a"]

def body758_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "b", Flapjack.Exp.var Flapjack.VarKind.local "b",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body758_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_exp_x"
  [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "b"]

def body758_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_exp_x"
  [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "c"]

def body758_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_frob"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "b"]

def body758_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "c", Flapjack.Exp.var Flapjack.VarKind.local "c",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body758_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_conj"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "b"]

def body758_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "m",
    Flapjack.Exp.var Flapjack.VarKind.local "m"]

def body758_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "u",
    Flapjack.Exp.var Flapjack.VarKind.local "m"]

def body758_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "c",
    Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body758_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body758_22 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body758_23 : Prog (BitVec 64) :=
.seq body758_21 body758_22

def body758_24 : Prog (BitVec 64) :=
.seq body758_20 body758_23

def body758_25 : Prog (BitVec 64) :=
.seq body758_19 body758_24

def body758_26 : Prog (BitVec 64) :=
.seq body758_18 body758_25

def body758_27 : Prog (BitVec 64) :=
.seq body758_16 body758_26

def body758_28 : Prog (BitVec 64) :=
.seq body758_17 body758_27

def body758_29 : Prog (BitVec 64) :=
.seq body758_16 body758_28

def body758_30 : Prog (BitVec 64) :=
.seq body758_4 body758_29

def body758_31 : Prog (BitVec 64) :=
.seq body758_15 body758_30

def body758_32 : Prog (BitVec 64) :=
.seq body758_14 body758_31

def body758_33 : Prog (BitVec 64) :=
.seq body758_13 body758_32

def body758_34 : Prog (BitVec 64) :=
.seq body758_12 body758_33

def body758_35 : Prog (BitVec 64) :=
.seq body758_11 body758_34

def body758_36 : Prog (BitVec 64) :=
.seq body758_10 body758_35

def body758_37 : Prog (BitVec 64) :=
.seq body758_7 body758_36

def body758_38 : Prog (BitVec 64) :=
.seq body758_9 body758_37

def body758_39 : Prog (BitVec 64) :=
.seq body758_8 body758_38

def body758_40 : Prog (BitVec 64) :=
.seq body758_7 body758_39

def body758_41 : Prog (BitVec 64) :=
.seq body758_6 body758_40

def body758_42 : Prog (BitVec 64) :=
.seq body758_5 body758_41

def body758_43 : Prog (BitVec 64) :=
.seq body758_2 body758_42

def body758_44 : Prog (BitVec 64) :=
.seq body758_4 body758_43

def body758_45 : Prog (BitVec 64) :=
.seq body758_3 body758_44

def body758_46 : Prog (BitVec 64) :=
.seq body758_2 body758_45

def body758_47 : Prog (BitVec 64) :=
.seq body758_1 body758_46

def body758_48 : Prog (BitVec 64) :=
.seq body758_0 body758_47

def body758_49 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 2304#64]) body758_48

def body758_50 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1728#64]) body758_49

def body758_51 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1152#64]) body758_50

def body758_52 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) body758_51

def body758_53 : Prog (BitVec 64) :=
.dec ("m") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body758_52

def body758_54 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 576#64, Flapjack.Exp.const 5#64]]) body758_53

def body758_55 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body758_54

def body758_56 : Prog (BitVec 64) :=
.seq body758_0 body758_1

def body758_57 : Prog (BitVec 64) :=
.seq body758_56 body758_2

def body758_58 : Prog (BitVec 64) :=
.seq body758_57 body758_3

def body758_59 : Prog (BitVec 64) :=
.seq body758_58 body758_4

def body758_60 : Prog (BitVec 64) :=
.seq body758_59 body758_2

def body758_61 : Prog (BitVec 64) :=
.seq body758_60 body758_5

def body758_62 : Prog (BitVec 64) :=
.seq body758_61 body758_6

def body758_63 : Prog (BitVec 64) :=
.seq body758_62 body758_7

def body758_64 : Prog (BitVec 64) :=
.seq body758_63 body758_8

def body758_65 : Prog (BitVec 64) :=
.seq body758_64 body758_9

def body758_66 : Prog (BitVec 64) :=
.seq body758_65 body758_7

def body758_67 : Prog (BitVec 64) :=
.seq body758_66 body758_10

def body758_68 : Prog (BitVec 64) :=
.seq body758_67 body758_11

def body758_69 : Prog (BitVec 64) :=
.seq body758_68 body758_12

def body758_70 : Prog (BitVec 64) :=
.seq body758_69 body758_13

def body758_71 : Prog (BitVec 64) :=
.seq body758_70 body758_14

def body758_72 : Prog (BitVec 64) :=
.seq body758_71 body758_15

def body758_73 : Prog (BitVec 64) :=
.seq body758_72 body758_4

def body758_74 : Prog (BitVec 64) :=
.seq body758_73 body758_16

def body758_75 : Prog (BitVec 64) :=
.seq body758_74 body758_17

def body758_76 : Prog (BitVec 64) :=
.seq body758_75 body758_16

def body758_77 : Prog (BitVec 64) :=
.seq body758_76 body758_18

def body758_78 : Prog (BitVec 64) :=
.seq body758_77 body758_19

def body758_79 : Prog (BitVec 64) :=
.seq body758_78 body758_20

def body758_80 : Prog (BitVec 64) :=
.seq body758_79 body758_21

def body758_81 : Prog (BitVec 64) :=
.seq body758_80 body758_22

def body758_82 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 2304#64]) body758_81

def body758_83 : Prog (BitVec 64) :=
.dec ("c") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1728#64]) body758_82

def body758_84 : Prog (BitVec 64) :=
.dec ("b") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 1152#64]) body758_83

def body758_85 : Prog (BitVec 64) :=
.dec ("a") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "t", Flapjack.Exp.const 576#64]) body758_84

def body758_86 : Prog (BitVec 64) :=
.dec ("m") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "t") body758_85

def body758_87 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 576#64, Flapjack.Exp.const 5#64]]) body758_86

def body758_88 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body758_87

def originalData758 : Decl (BitVec 64) :=
.function { name := "fp12_final_exp", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("f", Flapjack.Shape.one)], body := body758_55, returnShape := (Flapjack.Shape.one) }
def simplifiedData758 : Decl (BitVec 64) :=
.function { name := "fp12_final_exp", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("f", Flapjack.Shape.one)], body := body758_88, returnShape := (Flapjack.Shape.one) }
def original758 := Pancake.PanLang.declToHOL originalData758
def simplified758 := Pancake.PanLang.declToHOL simplifiedData758
end InitECandidate.Proofs.FrontendStages.Declarations
