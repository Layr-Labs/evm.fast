import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify571
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body587_0 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 184#64])
  (Flapjack.Exp.op Flapjack.BinOp.add
    [Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 184#64]),
      Flapjack.Exp.load Flapjack.Shape.one
        (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64])])

def body587_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.const 0#64)

def body587_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.global "ev", Flapjack.Exp.const 160#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "err")

def body587_3 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body587_4 : Prog (BitVec 64) :=
.seq body587_2 body587_3

def body587_5 : Prog (BitVec 64) :=
.seq body587_1 body587_4

def body587_6 : Prog (BitVec 64) :=
.seq body587_0 body587_5

def body587_7 : Prog (BitVec 64) :=
.seq body587_0 body587_1

def body587_8 : Prog (BitVec 64) :=
.seq body587_7 body587_2

def body587_9 : Prog (BitVec 64) :=
.seq body587_8 body587_3

def originalData587 : Decl (BitVec 64) :=
.function { name := "frame_halt", inline := false, exported := false, params := [("err", Flapjack.Shape.one)], body := body587_6, returnShape := (Flapjack.Shape.one) }
def simplifiedData587 : Decl (BitVec 64) :=
.function { name := "frame_halt", inline := false, exported := false, params := [("err", Flapjack.Shape.one)], body := body587_9, returnShape := (Flapjack.Shape.one) }
def original587 := Pancake.PanLang.declToHOL originalData587
def simplified587 := Pancake.PanLang.declToHOL simplifiedData587
end InitECandidate.Proofs.FrontendStages.Declarations
