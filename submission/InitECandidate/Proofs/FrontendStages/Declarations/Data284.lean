import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify268
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body284_0 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body284_1 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body284_2 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "child") (Flapjack.Exp.const 0#64)) body284_0 body284_1

def body284_3 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 0#64]))
  (Flapjack.Exp.const 0#64)) body284_0 body284_1

def body284_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.notEqual
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "child", Flapjack.Exp.const 8#64]))
  (Flapjack.Exp.const 0#64)) body284_0 body284_1

def body284_5 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body284_6 : Prog (BitVec 64) :=
.seq body284_4 body284_5

def body284_7 : Prog (BitVec 64) :=
.seq body284_3 body284_6

def body284_8 : Prog (BitVec 64) :=
.seq body284_2 body284_7

def body284_9 : Prog (BitVec 64) :=
.seq body284_2 body284_3

def body284_10 : Prog (BitVec 64) :=
.seq body284_9 body284_4

def body284_11 : Prog (BitVec 64) :=
.seq body284_10 body284_5

def originalData284 : Decl (BitVec 64) :=
.function { name := "_node_needs_rlp", inline := false, exported := false, params := [("child", Flapjack.Shape.one)], body := body284_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData284 : Decl (BitVec 64) :=
.function { name := "_node_needs_rlp", inline := false, exported := false, params := [("child", Flapjack.Shape.one)], body := body284_11, returnShape := (Flapjack.Shape.one) }
def original284 := Pancake.PanLang.declToHOL originalData284
def simplified284 := Pancake.PanLang.declToHOL simplifiedData284
end InitECandidate.Proofs.FrontendStages.Declarations
