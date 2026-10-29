import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify368
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body384_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body384_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body384_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) body384_0 body384_1

def body384_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "eq") (Flapjack.Exp.const 0#64)) body384_0 body384_1

def body384_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual (Flapjack.Exp.var Flapjack.VarKind.local "hs") (Flapjack.Exp.const 0#64)) body384_0 body384_1

def body384_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body384_6 : Prog (BitVec 64) :=
.seq body384_4 body384_5

def body384_7 : Prog (BitVec 64) :=
.decCall ("hs") (Flapjack.Shape.one) ("account_has_storage") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body384_6

def body384_8 : Prog (BitVec 64) :=
.seq body384_3 body384_7

def body384_9 : Prog (BitVec 64) :=
.decCall ("eq") (Flapjack.Shape.one) ("memeq") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "a", Flapjack.Exp.const 48#64]),
  Flapjack.Exp.var Flapjack.VarKind.global "empty_code_hash", Flapjack.Exp.const 32#64]) body384_8

def body384_10 : Prog (BitVec 64) :=
.seq body384_2 body384_9

def body384_11 : Prog (BitVec 64) :=
.decCall ("a") (Flapjack.Shape.one) ("get_account") ([Flapjack.Exp.var Flapjack.VarKind.local "addr"]) body384_10

def originalData384 : Decl (BitVec 64) :=
.function { name := "account_deployable", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body384_11, returnShape := (Flapjack.Shape.one) }
def simplifiedData384 : Decl (BitVec 64) :=
.function { name := "account_deployable", inline := false, exported := false, params := [("addr", Flapjack.Shape.one)], body := body384_11, returnShape := (Flapjack.Shape.one) }
def original384 := Pancake.PanLang.declToHOL originalData384
def simplified384 := Pancake.PanLang.declToHOL simplifiedData384
end InitECandidate.Proofs.FrontendStages.Declarations
