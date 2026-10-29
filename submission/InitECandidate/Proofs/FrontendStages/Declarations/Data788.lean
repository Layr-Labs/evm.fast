import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify772
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body788_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "t"), none)) "bls_fp_pow"
  [Flapjack.Exp.var Flapjack.VarKind.local "t",
    Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bls_c", Flapjack.Exp.const 1480#64],
    Flapjack.Exp.const 6#64]

def body788_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "chk"), none)) "bls_fp_mul"
  [Flapjack.Exp.var Flapjack.VarKind.local "chk", Flapjack.Exp.var Flapjack.VarKind.local "v"]

def body788_2 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "chk"), none)) "bls_fp_sub"
  [Flapjack.Exp.var Flapjack.VarKind.local "chk", Flapjack.Exp.var Flapjack.VarKind.local "u"]

def body788_3 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.var Flapjack.VarKind.local "ok",
      Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "result"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "result"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "result"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "result"),
      Flapjack.Exp.rField 4 (Flapjack.Exp.var Flapjack.VarKind.local "result"),
      Flapjack.Exp.rField 5 (Flapjack.Exp.var Flapjack.VarKind.local "result")])

def body788_4 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("bls_fp_is_zero") ([Flapjack.Exp.var Flapjack.VarKind.local "chk"]) body788_3

def body788_5 : Prog (BitVec 64) :=
.seq body788_2 body788_4

def body788_6 : Prog (BitVec 64) :=
.seq body788_1 body788_5

def body788_7 : Prog (BitVec 64) :=
.decCall ("chk") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "result"]) body788_6

def body788_8 : Prog (BitVec 64) :=
.decCall ("result") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "temp", Flapjack.Exp.var Flapjack.VarKind.local "t"]) body788_7

def body788_9 : Prog (BitVec 64) :=
.seq body788_0 body788_8

def body788_10 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "temp", Flapjack.Exp.var Flapjack.VarKind.local "v2"]) body788_9

def body788_11 : Prog (BitVec 64) :=
.decCall ("v2") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "v"]) body788_10

def body788_12 : Prog (BitVec 64) :=
.decCall ("temp") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "v"]) body788_11

def body788_13 : Prog (BitVec 64) :=
.seq body788_1 body788_2

def body788_14 : Prog (BitVec 64) :=
.seq body788_13 body788_4

def body788_15 : Prog (BitVec 64) :=
.decCall ("chk") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "result"]) body788_14

def body788_16 : Prog (BitVec 64) :=
.decCall ("result") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "temp", Flapjack.Exp.var Flapjack.VarKind.local "t"]) body788_15

def body788_17 : Prog (BitVec 64) :=
.seq body788_0 body788_16

def body788_18 : Prog (BitVec 64) :=
.decCall ("t") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "temp", Flapjack.Exp.var Flapjack.VarKind.local "v2"]) body788_17

def body788_19 : Prog (BitVec 64) :=
.decCall ("v2") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_sqr") ([Flapjack.Exp.var Flapjack.VarKind.local "v"]) body788_18

def body788_20 : Prog (BitVec 64) :=
.decCall ("temp") (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one]) ("bls_fp_mul") ([Flapjack.Exp.var Flapjack.VarKind.local "u", Flapjack.Exp.var Flapjack.VarKind.local "v"]) body788_19

def originalData788 : Decl (BitVec 64) :=
.function { name := "swu_sqrt_division_fp", inline := false, exported := false, params := [("u",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("v",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body788_12, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData788 : Decl (BitVec 64) :=
.function { name := "swu_sqrt_division_fp", inline := false, exported := false, params := [("u",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one]),
  ("v",
    Flapjack.Shape.comb
      [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
        Flapjack.Shape.one])], body := body788_20, returnShape := (Flapjack.Shape.comb
  [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one,
    Flapjack.Shape.one, Flapjack.Shape.one]) }
def original788 := Pancake.PanLang.declToHOL originalData788
def simplified788 := Pancake.PanLang.declToHOL simplifiedData788
end InitECandidate.Proofs.FrontendStages.Declarations
