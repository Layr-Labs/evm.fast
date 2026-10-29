import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Data61
import InitECandidate.Proofs.FrontendStages.Globals.KernelContext
import InitECandidate.Proofs.FrontendStages.Globals.Translate45
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
namespace InitECandidate.Proofs.FrontendStages.Declarations
open Flapjack
def globalBody61_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p"), Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 0#64])

def globalBody61_1 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody61_0

def globalBody61_2 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def globalBody61_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")])
  (Flapjack.Exp.const 0#64)) globalBody61_1 globalBody61_2

def globalBody61_4 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "acc"
  (Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p00"))

def globalBody61_5 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p01"),
    Flapjack.Exp.const 0#64]

def globalBody61_6 : Prog (BitVec 64) :=
.seq globalBody61_4 globalBody61_5

def globalBody61_7 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "acc" (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "t"))

def globalBody61_8 : Prog (BitVec 64) :=
.seq globalBody61_6 globalBody61_7

def globalBody61_9 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "hi"
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.var Flapjack.VarKind.local "hi", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "t")])

def globalBody61_10 : Prog (BitVec 64) :=
.seq globalBody61_8 globalBody61_9

def globalBody61_11 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p10"),
    Flapjack.Exp.const 0#64]

def globalBody61_12 : Prog (BitVec 64) :=
.seq globalBody61_10 globalBody61_11

def globalBody61_13 : Prog (BitVec 64) :=
.seq globalBody61_12 globalBody61_7

def globalBody61_14 : Prog (BitVec 64) :=
.seq globalBody61_13 globalBody61_9

def globalBody61_15 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "acc" (Flapjack.Exp.var Flapjack.VarKind.local "hi")

def globalBody61_16 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "hi" (Flapjack.Exp.const 0#64)

def globalBody61_17 : Prog (BitVec 64) :=
.seq globalBody61_15 globalBody61_16

def globalBody61_18 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p01"),
    Flapjack.Exp.const 0#64]

def globalBody61_19 : Prog (BitVec 64) :=
.seq globalBody61_17 globalBody61_18

def globalBody61_20 : Prog (BitVec 64) :=
.seq globalBody61_19 globalBody61_7

def globalBody61_21 : Prog (BitVec 64) :=
.seq globalBody61_20 globalBody61_9

def globalBody61_22 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "p10"),
    Flapjack.Exp.const 0#64]

def globalBody61_23 : Prog (BitVec 64) :=
.seq globalBody61_21 globalBody61_22

def globalBody61_24 : Prog (BitVec 64) :=
.seq globalBody61_23 globalBody61_7

def globalBody61_25 : Prog (BitVec 64) :=
.seq globalBody61_24 globalBody61_9

def globalBody61_26 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p02"),
    Flapjack.Exp.const 0#64]

def globalBody61_27 : Prog (BitVec 64) :=
.seq globalBody61_25 globalBody61_26

def globalBody61_28 : Prog (BitVec 64) :=
.seq globalBody61_27 globalBody61_7

def globalBody61_29 : Prog (BitVec 64) :=
.seq globalBody61_28 globalBody61_9

def globalBody61_30 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p11"),
    Flapjack.Exp.const 0#64]

def globalBody61_31 : Prog (BitVec 64) :=
.seq globalBody61_29 globalBody61_30

def globalBody61_32 : Prog (BitVec 64) :=
.seq globalBody61_31 globalBody61_7

def globalBody61_33 : Prog (BitVec 64) :=
.seq globalBody61_32 globalBody61_9

def globalBody61_34 : Prog (BitVec 64) :=
Flapjack.Prog.primitive "t" Flapjack.PrimOp.addCarry
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p20"),
    Flapjack.Exp.const 0#64]

def globalBody61_35 : Prog (BitVec 64) :=
.seq globalBody61_33 globalBody61_34

def globalBody61_36 : Prog (BitVec 64) :=
.seq globalBody61_35 globalBody61_7

def globalBody61_37 : Prog (BitVec 64) :=
.seq globalBody61_36 globalBody61_9

def globalBody61_38 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "r0", Flapjack.Exp.var Flapjack.VarKind.local "r1",
      Flapjack.Exp.var Flapjack.VarKind.local "r2", Flapjack.Exp.var Flapjack.VarKind.local "r3"])

def globalBody61_39 : Prog (BitVec 64) :=
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
        Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]]) globalBody61_38

def globalBody61_40 : Prog (BitVec 64) :=
.seq globalBody61_17 globalBody61_39

def globalBody61_41 : Prog (BitVec 64) :=
.dec ("r2") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") globalBody61_40

def globalBody61_42 : Prog (BitVec 64) :=
.seq globalBody61_37 globalBody61_41

def globalBody61_43 : Prog (BitVec 64) :=
.dec ("r1") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "acc") globalBody61_42

def globalBody61_44 : Prog (BitVec 64) :=
.seq globalBody61_14 globalBody61_43

def globalBody61_45 : Prog (BitVec 64) :=
.dec ("r0") (Flapjack.Shape.one) (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "p00")) globalBody61_44

def globalBody61_46 : Prog (BitVec 64) :=
.dec ("hi") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody61_45

def globalBody61_47 : Prog (BitVec 64) :=
.dec ("acc") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) globalBody61_46

def globalBody61_48 : Prog (BitVec 64) :=
.dec ("t") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.rStruct [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) globalBody61_47

def globalBody61_49 : Prog (BitVec 64) :=
.decCall ("p20") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody61_48

def globalBody61_50 : Prog (BitVec 64) :=
.decCall ("p11") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody61_49

def globalBody61_51 : Prog (BitVec 64) :=
.decCall ("p02") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody61_50

def globalBody61_52 : Prog (BitVec 64) :=
.decCall ("p10") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody61_51

def globalBody61_53 : Prog (BitVec 64) :=
.decCall ("p01") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody61_52

def globalBody61_54 : Prog (BitVec 64) :=
.decCall ("p00") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one]) ("mul64x64") ([Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "a"),
  Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b")]) globalBody61_53

def globalBody61_55 : Prog (BitVec 64) :=
.seq globalBody61_3 globalBody61_54

def globalData61 : Decl (BitVec 64) :=
.function { name := "u256_mul", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := globalBody61_55, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def globalOutput61 := Pancake.PanLang.declToHOL globalData61
end InitECandidate.Proofs.FrontendStages.Declarations
