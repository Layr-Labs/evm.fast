import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify12
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body28_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "p")
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 24#64))

def body28_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 16#64))

def body28_2 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 2#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 8#64))

def body28_3 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 3#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body28_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body28_5 : Prog (BitVec 64) :=
.seq body28_3 body28_4

def body28_6 : Prog (BitVec 64) :=
.seq body28_2 body28_5

def body28_7 : Prog (BitVec 64) :=
.seq body28_1 body28_6

def body28_8 : Prog (BitVec 64) :=
.seq body28_0 body28_7

def body28_9 : Prog (BitVec 64) :=
.seq body28_0 body28_1

def body28_10 : Prog (BitVec 64) :=
.seq body28_9 body28_2

def body28_11 : Prog (BitVec 64) :=
.seq body28_10 body28_3

def body28_12 : Prog (BitVec 64) :=
.seq body28_11 body28_4

def originalData28 : Decl (BitVec 64) :=
.function { name := "st_be32", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("v", Flapjack.Shape.one)], body := body28_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData28 : Decl (BitVec 64) :=
.function { name := "st_be32", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("v", Flapjack.Shape.one)], body := body28_12, returnShape := (Flapjack.Shape.one) }
def original28 := Pancake.PanLang.declToHOL originalData28
def simplified28 := Pancake.PanLang.declToHOL simplifiedData28
end InitECandidate.Proofs.FrontendStages.Declarations
