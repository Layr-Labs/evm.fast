import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify10
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body26_0 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte (Flapjack.Exp.var Flapjack.VarKind.local "p") (Flapjack.Exp.var Flapjack.VarKind.local "v")

def body26_1 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 1#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 8#64))

def body26_2 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 2#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 16#64))

def body26_3 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "p", Flapjack.Exp.const 3#64])
  (Flapjack.Exp.shift Flapjack.Shift.lsr (Flapjack.Exp.var Flapjack.VarKind.local "v") (Flapjack.Exp.const 24#64))

def body26_4 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body26_5 : Prog (BitVec 64) :=
.seq body26_3 body26_4

def body26_6 : Prog (BitVec 64) :=
.seq body26_2 body26_5

def body26_7 : Prog (BitVec 64) :=
.seq body26_1 body26_6

def body26_8 : Prog (BitVec 64) :=
.seq body26_0 body26_7

def body26_9 : Prog (BitVec 64) :=
.seq body26_0 body26_1

def body26_10 : Prog (BitVec 64) :=
.seq body26_9 body26_2

def body26_11 : Prog (BitVec 64) :=
.seq body26_10 body26_3

def body26_12 : Prog (BitVec 64) :=
.seq body26_11 body26_4

def originalData26 : Decl (BitVec 64) :=
.function { name := "st_le32", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("v", Flapjack.Shape.one)], body := body26_8, returnShape := (Flapjack.Shape.one) }
def simplifiedData26 : Decl (BitVec 64) :=
.function { name := "st_le32", inline := false, exported := false, params := [("p", Flapjack.Shape.one), ("v", Flapjack.Shape.one)], body := body26_12, returnShape := (Flapjack.Shape.one) }
def original26 := Pancake.PanLang.declToHOL originalData26
def simplified26 := Pancake.PanLang.declToHOL simplifiedData26
end InitECandidate.Proofs.FrontendStages.Declarations
