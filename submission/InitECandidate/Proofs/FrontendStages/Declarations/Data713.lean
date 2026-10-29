import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify697
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body713_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
      Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body713_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body713_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "az") (Flapjack.Exp.const 1#64)) body713_0 body713_1

def body713_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "x1")

def body713_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "u"))
  (Flapjack.Exp.const 1#64)) body713_3 body713_1

def body713_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "u"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "u"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "u"),
      Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "u"),
      Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "u")])
  (Flapjack.Exp.const 0#64)) body713_4 body713_1

def body713_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "x2")

def body713_7 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v"))
  (Flapjack.Exp.const 1#64)) body713_6 body713_1

def body713_8 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "v"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "v"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "v"),
      Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "v"),
      Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "v")])
  (Flapjack.Exp.const 0#64)) body713_7 body713_1

def body713_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "u"), none)) "bls_fp_shr1"
  [Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body713_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x1"), none)) "bls_fp_half_can"
  [Flapjack.Exp.var Flapjack.VarKind.local "x1"]

def body713_11 : Prog (BitVec 64) :=
.seq body713_9 body713_10

def body713_12 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "u"), Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)) body713_11

def body713_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "v"), none)) "bls_fp_shr1"
  [Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body713_14 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x2"), none)) "bls_fp_half_can"
  [Flapjack.Exp.var Flapjack.VarKind.local "x2"]

def body713_15 : Prog (BitVec 64) :=
.seq body713_13 body713_14

def body713_16 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.and
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "v"), Flapjack.Exp.const 1#64])
  (Flapjack.Exp.const 0#64)) body713_15

def body713_17 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "u"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "d"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "d"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "d"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "d"),
      Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "d"),
      Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "d")])

def body713_18 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x1"), none)) "bls_fp_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "x1", Flapjack.Exp.var Flapjack.VarKind.local "x2"]

def body713_19 : Prog (BitVec 64) :=
.seq body713_17 body713_18

def body713_20 : Prog (BitVec 64) :=
.decCall ("d") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one]) ("bls_fp_sub_raw") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "v"]) body713_19

def body713_21 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "v"
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "e"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "e"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "e"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "e"),
      Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "e"),
      Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "e")])

def body713_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x2"), none)) "bls_fp_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "x2", Flapjack.Exp.var Flapjack.VarKind.local "x1"]

def body713_23 : Prog (BitVec 64) :=
.seq body713_21 body713_22

def body713_24 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one]) ("bls_fp_sub_raw") ([Flapjack.Exp.var Flapjack.VarKind.local "v", Flapjack.Exp.var Flapjack.VarKind.local "u"]) body713_23

def body713_25 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ult") (Flapjack.Exp.const 0#64)) body713_20 body713_24

def body713_26 : Prog (BitVec 64) :=
.decCall ("ult") (Flapjack.Shape.one) ("bls_fp_lt_raw") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "v"]) body713_25

def body713_27 : Prog (BitVec 64) :=
.seq body713_16 body713_26

def body713_28 : Prog (BitVec 64) :=
.seq body713_12 body713_27

def body713_29 : Prog (BitVec 64) :=
.seq body713_8 body713_28

def body713_30 : Prog (BitVec 64) :=
.seq body713_5 body713_29

def body713_31 : Prog (BitVec 64) :=
.while (Flapjack.Exp.const 1#64) body713_30

def body713_32 : Prog (BitVec 64) :=
.seq body713_31 body713_0

def body713_33 : Prog (BitVec 64) :=
.dec ("x2") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
    Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body713_32

def body713_34 : Prog (BitVec 64) :=
.dec ("x1") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
    Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body713_33

def body713_35 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 13402431016077863595#64, Flapjack.Exp.const 2210141511517208575#64,
    Flapjack.Exp.const 7435674573564081700#64, Flapjack.Exp.const 7239337960414712511#64,
    Flapjack.Exp.const 5412103778470702295#64, Flapjack.Exp.const 1873798617647539866#64]) body713_34

def body713_36 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.var Flapjack.VarKind.local "a") body713_35

def body713_37 : Prog (BitVec 64) :=
.seq body713_2 body713_36

def body713_38 : Prog (BitVec 64) :=
.decCall ("az") (Flapjack.Shape.one) ("bls_fp_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body713_37

def body713_39 : Prog (BitVec 64) :=
.seq body713_5 body713_8

def body713_40 : Prog (BitVec 64) :=
.seq body713_39 body713_12

def body713_41 : Prog (BitVec 64) :=
.seq body713_40 body713_16

def body713_42 : Prog (BitVec 64) :=
.seq body713_41 body713_26

def body713_43 : Prog (BitVec 64) :=
.while (Flapjack.Exp.const 1#64) body713_42

def body713_44 : Prog (BitVec 64) :=
.seq body713_43 body713_0

def body713_45 : Prog (BitVec 64) :=
.dec ("x2") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
    Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body713_44

def body713_46 : Prog (BitVec 64) :=
.dec ("x1") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 1#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64,
    Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64]) body713_45

def body713_47 : Prog (BitVec 64) :=
.dec ("v") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.rStruct
  [Flapjack.Exp.const 13402431016077863595#64, Flapjack.Exp.const 2210141511517208575#64,
    Flapjack.Exp.const 7435674573564081700#64, Flapjack.Exp.const 7239337960414712511#64,
    Flapjack.Exp.const 5412103778470702295#64, Flapjack.Exp.const 1873798617647539866#64]) body713_46

def body713_48 : Prog (BitVec 64) :=
.dec ("u") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) (Flapjack.Exp.var Flapjack.VarKind.local "a") body713_47

def body713_49 : Prog (BitVec 64) :=
.seq body713_2 body713_48

def body713_50 : Prog (BitVec 64) :=
.decCall ("az") (Flapjack.Shape.one) ("bls_fp_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body713_49

def originalData713 : Decl (BitVec 64) :=
.function { name := "bls_fp_inv_raw", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body713_38, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) }
def simplifiedData713 : Decl (BitVec 64) :=
.function { name := "bls_fp_inv_raw", inline := false, exported := false, params := [("a",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body713_50, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) }
def original713 := Pancake.PanLang.declToHOL originalData713
def simplified713 := Pancake.PanLang.declToHOL simplifiedData713
end InitECandidate.Proofs.FrontendStages.Declarations
