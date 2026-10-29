import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify628
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body644_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "p256_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def body644_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "x3"), none)) "p256_fp_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "x3", Flapjack.Exp.var Flapjack.VarKind.local "x"]

def body644_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "p256_fp_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "r", Flapjack.Exp.var Flapjack.VarKind.local "x3"]

def body644_3 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "r"), none)) "p256_fp_add"
  [Flapjack.Exp.var Flapjack.VarKind.local "r",
    Flapjack.Exp.rStruct
      [Flapjack.Exp.const 4309448131093880907#64, Flapjack.Exp.const 7285987128567378166#64,
        Flapjack.Exp.const 12964664127075681980#64, Flapjack.Exp.const 6540974713487397863#64]]

def body644_4 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_eq"
  [Flapjack.Exp.var Flapjack.VarKind.local "l", Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body644_5 : Prog (BitVec 64) :=
.seq body644_3 body644_4

def body644_6 : Prog (BitVec 64) :=
.seq body644_2 body644_5

def body644_7 : Prog (BitVec 64) :=
.seq body644_1 body644_6

def body644_8 : Prog (BitVec 64) :=
.decCall ("x3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_add") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "x"]) body644_7

def body644_9 : Prog (BitVec 64) :=
.seq body644_0 body644_8

def body644_10 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) body644_9

def body644_11 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) body644_10

def body644_12 : Prog (BitVec 64) :=
.seq body644_1 body644_2

def body644_13 : Prog (BitVec 64) :=
.seq body644_12 body644_3

def body644_14 : Prog (BitVec 64) :=
.seq body644_13 body644_4

def body644_15 : Prog (BitVec 64) :=
.decCall ("x3") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_add") ([Flapjack.Exp.var Flapjack.VarKind.local "x", Flapjack.Exp.var Flapjack.VarKind.local "x"]) body644_14

def body644_16 : Prog (BitVec 64) :=
.seq body644_0 body644_15

def body644_17 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "x"]) body644_16

def body644_18 : Prog (BitVec 64) :=
.decCall ("l") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("p256_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "y"]) body644_17

def originalData644 : Decl (BitVec 64) :=
.function { name := "p256_on_curve", inline := false, exported := false, params := [("x", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("y", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body644_11, returnShape := (Flapjack.Shape.one) }
def simplifiedData644 : Decl (BitVec 64) :=
.function { name := "p256_on_curve", inline := false, exported := false, params := [("x", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("y", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body644_18, returnShape := (Flapjack.Shape.one) }
def original644 := Pancake.PanLang.declToHOL originalData644
def simplified644 := Pancake.PanLang.declToHOL simplifiedData644
end InitECandidate.Proofs.FrontendStages.Declarations
