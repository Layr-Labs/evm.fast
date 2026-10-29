import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify658
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body674_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T1",
    Flapjack.Exp.var Flapjack.VarKind.local "x"]

def body674_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "W",
    Flapjack.Exp.var Flapjack.VarKind.local "T1", Flapjack.Exp.const 3#64]

def body674_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "S",
    Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "z"]

def body674_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T1",
    Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "y"]

def body674_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "B",
    Flapjack.Exp.var Flapjack.VarKind.local "T1", Flapjack.Exp.var Flapjack.VarKind.local "S"]

def body674_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T1",
    Flapjack.Exp.var Flapjack.VarKind.local "W"]

def body674_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T2",
    Flapjack.Exp.var Flapjack.VarKind.local "B", Flapjack.Exp.const 8#64]

def body674_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "H",
    Flapjack.Exp.var Flapjack.VarKind.local "T1", Flapjack.Exp.var Flapjack.VarKind.local "T2"]

def body674_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "S2",
    Flapjack.Exp.var Flapjack.VarKind.local "S"]

def body674_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T1",
    Flapjack.Exp.var Flapjack.VarKind.local "H", Flapjack.Exp.var Flapjack.VarKind.local "S"]

def body674_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T1",
    Flapjack.Exp.var Flapjack.VarKind.local "T1", Flapjack.Exp.const 2#64]

def body674_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T2",
    Flapjack.Exp.var Flapjack.VarKind.local "B", Flapjack.Exp.const 4#64]

def body674_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T2",
    Flapjack.Exp.var Flapjack.VarKind.local "T2", Flapjack.Exp.var Flapjack.VarKind.local "H"]

def body674_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T2",
    Flapjack.Exp.var Flapjack.VarKind.local "W", Flapjack.Exp.var Flapjack.VarKind.local "T2"]

def body674_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sqr"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "W",
    Flapjack.Exp.var Flapjack.VarKind.local "y"]

def body674_15 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "W",
    Flapjack.Exp.var Flapjack.VarKind.local "W", Flapjack.Exp.var Flapjack.VarKind.local "S2"]

def body674_16 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "W",
    Flapjack.Exp.var Flapjack.VarKind.local "W", Flapjack.Exp.const 8#64]

def body674_17 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "T2",
    Flapjack.Exp.var Flapjack.VarKind.local "T2", Flapjack.Exp.var Flapjack.VarKind.local "W"]

def body674_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "S",
    Flapjack.Exp.var Flapjack.VarKind.local "S", Flapjack.Exp.var Flapjack.VarKind.local "S2"]

def body674_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fe_mul_small"
  [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.var Flapjack.VarKind.local "S",
    Flapjack.Exp.var Flapjack.VarKind.local "S", Flapjack.Exp.const 8#64]

def body674_20 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "T1",
    Flapjack.Exp.var Flapjack.VarKind.local "esz"]

def body674_21 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.var Flapjack.VarKind.local "esz"],
    Flapjack.Exp.var Flapjack.VarKind.local "T2", Flapjack.Exp.var Flapjack.VarKind.local "esz"]

def body674_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memcpy"
  [Flapjack.Exp.op Flapjack.BinOp.add
      [Flapjack.Exp.var Flapjack.VarKind.local "out",
        Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]],
    Flapjack.Exp.var Flapjack.VarKind.local "S", Flapjack.Exp.var Flapjack.VarKind.local "esz"]

def body674_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body674_24 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body674_25 : Prog (BitVec 64) :=
.seq body674_23 body674_24

def body674_26 : Prog (BitVec 64) :=
.seq body674_22 body674_25

def body674_27 : Prog (BitVec 64) :=
.seq body674_21 body674_26

def body674_28 : Prog (BitVec 64) :=
.seq body674_20 body674_27

def body674_29 : Prog (BitVec 64) :=
.seq body674_19 body674_28

def body674_30 : Prog (BitVec 64) :=
.seq body674_18 body674_29

def body674_31 : Prog (BitVec 64) :=
.seq body674_17 body674_30

def body674_32 : Prog (BitVec 64) :=
.seq body674_16 body674_31

def body674_33 : Prog (BitVec 64) :=
.seq body674_15 body674_32

def body674_34 : Prog (BitVec 64) :=
.seq body674_14 body674_33

def body674_35 : Prog (BitVec 64) :=
.seq body674_13 body674_34

def body674_36 : Prog (BitVec 64) :=
.seq body674_12 body674_35

def body674_37 : Prog (BitVec 64) :=
.seq body674_11 body674_36

def body674_38 : Prog (BitVec 64) :=
.seq body674_10 body674_37

def body674_39 : Prog (BitVec 64) :=
.seq body674_9 body674_38

def body674_40 : Prog (BitVec 64) :=
.seq body674_8 body674_39

def body674_41 : Prog (BitVec 64) :=
.seq body674_7 body674_40

def body674_42 : Prog (BitVec 64) :=
.seq body674_6 body674_41

def body674_43 : Prog (BitVec 64) :=
.seq body674_5 body674_42

