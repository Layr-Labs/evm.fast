import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify780
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body796_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "zp", Flapjack.Exp.var Flapjack.VarKind.local "z"]

def body796_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_sqr"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "zp", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "z"]

def body796_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "zp", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "zp", Flapjack.Exp.const 96#64],
    Flapjack.Exp.var Flapjack.VarKind.local "z"]

def body796_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "iso_horner_fp2"
  [Flapjack.Exp.var Flapjack.VarKind.local "m",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 5600#64],
    Flapjack.Exp.const 4#64, Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "zp"]

def body796_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "iso_horner_fp2"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 5984#64],
    Flapjack.Exp.const 4#64, Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "zp"]

def body796_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "iso_horner_fp2"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 6368#64],
    Flapjack.Exp.const 4#64, Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "zp"]

def body796_6 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "iso_horner_fp2"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 288#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 6752#64],
    Flapjack.Exp.const 4#64, Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "zp"]

def body796_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 192#64],
    Flapjack.Exp.var Flapjack.VarKind.local "y"]

def body796_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 288#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 288#64],
    Flapjack.Exp.var Flapjack.VarKind.local "z"]

def body796_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "zp", Flapjack.Exp.var Flapjack.VarKind.local "m",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 288#64]]

def body796_10 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "zp", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 192#64]]

def body796_11 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp2_mul"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "zp", Flapjack.Exp.const 192#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 96#64],
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "m", Flapjack.Exp.const 288#64]]

def body796_12 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "g2_copy"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "zp"]

def body796_13 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body796_14 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body796_15 : Prog (BitVec 64) :=
.seq body796_13 body796_14

def body796_16 : Prog (BitVec 64) :=
.seq body796_12 body796_15

def body796_17 : Prog (BitVec 64) :=
.seq body796_11 body796_16

def body796_18 : Prog (BitVec 64) :=
.seq body796_10 body796_17

def body796_19 : Prog (BitVec 64) :=
.seq body796_9 body796_18

def body796_20 : Prog (BitVec 64) :=
.seq body796_8 body796_19

def body796_21 : Prog (BitVec 64) :=
.seq body796_7 body796_20

def body796_22 : Prog (BitVec 64) :=
.seq body796_6 body796_21

def body796_23 : Prog (BitVec 64) :=
.seq body796_5 body796_22

def body796_24 : Prog (BitVec 64) :=
.seq body796_4 body796_23

def body796_25 : Prog (BitVec 64) :=
.seq body796_3 body796_24

def body796_26 : Prog (BitVec 64) :=
.seq body796_2 body796_25

def body796_27 : Prog (BitVec 64) :=
.seq body796_1 body796_26

def body796_28 : Prog (BitVec 64) :=
.seq body796_0 body796_27

def body796_29 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 192#64]) body796_28

def body796_30 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 96#64]) body796_29

def body796_31 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p") body796_30

def body796_32 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 4#64]]) body796_31

def body796_33 : Prog (BitVec 64) :=
.decCall ("zp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 3#64]]) body796_32

def body796_34 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body796_33

def body796_35 : Prog (BitVec 64) :=
.seq body796_0 body796_1

def body796_36 : Prog (BitVec 64) :=
.seq body796_35 body796_2

def body796_37 : Prog (BitVec 64) :=
.seq body796_36 body796_3

def body796_38 : Prog (BitVec 64) :=
.seq body796_37 body796_4

def body796_39 : Prog (BitVec 64) :=
.seq body796_38 body796_5

def body796_40 : Prog (BitVec 64) :=
.seq body796_39 body796_6

def body796_41 : Prog (BitVec 64) :=
.seq body796_40 body796_7

def body796_42 : Prog (BitVec 64) :=
.seq body796_41 body796_8

def body796_43 : Prog (BitVec 64) :=
.seq body796_42 body796_9

def body796_44 : Prog (BitVec 64) :=
.seq body796_43 body796_10

def body796_45 : Prog (BitVec 64) :=
.seq body796_44 body796_11

def body796_46 : Prog (BitVec 64) :=
.seq body796_45 body796_12

def body796_47 : Prog (BitVec 64) :=
.seq body796_46 body796_13

def body796_48 : Prog (BitVec 64) :=
.seq body796_47 body796_14

def body796_49 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 192#64]) body796_48

def body796_50 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 96#64]) body796_49

def body796_51 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.one) (Flapjack.Exp.var Flapjack.VarKind.local "p") body796_50

def body796_52 : Prog (BitVec 64) :=
.decCall ("m") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 4#64]]) body796_51

def body796_53 : Prog (BitVec 64) :=
.decCall ("zp") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 96#64, Flapjack.Exp.const 3#64]]) body796_52

def body796_54 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body796_53

def originalData796 : Decl (BitVec 64) :=
.function { name := "iso_map_g2", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := body796_34, returnShape := (Flapjack.Shape.one) }
def simplifiedData796 : Decl (BitVec 64) :=
.function { name := "iso_map_g2", inline := false, exported := false, params := [("r", Flapjack.Shape.one), ("p", Flapjack.Shape.one)], body := body796_54, returnShape := (Flapjack.Shape.one) }
def original796 := Pancake.PanLang.declToHOL originalData796
def simplified796 := Pancake.PanLang.declToHOL simplifiedData796
end InitECandidate.Proofs.FrontendStages.Declarations
