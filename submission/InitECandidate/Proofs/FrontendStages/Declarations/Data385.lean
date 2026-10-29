import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify369
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body385_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body385_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body385_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) body385_0 body385_1

def body385_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body385_0 body385_1

def body385_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "z")

def body385_5 : Prog (BitVec 64) :=
.decCall ("z") (Flapjack.Shape.one) ("u256_is_zero") ([Flapjack.Exp.load
    (Flapjack.Shape.comb [Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one, Flapjack.Shape.one])
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 8#64])]) body385_4

def body385_6 : Prog (BitVec 64) :=
.seq body385_3 body385_5

def body385_7 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.global "empty_code_hash", Flapjack.Exp.const 32#64]) body385_6

def body385_8 : Prog (BitVec 64) :=
.seq body385_2 body385_7

def originalData385 : Decl (BitVec 64) :=
.function { name := "acct_is_empty", inline := false, exported := false, params := [("a", Flapjack.Shape.one)], body := body385_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData385 : Decl (BitVec 64) :=
.function { name := "acct_is_empty", inline := false, exported := false, params := [("a", Flapjack.Shape.one)], body := body385_8, returnShape := (Flapjack.Shape.one) }
def original385 := Pancake.PanLang.declToHOL originalData385
def simplified385 := Pancake.PanLang.declToHOL simplifiedData385
end InitECandidate.Proofs.FrontendStages.Declarations