def body674_44 : Prog (BitVec 64) :=
.seq body674_4 body674_43

def body674_45 : Prog (BitVec 64) :=
.seq body674_3 body674_44

def body674_46 : Prog (BitVec 64) :=
.seq body674_2 body674_45

def body674_47 : Prog (BitVec 64) :=
.seq body674_1 body674_46

def body674_48 : Prog (BitVec 64) :=
.seq body674_0 body674_47

def body674_49 : Prog (BitVec 64) :=
.decCall ("T2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_48

def body674_50 : Prog (BitVec 64) :=
.decCall ("T1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_49

def body674_51 : Prog (BitVec 64) :=
.decCall ("S2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_50

def body674_52 : Prog (BitVec 64) :=
.decCall ("H") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_51

def body674_53 : Prog (BitVec 64) :=
.decCall ("B") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_52

def body674_54 : Prog (BitVec 64) :=
.decCall ("S") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_53

def body674_55 : Prog (BitVec 64) :=
.decCall ("W") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_54

def body674_56 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "pt",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]) body674_55

def body674_57 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_56

def body674_58 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "pt") body674_57

def body674_59 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body674_58

def body674_60 : Prog (BitVec 64) :=
.dec ("esz") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.const 32#64]) body674_59

def body674_61 : Prog (BitVec 64) :=
.seq body674_0 body674_1

def body674_62 : Prog (BitVec 64) :=
.seq body674_61 body674_2

def body674_63 : Prog (BitVec 64) :=
.seq body674_62 body674_3

def body674_64 : Prog (BitVec 64) :=
.seq body674_63 body674_4

def body674_65 : Prog (BitVec 64) :=
.seq body674_64 body674_5

def body674_66 : Prog (BitVec 64) :=
.seq body674_65 body674_6

def body674_67 : Prog (BitVec 64) :=
.seq body674_66 body674_7

def body674_68 : Prog (BitVec 64) :=
.seq body674_67 body674_8

def body674_69 : Prog (BitVec 64) :=
.seq body674_68 body674_9

def body674_70 : Prog (BitVec 64) :=
.seq body674_69 body674_10

def body674_71 : Prog (BitVec 64) :=
.seq body674_70 body674_11

def body674_72 : Prog (BitVec 64) :=
.seq body674_71 body674_12

def body674_73 : Prog (BitVec 64) :=
.seq body674_72 body674_13

def body674_74 : Prog (BitVec 64) :=
.seq body674_73 body674_14

def body674_75 : Prog (BitVec 64) :=
.seq body674_74 body674_15

def body674_76 : Prog (BitVec 64) :=
.seq body674_75 body674_16

def body674_77 : Prog (BitVec 64) :=
.seq body674_76 body674_17

def body674_78 : Prog (BitVec 64) :=
.seq body674_77 body674_18

def body674_79 : Prog (BitVec 64) :=
.seq body674_78 body674_19

def body674_80 : Prog (BitVec 64) :=
.seq body674_79 body674_20

def body674_81 : Prog (BitVec 64) :=
.seq body674_80 body674_21

def body674_82 : Prog (BitVec 64) :=
.seq body674_81 body674_22

def body674_83 : Prog (BitVec 64) :=
.seq body674_82 body674_23

def body674_84 : Prog (BitVec 64) :=
.seq body674_83 body674_24

def body674_85 : Prog (BitVec 64) :=
.decCall ("T2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_84

def body674_86 : Prog (BitVec 64) :=
.decCall ("T1") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_85

def body674_87 : Prog (BitVec 64) :=
.decCall ("S2") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_86

def body674_88 : Prog (BitVec 64) :=
.decCall ("H") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_87

def body674_89 : Prog (BitVec 64) :=
.decCall ("B") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_88

def body674_90 : Prog (BitVec 64) :=
.decCall ("S") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_89

def body674_91 : Prog (BitVec 64) :=
.decCall ("W") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_90

def body674_92 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "pt",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 2#64, Flapjack.Exp.var Flapjack.VarKind.local "esz"]]) body674_91

def body674_93 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.var Flapjack.VarKind.local "esz"]) body674_92

def body674_94 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "pt") body674_93

def body674_95 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body674_94

def body674_96 : Prog (BitVec 64) :=
.dec ("esz") (Flapjack.Shape.one) (Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "fld", Flapjack.Exp.const 32#64]) body674_95

def originalData674 : Decl (BitVec 64) :=
.function { name := "ecp_double", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("out", Flapjack.Shape.one), ("pt", Flapjack.Shape.one)], body := body674_60, returnShape := (Flapjack.Shape.one) }
def simplifiedData674 : Decl (BitVec 64) :=
.function { name := "ecp_double", inline := false, exported := false, params := [("fld", Flapjack.Shape.one), ("out", Flapjack.Shape.one), ("pt", Flapjack.Shape.one)], body := body674_96, returnShape := (Flapjack.Shape.one) }
def original674 := Pancake.PanLang.declToHOL originalData674
def simplified674 := Pancake.PanLang.declToHOL simplifiedData674
end InitECandidate.Proofs.FrontendStages.Declarations
