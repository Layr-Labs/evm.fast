import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify45
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body61_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p"), Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 0#64])

def body61_1 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body61_0

def body61_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body61_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")])
  (Flapjack.Exp.const 0#64)) body61_1 body61_2

def body61_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "acc"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p00"))

def body61_5 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p01"),
    Flapjack.Exp.const 0#64]

def body61_6 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "acc" (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "t"))

def body61_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "hi"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "hi", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "t")])

def body61_8 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p10"),
    Flapjack.Exp.const 0#64]

def body61_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "acc" (Flapjack.Exp.var Flapjack.VarKind.local "hi")

def body61_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "hi" (Flapjack.Exp.const 0#64)

def body61_11 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p01"),
    Flapjack.Exp.const 0#64]

def body61_12 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p10"),
    Flapjack.Exp.const 0#64]

def body61_13 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p02"),
    Flapjack.Exp.const 0#64]

def body61_14 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p11"),
    Flapjack.Exp.const 0#64]

def body61_15 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p20"),
    Flapjack.Exp.const 0#64]

def body61_16 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "r0", Flapjack.Exp.var Flapjack.VarKind.local "r1",
      Flapjack.Exp.var Flapjack.VarKind.local "r2", Flapjack.Exp.var Flapjack.VarKind.local "r3"])

def body61_17 : Prog (BitVec 64) :=
.dec ("r3") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p02"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p11"),
    Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p20"),
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
        Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")],
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
        Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")],
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
        Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")],
    Flapjack.Exp.panOp Flapjack.PanOp.mul
      [Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
        Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]]) body61_16

def body61_18 : Prog (BitVec 64) :=
.seq body61_10 body61_17

def body61_19 : Prog (BitVec 64) :=
.seq body61_9 body61_18

def body61_20 : Prog (BitVec 64) :=
.dec ("r2") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body61_19

def body61_21 : Prog (BitVec 64) :=
.seq body61_7 body61_20

def body61_22 : Prog (BitVec 64) :=
.seq body61_6 body61_21

def body61_23 : Prog (BitVec 64) :=
.seq body61_15 body61_22

def body61_24 : Prog (BitVec 64) :=
.seq body61_7 body61_23

def body61_25 : Prog (BitVec 64) :=
.seq body61_6 body61_24

def body61_26 : Prog (BitVec 64) :=
.seq body61_14 body61_25

def body61_27 : Prog (BitVec 64) :=
.seq body61_7 body61_26

def body61_28 : Prog (BitVec 64) :=
.seq body61_6 body61_27

def body61_29 : Prog (BitVec 64) :=
.seq body61_13 body61_28

def body61_30 : Prog (BitVec 64) :=
.seq body61_7 body61_29

def body61_31 : Prog (BitVec 64) :=
.seq body61_6 body61_30

def body61_32 : Prog (BitVec 64) :=
.seq body61_12 body61_31

def body61_33 : Prog (BitVec 64) :=
.seq body61_7 body61_32

def body61_34 : Prog (BitVec 64) :=
.seq body61_6 body61_33

def body61_35 : Prog (BitVec 64) :=
.seq body61_11 body61_34

def body61_36 : Prog (BitVec 64) :=
.seq body61_10 body61_35

def body61_37 : Prog (BitVec 64) :=
.seq body61_9 body61_36

def body61_38 : Prog (BitVec 64) :=
.dec ("r1") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body61_37

def body61_39 : Prog (BitVec 64) :=
.seq body61_7 body61_38

def body61_40 : Prog (BitVec 64) :=
.seq body61_6 body61_39

def body61_41 : Prog (BitVec 64) :=
.seq body61_8 body61_40

def body61_42 : Prog (BitVec 64) :=
.seq body61_7 body61_41

def body61_43 : Prog (BitVec 64) :=
.seq body61_6 body61_42

def body61_44 : Prog (BitVec 64) :=
.seq body61_5 body61_43

def body61_45 : Prog (BitVec 64) :=
.seq body61_4 body61_44

def body61_46 : Prog (BitVec 64) :=
.dec ("r0") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p00")) body61_45

def body61_47 : Prog (BitVec 64) :=
.dec ("hi") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body61_46

