import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify387
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body403_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.const 1#64)

def body403_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "offset")

def body403_2 : Prog (BitVec 64) :=
.seq body403_0 body403_1

def body403_3 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body403_4 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.lower
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 64#64]))
  (Flapjack.Exp.var Flapjack.VarKind.local "offset")) body403_1 body403_3

def body403_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "bs", Flapjack.Exp.const 56#64]))
  (Flapjack.Exp.const 0#64)) body403_2 body403_4

def body403_6 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body403_7 : Prog (BitVec 64) :=
.seq body403_5 body403_6

def originalData403 : Decl (BitVec 64) :=
.function { name := "track_ancestor_access", inline := false, exported := false, params := [("offset", Flapjack.Shape.one)], body := body403_7, returnShape := (Flapjack.Shape.one) }
def simplifiedData403 : Decl (BitVec 64) :=
.function { name := "track_ancestor_access", inline := false, exported := false, params := [("offset", Flapjack.Shape.one)], body := body403_7, returnShape := (Flapjack.Shape.one) }
def original403 := Pancake.PanLang.declToHOL originalData403
def simplified403 := Pancake.PanLang.declToHOL simplifiedData403
end InitECandidate.Proofs.FrontendStages.Declarations
