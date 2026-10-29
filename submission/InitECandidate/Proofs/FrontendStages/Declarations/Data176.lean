import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify160
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body176_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body176_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body176_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "zz") (Flapjack.Exp.const 1#64)) body176_0 body176_1

def body176_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x"), none)) "fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "zi2"]

def body176_4 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "y"), none)) "fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "y", Flapjack.Exp.var Flapjack.VarKind.local "zi3"]

def body176_5 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "ec_set_affine"
  [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.var Flapjack.VarKind.local "x",
    Flapjack.Exp.var Flapjack.VarKind.local "y"]

def body176_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body176_7 : Prog (BitVec 64) :=
.seq body176_5 body176_6

def body176_8 : Prog (BitVec 64) :=
.seq body176_4 body176_7

def body176_9 : Prog (BitVec 64) :=
.seq body176_3 body176_8

def body176_10 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 32#64])) body176_9

def body176_11 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pt")) body176_10

def body176_12 : Prog (BitVec 64) :=
.decCall ("zi3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "zi2", Flapjack.Exp.var Flapjack.VarKind.local "zi"]) body176_11

def body176_13 : Prog (BitVec 64) :=
.decCall ("zi2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "zi"]) body176_12

def body176_14 : Prog (BitVec 64) :=
.decCall ("zi") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_inv") ([Flapjack.Exp.var Flapjack.VarKind.local "z"]) body176_13

def body176_15 : Prog (BitVec 64) :=
.seq body176_2 body176_14

def body176_16 : Prog (BitVec 64) :=
.decCall ("zz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "z"]) body176_15

def body176_17 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])) body176_16

def body176_18 : Prog (BitVec 64) :=
.seq body176_3 body176_4

def body176_19 : Prog (BitVec 64) :=
.seq body176_18 body176_5

def body176_20 : Prog (BitVec 64) :=
.seq body176_19 body176_6

def body176_21 : Prog (BitVec 64) :=
.dec ("y") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 32#64])) body176_20

def body176_22 : Prog (BitVec 64) :=
.dec ("x") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.var Flapjack.VarKind.local "pt")) body176_21

def body176_23 : Prog (BitVec 64) :=
.decCall ("zi3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "zi2", Flapjack.Exp.var Flapjack.VarKind.local "zi"]) body176_22

def body176_24 : Prog (BitVec 64) :=
.decCall ("zi2") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "zi"]) body176_23

def body176_25 : Prog (BitVec 64) :=
.decCall ("zi") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("fp_inv") ([Flapjack.Exp.var Flapjack.VarKind.local "z"]) body176_24

def body176_26 : Prog (BitVec 64) :=
.seq body176_2 body176_25

def body176_27 : Prog (BitVec 64) :=
.decCall ("zz") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "z"]) body176_26

def body176_28 : Prog (BitVec 64) :=
.dec ("z") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) (Flapjack.Exp.load (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "pt", Flapjack.Exp.const 64#64])) body176_27

def originalData176 : Decl (BitVec 64) :=
.function { name := "ec_to_affine", inline := false, exported := false, params := [("pt", Flapjack.Shape.one)], body := body176_17, returnShape := (Flapjack.Shape.one) }
def simplifiedData176 : Decl (BitVec 64) :=
.function { name := "ec_to_affine", inline := false, exported := false, params := [("pt", Flapjack.Shape.one)], body := body176_28, returnShape := (Flapjack.Shape.one) }
def original176 := Pancake.PanLang.declToHOL originalData176
def simplified176 := Pancake.PanLang.declToHOL simplifiedData176
end InitECandidate.Proofs.FrontendStages.Declarations