def body61_48 : Prog (BitVec 64) :=
.dec ("acc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body61_47

def body61_49 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body61_48

def body61_50 : Prog (BitVec 64) :=
.decCall ("p20") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body61_49

def body61_51 : Prog (BitVec 64) :=
.decCall ("p11") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body61_50

def body61_52 : Prog (BitVec 64) :=
.decCall ("p02") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body61_51

def body61_53 : Prog (BitVec 64) :=
.decCall ("p10") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body61_52

def body61_54 : Prog (BitVec 64) :=
.decCall ("p01") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body61_53

def body61_55 : Prog (BitVec 64) :=
.decCall ("p00") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body61_54

def body61_56 : Prog (BitVec 64) :=
.seq body61_3 body61_55

def body61_57 : Prog (BitVec 64) :=
.seq body61_4 body61_5

def body61_58 : Prog (BitVec 64) :=
.seq body61_57 body61_6

def body61_59 : Prog (BitVec 64) :=
.seq body61_58 body61_7

def body61_60 : Prog (BitVec 64) :=
.seq body61_59 body61_8

def body61_61 : Prog (BitVec 64) :=
.seq body61_60 body61_6

def body61_62 : Prog (BitVec 64) :=
.seq body61_61 body61_7

def body61_63 : Prog (BitVec 64) :=
.seq body61_9 body61_10

def body61_64 : Prog (BitVec 64) :=
.seq body61_63 body61_11

def body61_65 : Prog (BitVec 64) :=
.seq body61_64 body61_6

def body61_66 : Prog (BitVec 64) :=
.seq body61_65 body61_7

def body61_67 : Prog (BitVec 64) :=
.seq body61_66 body61_12

def body61_68 : Prog (BitVec 64) :=
.seq body61_67 body61_6

def body61_69 : Prog (BitVec 64) :=
.seq body61_68 body61_7

def body61_70 : Prog (BitVec 64) :=
.seq body61_69 body61_13

def body61_71 : Prog (BitVec 64) :=
.seq body61_70 body61_6

def body61_72 : Prog (BitVec 64) :=
.seq body61_71 body61_7

def body61_73 : Prog (BitVec 64) :=
.seq body61_72 body61_14

def body61_74 : Prog (BitVec 64) :=
.seq body61_73 body61_6

def body61_75 : Prog (BitVec 64) :=
.seq body61_74 body61_7

def body61_76 : Prog (BitVec 64) :=
.seq body61_75 body61_15

def body61_77 : Prog (BitVec 64) :=
.seq body61_76 body61_6

def body61_78 : Prog (BitVec 64) :=
.seq body61_77 body61_7

def body61_79 : Prog (BitVec 64) :=
.seq body61_63 body61_17

def body61_80 : Prog (BitVec 64) :=
.dec ("r2") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body61_79

def body61_81 : Prog (BitVec 64) :=
.seq body61_78 body61_80

def body61_82 : Prog (BitVec 64) :=
.dec ("r1") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") body61_81

def body61_83 : Prog (BitVec 64) :=
.seq body61_62 body61_82

def body61_84 : Prog (BitVec 64) :=
.dec ("r0") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p00")) body61_83

def body61_85 : Prog (BitVec 64) :=
.dec ("hi") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body61_84

def body61_86 : Prog (BitVec 64) :=
.dec ("acc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body61_85

def body61_87 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body61_86

def body61_88 : Prog (BitVec 64) :=
.decCall ("p20") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body61_87

def body61_89 : Prog (BitVec 64) :=
.decCall ("p11") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body61_88

def body61_90 : Prog (BitVec 64) :=
.decCall ("p02") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body61_89

def body61_91 : Prog (BitVec 64) :=
.decCall ("p10") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body61_90

def body61_92 : Prog (BitVec 64) :=
.decCall ("p01") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body61_91

def body61_93 : Prog (BitVec 64) :=
.decCall ("p00") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) body61_92

def body61_94 : Prog (BitVec 64) :=
.seq body61_3 body61_93

def originalData61 : Decl (BitVec 64) :=
.function { name := "u256_mul", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body61_56, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData61 : Decl (BitVec 64) :=
.function { name := "u256_mul", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body61_94, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original61 := Pancake.PanLang.declToHOL originalData61
def simplified61 := Pancake.PanLang.declToHOL simplifiedData61
end InitECandidate.Proofs.FrontendStages.Declarations
