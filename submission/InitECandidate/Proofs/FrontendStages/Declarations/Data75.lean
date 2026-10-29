import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify59
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body75_0 : Prog (BitVec 64) :=
Flapjack.Prog.return
  (Flapjack.Exp.rStruct
    [Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64, Flapjack.Exp.const 0#64])

def body75_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body75_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.op Flapjack.BinOp.or
    [Flapjack.Exp.rField 0 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 1 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 2 (Flapjack.Exp.var Flapjack.VarKind.local "b"),
      Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "b")])
  (Flapjack.Exp.const 0#64)) body75_0 body75_1

def body75_3 : Prog (BitVec 64) :=
Flapjack.Prog.call none "u256_neg" [Flapjack.Exp.var Flapjack.VarKind.local "r"]

def body75_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.rField 3 (Flapjack.Exp.var Flapjack.VarKind.local "a"))
    (Flapjack.Exp.const 63#64))
  (Flapjack.Exp.const 1#64)) body75_3 body75_1

def body75_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "r")

def body75_6 : Prog (BitVec 64) :=
.seq body75_4 body75_5

def body75_7 : Prog (BitVec 64) :=
.decCall ("r") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_mod") ([Flapjack.Exp.var Flapjack.VarKind.local "aa", Flapjack.Exp.var Flapjack.VarKind.local "bb"]) body75_6

def body75_8 : Prog (BitVec 64) :=
.decCall ("bb") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_abs") ([Flapjack.Exp.var Flapjack.VarKind.local "b"]) body75_7

def body75_9 : Prog (BitVec 64) :=
.decCall ("aa") (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) ("u256_abs") ([Flapjack.Exp.var Flapjack.VarKind.local "a"]) body75_8

def body75_10 : Prog (BitVec 64) :=
.seq body75_2 body75_9

def originalData75 : Decl (BitVec 64) :=
.function { name := "u256_smod", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body75_10, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def simplifiedData75 : Decl (BitVec 64) :=
.function { name := "u256_smod", inline := false, exported := false, params := [("a", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]),
  ("b", Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])], body := body75_10, returnShape := (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one]) }
def original75 := Pancake.PanLang.declToHOL originalData75
def simplified75 := Pancake.PanLang.declToHOL simplifiedData75
end InitECandidate.Proofs.FrontendStages.Declarations
